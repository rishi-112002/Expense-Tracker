import 'package:expensestracke/authentication/SignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController courseTitle = TextEditingController();
  final TextEditingController courseDescription = TextEditingController();
  final FocusNode _titleFocus = FocusNode();
  final FocusNode _descriptionFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        backgroundColor: const Color.fromARGB(199, 131, 208, 238),
        toolbarTextStyle: const TextStyle(backgroundColor: Colors.blueAccent),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("images/appLogo.png"),
                      width: 150,
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextField(
                      controller: courseTitle,
                      autofocus: true,
                      decoration:
                          const InputDecoration(labelText: 'email / mobile'),
                      focusNode: _titleFocus,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(_descriptionFocus);
                      },
                    ),
                    TextField(
                      controller: courseDescription,
                      decoration: const InputDecoration(labelText: 'password'),
                      focusNode: _descriptionFocus,
                      textInputAction: TextInputAction.done,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 183, top: 10),
                        child: Text(
                          "forgot Password",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                )),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(199, 131, 208, 238)),
                    fixedSize: MaterialStatePropertyAll(Size(250, 40))),
                onPressed: () {
                  print("onPres");
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: const Text(
                  "Don't have an account? Sign up or register",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
