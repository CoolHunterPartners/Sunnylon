import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/clients_bloc.dart';
import 'blocs/clients_state.dart';
import 'widgets/client_card_widget.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Búsqueda pendiente de implementar'),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<ClientsBloc, ClientsState>(
        builder: (context, state) {
          switch (state) {
            case ClientsInitial():
            case ClientsLoading():
              return const Center(child: CircularProgressIndicator());
            case ClientsLoaded(clients: final clients):
              if (clients.isEmpty) {
                return const Center(child: Text('No hay clientes.'));
              }
              return ListView.builder(
                itemCount: clients.length,
                itemBuilder: (context, index) {
                  return ClientCard(client: clients[index]);
                },
              );
            case ClientsError(message: final message):
              return Center(child: Text('Error: $message'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Nuevo Cliente'),
              content: const Text('Pendiente de implementar'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
