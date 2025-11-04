import 'package:flutter/material.dart';
import 'Providers/order_provider.dart';
import 'Screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderProvider(),
      child: MaterialApp(
        title: 'Laptop Rental',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
  home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}