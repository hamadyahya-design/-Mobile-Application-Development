# Contributing to MIS424 Student Record App

## Overview

This is a **class assignment**. Every student must:

1. Fork or clone the repo
2. Add **one student record** to the data file
3. Push using a branch named after your **student number and name**
4. Open a Pull Request

---

## Step-by-Step Instructions

### 1. Install Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) — install for your OS
- [Git](https://git-scm.com/downloads)
- [VS Code](https://code.visualstudio.com/) + Flutter extension (recommended)
- An Android emulator or physical device

Verify your setup:
```bash
flutter doctor
```

---

### 2. Clone the Repository

```bash
git clone https://github.com/Sopuru/prog1.git
cd prog1
```

---

### 3. Create Your Branch

**Branch naming is mandatory** — format: `studentnumber-firstname-lastname`

```bash
git checkout -b MIS-2021-042-Chidi-Okeke
```

Replace with **your own student number and name**. Use hyphens, no spaces.

---

### 4. Install Dependencies

```bash
flutter pub get
```

---

### 5. Run the App (to make sure it works)

```bash
flutter run
```

The app should launch on your emulator or device.

---

### 6. Add Your Student Record

Open the file:

```
lib/data/students_data.dart
```

Scroll to the bottom of the `sampleStudents` list (look for the comment `STUDENT CONTRIBUTIONS BELOW THIS LINE`).

Add your entry following this exact format:

```dart
const Student(
  id: 'MIS-2021-042',               // use your student number (hyphens, no slashes)
  studentNumber: 'MIS/2021/042',    // your actual student number
  name: 'Chidi Okeke',              // your full name
  department: 'Management Information Systems',
  level: '400',                     // your current level: 100, 200, 300, 400, or 500
  gpa: 4.2,                         // your GPA (0.0 – 5.0)
  email: 'chidi@university.edu.ng', // your university email
  contributedBy: 'MIS/2021/042 — Chidi Okeke',  // student number — Full Name
),
```

**Rules:**
- Do NOT edit or delete any other student's entry
- `contributedBy` must contain your student number AND full name
- The `id` field must be unique — use your student number with hyphens

---

### 7. Verify It Still Runs

```bash
flutter run
```

Your name should appear in the student list. Tap it to see your detail page.

---

### 8. Stage and Commit

```bash
git add lib/data/students_data.dart
git commit -m "MIS/2021/042 — Chidi Okeke: add student record"
```

Commit message format (mandatory):
```
STUDENTNUMBER — Full Name: add student record
```

---

### 9. Push Your Branch

```bash
git push origin MIS-2021-042-Chidi-Okeke
```

---

### 10. Open a Pull Request

1. Go to **https://github.com/Sopuru/prog1** in your browser
2. Click **"Compare & pull request"** on your branch
3. Set the title to: `MIS/2021/042 — Chidi Okeke: add student record`
4. Click **"Create Pull Request"**

---

## Learning Resources

| Topic | Resource |
|---|---|
| Flutter basics | https://docs.flutter.dev/get-started/codelab |
| Dart language | https://dart.dev/guides |
| Flutter widgets | https://docs.flutter.dev/ui/widgets |
| Git & GitHub | https://docs.github.com/en/get-started |
| YouTube (Flutter) | https://www.youtube.com/c/flutterdev |
| Free Flutter course | https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/ |

---

## File Structure

```
lib/
├── main.dart                    ← App entry point (do not modify)
├── models/
│   └── student.dart             ← Student data model (do not modify)
├── data/
│   └── students_data.dart       ← ✅ THIS IS WHERE YOU ADD YOUR RECORD
├── screens/
│   ├── home_screen.dart         ← Main list screen
│   ├── add_student_screen.dart  ← Add-student form
│   └── student_detail_screen.dart ← Detail view
└── widgets/
    └── student_card.dart        ← Reusable card widget
```

---

## Common Errors

| Error | Fix |
|---|---|
| `flutter: command not found` | Add Flutter to your PATH — see Flutter install docs |
| `No devices found` | Start your Android emulator first |
| `Duplicate id` | Change your `id` field to something unique |
| Merge conflict | Pull the latest `main` and re-apply your change |

---

## Grading Checklist

- [ ] Branch named correctly (student number + name)
- [ ] Exactly one entry added to `students_data.dart`
- [ ] `contributedBy` includes student number AND full name
- [ ] Commit message follows required format
- [ ] App runs without errors after your change
- [ ] Pull Request opened with correct title
