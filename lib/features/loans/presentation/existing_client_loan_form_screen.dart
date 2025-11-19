import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class ExistingClientLoanFormScreen extends StatefulWidget {
  const ExistingClientLoanFormScreen({super.key});

  @override
  State<ExistingClientLoanFormScreen> createState() => _ExistingClientLoanFormScreenState();
}

class _ExistingClientLoanFormScreenState extends State<ExistingClientLoanFormScreen> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();
  
  // State variables
  String? _selectedTerm;
  String? _selectedFrequency;

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
        title: const Text('Nueva solicitud de préstamo'),
        centerTitle: true,
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
                    Text(
                      'Paso 2 de 3',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Client Name
                    Text(
                      'Cliente: Mariana Rodríguez',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 24),
                    
                    // Amount Field
                    _buildLabel(theme, 'Monto solicitado'),
                    TextFormField(
                      controller: _amountController,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: '\$1,000.00',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Term Select
                    _buildLabel(theme, 'Plazo'),
                    DropdownButtonFormField<String>(
                      value: _selectedTerm,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      hint: const Text('Seleccionar plazo'),
                      items: const [
                        DropdownMenuItem(value: '30', child: Text('30 días')),
                        DropdownMenuItem(value: '60', child: Text('60 días')),
                        DropdownMenuItem(value: '90', child: Text('90 días')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedTerm = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    
                    // Frequency Select
                    _buildLabel(theme, 'Frecuencia de pago'),
                    DropdownButtonFormField<String>(
                      value: _selectedFrequency,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      hint: const Text('Seleccionar frecuencia'),
                      items: const [
                        DropdownMenuItem(value: 'diario', child: Text('Diario')),
                        DropdownMenuItem(value: 'semanal', child: Text('Semanal')),
                        DropdownMenuItem(value: 'quincenal', child: Text('Quincenal')),
                        DropdownMenuItem(value: 'mensual', child: Text('Mensual')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedFrequency = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    
                    // Notes Field
                    _buildLabel(theme, 'Notas (opcional)'),
                    TextFormField(
                      controller: _notesController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Añadir detalles adicionales...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    
                    // Dynamic Summary
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Pagará \$500 diarios durante 30 días',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Action Buttons
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: 'Enviar solicitud',
                    onPressed: () {
                      // Mock submission
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Solicitud enviada')),
                      );
                      context.pop(); // Go back to list
                      context.pop(); // Go back to type selection (actually we want to go back to list, so pop twice or goNamed)
                      // Better: context.goNamed('loans');
                    },
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    onPressed: () => context.pop(),
                    style: TextButton.styleFrom(
                      backgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
                      foregroundColor: isDark ? Colors.white : Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
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
        ),
      ),
    );
  }
}
