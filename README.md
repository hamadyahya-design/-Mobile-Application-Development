# MIS424 Student Record App

A Flutter application for managing student records — built as a collaborative class project.

## What This App Does

- Lists all students with search and level filter
- Tap any student to view full details
- Add new students via the floating button
- Each record tracks who contributed it

## Getting Started

### Prerequisites

- Flutter 3.x — [Install Flutter](https://docs.flutter.dev/get-started/install)
- Dart 3.x (comes with Flutter)
- Android Studio or VS Code with Flutter extension
- Android emulator or physical device

### Run the App

```bash
git clone https://github.com/YOUR_LECTURER_USERNAME/student_record_app.git
cd student_record_app
flutter pub get
flutter run
```

## Student Contributions

See [CONTRIBUTING.md](CONTRIBUTING.md) for full step-by-step instructions on how to:

- Clone and set up the project
- Add your student record to the data file
- Push your branch and open a Pull Request

**Every student must push from a branch named:**
```
STUDENTNUMBER-Firstname-Lastname
```
Example: `MIS-2021-042-Chidi-Okeke`

## Project Structure

```
lib/
├── main.dart
├── models/student.dart
├── data/students_data.dart      ← students add their records here
├── screens/
│   ├── home_screen.dart
│   ├── add_student_screen.dart
│   └── student_detail_screen.dart
└── widgets/student_card.dart
```

## Course

**MIS 424** — Mobile Application Development
