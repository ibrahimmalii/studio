# **Astudio API**

Astudio is a **Laravel-based API** that provides a robust **time tracking and project management system**. It includes **user authentication, project management, timesheet logging**, and a **flexible filtering system** with **dynamic attributes (EAV Model)**.

---

## **🚀 Features**
✅ **User Authentication** (Register, Login, Logout with Laravel Passport)  
✅ **Project Management** (CRUD operations, user assignment)  
✅ **Timesheet Logging** (Track time spent on projects)  
✅ **Dynamic Attributes for Projects** (EAV Model)  
✅ **Flexible Filtering System** (Filter projects based on regular and dynamic attributes)  
✅ **RESTful API with Validation & Error Handling**

---

# **📌 Setup Instructions**

### **🔹 Prerequisites**
Ensure you have the following installed:
- **PHP 8.1+**
- **Composer**
- **MySQL or MariaDB**
- **Laravel 10+**
- **Postman or any API testing tool (for testing)**

---

### **🔹 Installation Steps**

#### **1️⃣ Clone the repository**
```bash
git clone https://github.com/3omarbadr/astudio.git
cd astudio
```

#### **2️⃣ Install dependencies**
```bash
composer install
```

#### **3️⃣ Set up environment variables**
Copy the example environment file:
```bash
cp .env.example .env
```
Generate a new application key:
```bash
php artisan key:generate
```

#### **4️⃣ Configure the database**
Edit the `.env` file to match your database configuration:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=timetracking
DB_USERNAME=your_database_user
DB_PASSWORD=your_database_password
```

#### **5️⃣ Run Migrations and Seeders**
```bash
php artisan migrate --seed
```
This will **create the necessary database tables and insert seed data**.

#### **6️⃣ Install Laravel Passport**
```bash
php artisan passport:install
```
Copy the **Personal Access Client ID & Secret** from the output and update your `.env` file:
```
PASSPORT_PERSONAL_ACCESS_CLIENT_ID=1
PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET=your_client_secret
```

#### **7️⃣ Clear Cache and Restart Server**
```bash
php artisan config:clear
php artisan cache:clear
php artisan serve
```

---

# **📌 API Documentation**

## **🔐 Authentication**
The API uses **Laravel Passport** for authentication.  
Include the **Bearer Token** in the `Authorization` header for protected routes.

### **1️⃣ Register a New User**
#### **➡️ Endpoint:**
```http
POST /api/auth/register
```
#### **➡️ Request Body:**
```json
{
    "first_name": "John",
    "last_name": "Doe",
    "email": "user@example.com",
    "password": "password",
    "password_confirmation": "password"
}
```
#### **✅ Response:**
```json
{
    "data": {
        "token": "eyJ0eXAiOiJKV1QiLCJhbGc...",
        "user": {
            "id": 1,
            "first_name": "John",
            "last_name": "Doe",
            "email": "user@example.com"
        }
    }
}
```

---

### **2️⃣ Login**
#### **➡️ Endpoint:**
```http
POST /api/auth/login
```
#### **➡️ Request Body:**
```json
{
    "email": "user@example.com",
    "password": "password"
}
```
#### **✅ Response:**
```json
{
    "data": {
        "token": "eyJ0eXAiOiJKV1QiLCJhbGc...",
        "user": {
            "id": 1,
            "first_name": "John",
            "last_name": "Doe",
            "email": "user@example.com"
        }
    }
}
```

---

### **3️⃣ Logout**
#### **➡️ Endpoint:**
```http
POST /api/auth/logout
```
#### **➡️ Headers:**
```
Authorization: Bearer {token}
```
#### **✅ Response:**
```json
{
    "message": "Successfully logged out"
}
```

---

## **📌 Project Management**

### **1️⃣ List Projects**
#### **➡️ Endpoint:**
```http
GET /api/projects
```
#### **➡️ Headers:**
```
Authorization: Bearer {token}
```
#### **✅ Response:**
```json
{
    "data": [
        {
            "id": 1,
            "name": "Project Alpha",
            "status": "active",
            "created_at": "2024-03-20T10:00:00Z"
        }
    ]
}
```

---

### **2️⃣ Create a Project**
#### **➡️ Endpoint:**
```http
POST /api/projects
```
#### **➡️ Request Body:**
```json
{
    "name": "New Project",
    "status": "active",
    "users": [1, 2], 
    "attributes": [
        {"name": "department", "value": "IT"},
        {"name": "budget", "value": "5000"}
    ]
}
```
#### **✅ Response:**
```json
{
    "data": {
        "id": 1,
        "name": "New Project",
        "status": "active",
        "created_at": "2024-03-20T10:00:00Z"
    }
}
```

---

## **📌 Timesheet Management**
### **1️⃣ Log Work Time**
#### **➡️ Endpoint:**
```http
POST /api/timesheets
```
#### **➡️ Request Body:**
```json
{
    "project_id": 1,
    "task_name": "Develop API",
    "date": "2024-03-20",
    "hours": 8
}
```
#### **✅ Response:**
```json
{
    "data": {
        "id": 1,
        "project_id": 1,
        "task_name": "Develop API",
        "date": "2024-03-20",
        "hours": 8
    }
}
```

---

## **📌 Filtering Projects**
Supports filtering by **both standard and EAV attributes**.

#### **➡️ Example 1: Filter by Name**
```http
GET /api/projects?filters[name]=ProjectA
```
#### **➡️ Example 2: Filter by Status and Department**
```http
GET /api/projects?filters[status]=active&filters[attributes][department]=IT
```
#### **➡️ Example 3: Filter by Budget Greater Than 5000**
```http
GET /api/projects?filters[attributes][budget][operator]=>&filters[attributes][budget][value]=5000
```

---

## **📌 Test Credentials**
Use these test accounts:

**Admin User:**
```
Email: admin@example.com
Password: password
```

---

## **📌 Error Handling**
The API returns proper HTTP status codes with helpful messages.

| Status Code | Meaning |
|-------------|---------|
| `401` Unauthorized | Invalid or missing token |
| `403` Forbidden | Not authorized |
| `422` Validation Error | Request data is invalid |

---

## **🚀 Deliverables**
- ✅ **GitHub Repository**
- ✅ **SQL Dump (`database.sql`)**
- ✅ **README (API Documentation & Setup Guide)**
- ✅ **Example API Requests**
- ✅ **Test Credentials**

This **detailed guide** ensures that **you can set up and use the API easily!** 🚀 Let me know if you need further refinements! 😊
