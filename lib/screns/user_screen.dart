import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_application/routes/routes.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('User Profile'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('User Products'),
            ),
            ElevatedButton(
              onPressed: () {
                context.replaceNamed(Routes.home);
              },
              child: const Text('cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
