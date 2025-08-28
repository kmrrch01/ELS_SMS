namespace SchoolManagementSystem.Models.ViewModels
{
    public class StudentProfileViewModel
    {
        public Student Student { get; set; } = null!;
        public Family? Family { get; set; }
        public List<Grade> RecentGrades { get; set; } = new();
        public string ActiveTab { get; set; } = "Personal";
        public string? SearchTerm { get; set; }
    }
}