import 'package:flutter/material.dart';
import 'package:hotel_booking/payment.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Hotel Information:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('Hotel Name: Your Hotel Name'),
            Text('Location: Hotel Location'),
            Text('Price: \$150 per night'),
            SizedBox(height: 16),
            Text(
              'Booking Details:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('Booking Date: 2024-01-20'),
            Text('Check-in: 2024-02-01'),
            Text('Check-out: 2024-02-05'),
            Text('Guests: 2 Adults'),
            Text('Rooms: 1 Room'),
            SizedBox(height: 16),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(height: 16),
            Text(
              'Payment Details:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('Amount: \$150'),
            Text('Total: \$200'),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Navigate to the PaymentPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Payment()),
                );
              },
              child: Text('CONTINUE TO PAYMENT'),
            ),
          ],
        ),
      ),
    );
  }
}
