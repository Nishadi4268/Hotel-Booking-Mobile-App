import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hotel_booking/searchhotel.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  int guestsCount = 1;
  int roomsCount = 1;

  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now().add(Duration(days: 1));

  Future<void> _selectDate(BuildContext context, bool isCheckInDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isCheckInDate ? checkInDate : checkOutDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        if (isCheckInDate) {
          checkInDate = picked;
        } else {
          checkOutDate = picked;
        }
      });
    }
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: ListView(
        padding: EdgeInsets.all(6.0),
        children: [
          // Hotel Image
          Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/find.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Welcome Text
          SizedBox(height: 16.0),
          Text(
            'Welcome to your next Adventure!',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Location Input
          SizedBox(height: 16.0),
          Text('Where?'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter location',
            ),
          ),

          // Check-in and Check-out
          SizedBox(height: 19.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Check-in'),
                    InkWell(
                      onTap: () => _selectDate(context, true),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Select date',
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              DateFormat('MM/dd/yyyy').format(checkInDate),
                            ),
                            Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Check-out'),
                    InkWell(
                      onTap: () => _selectDate(context, false),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Select date',
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              DateFormat('MM/dd/yyyy').format(checkOutDate),
                            ),
                            Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Guests and Rooms
          SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Guests'),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (guestsCount > 1) guestsCount--;
                            });
                          },
                        ),
                        Text('$guestsCount'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              guestsCount++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rooms'),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (roomsCount > 1) roomsCount--;
                            });
                          },
                        ),
                        Text('$roomsCount'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              roomsCount++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Find Button
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchHotel(
                      // Pass necessary parameters to the Booking page
                      ),
                ),
              );
            },
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchHotel()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.all(16.0),
              ),
              child: Text(
                'FIND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
