import 'package:flutter/material.dart';

class PersonalInfoApp extends StatelessWidget {
  const PersonalInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Elsa Rose',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'B.Tech – AI & Machine Learning',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                InfoRow(icon: Icons.code, text: 'Skills: Flutter, Dart, Python'),
                const SizedBox(height: 12),
                InfoRow(icon: Icons.email, text: 'elsarose@gmail.com'),
                const SizedBox(height: 12),
                InfoRow(icon: Icons.phone, text: '+91 9188317646'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blueGrey),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
