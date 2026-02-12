import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sunnylon/core/common/constants/app_images.dart';
import 'package:sunnylon/core/common/extensions/responsive/responsive_extensions.dart';

class SuccessView extends StatelessWidget {
  final String message;
  final String? description;
  final VoidCallback? onAnimationFinished;

  const SuccessView({
    super.key,
    required this.message,
    this.description,
    this.onAnimationFinished,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            AppLottieImages.success,
            width: 200.dW,
            height: 200.dH,
            fit: BoxFit.contain,
            repeat: false,
          ),
          const SizedBox(height: 24),
          Text(
            message,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          if (description != null) ...[
            const SizedBox(height: 12),
            Text(
              description!,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
