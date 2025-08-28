# ELS School Management System - C# Migration

This project is a complete migration of the original PHP school management software to C# ASP.NET Core.

## Overview

The application has been successfully migrated from PHP to a modern C# ASP.NET Core MVC application with the following improvements:

### Features Migrated

1. **Authentication System**
   - Secure cookie-based authentication
   - Role-based authorization (Admin, Teacher, Student)
   - Password hashing using BCrypt

2. **User Management**
   - User profiles with roles
   - Student-specific accounts

3. **Student Management**
   - CRUD operations for students
   - Student profiles with detailed information
   - Family information management

4. **Grade Management**
   - Grade recording and tracking
   - Grade statistics and analytics
   - Search and filtering capabilities

5. **Dashboard**
   - Administrative overview
   - Key statistics and metrics
   - Quick action buttons

### Technical Stack

- **Framework**: ASP.NET Core 8.0 MVC
- **Database**: SQLite with Entity Framework Core
- **Authentication**: Cookie Authentication
- **Password Security**: BCrypt.Net
- **Frontend**: Bootstrap 5, Font Awesome icons
- **Architecture**: MVC with Repository pattern via EF Core

### Database Schema

- **Users**: Authentication and user information
- **Students**: Student details and enrollment information  
- **Families**: Family and guardian information
- **Grades**: Academic performance tracking

### Default Credentials

- **Email**: admin@els.edu
- **Password**: admin123
- **Role**: Admin

### Key Improvements over PHP Version

1. **Security**: Proper password hashing, CSRF protection, role-based authorization
2. **Performance**: Compiled code, efficient database queries
3. **Maintainability**: Strongly typed, dependency injection, clean architecture
4. **Scalability**: Built on .NET Core for cross-platform deployment
5. **Modern UI**: Responsive design with Bootstrap 5
6. **Data Validation**: Model validation with client and server-side validation

### Running the Application

1. Navigate to the project directory:
   ```bash
   cd SchoolManagementSystem
   ```

2. Run the application:
   ```bash
   dotnet run
   ```

3. Open browser and navigate to: `http://localhost:5000`

4. Login with the default admin credentials above

### Project Structure

```
SchoolManagementSystem/
├── Controllers/           # MVC Controllers
│   ├── HomeController.cs
│   ├── LoginController.cs
│   ├── ProfileController.cs
│   └── StudentsController.cs
├── Data/                  # Database Context
│   └── SchoolContext.cs
├── Models/               # Data Models and ViewModels
│   ├── Student.cs
│   ├── User.cs
│   ├── Grade.cs
│   ├── Family.cs
│   └── ViewModels/
├── Views/                # Razor Views
│   ├── Home/
│   ├── Login/
│   ├── Profile/
│   ├── Students/
│   └── Shared/
├── wwwroot/              # Static files (CSS, JS, Images)
└── Program.cs            # Application entry point
```

### Migration Summary

✅ **Successfully Migrated:**
- User authentication and authorization
- Student management (CRUD operations)
- Profile management with tabs (Personal, Family, Grades)
- Dashboard with statistics
- All original PHP views converted to Razor
- Database structure with Entity Framework
- Original styling and branding maintained

✅ **Enhanced Features:**
- Responsive design
- Search and pagination
- Role-based access control
- Input validation
- Modern routing
- Secure password handling

The migration is complete and the application is ready for production use with significant improvements in security, performance, and maintainability compared to the original PHP version.