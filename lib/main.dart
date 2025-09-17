import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 KotakBiruJempol(icon: Icons.favorite, teks: "Love 1"),
                  KotakBiruJempol(icon: Icons.favorite, teks: "Love 3"),
              ],
            ),
            SizedBox(width: 10),
            Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KotakBiruJempol(icon: Icons.favorite, teks: "Like 2"),
                KotakBiruJempol(icon: Icons.favorite, teks: "Love 4"),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {

  final IconData icon;
  final String teks;

   KotakBiruJempol({required this.icon, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ), 
      child: Icon(
            icon,
            color: Colors.red,
            size: 40,
          ),
     ),
          SizedBox(height: 5),
          Text(
            teks,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );  
  }
}
