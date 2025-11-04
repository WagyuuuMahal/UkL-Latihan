class Order {
  final int id;
  final int laptopId;
  final String laptopName;
  final int days;
  final double totalPrice;

  Order({
    required this.id,
    required this.laptopId,
    required this.laptopName,
    required this.days,
    required this.totalPrice,
  });

  Order copyWith({int? days}) {
    return Order(
      id: id,
      laptopId: laptopId,
      laptopName: laptopName,
      days: days ?? this.days,
      totalPrice: (days ?? this.days) * _getBasePrice(),
    );
  }

  double _getBasePrice() {
    // In real app, you'd fetch from Laptop model
    // For simplicity, we assume price = totalPrice / days
    return totalPrice / days;
  }
}