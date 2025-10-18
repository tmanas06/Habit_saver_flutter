import 'package:flutter/material.dart';

void main() {
  runApp(const HabitSaverApp());
}

class HabitSaverApp extends StatefulWidget {
  const HabitSaverApp({super.key});

  @override
  _HabitSaverAppState createState() => _HabitSaverAppState();
}

class _HabitSaverAppState extends State<HabitSaverApp> {
  bool isDarkMode = false; // tracks dark mode

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HabitSaverApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HabitHomePage(
        toggleTheme: toggleTheme, // pass function to home page
        isDarkMode: isDarkMode,
      ),
    );
  }
}

class HabitHomePage extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HabitHomePage({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  _HabitHomePageState createState() => _HabitHomePageState();
}

class _HabitHomePageState extends State<HabitHomePage> {
  List<String> habits = [];
  final TextEditingController controller = TextEditingController();

  void addHabit() {
    if (controller.text.isNotEmpty) {
      setState(() {
        habits.add(controller.text);
        controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit Saver'),
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter a habit',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: addHabit,
              child: const Text('Add Habit'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.check_circle_outline),
                      title: Text(habits[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}