import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/pages/home_page2.dart';
import 'package:provider_test/repositories/user_repository_provider.dart';
import 'package:provider_test/services/user_service_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MultiProvider(
              providers: [
                Provider(
                  create: (context) => UserRepositoryProvider(name: "Fabri"),
                ),
                Provider(
                  create: (context) =>
                      UserServiceProvider(repository: context.read()),
                ),
              ],
              child: const HomePage2(),
            )
        /*
        '/': (context) => UserRepository(
              name: 'Fabri',
              child: Builder(
                builder: (context) {
                  return UserService(
                    repository: UserRepository.of(context)!,
                    child: const HomePage(),
                  );
                },
              ),
            )
            */
      },
    );
  }
}
