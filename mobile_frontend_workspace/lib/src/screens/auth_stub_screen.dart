import 'package:flutter/material.dart';

// PUBLIC_INTERFACE
class AuthStubScreen extends StatelessWidget {
  /// Stub for future user authentication flow (sign in/register UI).
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Text(
          "Authentication coming soon.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
