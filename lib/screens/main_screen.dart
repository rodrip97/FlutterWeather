import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    const String textTest = "It's hella cloudy here";

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/cloudy.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
             SizedBox(
              height: 40,
            ),
            Icon(
              Icons.cloud,
              size: 75.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                ' 12°',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  letterSpacing: -5,
                ),
              ),
            ),
            Center(
              child: Text(
                textTest,
                style: TextStyle(
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
