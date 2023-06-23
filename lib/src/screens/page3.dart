import 'package:flutter/material.dart';
import 'package:login/src/screens/page1.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  bool lock = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageOne()));
                          },
                          child: SizedBox(
                            child: Icon(
                              Icons.arrow_back,
                              size: 35,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 30),
                    child: Text(
                      "Sign up to keep exploring amazing\n"
                      "destinations around the world!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: TextField(
                        textAlign: TextAlign.left,
                        showCursor: true,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.account_circle,
                            ),
                            prefixIconColor: Colors.black38,
                            focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            labelText: "Full Name",
                            labelStyle: const TextStyle(
                              color: Colors.black38,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: TextField(
                          textAlign: TextAlign.left,
                          showCursor: true,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.mail,
                              ),
                              prefixIconColor: Colors.black38,
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              labelText: "Email Address",
                              labelStyle: const TextStyle(
                                color: Colors.black38,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: TextField(
                          textAlign: TextAlign.left,
                          showCursor: true,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.date_range,
                              ),
                              prefixIconColor: Colors.black38,
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              labelText: "Date of Bith",
                              labelStyle: const TextStyle(
                                color: Colors.black38,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        child: TextField(
                          textAlign: TextAlign.left,
                          showCursor: true,
                          obscuringCharacter: "*",
                          obscureText: lock,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.lock,
                            ),
                            prefixIconColor: Colors.black38,
                            focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                                width: 2,
                              ),
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(
                              color: Colors.black38,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                lock
                                    ? setState(() => lock = false)
                                    : setState(() => lock = true);
                              },
                              child: const Icon(Icons.visibility),
                            ),
                            counterStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.deepPurple,
                    ),
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "LET'S GET STARTED",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                    children: [
                      TextSpan(
                          text:
                              "    By creating an account, you agree to our\n"),
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
        ),
      ),
    );
  }
}
