import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket Booking',
      theme: ThemeData(
        brightness: Brightness.dark, // Set the brightness to dark
        primarySwatch: Colors.blue, // Set the primary color to blue
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MoviePosterPage(),
        '/booking': (context) => BookingPage(),
      },
    );
  }
}

class MoviePosterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Poster'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://drive.usercontent.google.com/u/0/uc?id=18P5oCeyhfAUYNYumcMpu-lgzTKUuc3Cc&export=download', // Replace with actual image URL
              width: 200,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/booking');
              },
              child: Text('Book Tickets'),
            ),
          ],
        ),
      ),
    );
  }
}

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Tickets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select Seats for the Show',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Add seat selection UI here
            ElevatedButton(
              onPressed: () {
                // Implement booking logic
              },
              child: Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
