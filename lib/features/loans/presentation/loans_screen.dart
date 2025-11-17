import 'package:flutter/material.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Préstamos'),
      ),
      body: const Center(
        child: Text('Pantalla de Préstamos'),
      ),
    );
  }
}
