import 'package:flutter/material.dart';
import 'package:my_login_app/screens/signup/sign_up_screen.dart';

class RegisterAccount extends StatelessWidget {
  const RegisterAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register Account",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Fill your details or continue with social media",
              style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.normal
              ),
            ),
            Form(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          labelText: 'User Name',
                          hintText: "Input username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))
                          )
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'Email Address',
                          hintText: "Input Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))
                          )
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.remove_red_eye_outlined)
                          ),
                          labelText: 'Password',
                          hintText: "Input Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4))
                          )
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(text: 'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ]
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SignUpScreen()
                    );
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(

                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
