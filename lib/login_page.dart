import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manje_v2/home_page.dart';
import 'package:manje_v2/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailGrabber = TextEditingController();
  TextEditingController _passwordGrabber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Greeting
          
                const Icon(
                  Icons.add_business_outlined,
                  size: 100,),
          
                const SizedBox(height: 10,),
          
                Text(
                  'MANJE!',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 52,
                  )
                  ),
          
                  const SizedBox(height: 10),
          
                  const Text(
                    'by Solution Agents(V)'
                  ),
          
                  const SizedBox(height: 20,),
          
                
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(12),
                    ),
          
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _emailGrabber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
          
                const SizedBox(height: 10,),
                
                //password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(12),
                    ),
          
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _passwordGrabber,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
          
                const SizedBox(height: 10,),
          
                //sign in button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: const Size(200, 40),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          
                const SizedBox(height: 25,),
                
                //register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                      )
                    ),
          
                    const SizedBox(width: 5,),
          
                    GestureDetector(
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontWeight: FontWeight.bold, 
                        )
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const RegisterPage() ));
                      },
                    ),
                  ],
                )
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}