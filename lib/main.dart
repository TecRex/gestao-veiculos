import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GestaoVeiculosApp());
}

class GestaoVeiculosApp extends StatelessWidget {
  const GestaoVeiculosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestão de Veículos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
