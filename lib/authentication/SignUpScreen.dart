import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPasssword = TextEditingController();
  final FocusNode _email = FocusNode();
  final FocusNode _password = FocusNode();
  final FocusNode _confirmPassword = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(113, 192, 245, 0.776),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 70, right: 20, left: 20, bottom: 30),
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
                        "Sign up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextField(
                      controller: email,
                      autofocus: true,
                      decoration:
                          const InputDecoration(labelText: 'email / mobile'),
                      focusNode: _email,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(_password);
                      },
                    ),
                    TextField(
                      style: TextField.materialMisspelledTextStyle,
                      controller: password,
                      decoration: const InputDecoration(labelText: 'password'),
                      focusNode: _password,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(_confirmPassword);
                      },
                    ),
                    TextField(
                      controller: confirmPasssword,
                      decoration:
                          const InputDecoration(labelText: 'confirm password'),
                      focusNode: _confirmPassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ],
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
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Already have a account . LOGIN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
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
