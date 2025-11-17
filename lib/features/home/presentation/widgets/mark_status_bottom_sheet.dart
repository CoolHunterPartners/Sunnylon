import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';
import 'package:sunnylon/features/home/domain/collection_customer.dart';

class MarkStatusBottomSheet extends StatefulWidget {
  const MarkStatusBottomSheet({super.key, required this.customer});

  final CollectionCustomer customer;

  @override
  State<MarkStatusBottomSheet> createState() => _MarkStatusBottomSheetState();
}

class _MarkStatusBottomSheetState extends State<MarkStatusBottomSheet> {
  String _selectedStatus = 'No pagó';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.customer.name,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => context.pop(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '¿Qué pasó con este cobro?',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildStatusOption('No pagó', context),
            _buildStatusOption('No estaba en casa', context),
            _buildStatusOption('Dirección incorrecta', context),
            _buildStatusOption('Otro', context),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Notas',
                filled: true,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => context.pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.surfaceContainerHighest,
                      foregroundColor: colorScheme.onSurfaceVariant,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Cancelar'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: PrimaryButton(
                    text: 'Guardar estado',
                    onPressed: () {
                      // TODO: Implement save logic
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusOption(String title, BuildContext context) {
    return RadioListTile<String>(
      title: Text(title),
      value: title,
      groupValue: _selectedStatus,
      onChanged: (String? value) {
        if (value != null) {
          setState(() {
            _selectedStatus = value;
          });
        }
      },
      contentPadding: EdgeInsets.zero,
    );
  }
}
