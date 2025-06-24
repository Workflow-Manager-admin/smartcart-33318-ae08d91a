import 'package:flutter/material.dart';

// PUBLIC_INTERFACE
class SettingsScreen extends StatelessWidget {
  /// Displays user settings, including notifications and cloud sync.
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      children: [
        ListTile(
          leading: Icon(Icons.notifications, color: Theme.of(context).colorScheme.secondary),
          title: Text('Enable Notifications'),
          subtitle: Text('Get notified when items are low (coming soon)'),
          trailing: Switch(
            value: false,
            onChanged: null, // Not implemented yet
          ),
        ),
        const SizedBox(height: 18),
        ListTile(
          leading: Icon(Icons.cloud_sync, color: Theme.of(context).colorScheme.secondary),
          title: Text('Cloud Sync'),
          subtitle: Text('Sync your lists and data (coming soon)'),
          trailing: Switch(
            value: false,
            onChanged: null, // Not implemented yet
          ),
        ),
      ],
    );
  }
}
