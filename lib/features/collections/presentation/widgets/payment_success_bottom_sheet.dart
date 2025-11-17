import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';
import 'package:sunnylon/features/collections/domain/collection_customer.dart';

class PaymentSuccessBottomSheet extends StatelessWidget {
  const PaymentSuccessBottomSheet({
    super.key,
    required this.customer,
    required this.amount,
  });

  final CollectionCustomer customer;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context.pop(),
            ),
          ),
          Text(
            'Pago registrado',
            style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Si estás sin señal, sincronizaremos este pago cuando vuelvas a tener conexión',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _buildInfoRow(
            icon: Icons.person_outline,
            title: 'Cliente',
            subtitle: customer.name,
            context: context,
            isAvatar: true,
          ),
          _buildInfoRow(
            icon: Icons.attach_money,
            title: 'Monto',
            subtitle: '\$${amount.toStringAsFixed(2)}',
            context: context,
          ),
          _buildInfoRow(
            icon: Icons.calendar_today_outlined,
            title: 'Fecha y Hora',
            subtitle: _getCurrentDateTime(),
            context: context,
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            text: 'Volver a cobros',
            onPressed: () {
              // Pop until we get back to the home screen.
              while(context.canPop()) {
                context.pop();
              }
            },
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.surfaceVariant,
                foregroundColor: colorScheme.onSurfaceVariant,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Ver detalle del cobro'),
            ),
          ),
        ],
      ),
    );
  }

  String _getCurrentDateTime() {
    final now = DateTime.now();
    // Example format: 15 de Mayo, 2024, 10:30 AM
    // This requires the intl package and proper localization setup for Spanish.
    // For now, we'll use a simple format.
    return '${now.day} de ${_getMonthName(now.month)}, ${now.year}, ${_formatTime(now)}';
  }

  String _getMonthName(int month) {
    const monthNames = [
      'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
      'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
    ];
    return monthNames[month - 1];
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String title,
    required String subtitle,
    required BuildContext context,
    bool isAvatar = false,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          if (isAvatar)
            const CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey,
            )
          else
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: colorScheme.onSurfaceVariant),
            ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: textTheme.bodyLarge),
              Text(subtitle, style: textTheme.bodyMedium?.copyWith(color: Colors.grey[600])),
            ],
          ),
        ],
      ),
    );
  }
}
