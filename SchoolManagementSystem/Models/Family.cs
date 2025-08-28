using System.ComponentModel.DataAnnotations;

namespace SchoolManagementSystem.Models
{
    public class Family
    {
        public int Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string FamilyName { get; set; } = string.Empty;
        
        [StringLength(200)]
        public string? Address { get; set; }
        
        [Phone]
        public string? PrimaryContactNumber { get; set; }
        
        [EmailAddress]
        public string? ContactEmail { get; set; }
        
        [StringLength(100)]
        public string? GuardianName { get; set; }
        
        [StringLength(50)]
        public string? GuardianRelationship { get; set; }
        
        [Phone]
        public string? EmergencyContactNumber { get; set; }
        
        // Navigation properties
        public virtual ICollection<Student> Students { get; set; } = new List<Student>();
    }
}