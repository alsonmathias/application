import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
const ForgetPasswordPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context)
              .size
              .height, //Take max height of the screen

            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0,),
                  TextFormField(
                    decoration: const InputDecoration(
                      border:  UnderlineInputBorder(),
                    labelText: 'Enter your Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 19, 22, 112)
                        ),
                    ),
                    ),
                  keyboardType: TextInputType.emailAddress,
                    
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: const Color.fromARGB(255, 42, 212, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ), 
                  onPressed: () {  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  const SizedBox(height: 24.0),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Remember your Password? ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigate back to the Login page
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 96, 136, 255),
                      fontWeight: FontWeight.bold,
                    ),
                      ),
                    ),
                  ],
                ),
              ],
            ),    
          ),
        )
      )
      )
    );

  }
}