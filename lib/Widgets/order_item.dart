// lib/widgets/order_item.dart
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final int id;
  final String laptopName;
  final int days;
  final double totalPrice;
  final VoidCallback onEditPressed;
  final VoidCallback onDeletePressed;

  const OrderItem({
    super.key,
    required this.id,
    required this.laptopName,
    required this.days,
    required this.totalPrice,
    required this.onEditPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          laptopName,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            Text('Rental Duration: $days ${days == 1 ? 'day' : 'days'}'),
            const SizedBox(height: 4),
            Text(
              'Total: \$${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ],
        ),
        trailing: SizedBox(
          width: 90,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: onEditPressed,
                splashRadius: 20,
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: onDeletePressed,
                splashRadius: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}