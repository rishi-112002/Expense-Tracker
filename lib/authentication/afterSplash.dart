import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(113, 192, 245, 0.776),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 20, left: 30),
              child: Column(
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(199, 131, 208, 238)),
                          fixedSize: MaterialStatePropertyAll(Size(250, 40))),
                      onPressed: () {
                        print("onPress");
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(199, 131, 208, 238)),
                          fixedSize: MaterialStatePropertyAll(Size(250, 40))),
                      onPressed: () {
                        print("onPress");
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
