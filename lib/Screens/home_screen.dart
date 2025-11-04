import 'package:flutter/material.dart';
import '../Models/laptop.dart';
import '../Models/order.dart';
import 'order_screen.dart';
import 'account_screen.dart';
import 'package:provider/provider.dart';
import '../Providers/order_provider.dart';

// Mock data
final List<Laptop> mockLaptops = [
  Laptop(id: 1, name: 'Gaming Pro X', brand: 'AlienWare', pricePerDay: 150, imageUrl: 'assets/images/gaming_pro_x.png'),
  Laptop(id: 2, name: 'UltraBook Slim', brand: 'Lenovo', pricePerDay: 80, imageUrl: 'assets/images/ultrabook_slim.png'),
  Laptop(id: 3, name: 'MacBook Pro M2', brand: 'Apple', pricePerDay: 120, imageUrl: 'assets/images/macbook_pro_m2.png'),
  Laptop(id: 4, name: 'ZenBook OLED', brand: 'ASUS', pricePerDay: 90, imageUrl: 'assets/images/zenbook_oled.png')
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptop Rentals'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: mockLaptops.length,
        itemBuilder: (context, index) {
          final laptop = mockLaptops[index];
          return Card(
            elevation: 4,
            child: ListTile(
              leading: SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    laptop.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[200],
                      child: const Icon(Icons.laptop, color: Colors.grey, size: 32),
                    ),
                  ),
                ),
              ),
              title: Text(laptop.name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${laptop.brand} • \$${laptop.pricePerDay}/day'),
              trailing: ElevatedButton(
                onPressed: () {
                  final order = Order(
                    id: 0, // will be set by provider
                    laptopId: laptop.id,
                    laptopName: laptop.name,
                    days: 1,
                    totalPrice: laptop.pricePerDay,
                  );
                  Provider.of<OrderProvider>(context, listen: false).addOrder(order);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Added to orders!')),
                  );
                },
                child: Text('Rent'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => OrderScreen()));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AccountScreen()));
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}