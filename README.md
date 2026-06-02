<div align="center">

<h1>📱 Mobile Tracking System</h1>

<p><strong>IMEI-based mobile device tracking with a secure admin panel — built with PHP & MySQL</strong></p>

<p>
  <img src="https://img.shields.io/badge/PHP-8.0+-777BB4?style=flat-square&logo=php&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Apache-XAMPP%2FWAMP-CA2136?style=flat-square&logo=apache&logoColor=white"/>
  <img src="https://img.shields.io/badge/HTML%2FCSS%2FJS-Frontend-E34F26?style=flat-square&logo=html5&logoColor=white"/>
  <img src="https://img.shields.io/badge/Status-Active-22c55e?style=flat-square"/>
</p>

</div>

---

## What is this?

A web-based admin panel that lets an administrator manage shop records and track mobile devices using their **IMEI numbers**. Built on a classic PHP + MySQL stack, it's clean, functional, and easy to set up locally using XAMPP or WAMP.

> ⚠️ Authentication logic is implemented for **demonstration purposes** in a local development environment only.

---

## Demo Credentials

| Role | Username | Password |
|---|---|---|
| Admin | `admin` | `admin` |

> For testing only — change credentials before any deployment.

---

## System Modules

| Module | Description |
|---|---|
| 🔐 Admin Authentication | Secure login/logout system for admin users |
| 🏠 Admin Dashboard | Central panel overview after login |
| 🏪 Insert Shop Details | Add shop name, address, location, type |
| 📋 Review Shop Details | View and manage all registered shops |
| 📟 IMEI Tracking | Search and track mobile devices by IMEI number |
| 🗄️ Database Connectivity | MySQL integration via PHP |

---

## Tech Stack

| Layer | Technology |
|---|---|
| **Backend** | PHP 8.0+ |
| **Database** | MySQL |
| **Frontend** | HTML, CSS, JavaScript |
| **Server** | Apache via XAMPP / WAMP |

---

## Project Structure

```
mobile_tracking/
├── index.php              # Entry point / login page
├── dashboard.php          # Admin dashboard
├── insert_shop.php        # Add shop details
├── review_shop.php        # View shop records
├── imei_tracking.php      # IMEI search & tracking
├── db_connect.php         # Database connection config
├── static.css             # Stylesheet
├── database.sql           # SQL schema & seed file
└── README.md
```

---

## Database Schema

```
┌──────────────┐      ┌────────────────────┐      ┌──────────────────┐
│    admin     │      │   shop_details     │      │    tracking      │
├──────────────┤      ├────────────────────┤      ├──────────────────┤
│ id           │      │ id                 │      │ id               │
│ username     │      │ shop_name          │      │ imei_number      │
│ password     │      │ address            │      │ device_name      │
└──────────────┘      │ location           │      │ shop_id (FK)     │
                      │ shop_type          │      │ tracked_at       │
                      └────────────────────┘      └──────────────────┘
```

---

## Getting Started

### Prerequisites

- [XAMPP](https://www.apachefriends.org/) or [WAMP](https://www.wampserver.com/) installed

### Setup Steps

**1. Clone the repository**
```bash
git clone https://github.com/shoaib-ahmadd/mobile-tracking-system.git
```

**2. Move to your server root**
```
# XAMPP
C:/xampp/htdocs/mobile_tracking/

# WAMP
C:/wamp64/www/mobile_tracking/
```

**3. Create the database**
- Open [phpMyAdmin](http://localhost/phpmyadmin)
- Create a new database: `mobile_tracking_db`
- Import the provided `database.sql` file

**4. Configure database credentials**

Edit `db_connect.php`:
```php
$host     = "localhost";
$username = "root";
$password = "";           // your MySQL password
$database = "mobile_tracking_db";
```

**5. Launch the app**
```
http://localhost/mobile_tracking/
```

---

## How It Works

```
Admin Login
    ↓
Dashboard
    ├── Insert Shop Details → Stored in MySQL
    ├── Review Shop Details ← Fetched from MySQL
    └── IMEI Tracking
            ↓
        Search by IMEI Number
            ↓
        Retrieve Matching Device & Shop Record
            ↓
        Display Result to Admin
```

---

## Use Cases

- 🎓 Academic mini/major projects
- 🔁 PHP + MySQL CRUD practice
- 🖥️ Admin panel development learning
- 📋 Resume & portfolio showcase

---

## Roadmap

- [ ] Role-based access control (Admin / Staff)
- [ ] User-level authentication
- [ ] Advanced IMEI validation & formatting
- [ ] Responsive UI (mobile-friendly)
- [ ] Improved error handling & input sanitization
- [ ] Export records to CSV / PDF

---

## Author

<div align="center">

**Shoaib Ahmad**

[![GitHub](https://img.shields.io/badge/GitHub-shoaib--ahmadd-181717?style=flat-square&logo=github)](https://github.com/shoaib-ahmadd)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-shoaib--ahmadd-0A66C2?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/shoaib-ahmadd)

If this helped you, a ⭐ on GitHub means a lot!

</div>
