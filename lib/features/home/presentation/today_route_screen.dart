import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sunnylon/core/common/constants/app_images.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';

class TodayRouteScreen extends StatelessWidget {
  const TodayRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppImages.appIcon),
        ),
        title: Text(
          'Ruta de Hoy',
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action for search icon
            },
          ),
        ],
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                16.0,
                0,
                16.0,
                150.0,
              ), // Padding at the bottom for the button
              child: Column(
                children: [
                  _MapCard(),
                  const SizedBox(height: 16),
                  _SummaryCard(),
                  const SizedBox(height: 16),
                  _ClientList(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Position above the BottomNavBar
            left: 24,
            right: 24,
            child: Center(
              child: PrimaryButton(
                text: 'Iniciar Ruta',
                onPressed: () {},
                icon: Icons.navigation_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MapCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: FlutterMap(
          options: const MapOptions(
            initialCenter: LatLng(
              18.5333,
              -69.8333,
            ), // Villa Mella, Dominican Republic
            initialZoom: 15.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c'],
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ruta de Hoy - Resumen', style: textTheme.bodySmall),
                const SizedBox(height: 4),
                Text(
                  '\$180.00 Recaudado',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text('3/5 Clientes Visitados', style: textTheme.bodySmall),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.map_outlined,
                color: colorScheme.primary,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClientList extends StatelessWidget {
  final clients = [
    {
      'name': '1. Alejandro Vargas',
      'amount': '\$150.00',
      'address': 'Calle Falsa 123, Springfield',
      'status': Colors.green,
    },
    {
      'name': '2. Carlos Sanchez',
      'amount': '\$75.00',
      'address': 'Boulevard del Sol 45',
      'status': Colors.yellow,
    },
    {
      'name': '3. Sofia Gomez',
      'amount': '\$50.00',
      'address': 'Plaza Mayor 10',
      'status': Colors.yellow,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: clients.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final client = clients[index];
        return _ClientListItem(
          name: client['name'] as String,
          amount: client['amount'] as String,
          address: client['address'] as String,
          statusColor: client['status'] as Color,
        );
      },
    );
  }
}

class _ClientListItem extends StatelessWidget {
  const _ClientListItem({
    required this.name,
    required this.amount,
    required this.address,
    required this.statusColor,
  });

  final String name;
  final String amount;
  final String address;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 24,
              // In a real app, this would be an Image.network
              backgroundColor: Colors.grey,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(amount, style: textTheme.bodyMedium),
                  const SizedBox(height: 4),
                  Text(address, style: textTheme.bodySmall),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: statusColor,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
