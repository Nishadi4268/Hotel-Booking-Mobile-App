import 'package:flutter/material.dart';
import 'package:hotel_booking/createacc.dart';
import 'package:hotel_booking/forgotpassword.dart'; // Import the forgotpassword.dart page
import 'package:hotel_booking/find.dart'; // Import the find.dart page

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(' '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome ',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 46.0),
            Center(
              child: Text(
                'We missed you! Login to continue your journey with us.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 26.0),
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
            SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Navigate to the ForgotPassword page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 204, 21, 217),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 26.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Find page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Find()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/google_icon.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/facebook_icon.png'),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to the Createacc page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Createacc()),
                    );
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Color.fromARGB(255, 199, 33, 218),
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
