import 'package:flutter/material.dart';
import 'package:instagram/screens/loading_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              'assets/images/InstagramLogo.png',
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                buildEmail(),
                SizedBox(height: 20),
                buildPassword(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(260, 15, 0, 0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 11, 142, 249),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                buildButton(),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(125, 0, 0, 0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/facebook.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log in with Facebook',
                        style: TextStyle(
                          color: Color.fromARGB(255, 11, 142, 249),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    children: [
                      Flexible(
                          child: Divider(
                        thickness: 2,
                      )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: Text(
                          'OR',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 15),
                        ),
                      ),
                      Flexible(
                          child: Divider(
                        thickness: 2,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey[500], fontSize: 17),
                      children: [
                        TextSpan(text: "Don't have an account?"),
                        TextSpan(
                            text: " Sign up.",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 11, 138, 243)))
                      ]),
                )
              ]),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildEmail() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else {
            return null;
          }
        },
        controller: emailController,
        decoration: InputDecoration(
          // filled: true,
          // fillColor: const Color.fromARGB(255, 248, 248, 248),
          border: OutlineInputBorder(),
          labelText: 'Phone number, username, email',
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => emailController.clear(),
          ),
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else {
            return null;
          }
        },
        controller: passwordController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () => setState(() {
              isPasswordVisible = !isPasswordVisible;
            }),
          ),
        ),
        obscureText: isPasswordVisible,
      ),
    );
  }

  Widget buildButton() {
    return Center(
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 17),
          child: Text('Log In'),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // return LoadingScreen();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoadingScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
