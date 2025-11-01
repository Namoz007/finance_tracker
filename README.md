# Personal Finance Tracker 💰
---

## 📱 Project Overview
**Personal Finance Tracker** is a mobile application that helps users track their personal expenses, categorize spending, view statistics, and manage budgets.  
The goal of this project is to demonstrate your knowledge of **Flutter**, **Firebase**, **State Management**, and **Clean Architecture**.

---

## 🎯 Core Features

### 🔐 Authentication (Firebase Auth)
- ✅ Register & Login with Email/Password
- ✅ Forgot Password (Reset via Email)
- ✅ Logout functionality
- ✅ View and edit user profile

### 💵 Expense Management (Firestore)
- ✅ Add new expenses (amount, category, date, note)
- ✅ View and filter expenses list
- ✅ Edit or delete expenses
- ✅ Expense categories: Food, Transport, Entertainment, Utilities, Others

### 📊 Statistics & Reports
- ✅ Monthly total expenses
- ✅ Category-based pie chart
- ✅ Last 30 days line chart
- ✅ Top spending categories

### 🔔 Push Notifications
- ✅ Daily reminders to add expenses
- ✅ Alerts when monthly budget is exceeded

---

## 🧠 Technical Requirements

### 🧩 State Management
- Implemented using **BLoC** or **Provider**
- Proper loading, success, and error states

### 🏗 Architecture
- **Clean Architecture** pattern
- **Repository Pattern** for data handling
- **Dependency Injection** for modularity
- **SOLID Principles** applied throughout the project

### ☁️ Firebase Integration
- Firebase Auth → Authentication
- Cloud Firestore → Database
- Firebase Messaging → Notifications
- Firebase Storage (optional) → Image uploads

### 🌍 API Integration
- Currency exchange API:
    - `https://api.exchangerate-api.com/v4/latest/USD`
    - `https://cbu.uz/uz/arkhiv-kursov-valyut/veb-masteram/`
- HTTP client: `dio`
- Full error handling for API calls

---

## 🖥 Recommended Folder Structure