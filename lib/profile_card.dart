import 'package:flutter/material.dart';

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage:
                  AssetImage('assets/profile.jpg'),
              ),
              SizedBox(height: 12),
              Text(
                'Elsa Rose',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'B.Tech – Artificial Intelligence & Machine Learning',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 12),
              Divider(),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, size: 18),
                  SizedBox(width: 6),
                  Text('elsarose@gmail.com'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
