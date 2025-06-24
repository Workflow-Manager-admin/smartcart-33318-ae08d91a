import 'package:flutter/material.dart';
import 'src/theme/app_theme.dart';
import 'src/screens/lists_screen.dart';
import 'src/screens/suggestions_screen.dart';
import 'src/screens/spending_screen.dart';
import 'src/screens/settings_screen.dart';

void main() {
  runApp(SmartCartApp());
}

// PUBLIC_INTERFACE
class SmartCartApp extends StatelessWidget {
  /// Root of the SmartCart app. Sets up theming and main navigation.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartCart',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MainNavigation(),
    );
  }
}

// PUBLIC_INTERFACE
class MainNavigation extends StatefulWidget {
  /// Widget for main app navigation using a bottom tab bar.
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ListsScreen(),
    SuggestionsScreen(),
    SpendingScreen(),
    SettingsScreen(),
  ];

  final List<String> _titles = ['Lists', 'Suggestions', 'Spending', 'Settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).colorScheme.background,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Lists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Suggestions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Spending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
