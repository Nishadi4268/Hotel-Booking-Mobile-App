import 'package:flutter/material.dart';
import 'package:hotel_booking/booking.dart';

class SearchHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification icon functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.fromLTRB(10, 0, 16, 16), // Adjust top padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0),
              const Text(
                "Awissawella",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey), // Adjust border color as needed
                  borderRadius: BorderRadius.circular(
                      10), // Adjust border radius as needed
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Hotel By Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ), // Adjust the spacing between the icons
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Recommended Hotels",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelDetails(
                        imageUrl: 'assets/Hotel_3.jpg',
                        name: 'ARALIYA RESORT',
                        rating: 4.5,
                        location: 'Sithawaka, Awissawella.',
                        price: '5,000Rs - 10,000Rs /night',
                        bonuspoint: '10% OFF',
                        ContactPerson: ' Mr. Aruna Kumara',
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 249, 231, 253), // Change the background color
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/Hotel_3.jpg',
                              width: 250, // Adjust the width as needed
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              '10% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ARALIYA RESORT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.purple,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    ' ${4.8}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(width: 25),
                              Row(
                                children: [
                                  Icon(Icons.favorite, color: Colors.red),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.purple),
                          Text(
                            'Sithawaka, Awissawella',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '5,000Rs - 10,000Rs /night',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelDetails(
                        imageUrl: 'assets/Hotel_2.jpg',
                        name: 'SILVER RAY',
                        rating: 4.8,
                        location: 'Flower road, Awissawella.',
                        price: '2,000Rs - 8,000Rs /night',
                        bonuspoint: '12% OFF',
                        ContactPerson: ' Mrs. Sriyani Mendis',
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 249, 231, 253), // Change the background color
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/Hotel_2.jpg',
                              width: 250, // Adjust the width as needed
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              '12% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SILVER RAY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.purple,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    ' ${4.8}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(width: 25),
                              Row(
                                children: [
                                  Icon(Icons.favorite, color: Colors.red),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.purple),
                          Text(
                            'Flower road,Awissawella.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '2,000Rs - 8,000Rs /night',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelDetails(
                        imageUrl: 'assets/Hotel_1.png',
                        name: 'GOLDEN POINT HOTEL',
                        rating: 4,
                        location: 'Rathmalgama, Awissawella.',
                        price: '5,000Rs - 15,000Rs /night',
                        bonuspoint: '8% OFF',
                        ContactPerson: ' Mr. Indika Prasad',
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 249, 231, 253), // Change the background color
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/Hotel_1.png',
                              width: 250, // Adjust the width as needed
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              '8% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'GOLDEN POINT HOTEL',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.purple,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    ' ${4}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(width: 25),
                              Row(
                                children: [
                                  Icon(Icons.favorite, color: Colors.red),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.purple),
                          Text(
                            'Rathmalgama, Awissawella.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '5,000Rs - 15,000Rs /night',
                        style: TextStyle(fontSize: 13),
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

class HotelDetails extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final String location;
  final String price;
  final String bonuspoint;
  final String ContactPerson;

  const HotelDetails(
      {required this.imageUrl,
      required this.name,
      required this.rating,
      required this.location,
      required this.price,
      required this.bonuspoint,
      required this.ContactPerson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.purple),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    // Display rating and bonus point in one line
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          '$rating',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Text(
                      '                                         ',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '$bonuspoint',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(213, 114, 25, 17)),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.purple),
                    SizedBox(width: 8),
                    Text(
                      location,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Text(
                  // Small Description for the Hotel
                  'A wonderful place to relax and enjoy your vacation. Offering breathtaking views and top-notch amenities.',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 29, 84, 129)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60),
                Row(
                  children: [
                    // Contact Person with Phone and Email Icons
                    Icon(Icons.person, color: Colors.purple),
                    SizedBox(width: 8),
                    Text(
                      'Contact: $ContactPerson',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.phone),
                    SizedBox(width: 8),
                    SizedBox(width: 20),
                    Icon(Icons.email),
                    SizedBox(width: 8),
                  ],
                ),
                SizedBox(height: 26),
                Text(
                  'Price: $price',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Booking.dart when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Booking(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    fixedSize:
                        Size(400, 50), // Adjust width and height as needed
                  ),
                  child: Text('Book Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
