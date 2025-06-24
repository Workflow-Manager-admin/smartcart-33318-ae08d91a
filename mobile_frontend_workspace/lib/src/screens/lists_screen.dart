import 'package:flutter/material.dart';
import 'auth_stub_screen.dart';

// PUBLIC_INTERFACE
class ListsScreen extends StatelessWidget {
  /// Displays the user's grocery lists or empty state if none exist.
  @override
  Widget build(BuildContext context) {
    // TODO: Add logic for showing lists or empty state.
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.playlist_add, size: 64, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 20),
          Text(
            "No lists yet.",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(
            "Add your first grocery list to get started!",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // In a real app this might open auth flow if required
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AuthStubScreen()));
            },
            child: Text("Sign in to create list"),
          ),
        ],
      ),
    );
  }
}
