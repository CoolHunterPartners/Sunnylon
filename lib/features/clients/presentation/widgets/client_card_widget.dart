import 'package:flutter/material.dart';

import '../../domain/entities/client.dart';

class ClientCard extends StatelessWidget {
  final Client client;

  const ClientCard({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          child: Text(
            client.fullName.isNotEmpty ? client.fullName[0].toUpperCase() : '?',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        title: Text(
          client.fullName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            client.email,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
          // TODO: Navigate to detail/edit client
        },
      ),
    );
  }
}
