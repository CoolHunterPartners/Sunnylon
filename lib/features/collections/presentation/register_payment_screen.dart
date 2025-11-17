import 'package:flutter/material.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';
import 'package:sunnylon/features/collections/domain/collection_customer.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/features/collections/presentation/widgets/payment_success_bottom_sheet.dart';

class RegisterPaymentScreen extends StatefulWidget {
  const RegisterPaymentScreen({super.key, required this.customer});

  final CollectionCustomer customer;

  @override
  State<RegisterPaymentScreen> createState() => _RegisterPaymentScreenState();
}

class _RegisterPaymentScreenState extends State<RegisterPaymentScreen> {
  String? _selectedPaymentMethod;
  final _paymentMethods = ['Efectivo', 'Transferencia', 'Tarjeta'];
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

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
        title: const Text('Registrar Pago'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 56,
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.customer.name,
                        style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.customer.status,
                        style: textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Monto a cobrar hoy: \$${widget.customer.todayAmount.toStringAsFixed(2)}',
                        style: textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text('Monto pagado', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            TextFormField(
              controller: _amountController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                hintText: 'Ingrese el monto',
                filled: true,
              ),
            ),
            const SizedBox(height: 16),
            Text('Método de pago', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _selectedPaymentMethod,
              hint: const Text('Seleccione un método'),
              items: _paymentMethods.map((String method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedPaymentMethod = newValue;
                });
              },
              decoration: const InputDecoration(
                filled: true,
              ),
            ),
            const SizedBox(height: 16),
            Text('Notas', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Notas adicionales',
                filled: true,
              ),
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              text: 'Confirmar pago',
              onPressed: () {
                final amount = double.tryParse(_amountController.text);
                if (amount == null) {
                  // Optional: Show an error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor, ingrese un monto válido.')),
                  );
                  return;
                }
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => PaymentSuccessBottomSheet(
                    customer: widget.customer,
                    amount: amount,
                  ),
                );
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
                  child: const Text('Cancelar'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
