import 'package:appli/HomePage/home_page.dart';
import 'package:appli/authenticationPages/forgetPasswordPage.dart';
import 'package:appli/authenticationPages/signUpPage.dart';
import 'package:flutter/material.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({ Key? key }) : super(key: key);

  @override
  _MainLoginPageState createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context)
              .size
              .height, //Take max height of the screen

            ),
            child:  Padding(
              padding: const EdgeInsets.all(16),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(Icons.account_circle, size: 120.0,),
                  const SizedBox(height: 40.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
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
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 16),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 19, 22, 112)
                        ),
            
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 8,),
                 Align(
                    alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.refresh),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgetPasswordPage()),
                          );
                        },
                         child: const Text(
                          'Forgot Password?',
                            style: TextStyle(
                            color: Color.fromARGB(255, 96, 136, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                         )
                         )
                    ],
                  ),
                  
                  ),

                  const SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgetPasswordPage()),
                      );
                      },
                  
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color.fromARGB(255, 42, 212, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                   ), 
                   child: const Text(
                    'Login', 
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                   ),
                  ),
                  const SizedBox(height: 16,),
                  
                  ElevatedButton.icon(
                    onPressed: () {},
                     label: const Text(
                      'Login with Google', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                     icon: const Icon(Icons.g_mobiledata), // add google icon image and specify width and height
                     style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: const Color.fromARGB(255, 42, 212, 255),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                   const SizedBox(height: 16,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),)
                            );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                           color: Color.fromARGB(255, 96, 136, 255),
                           fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                    ],
                   )
                ],
               ),
            ),
          ),
        ),
      ),
    );
  }
}