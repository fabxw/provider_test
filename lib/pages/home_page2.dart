import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/services/user_service_provider.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
        ),
        body: Center(
          child: Text(context.read<UserServiceProvider>().getName()),
        ));
  }
}
