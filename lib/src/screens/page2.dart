import 'package:flutter/material.dart';
import 'package:login/src/screens/page1.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool t = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageOne()));
                              },
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
                              "Log In",
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
                      padding: const EdgeInsets.only(right: 140, top: 40),
                      child: Text(
                        "Welcome back!\n"
                        "Please log in to continue!",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
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
                    SizedBox(
                      child: TextField(
                        textAlign: TextAlign.left,
                        showCursor: true,
                        obscureText: t,
                        obscuringCharacter: "*",
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
                            onTap: (){
                              t? setState(()=>t=false): setState(()=>t=true);
                            },
                            child: Icon(Icons.visibility),
                          ),
                          counterText: "Forgot password ?",
                          counterStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 190, top: 40),
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
                          "LOG IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
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
