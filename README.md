# HabitSaver Flutter App

[![Flutter](https://img.shields.io/badge/Flutter-3.13-blue.svg?logo=flutter&logoColor=white)](https://flutter.dev/)

A simple Flutter app to save daily habits with **light/dark mode toggle**. Demonstrates state management, dynamic UI updates, and theme switching.

---

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Code Structure](#code-structure)
- [Widgets & Methods](#widgets--methods)
- [Flutter Concepts Used](#flutter-concepts-used)
- [Usage](#usage)
- [Screenshots](#screenshots)

---

## Overview
HabitSaver allows users to:
- Add new habits to a list.
- View all added habits in a scrollable list.
- Toggle between **light** and **dark mode** dynamically.

---

## Features
- Add habits via a `TextField` and `ElevatedButton`.
- Dynamic `ListView` to display all habits.
- Dark mode toggle in `AppBar`.
- Clean UI using Material3 design.

---

## Installation

1. Clone the repository:
```bash
git clone https://github.com/tmanas06/Habit_saver_flutter
```

2. Navigate to the project folder:
```bash
cd Habit_saver_flutter
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```
---
Code Structure
```bash
lib/
└── main.dart
```
---

main.dart: Contains the main app, home page, state management, and UI components.
---
## Widgets & Methods
1. HabitSaverApp (StatefulWidget)

Entry point of the app.

Handles theme switching.

Properties:

isDarkMode: Tracks current theme.

Methods:

toggleTheme(): Switches between light and dark mode.

2. HabitHomePage (StatefulWidget)

Main screen for adding and viewing habits.

Props:

toggleTheme: Callback to toggle theme.

isDarkMode: Tracks current theme.

UI Components:

AppBar with dark mode button.

TextField for habit input.

ElevatedButton to add habit.

ListView.builder for displaying habits dynamically.

Card + ListTile for each habit.

3. _HabitHomePageState Methods

addHabit(): Adds input from TextField to habits list and clears input.

build(BuildContext context): Builds the UI hierarchy with Column, Padding, Expanded, and ListView.

---

## Flutter Concepts Used

StatefulWidget & setState(): For dynamic UI updates.

TextEditingController: Handles input and clears TextField.

MaterialApp, ThemeData & ThemeMode: Light/Dark theme implementation.

Widget Composition: Scaffold → AppBar → Column → TextField + Button + ListView.

ListView.builder: Efficient scrollable list rendering.

Card & ListTile: Display habits neatly.

IconButton: Dark/light mode toggle.

## Usage

Enter a habit in the input field.

Click Add Habit → Habit appears in the list.

Click the sun/moon icon in the AppBar → Toggle light/dark theme.

Screenshots

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3c56b9a2-ba96-4e93-8795-96dbf880c249" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/05da136c-0b02-4b26-a760-853eaf299352" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1d8e6091-89c5-4d2e-bd53-34b55775450a" />
