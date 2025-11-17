import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/common/constants/app_images.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/login'),
        ),
        title: const Text('Restablecer Contraseña'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 350),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 1. App Icon
                  Image.asset(AppImages.appIcon, height: 80, width: 80),
                  const SizedBox(height: 48),

                  // 2. Instructions
                  Text(
                    'Ingresa el correo electrónico asociado a tu cuenta y te enviaremos un correo con instrucciones para restablecer tu contraseña.',
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // 3. Email Input
                  Text(
                    'Correo electrónico',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Ingresa tu correo electrónico',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: colorScheme.onSurface.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // 4. Reset Button
                  PrimaryButton(
                    text: 'Restablecer Contraseña',
                    onPressed: () {
                      // Logic to be added later
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
