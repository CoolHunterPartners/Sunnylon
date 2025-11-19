import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class NewClientStep4Screen extends StatefulWidget {
  const NewClientStep4Screen({super.key});

  @override
  State<NewClientStep4Screen> createState() => _NewClientStep4ScreenState();
}

class _NewClientStep4ScreenState extends State<NewClientStep4Screen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();

  // State variables
  String? _selectedTerm;
  String? _selectedFrequency;

  // Mock calculation for summary
  String get _paymentSummary {
    if (_amountController.text.isEmpty ||
        _selectedTerm == null ||
        _selectedFrequency == null) {
      return 'Complete los campos para ver el cálculo';
    }

    try {
      final amount = double.parse(_amountController.text);
      final months = int.parse(_selectedTerm!);

      // Simple mock calculation (no interest logic for now)
      // Just dividing amount by total payments
      int totalPayments = 0;
      String freqLabel = '';

      switch (_selectedFrequency) {
        case 'semanal':
          totalPayments = months * 4;
          freqLabel = 'semanales';
          break;
        case 'quincenal':
          totalPayments = months * 2;
          freqLabel = 'quincenales';
          break;
        case 'mensual':
          totalPayments = months;
          freqLabel = 'mensuales';
          break;
      }

      if (totalPayments == 0) return '';

      final paymentAmount = amount / totalPayments;

      return 'Pagará \$${paymentAmount.toStringAsFixed(2)} $freqLabel durante $months meses';
    } catch (e) {
      return 'Error en el cálculo';
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del préstamo'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Progress Indicator
                    Center(
                      child: Text(
                        'Paso 4 de 5',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Progress Bar
                    Container(
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[800] : Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: 0.80,
                        child: Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Amount
                    _buildLabel(theme, 'Monto solicitado'),
                    TextFormField(
                      controller: _amountController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Ingresa el monto solicitado',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo es obligatorio';
                        }
                        if (double.tryParse(value) == null) {
                          return 'Ingresa un monto válido';
                        }
                        return null;
                      },
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 16),

                    // Term
                    _buildLabel(theme, 'Plazo'),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedTerm,
                      decoration: InputDecoration(
                        hintText: 'Selecciona el plazo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      items: const [
                        DropdownMenuItem(value: '3', child: Text('3 meses')),
                        DropdownMenuItem(value: '6', child: Text('6 meses')),
                        DropdownMenuItem(value: '12', child: Text('12 meses')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedTerm = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Este campo es obligatorio' : null,
                    ),
                    const SizedBox(height: 16),

                    // Frequency
                    _buildLabel(theme, 'Frecuencia de pago'),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedFrequency,
                      decoration: InputDecoration(
                        hintText: 'Selecciona la frecuencia de pago',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'semanal',
                          child: Text('Semanal'),
                        ),
                        DropdownMenuItem(
                          value: 'quincenal',
                          child: Text('Quincenal'),
                        ),
                        DropdownMenuItem(
                          value: 'mensual',
                          child: Text('Mensual'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedFrequency = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Este campo es obligatorio' : null,
                    ),
                    const SizedBox(height: 16),

                    // Notes
                    _buildLabel(theme, 'Notas (opcional)'),
                    TextFormField(
                      controller: _notesController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Escribe notas adicionales si es necesario',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Summary Box
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _paymentSummary,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Buttons
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              border: Border(top: BorderSide(color: theme.dividerColor)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: OutlinedButton(
                      onPressed: () => context.pop(),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: theme.dividerColor),
                        backgroundColor: theme.canvasColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        foregroundColor: theme.textTheme.bodyLarge?.color,
                      ),
                      child: const Text(
                        'Atrás',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: PrimaryButton(
                    text: 'Siguiente',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Navigate to Step 5
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Validación exitosa - Ir al paso 5'),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabel(ThemeData theme, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: theme.textTheme.bodyMedium?.color?.withOpacity(0.8),
        ),
      ),
    );
  }
}
