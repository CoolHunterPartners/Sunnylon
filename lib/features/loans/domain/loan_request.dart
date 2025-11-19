class LoanRequest {
  final String id;
  final String customerName;
  final double amount;
  final String status; // 'Aprobada', 'En revisión', 'Rechazada', 'Pendiente'
  final String? photoUrl; // Added for UI

  const LoanRequest({
    required this.id,
    required this.customerName,
    required this.amount,
    required this.status,
    this.photoUrl,
  });
}
