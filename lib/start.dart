import 'package:flutter/material.dart';
import 'package:hotel_booking/createacc.dart';
import 'package:hotel_booking/login.dart'; // Import the login page

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Image.asset(
                "assets/start.png",
                width: 280,
                height: 280,
                alignment: Alignment(0, -0.5),
              ),
              SizedBox(height: 10),
              const Text(
                "Unleash Your Inner Traveller...",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 1, 145),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 320,
                child: const Text(
                  "Your passport to a world of extraordinary hotel"
                  "experiences. Join us today and unlock a realm"
                  "of comfort, luxury, and adventure.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 45),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Createacc page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Createacc()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  backgroundColor: const Color.fromARGB(255, 124, 3, 146),
                ),
                child: const Text(
                  "Start Exploring",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  // Navigate to the Login page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
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
