import 'package:calculator_app/components/widgets/app_elevated_button.dart';
import 'package:calculator_app/screens/third_page.dart';
import 'package:flutter/material.dart';

import '../components/widgets/app_outlined_button.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: AppElevatedButton(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ThirdPage()),
            ),
            child: const Text("Click me now!"),
          ),
        ),
        AppOutlinedButton(child: Text("Outlined button")),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Container(
                        child: Text(
                          "Call".toUpperCase(),
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blue,
                      ),
                      Container(
                        child: Text(
                          "Route".toUpperCase(),
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Container(
                        child: Text(
                          "Share".toUpperCase(),
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
