using System.ComponentModel.DataAnnotations;

namespace SchoolManagementSystem.Models
{
    public class Grade
    {
        public int Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string Subject { get; set; } = string.Empty;
        
        [Required]
        [Range(0, 100)]
        public decimal Score { get; set; }
        
        [StringLength(10)]
        public string LetterGrade { get; set; } = string.Empty;
        
        public DateTime DateRecorded { get; set; } = DateTime.Now;
        
        [StringLength(500)]
        public string? Comments { get; set; }
        
        // Foreign keys
        public int StudentId { get; set; }
        public virtual Student Student { get; set; } = null!;
        
        public int? TeacherId { get; set; }
        public virtual User? Teacher { get; set; }
    }
}