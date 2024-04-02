import 'package:flutter/material.dart';
import 'package:hotel_booking/find.dart';

class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              'assets/final.png', // replace with your image asset
              width: 338,
              height: 296,
            ),

            // Congratulations Text
            Text(
              'CONGRATULATIONS!!!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Dream Vacation Text
            Text(
              'Your hotel stay is secured. Counting down to your dream vacation!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),

            // Go Home Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Find()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: Text(
                'GO HOME',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // View E-Receipt Link
            TextButton(
              onPressed: () {
                // Add logic to view e-receipt
              },
              child: Text(
                'VIEW E-RECEIPT',
                style: TextStyle(
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
