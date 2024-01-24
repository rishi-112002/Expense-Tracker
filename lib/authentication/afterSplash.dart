import 'package:expensestracke/authentication/LoginScreen.dart';
import 'package:expensestracke/authentication/SignUpScreen.dart';
import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(199, 131, 208, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 0, left: 0),
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, bottom: 60),
                      child: Text(
                        "Expense Tracker",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: AutofillHints.jobTitle,
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(right: 20, left: 20, bottom: 120),
                    child: Image(
                      image: AssetImage("images/appLogo.png"),
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Card(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      semanticContainer: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      elevation: 3.0,
                      borderOnForeground: true,
                      margin: const EdgeInsets.only(right: 4, left: 4),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(199, 131, 208, 238)),
                                    fixedSize: MaterialStatePropertyAll(
                                        Size(250, 40))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                )),
                            ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(199, 131, 208, 238)),
                                    fixedSize: MaterialStatePropertyAll(
                                        Size(250, 40))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpScreen()));
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
