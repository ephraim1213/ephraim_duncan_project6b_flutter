import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MealSelectorApp());
}

class MealSelectorApp extends StatelessWidget {
  const MealSelectorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Selector',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MealPickerPage(),
    );
  }
}

class MealPickerPage extends StatefulWidget {
  const MealPickerPage({super.key});


  @override
  State<MealPickerPage> createState() => _MealPickerPageState();
}

class _MealPickerPageState extends State<MealPickerPage> {
  final List<String> meals = [
    'Menudo',
    'Posole',
    'Asada Tacos',
    'Navajo Tacos',
    'Buffalo Wings',
    'Steak'
  ];
  int currentMeal = 0;

  void pickRandomMeal() {
    setState(() {
      currentMeal = Random().nextInt(meals.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Selector'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              meals[currentMeal],
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: pickRandomMeal,
              child: const Text('What to eat today'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
