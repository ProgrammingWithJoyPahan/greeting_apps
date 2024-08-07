import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extended Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello, World!',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const Text('Welcome to Flutter!'),

              Image.network('https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/flutter-icon.png'),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: const Text('Press Me'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
