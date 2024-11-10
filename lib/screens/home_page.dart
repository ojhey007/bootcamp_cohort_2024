import 'package:calculator_app/components/widgets/app_elevated_button.dart';
import 'package:calculator_app/components/widgets/app_outlined_button.dart';
import 'package:calculator_app/screens/another_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.black),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "images/placeholder.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Erlich Bachman",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "erlichbachman@gmail.com",
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 10,
              ),
              AppElevatedButton(
                  bgColor: Colors.blue,
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),

              // Container(
              //   height: 40,
              //   width: 100,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(50)),
              //   child: const Text(
              //     "Edit Profile",
              //     style: TextStyle(
              //         color: Colors.white, fontWeight: FontWeight.bold),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Turn on Notifications",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Switch(value: false, onChanged: null)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: Text(
                          "Invite Link",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Invite people",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 30,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            "Invite",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnotherPage())),
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(Icons.arrow_forward_ios_outlined)),
              ),
              const SizedBox(
                height: 30,
              ),
              const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  )),
              AppElevatedButton(
                  bgColor: Colors.red,
                  iconColor: Colors.white,
                  icon: Icons.login,
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              AppOutlinedButton(child: Text("Outlined button"))
            ],
          ),
        ));
  }
}
