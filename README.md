# Interview_Task App 📖

## 🖼 App Screenshots

### 🔹 Row 1
<p float="left">
  <img src="assets/screenshots/profile.jpeg" width="200"/>
  <img src="assets/screenshots/create_account.jpeg" width="200"/>
  <img src="assets/screenshots/create_account_1.jpeg" width="200"/>
  <img src="assets/screenshots/history.jpeg" width="200"/>
</p>

### 🔹 Row 2
<p float="left">
  <img src="assets/screenshots/profile.jpeg" width="200"/>
  <img src="assets/screenshots/setting.jpeg" width="200"/>
  <img src="assets/screenshots/status.jfif" width="200"/>
  <img src="assets/screenshots/process.jfif" width="200"/>
</p>

### 🔹 Row 3
<p float="left">
  <img src="assets/screenshots/finish.jfif" width="200"/>
  <img src="assets/screenshots/faild.jfif" width="200"/>
</p>

---


## 🛠️ Technologies Used

This app is built with the following technologies:

- 🔹 **Flutter** (UI development)
- 🔹 **Dart** (Programming Language)
- 🔹 **Riverpod** (State Management)
- 🔹 **Go Router** (Navigation)
- 🔹 **Responsive UI** (Supports multiple screen sizes)
- 🔹 **Reusable UI Components** (Modular UI elements for consistency)
- 🔹 **REST API / HTTP Requests** (Fetches data from backend services)

## 🛠️ Package Used
  cupertino_icons: ^1.0.8
  http: ^1.5.0
  flutter_screenutil: ^5.9.3
  shared_preferences: ^2.5.3
  go_router: ^16.2.1
  flutter_riverpod: ^2.6.1
  timelines_plus: ^1.0.7
## 🛠️ Structure
lib/
│
├── main.dart
├── app. dart                     # Root widget, app-wide settings
├── routes/                      # Named route definitions
│   └── app_routes.dart
│
├── core/                        # Reusable core utilities, constants,
│   ├── constants/
│   ├── utils/
│   ├── services/                # Common services: network, storage, etc.
│   └── widgets/                 # Reusable widgets (buttons, loaders, etc.)
│
├── business_logic/                        # Data layer (local, remote, models)
│   ├── models/
│   ├── repositories/
│   └── providers/               # APIs
│
├── features/                    
│   ├── order/                   
│   │   ├── screens/
│   │   ├── logic/
│   │   ├── data/
│   │   └── widgets/


---

