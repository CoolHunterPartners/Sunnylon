import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/widgets/primary_button.dart';
import 'package:sunnylon/features/loans/domain/loan_request.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});

  // Mock Data
  final List<LoanRequest> _requests = const [
    LoanRequest(
      id: '1',
      customerName: 'Ana María Rojas',
      amount: 1500.00,
      status: 'Aprobada',
      photoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCRnJa9BUBUberPviHdxUt5QH58AsvOotIfr_bhWm0Pd0p-fwQpgMtw42-XgZcyRNWY7HNpZbVpUUeqFC_uhdvhSHlSrHHf1ihFGX_vOA2hcuLfStQ_w98f7MFBSY1hVV7OSpaganPt3SUOrjaU33xbGwK3nPZWo8fcKS4HLcnxvpIlfsBJZ5R7geE4mnYHFBoUqaVpwGIBEe471cZUZbnbnzm3PC7xlGFnB56q2zvFYzVZgEaKdhrPh4MD3HG7YJubrN2t93UKc8er',
    ),
    LoanRequest(
      id: '2',
      customerName: 'Carlos Gutiérrez',
      amount: 3000.00,
      status: 'En revisión',
      photoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA8H9RulKYOmHefGZ1k3G3mqSbMWmLpEFE7QKebZ9FVC4ff4-RHxTXhX1lAumIbFSoQDnleXJOoyxOAOhX7e6YFZnIKFGM_ulyqpl0bn8YUZwRTbFb3wzzSif2QYzpekTjPM4RsRVm-d4rzSnjN_VpjXaGKNrGz9WDBxBKEqTVXbdi-bkuUT3fa7J0NBhA9G8hz24SHSNwPfVEuRpPpw0iXrtMxKNO5BalGgiMCTd2zHwmnaMV1fZWZFtG7-4VWxtKRZiF9wRUd7aRC',
    ),
    LoanRequest(
      id: '3',
      customerName: 'Luisa Fernández',
      amount: 800.00,
      status: 'Rechazada',
      photoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAsPxa_PkzxA0lG7BpfTiUNkLs4HEsHvX0sSTXjzcoIV5RXhcqF7PyG7Od-_EWtypQA8GYMp83O8Ql2WVVmCNx6OpP5ZNgawoqkT_0fM2ephFo5E2eG-Vj7DpDWxbbXhBQ2r6yRDu-nw4lJV_ha0gWIsW6g7IIJ1WY9jfhlQ-ZUeeW4e_NJIt5poeWG1DWEBSm-qPaUEG7ZgRgCB1-ZIZAYHMjBFijV0uLB80kfyiypVQxxVWjnPre17RpnIc9beCNmns6Fg6rk0y0q',
    ),
    LoanRequest(
      id: '4',
      customerName: 'Jorge Méndez',
      amount: 2200.00,
      status: 'Pendiente',
      photoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCd4LTscBFmpGKUMwGAD5E3fJY2oTddzaz1DsEopCMA0aALMxmTvvBx-zVB0XxGJvrEIRez0kY1aFqyOS7F8IwkmYxFG21OOhnWiY8mArbKkIep5YLfC8FYir62_udvma10XxIYkQecFkYUuCpYCmLRPopuPmBcDWnceEoEuZsjPmfe80HStGG6rft60TAAqOpjXKKJoYvcMN_8TYwjFnxuj4cHZPMqfiIJ8XuZ6L9z2XEQnzs_jCO1MRISCprJURJejuF1cl32feio',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes de préstamo'),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.sync), onPressed: () {})],
      ),
      body: Stack(
        children: [
          ListView.separated(
            padding: const EdgeInsets.only(bottom: 100, top: 8),
            itemCount: _requests.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final request = _requests[index];
              return _LoanRequestTile(request: request);
            },
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: PrimaryButton(
              text: 'Nueva solicitud de préstamo',
              onPressed: () {
                context.pushNamed('new-loan-type');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LoanRequestTile extends StatelessWidget {
  final LoanRequest request;

  const _LoanRequestTile({required this.request});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800]!.withOpacity(0.5) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: request.photoUrl != null
                ? NetworkImage(request.photoUrl!)
                : null,
            backgroundColor: theme.colorScheme.primaryContainer,
            child: request.photoUrl == null
                ? Text(
                    request.customerName.substring(0, 1),
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  request.customerName,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$${request.amount.toStringAsFixed(2)}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          _StatusBadge(status: request.status),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;

    switch (status.toLowerCase()) {
      case 'aprobada':
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        break;
      case 'en revisión':
        backgroundColor = Colors.amber.shade100;
        textColor = Colors.amber.shade800;
        break;
      case 'rechazada':
        backgroundColor = Colors.red.shade100;
        textColor = Colors.red.shade800;
        break;
      case 'pendiente':
        backgroundColor = Colors.blue.shade100;
        textColor = Colors.blue.shade800;
        break;
      default:
        backgroundColor = Colors.grey.shade100;
        textColor = Colors.grey.shade800;
    }

    // Adjust for dark mode if needed, but simple shades work ok usually.
    // For better dark mode support:
    final isDark = Theme.of(context).brightness == Brightness.dark;
    if (isDark) {
      backgroundColor = backgroundColor.withOpacity(0.2);
      textColor = textColor.withOpacity(
        0.9,
      ); // Make text lighter or keep it colored but readable
      // Actually, standard material approach for badges in dark mode is usually container color with onContainer text.
      // But let's stick to the design reference colors roughly.
      switch (status.toLowerCase()) {
        case 'aprobada':
          textColor = Colors.green.shade300;
          break;
        case 'en revisión':
          textColor = Colors.amber.shade300;
          break;
        case 'rechazada':
          textColor = Colors.red.shade300;
          break;
        case 'pendiente':
          textColor = Colors.blue.shade300;
          break;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: textColor, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(
            status,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
