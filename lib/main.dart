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
        primarySwatch: Colors.blue,
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
              'https://example.com/movie_poster.jpg', // Replace with actual image URL
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
