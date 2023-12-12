import 'package:flutter/material.dart';

class AppEmpty extends StatelessWidget {
  const AppEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'NO POST',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/image/empty.png',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
