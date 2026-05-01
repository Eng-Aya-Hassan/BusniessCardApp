import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff00C6FA),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 115,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/pro.png'),
              ),
            ),
            Text(
              'Aya Hassan',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Text(
              'Software Engineer',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
              indent: 60,
              endIndent: 60,
            ),
            Card(
              elevation: 6,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, size: 23, color: Color(0xff00C6FA)),
                title: Text('+967776977667', style: TextStyle(fontSize: 20)),
              ),
            ),
            Card(
              elevation: 6,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.email, size: 23, color: Color(0xff00C6FA)),
                title: Text(
                  'ay00shhas126san@gmail.com',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              elevation: 6,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.language,
                  size: 23,
                  color: Color(0xff00C6FA),
                ),
                title: Text(
                  'https://aya-hassan-portfolio.vercel.app',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
