import 'package:flutter/material.dart';

class Spotify extends StatelessWidget {
  const Spotify({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 46, 36, 36),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Good Afternoon",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Icon(
                    Icons.bolt_outlined,
                    size: 36,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.history,
                    size: 36,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.storage,
                    size: 36,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings_outlined,
                    size: 36,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
