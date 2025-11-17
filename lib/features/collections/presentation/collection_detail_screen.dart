import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';
import 'package:sunnylon/features/collections/domain/collection_customer.dart';
import 'package:sunnylon/features/collections/presentation/widgets/mark_status_bottom_sheet.dart';

class CollectionDetailScreen extends StatelessWidget {
  const CollectionDetailScreen({super.key, required this.customer});

  final CollectionCustomer customer;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Detalle de Cobro'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 56,
                    // In a real app, this would be an Image.network
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          customer.name,
                          style: textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'ID: ${customer.id}',
                          style: textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          customer.status,
                          style: textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _buildInfoRow(
                'Monto a cobrar hoy',
                '\$${customer.todayAmount.toStringAsFixed(2)}',
                context,
                isBold: true,
              ),
              _buildInfoRow(
                'Saldo total pendiente',
                '\$${customer.totalPendingAmount.toStringAsFixed(2)}',
                context,
              ),
              _buildInfoRow('Días de atraso', '${customer.daysLate}', context),
              const SizedBox(height: 24),
              PrimaryButton(
                text: 'Registrar pago',
                onPressed: () {
                  context.push(
                    '/collections/register-payment',
                    extra: customer,
                  );
                },
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) =>
                          MarkStatusBottomSheet(customer: customer),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerHighest,
                    foregroundColor: colorScheme.onSurfaceVariant,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('No pagó / No localizado'),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Opciones',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _buildOptionRow('Ver historial de pagos', Icons.history, () {}),
              _buildOptionRow(
                'Ver dirección',
                Icons.location_on_outlined,
                () {},
              ),
              _buildOptionRow('Llamar', Icons.phone_outlined, () {}),
              _buildOptionRow('WhatsApp', Icons.message_outlined, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    String label,
    String value,
    BuildContext context, {
    bool isBold = false,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
          ),
          Text(
            value,
            style: textTheme.bodyLarge?.copyWith(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionRow(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
    );
  }
}
