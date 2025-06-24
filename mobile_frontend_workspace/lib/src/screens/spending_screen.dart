import 'package:flutter/material.dart';

// PUBLIC_INTERFACE
class SpendingScreen extends StatelessWidget {
  /// Displays spending tracking and visualization. Placeholder for chart.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bar_chart, size: 64, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(height: 20),
            Text(
              "Track your grocery spending",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 1.5),
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Center(
                  child: Text(
                "Spending chart here (coming soon)",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
