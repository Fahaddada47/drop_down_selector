import 'package:flutter/material.dart';
import 'package:drop_down_selector/drop_down_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDownSelector Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedPaymentMethod;

  final List<String> _paymentMethods = [
    'Credit Card',
    'PayPal',
    'Bank Transfer',
    'Cash'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDownSelector Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropDownSelector(
              selectedValue: _selectedPaymentMethod,
              items: _paymentMethods,
              hintText: 'Select payment method',
              onChanged: (newValue) {
                setState(() {
                  _selectedPaymentMethod = newValue;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a payment method';
                }
                return null;
              },
              borderColor: Colors.grey,
              focusedBorderColor: Colors.blue,
              fontSize: 16.0,
              hintColor: Colors.grey.shade600,
              labelColor: Colors.blue.shade800,
              borderRadius: 12.0,
              contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
