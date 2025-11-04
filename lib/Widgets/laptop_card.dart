// lib/widgets/laptop_card.dart
import 'package:flutter/material.dart';

class LaptopCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String brand;
  final double pricePerDay;
  final VoidCallback onRentPressed;

  const LaptopCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.brand,
    required this.pricePerDay,
    required this.onRentPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Laptop Image
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.broken_image, size: 40, color: Colors.grey[600]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Brand
                Text(
                  brand,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
                const SizedBox(height: 8),
                // Price
                Text(
                  '\$${pricePerDay.toStringAsFixed(2)} / day',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 12),
                // Rent Button
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: onRentPressed,
                    icon: const Icon(Icons.shopping_cart_outlined, size: 18),
                    label: const Text('Rent Now'),
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}