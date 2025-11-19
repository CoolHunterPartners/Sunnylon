import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class NewClientStep1Screen extends StatefulWidget {
  const NewClientStep1Screen({super.key});

  @override
  State<NewClientStep1Screen> createState() => _NewClientStep1ScreenState();
}

class _NewClientStep1ScreenState extends State<NewClientStep1Screen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _nameController = TextEditingController();
  final _docNumberController = TextEditingController();

  // State variables
  String? _selectedDocType;
  DateTime? _selectedDate;
  String? _selectedClientType;

  @override
  void dispose() {
    _nameController.dispose();
    _docNumberController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos del cliente'),
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
                        'Paso 1 de 4',
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
                        widthFactor: 0.25,
                        child: Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Full Name
                    _buildLabel(theme, 'Nombre completo'),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Ingresa el nombre completo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo es obligatorio.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    // Document Type
                    _buildLabel(theme, 'Tipo de documento'),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedDocType,
                      decoration: InputDecoration(
                        hintText: 'Selecciona el tipo de documento',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'cedula',
                          child: Text('Cédula'),
                        ),
                        DropdownMenuItem(
                          value: 'pasaporte',
                          child: Text('Pasaporte'),
                        ),
                        DropdownMenuItem(value: 'rnc', child: Text('RNC')),
                        DropdownMenuItem(value: 'otro', child: Text('Otro')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedDocType = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),

                    // Document Number
                    _buildLabel(theme, 'Número de documento'),
                    TextFormField(
                      controller: _docNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Ingresa el número de documento',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Date of Birth
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildLabel(theme, 'Fecha de nacimiento'),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            '(Opcional)',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.hintColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () => _selectDate(context),
                      borderRadius: BorderRadius.circular(12),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          hintText: 'Selecciona la fecha de nacimiento',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsets.all(16),
                          suffixIcon: const Icon(
                            Icons.calendar_today,
                            size: 20,
                          ),
                        ),
                        child: Text(
                          _selectedDate == null
                              ? 'mm/dd/yyyy'
                              : '${_selectedDate!.month}/${_selectedDate!.day}/${_selectedDate!.year}',
                          style: _selectedDate == null
                              ? theme.textTheme.bodyLarge?.copyWith(
                                  color: theme.hintColor,
                                )
                              : theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Client Type
                    _buildLabel(theme, 'Tipo de cliente o relación'),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedClientType,
                      decoration: InputDecoration(
                        hintText: 'Selecciona el tipo de cliente',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'nuevo', child: Text('Nuevo')),
                        DropdownMenuItem(
                          value: 'referido',
                          child: Text('Referido'),
                        ),
                        DropdownMenuItem(
                          value: 'recurrente',
                          child: Text('Recurrente'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedClientType = value;
                        });
                      },
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
                    height: 56, // Match PrimaryButton height usually
                    child: OutlinedButton(
                      onPressed: () => context.pop(),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: theme.dividerColor),
                        backgroundColor: theme.canvasColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ), // Match PrimaryButton
                        ),
                        foregroundColor: theme.textTheme.bodyLarge?.color,
                      ),
                      child: const Text(
                        'Cancelar',
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
                        context.pushNamed('new-client-step2');
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
        ),
      ),
    );
  }
}
