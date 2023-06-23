import 'package:flutter/material.dart';
import 'package:login/src/screens/page2.dart';
import 'package:login/src/screens/page3.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 35),
              child: Center(
                child: Image(
                  image: AssetImage(
                    "assets/images/avigo_logo.png",
                  ),
                  width: 250,
                  height: 200,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Search less,\n"
                "travel more!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Great experiences at backpacker prices.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 45, left: 10, right: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.deepPurple,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageThree()));
                  },
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "CREATE AN ACCOUNT",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 45, left: 10, right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageTwo()));
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Colors.blueGrey)),
                  child: SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black26,
                ),
                children: [
                  TextSpan(
                      text: "    By creating an account, you agree to our\n"),
                  TextSpan(
                    text: "Terms & Conditions",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(text: " and agree to "),
                  TextSpan(
                    text: "Privacy Policy.",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
