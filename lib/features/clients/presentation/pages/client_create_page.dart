import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

import '../../../../core/common/entities/key_value_option.dart';
import '../../../../core/common/widgets/success_view.dart';
import '../../../../core/config/router/app_routes.dart';
import '../../domain/entities/common_types.dart';
import '../../domain/entities/create_client_params.dart';
import '../blocs/create_client/create_client_bloc.dart';
import '../blocs/create_client/create_client_event.dart';
import '../blocs/create_client/create_client_state.dart';

class ClientCreatePage extends StatelessWidget {
  const ClientCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ClientCreateView();
  }
}

class _ClientCreateView extends StatefulWidget {
  const _ClientCreateView();

  @override
  State<_ClientCreateView> createState() => _ClientCreateViewState();
}

class _ClientCreateViewState extends State<_ClientCreateView> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _identificationController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  // State variables for dropdowns
  String? _selectedDocType;
  String? _selectedGender;
  DateTime? _selectedDate;

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _identificationController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
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

  void _resetForm() {
    _nameController.clear();
    _lastNameController.clear();
    _identificationController.clear();
    _phoneController.clear();
    _emailController.clear();
    setState(() {
      _selectedDocType = null;
      _selectedGender = null;
      _selectedDate = null;
    });
    context.read<CreateClientBloc>().add(ResetCreateClientEvent());
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_selectedDocType == null ||
          _selectedGender == null ||
          _selectedDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Por favor, completa todos los campos requeridos.'),
          ),
        );
        return;
      }

      final params = CreateClientParams(
        name: _nameController.text,
        lastName: _lastNameController.text,
        genderId: _selectedGender!,
        identificationTypeId: _selectedDocType!,
        identification: _identificationController.text,
        birthDay: _selectedDate!.toIso8601String().split('T').first,
        phone: _phoneController.text,
        email: _emailController.text,
      );

      context.read<CreateClientBloc>().add(SubmitCreateClientEvent(params));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Cliente'), centerTitle: true),
      body: BlocConsumer<CreateClientBloc, CreateClientState>(
        listener: (context, state) {
          if (state is CreateClientError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.failure.message)));
          }
        },
        builder: (context, state) {
          if (state is CreateClientSuccess) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SuccessView(message: state.message),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: PrimaryButton(
                              text: 'Crear otro cliente',
                              onPressed: _resetForm,
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                context.goNamed(AppRoute.clients.name);
                              },
                              child: const Text('Ir a la lista'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          if (state is CreateClientLoading &&
              state is! CreateClientSubmitting) {
            // Assuming initial loading.
          }

          // If initialized (even if submitting or error), show form if we have types
          CommonTypes? commonTypes;
          bool isLoading = state is CreateClientLoading;
          bool isSubmitting = state is CreateClientSubmitting;

          if (state is CreateClientLoaded) commonTypes = state.commonTypes;
          if (state is CreateClientSubmitting) {
            commonTypes = state.commonTypes;
          }
          if (state is CreateClientError) commonTypes = state.commonTypes;

          if (isLoading && commonTypes == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is CreateClientError && commonTypes == null) {
            return Center(child: Text('Error: ${state.failure.message}'));
          }

          if (commonTypes == null) {
            // Should not happen technically if loading handled above
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              if (isSubmitting) const LinearProgressIndicator(),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTextField('Nombre', _nameController),
                        const SizedBox(height: 16),
                        _buildTextField('Apellido', _lastNameController),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          'Género',
                          commonTypes.genders,
                          _selectedGender,
                          (val) => setState(() => _selectedGender = val),
                        ),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          'Tipo de Identificación',
                          commonTypes.identificationTypes,
                          _selectedDocType,
                          (val) => setState(() => _selectedDocType = val),
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          'Identificación',
                          _identificationController,
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16),
                        _buildDateField(context),
                        const SizedBox(height: 16),
                        _buildTextField(
                          'Teléfono',
                          _phoneController,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          'Email',
                          _emailController,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            text: 'Guardar',
                            onPressed: isSubmitting ? null : _submit,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) =>
          (value == null || value.isEmpty) ? 'Requerido' : null,
    );
  }

  Widget _buildDropdown(
    String label,
    List<KeyValueOption> options,
    String? value,
    ValueChanged<String?> onChanged,
  ) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: options
          .map((e) => DropdownMenuItem(value: e.key, child: Text(e.value)))
          .toList(),
      onChanged: onChanged,
      validator: (value) => value == null ? 'Requerido' : null,
    );
  }

  Widget _buildDateField(BuildContext context) {
    return InkWell(
      onTap: () => _selectDate(context),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: 'Fecha de nacimiento',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: const Icon(Icons.calendar_today),
        ),
        child: Text(
          _selectedDate == null
              ? 'Seleccionar fecha'
              : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
        ),
      ),
    );
  }
}
