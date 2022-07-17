import 'package:flutter/material.dart';
import 'package:flutter_routes/router.dart';
import 'package:flutter_routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) =>
          MyRouter.generateRoute(settings),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.secondScreen,
                arguments: 'This is second screen');
          },
          child: const Text(
            'First screen',
            style: TextStyle(fontSize: 33),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;

  const SecondPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
