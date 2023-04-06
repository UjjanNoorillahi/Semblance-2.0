//

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'package:allen/pallete.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final speechToText = SpeechToText();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Pallete.appPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Image.asset(
              'assets/images/logo.png',
              width: mediaQuery.size.width * 0.40,
            ),
            const SizedBox(height: 20),
            const Text(
              '"Welcome Message here"',
              style: TextStyle(
                color: Pallete.secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // const Spacer(),
            const SizedBox(
              height: 300,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Home',
                    style: TextStyle(
                      color: Pallete.appPrimaryColor,
                    ),
                  ),
                  icon: const Icon(
                    Icons.home_filled,
                    color: Pallete.appPrimaryColor,
                    size: 30,
                  ),
                  style: const ButtonStyle(),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Camera',
                    style: TextStyle(
                      color: Pallete.appPrimaryColor,
                    ),
                  ),
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Pallete.appPrimaryColor,
                    size: 30,
                  ),
                  style: const ButtonStyle(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.mic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
