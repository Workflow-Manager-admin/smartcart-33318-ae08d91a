import 'package:flutter/material.dart';

// PUBLIC_INTERFACE
class SuggestionsScreen extends StatelessWidget {
  /// Displays suggestions based on frequent items. Stub for now.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lightbulb, size: 64, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(height: 20),
          Text(
            "Suggestions coming soon!",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          Text(
            "Smart suggestions for frequent items will show up here.",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
