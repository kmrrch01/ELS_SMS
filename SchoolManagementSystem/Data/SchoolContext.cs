using Microsoft.EntityFrameworkCore;
using SchoolManagementSystem.Models;

namespace SchoolManagementSystem.Data
{
    public class SchoolContext : DbContext
    {
        public SchoolContext(DbContextOptions<SchoolContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<Grade> Grades { get; set; }
        public DbSet<Family> Families { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Configure User entity
            modelBuilder.Entity<User>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.HasIndex(e => e.Email).IsUnique();
                entity.Property(e => e.Email).IsRequired().HasMaxLength(255);
                entity.Property(e => e.PasswordHash).IsRequired();
                entity.Property(e => e.Role).HasDefaultValue("Student");
                entity.Property(e => e.IsActive).HasDefaultValue(true);
            });

            // Configure Student entity
            modelBuilder.Entity<Student>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.FirstName).IsRequired().HasMaxLength(100);
                entity.Property(e => e.LastName).IsRequired().HasMaxLength(100);
                entity.Property(e => e.Email).IsRequired().HasMaxLength(255);
                entity.Property(e => e.Grade).IsRequired().HasMaxLength(20);
                entity.HasIndex(e => e.Email).IsUnique();
                
                // Relationship with Family
                entity.HasOne(s => s.Family)
                      .WithMany(f => f.Students)
                      .HasForeignKey(s => s.FamilyId)
                      .IsRequired(false);
            });

            // Configure Grade entity
            modelBuilder.Entity<Grade>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Subject).IsRequired().HasMaxLength(100);
                entity.Property(e => e.Score).HasPrecision(5, 2);
                
                // Relationships
                entity.HasOne(g => g.Student)
                      .WithMany(s => s.Grades)
                      .HasForeignKey(g => g.StudentId)
                      .OnDelete(DeleteBehavior.Cascade);
                      
                entity.HasOne(g => g.Teacher)
                      .WithMany()
                      .HasForeignKey(g => g.TeacherId)
                      .IsRequired(false);
            });

            // Configure Family entity
            modelBuilder.Entity<Family>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.FamilyName).IsRequired().HasMaxLength(100);
            });

            // Configure User-Student relationship
            modelBuilder.Entity<User>(entity =>
            {
                entity.HasOne(u => u.Student)
                      .WithOne()
                      .HasForeignKey<User>(u => u.StudentId)
                      .IsRequired(false);
            });

            // Seed initial data
            SeedData(modelBuilder);
        }

        private void SeedData(ModelBuilder modelBuilder)
        {
            // Seed a default admin user
            modelBuilder.Entity<User>().HasData(
                new User
                {
                    Id = 1,
                    FirstName = "Admin",
                    LastName = "User",
                    Email = "admin@els.edu",
                    PasswordHash = BCrypt.Net.BCrypt.HashPassword("admin123"),
                    Role = "Admin",
                    CreatedDate = DateTime.Now,
                    IsActive = true
                }
            );

            // Seed sample family
            modelBuilder.Entity<Family>().HasData(
                new Family
                {
                    Id = 1,
                    FamilyName = "Hammoud",
                    Address = "Beirut, Lebanon",
                    PrimaryContactNumber = "+961 71421318",
                    ContactEmail = "hammoud.family@email.com",
                    GuardianName = "Ahmad Hammoud",
                    GuardianRelationship = "Father"
                }
            );

            // Seed sample student
            modelBuilder.Entity<Student>().HasData(
                new Student
                {
                    Id = 1,
                    FirstName = "Hasan",
                    LastName = "Hammoud",
                    Email = "hasan.hammoud@els.edu",
                    PhoneNumber = "+961 71421318",
                    Gender = "Male",
                    Grade = "7th",
                    DateOfBirth = new DateTime(2010, 5, 15),
                    EnrollmentDate = DateTime.Now.AddYears(-2),
                    FamilyId = 1
                }
            );

            // Seed sample grades
            modelBuilder.Entity<Grade>().HasData(
                new Grade
                {
                    Id = 1,
                    Subject = "Mathematics",
                    Score = 85.5m,
                    LetterGrade = "B+",
                    DateRecorded = DateTime.Now.AddDays(-30),
                    StudentId = 1,
                    Comments = "Good progress in algebra"
                },
                new Grade
                {
                    Id = 2,
                    Subject = "English",
                    Score = 92.0m,
                    LetterGrade = "A-",
                    DateRecorded = DateTime.Now.AddDays(-25),
                    StudentId = 1,
                    Comments = "Excellent writing skills"
                },
                new Grade
                {
                    Id = 3,
                    Subject = "Science",
                    Score = 78.0m,
                    LetterGrade = "B",
                    DateRecorded = DateTime.Now.AddDays(-20),
                    StudentId = 1,
                    Comments = "Needs improvement in lab work"
                }
            );
        }
    }
}