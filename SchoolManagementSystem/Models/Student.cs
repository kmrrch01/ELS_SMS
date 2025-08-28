using System.ComponentModel.DataAnnotations;

namespace SchoolManagementSystem.Models
{
    public class Student
    {
        public int Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string FirstName { get; set; } = string.Empty;
        
        [Required]
        [StringLength(100)]
        public string LastName { get; set; } = string.Empty;
        
        [Required]
        [EmailAddress]
        public string Email { get; set; } = string.Empty;
        
        [Phone]
        public string? PhoneNumber { get; set; }
        
        [StringLength(10)]
        public string? Gender { get; set; }
        
        [Required]
        [StringLength(20)]
        public string Grade { get; set; } = string.Empty;
        
        public DateTime DateOfBirth { get; set; }
        public DateTime EnrollmentDate { get; set; } = DateTime.Now;
        
        [StringLength(500)]
        public string? ProfileImagePath { get; set; }
        
        // Navigation properties
        public virtual ICollection<Grade>? Grades { get; set; }
        public virtual Family? Family { get; set; }
        public int? FamilyId { get; set; }
    }
}