
import 'package:flutter/material.dart';
import '../Widgets/order_item.dart'; 

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade50,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
        
                _buildProfileSection(context),

                const SizedBox(height: 30),

              
                _buildAccountOptions(context),

                const SizedBox(height: 30),

         
                _buildOrderSummary(),

                const SizedBox(height: 30),

                
                _buildLogoutButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.blue[100],
          child: Icon(Icons.person, size: 60, color: Colors.blue[800]),
        ),
        const SizedBox(height: 16),
        Text(
          'John Doe',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
        ),
        const SizedBox(height: 4),
        Text(
          'john.doe@example.com',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ],
    );
  }

  Widget _buildAccountOptions(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.person_outline, color: Colors.blue),
              title: const Text('Edit Profile'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit Profile Feature Coming Soon')),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings_outlined, color: Colors.blue),
              title: const Text('Settings'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Settings Feature Coming Soon')),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.history_outlined, color: Colors.blue),
              title: const Text('Order History'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('View Your Past Orders')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Rental Summary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Active Rentals', style: TextStyle(color: Colors.grey[600])),
                Chip(
                  label: const Text('2'),
                  backgroundColor: Colors.green[100],
                  labelStyle: TextStyle(color: Colors.green[800]),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Spent', style: TextStyle(color: Colors.grey[600])),
                Text('\$270.00', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 12),
          
            OrderItem(
              id: 1,
              laptopName: 'Gaming Pro X',
              days: 2,
              totalPrice: 300.0,
              onEditPressed: () {
              },
              onDeletePressed: () {
          
              },
            ),
            OrderItem(
              id: 2,
              laptopName: 'UltraBook Slim',
              days: 1,
              totalPrice: 80.0,
              onEditPressed: () {},
              onDeletePressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: () {
          // Simulate logout
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('You have been logged out.')),
          );
      
        },
        icon: const Icon(Icons.logout, size: 18),
        label: const Text('Logout'),
        style: FilledButton.styleFrom(
          backgroundColor: Colors.red[400],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}