import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hysab Kytab',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                'assets/hysab_kytab_logo.jpg', // Replace with your logo image path
                height: 30,
              ),
              SizedBox(width: 10),
              Text(
                'Hysab Kytab',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Welcome to Hysab Kytab!'),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Navigation Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Add your navigation logic here
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Add your logout logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
