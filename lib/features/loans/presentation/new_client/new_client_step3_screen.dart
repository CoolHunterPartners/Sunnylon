import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class NewClientStep3Screen extends StatefulWidget {
  const NewClientStep3Screen({super.key});

  @override
  State<NewClientStep3Screen> createState() => _NewClientStep3ScreenState();
}

class _AddressEntry {
  String type;
  final TextEditingController addressController;
  final TextEditingController cityController;

  _AddressEntry({
    this.type = 'Principal',
    String? initialAddress,
    String? initialCity,
  }) : addressController = TextEditingController(text: initialAddress),
       cityController = TextEditingController(text: initialCity);

  void dispose() {
    addressController.dispose();
    cityController.dispose();
  }
}

class _NewClientStep3ScreenState extends State<NewClientStep3Screen> {
  final _formKey = GlobalKey<FormState>();
  final List<_AddressEntry> _addressEntries = [];

  @override
  void initState() {
    super.initState();
    // Start with one default entry
    _addressEntries.add(_AddressEntry());
  }

  @override
  void dispose() {
    for (var entry in _addressEntries) {
      entry.dispose();
    }
    super.dispose();
  }

  void _addAddressEntry() {
    setState(() {
      _addressEntries.add(_AddressEntry());
    });
  }

  void _removeAddressEntry(int index) {
    setState(() {
      final entry = _addressEntries.removeAt(index);
      entry.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo préstamo'),
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
                        'Paso 3 de 4',
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
                        widthFactor: 0.75,
                        child: Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Title
                    Text(
                      'Direcciones del cliente',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Address Entries
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _addressEntries.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        return _buildAddressCard(index, theme, isDark);
                      },
                    ),

                    const SizedBox(height: 16),

                    // Add Button
                    InkWell(
                      onTap: _addAddressEntry,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.primary.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: theme.colorScheme.primary.withOpacity(0.05),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: theme.colorScheme.primary),
                            const SizedBox(width: 8),
                            Text(
                              'Agregar otra dirección',
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
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
                        context.pushNamed('new-client-step4');
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

  Widget _buildAddressCard(int index, ThemeData theme, bool isDark) {
    final entry = _addressEntries[index];
    final showDelete = _addressEntries.length > 1;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800]!.withOpacity(0.2) : Colors.white,
        border: Border.all(
          color: isDark ? Colors.grey[700]! : Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showDelete)
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () => _removeAddressEntry(index),
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.delete_outline,
                    color: theme.colorScheme.error,
                    size: 24,
                  ),
                ),
              ),
            ),

          // Address Type
          _buildLabel(theme, 'Tipo de dirección'),
          DropdownButtonFormField<String>(
            initialValue: entry.type,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
            items: const [
              DropdownMenuItem(value: 'Principal', child: Text('Principal')),
              DropdownMenuItem(value: 'Casa', child: Text('Casa')),
              DropdownMenuItem(value: 'Trabajo', child: Text('Trabajo')),
              DropdownMenuItem(value: 'Otro', child: Text('Otro')),
            ],
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  entry.type = value;
                });
              }
            },
          ),
          const SizedBox(height: 16),

          // Address
          _buildLabel(theme, 'Dirección'),
          TextFormField(
            controller: entry.addressController,
            decoration: InputDecoration(
              hintText: 'Calle, número, sector o barrio',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Este campo es obligatorio';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // City/Zone
          _buildLabel(theme, 'Ciudad o zona'),
          TextFormField(
            controller: entry.cityController,
            decoration: InputDecoration(
              hintText: 'Ingresa la ciudad o zona',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Este campo es obligatorio';
              }
              return null;
            },
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
