import 'package:flutter/material.dart';
import '../Models/order.dart';
import 'package:provider/provider.dart';
import '../Providers/order_provider.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<OrderProvider>(context).orders;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
        backgroundColor: Colors.blue,
      ),
      body: orders.isEmpty
          ? Center(child: Text('No orders yet.'))
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return OrderItem(order: order);
              },
            ),
    );
  }
}

class OrderItem extends StatefulWidget {
  final Order order;

  const OrderItem({Key? key, required this.order}) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  late int _days;
  late double _pricePerDay;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _days = widget.order.days;
    _pricePerDay = widget.order.totalPrice / widget.order.days;
    _controller = TextEditingController(text: _days.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.order.laptopName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text('Days: '),
                SizedBox(width: 10),
                SizedBox(
                  width: 80,
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _days = int.tryParse(value) ?? 1;
                        });
                      }
                    },
                  ),
                ),
                Spacer(),
                Text('\$${(_days * _pricePerDay).toStringAsFixed(2)}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Provider.of<OrderProvider>(context, listen: false).updateOrder(
                        widget.order.id, widget.order.copyWith(days: _days));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order updated')));
                  },
                  icon: Icon(Icons.edit, color: Colors.blue),
                  label: Text('Update', style: TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {
                    Provider.of<OrderProvider>(context, listen: false).deleteOrder(widget.order.id);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order deleted')));
                  },
                  icon: Icon(Icons.delete, color: Colors.red),
                  label: Text('Delete', style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}