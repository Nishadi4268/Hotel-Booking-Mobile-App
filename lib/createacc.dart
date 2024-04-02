import 'package:flutter/material.dart';
import 'package:hotel_booking/login.dart';

class Createacc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(' '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15.0,
            ), // Adjust the height to your desired position

            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  children: [
                    TextSpan(
                      text: 'Create ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Account',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'Fill your information below or register with your social account.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                backgroundColor: const Color.fromARGB(255, 124, 3, 146),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/google_icon.png'),
                  onPressed: () {
                    // Add your logic for handling Google sign up
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/facebook_icon.png'),
                  onPressed: () {
                    // Add your logic for handling Facebook sign up
                  },
                ),
              ],
            ),
            SizedBox(height: 26.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Signed up?'),
                TextButton(
                  onPressed: () {
                    // Navigate to the Login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 182, 26, 214),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
