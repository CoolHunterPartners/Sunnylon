class CollectionCustomer {
  final String id;
  final String name;
  final String status; // e.g. "Pendiente"
  final double todayAmount;
  final double totalPendingAmount;
  final int daysLate;

  const CollectionCustomer({
    required this.id,
    required this.name,
    required this.status,
    required this.todayAmount,
    required this.totalPendingAmount,
    required this.daysLate,
  });
}
