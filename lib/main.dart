import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:geminichat/const.dart';
import 'pages/home_page.dart';

void main() {
  // Initialize Gemini
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gemini Chat API',
      theme: ThemeData(
        useMaterial3: true,
        // Color scheme designed to be bold and creative
        colorScheme: const ColorScheme(
          primary: Color(0xFF6200EA), // Rich deep purple
          primaryContainer: Color(0xFF3700B3), // Darker purple accent
          secondary: Color(0xFF03DAC6), // Teal green for contrast
          secondaryContainer: Color(0xFF018786), // Darker teal
          surface: Color(0xFFF3E5F5), // Very light lavender for app background
          error: Color(0xFFB00020), // Bold red for errors
          onPrimary: Colors.white, // Text color on primary buttons
          onSecondary: Colors.black, // Text on secondary buttons
          onSurface: Colors.black, // Text on background color
          onError: Colors.white, // Text on error color
          brightness: Brightness.light, // Use light mode
        ),
        // Text and button styles
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6200EA)),
          titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3700B3)),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFF6200EA), // Primary purple for buttons
            foregroundColor: Colors.white, // White text on buttons
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Smooth button edges
            ),
            padding: const EdgeInsets.symmetric(
                vertical: 15, horizontal: 30), // Roomy button padding
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF3700B3), // Dark purple for app bar
          foregroundColor: Colors.white, // White app bar text
          elevation: 2, // Slight shadow for app bar
        ),
      ),
      home: const HomePage(),
    );
  }
}
