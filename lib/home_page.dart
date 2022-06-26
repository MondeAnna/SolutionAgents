import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manje_v2/add_stock_page.dart';
import 'package:manje_v2/login_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,

      appBar: AppBar(
        centerTitle: true,
        title: const Text('MANJE',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),

        leading: IconButton(
            onPressed: () {
              Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.home_filled),),
        
        actions:  [
          IconButton(
            onPressed: () {
              Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginPage()));
            },
            icon: const Icon(Icons.logout_outlined),),
        ],
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25,),
      
            const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
            ),
      
            const SizedBox(height: 25,),
      
            ListTile(
              shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              leading: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
              
              tileColor: Colors.black,
              title: const Text(
                "Add Stock",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                )
               ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const AddStock() ));
              },
            ),
      
           const SizedBox(height: 5,),
      
            ListTile(
              shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              leading: const Icon(
                Icons.sell,
                color: Colors.white,
              ),
              tileColor: Colors.black,
              title: const Text(
                "Sell Stock",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                )
               ),
              onTap: () {
                ////////////////////////////////////////////////////////
              },
            ),
      
          const SizedBox(height: 5,),
      
          ListTile(
            shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              leading: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              tileColor: Colors.black,
              title: const Text(
                "View Inventory",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                )
               ),
              onTap: () {
                ////////////////////////////////////////////////////////
              },
            ),
      
           const SizedBox(height: 5,),
      
            ListTile(
              shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              leading: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              tileColor: Colors.black,
              title: const Text(
                "Discard Stock",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                )
               ),
              onTap: () {
                ////////////////////////////////////////////////////////
              },
            ),
      
            SizedBox(height: 75,),
      
            ListTile(
              shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              leading: const Icon(
                Icons.file_copy,
                color: Colors.white,
              ),
              tileColor: Colors.black,
              title: const Text(
                "View Financials",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                )
               ),
              onTap: () {
                ////////////////////////////////////////////////////////
              },
            ),
          ],
        ),
      ),
    );
    
  }
}