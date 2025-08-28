using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using SchoolManagementSystem.Data;
using SchoolManagementSystem.Models.ViewModels;
using System.Security.Claims;

namespace SchoolManagementSystem.Controllers
{
    [Authorize]
    public class ProfileController : Controller
    {
        private readonly SchoolContext _context;

        public ProfileController(SchoolContext context)
        {
            _context = context;
        }

        // GET: Profile
        public async Task<IActionResult> Index(int? id, string tab = "Personal", string searchTerm = "")
        {
            // If no ID provided, try to get current user's student ID
            if (id == null)
            {
                var studentIdClaim = User.FindFirst("StudentId")?.Value;
                if (int.TryParse(studentIdClaim, out int studentId))
                {
                    id = studentId;
                }
                else
                {
                    return NotFound("Student profile not found.");
                }
            }

            // Check if user can view this profile
            if (!CanViewProfile(id.Value))
            {
                return Forbid();
            }

            var student = await _context.Students
                .Include(s => s.Family)
                .Include(s => s.Grades)
                .FirstOrDefaultAsync(s => s.Id == id);

            if (student == null)
            {
                return NotFound();
            }

            // Filter grades based on search term if provided
            var grades = student.Grades?.AsQueryable() ?? new List<Models.Grade>().AsQueryable();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                grades = grades.Where(g => 
                    g.Subject.Contains(searchTerm) ||
                    g.LetterGrade.Contains(searchTerm) ||
                    (g.Comments != null && g.Comments.Contains(searchTerm)));
            }

            var viewModel = new StudentProfileViewModel
            {
                Student = student,
                Family = student.Family,
                RecentGrades = grades.OrderByDescending(g => g.DateRecorded).Take(10).ToList(),
                ActiveTab = tab,
                SearchTerm = searchTerm
            };

            return View(viewModel);
        }

        // GET: Profile/Grades/5
        public async Task<IActionResult> Grades(int id, string searchTerm = "", int page = 1, int pageSize = 10)
        {
            if (!CanViewProfile(id))
            {
                return Forbid();
            }

            var query = _context.Grades
                .Include(g => g.Student)
                .Include(g => g.Teacher)
                .Where(g => g.StudentId == id);

            if (!string.IsNullOrEmpty(searchTerm))
            {
                query = query.Where(g => 
                    g.Subject.Contains(searchTerm) ||
                    g.LetterGrade.Contains(searchTerm) ||
                    (g.Comments != null && g.Comments.Contains(searchTerm)));
            }

            var totalGrades = await query.CountAsync();
            var grades = await query
                .OrderByDescending(g => g.DateRecorded)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            var student = await _context.Students.FindAsync(id);

            ViewBag.Student = student;
            ViewBag.SearchTerm = searchTerm;
            ViewBag.CurrentPage = page;
            ViewBag.PageSize = pageSize;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalGrades / pageSize);
            ViewBag.TotalGrades = totalGrades;

            return View(grades);
        }

        // GET: Profile/Family/5
        public async Task<IActionResult> Family(int id)
        {
            if (!CanViewProfile(id))
            {
                return Forbid();
            }

            var student = await _context.Students
                .Include(s => s.Family)
                .ThenInclude(f => f!.Students)
                .FirstOrDefaultAsync(s => s.Id == id);

            if (student?.Family == null)
            {
                ViewBag.Student = student;
                return View();
            }

            ViewBag.Student = student;
            return View(student.Family);
        }

        private bool CanViewProfile(int studentId)
        {
            // Admins and teachers can view any profile
            if (User.IsInRole("Admin") || User.IsInRole("Teacher"))
            {
                return true;
            }

            // Students can only view their own profile
            var studentIdClaim = User.FindFirst("StudentId")?.Value;
            if (int.TryParse(studentIdClaim, out int userStudentId))
            {
                return userStudentId == studentId;
            }

            return false;
        }
    }
}