import 'package:flutter/material.dart';
import 'package:hotel_booking/final.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String selectedPaymentMethod =
      ''; // Keep track of the selected payment method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 139, 200, 249),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '4,000 Rs.',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '5% VAT included',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Payment Method',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentMethodTile(
                    imagePath: 'assets/creditcard.png',
                    label: 'Credit Card',
                    value: 'Credit Card',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  PaymentMethodTile(
                    imagePath: 'assets/debitcard.png',
                    label: 'Debit Card',
                    value: 'Debit Card',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  PaymentMethodTile(
                    imagePath: 'assets/paypal.png',
                    label: 'PayPal',
                    value: 'PayPal',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  PaymentMethodTile(
                    imagePath: 'assets/visa.png',
                    label: 'Visa',
                    value: 'Visa',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(labelText: 'Card Holder Name'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Card Number'),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Expiry Date'),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'CVV'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Final()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.all(16.0),
                ),
                child: Text(
                  'Pay Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  final String imagePath;
  final String label;
  final String value;
  final String? groupValue;
  final void Function(String?)? onChanged;

  const PaymentMethodTile({
    required this.imagePath,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Image.asset(
          imagePath,
          width: 35.0,
          height: 35.0,
        ),
        SizedBox(height: 8.0),
        Text(label),
      ],
    );
  }
}
