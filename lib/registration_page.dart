import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _emailGrabber = TextEditingController();
  TextEditingController _nameGrabber = TextEditingController();
  TextEditingController _addressGrabber = TextEditingController();
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
          
               const Icon(
                    Icons.add_business_outlined,
                    size: 100,),
          
               const SizedBox(height: 25,),
          
               const Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          
                const SizedBox(height: 25,),
          
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
                            hintText: 'Company Email',
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  const SizedBox(height: 25,),
          
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
                          controller: _nameGrabber,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Company Name',
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  const SizedBox(height: 25,),
          
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
                          controller: _addressGrabber,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Address',
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  const SizedBox(height: 25,),
          
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  const SizedBox(height: 25,),
          
                  //Register button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: const Size(200, 40),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}