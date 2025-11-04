import 'package:flutter/foundation.dart';
import '../Models/order.dart';

class OrderProvider with ChangeNotifier {
  List<Order> _orders = [];
  int _nextId = 1;

  List<Order> get orders => [..._orders];

  void addOrder(Order order) {
    // Order.copyWith currently supports updating days only.
    // Create a new Order instance with a generated id instead.
    final newOrder = Order(
      id: _nextId++,
      laptopId: order.laptopId,
      laptopName: order.laptopName,
      days: order.days,
      totalPrice: order.totalPrice,
    );
    _orders.add(newOrder);
    notifyListeners();
  }

  void updateOrder(int id, Order updatedOrder) {
    final index = _orders.indexWhere((order) => order.id == id);
    if (index >= 0) {
      _orders[index] = updatedOrder;
      notifyListeners();
    }
  }

  void deleteOrder(int id) {
    _orders.removeWhere((order) => order.id == id);
    notifyListeners();
  }
}