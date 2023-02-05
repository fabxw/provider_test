import 'package:flutter/material.dart';
import 'package:provider_test/services/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
        ),
        body: Center(
          child: Text(
              UserService.of(context)?.getName() ?? 'Service não encontrado'),
        ));
  }
}
