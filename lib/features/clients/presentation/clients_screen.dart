import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/bottom_loader.dart';
import '../../../../core/config/router/app_navigator.dart';
import 'blocs/clients_bloc.dart';
import 'blocs/clients_event.dart';
import 'blocs/clients_state.dart';
import 'widgets/client_card_widget.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<ClientsBloc>().add(const ClientsNextPageRequested());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

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
            case ClientsLoaded(
              clients: final clients,
              hasReachedMax: final hasReachedMax,
            ):
              if (clients.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<ClientsBloc>().add(const ClientsRefreshed());
                  },
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: const [
                      SizedBox(height: 200),
                      Center(child: Text('No hay clientes.')),
                    ],
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ClientsBloc>().add(const ClientsRefreshed());
                },
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: hasReachedMax
                      ? clients.length
                      : clients.length + 1,
                  itemBuilder: (context, index) {
                    if (index >= clients.length) {
                      return const BottomLoader();
                    }
                    return ClientCard(client: clients[index]);
                  },
                ),
              );
            case ClientsError(message: final message):
              return Center(child: Text('Error: $message'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppNavigator.goToCreateClient(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
