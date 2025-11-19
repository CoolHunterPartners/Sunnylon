import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> showExitWizardDialog(BuildContext context) async {
  final shouldExit = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('¿Salir del proceso?'),
      content: const Text('Si sales ahora, perderás los datos ingresados.'),
      actions: [
        TextButton(
          onPressed: () => context.pop(false),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () => context.pop(true),
          child: const Text('Salir'),
        ),
      ],
    ),
  );

  if (shouldExit == true && context.mounted) {
    context.goNamed('loans');
  }
}

class ExitWizardButton extends StatelessWidget {
  const ExitWizardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.close),
      onPressed: () => showExitWizardDialog(context),
    );
  }
}
