using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using SchoolManagementSystem.Data;
using Microsoft.EntityFrameworkCore;

namespace SchoolManagementSystem.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly SchoolContext _context;

        public HomeController(SchoolContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            // Get dashboard statistics
            var totalStudents = await _context.Students.CountAsync();
            var totalTeachers = await _context.Users.CountAsync(u => u.Role == "Teacher");
            var totalGrades = await _context.Grades.CountAsync();
            var recentGrades = await _context.Grades
                .Include(g => g.Student)
                .OrderByDescending(g => g.DateRecorded)
                .Take(5)
                .ToListAsync();

            ViewBag.TotalStudents = totalStudents;
            ViewBag.TotalTeachers = totalTeachers;
            ViewBag.TotalGrades = totalGrades;
            ViewBag.RecentGrades = recentGrades;

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View();
        }

        public IActionResult AccessDenied()
        {
            return View();
        }
    }
}