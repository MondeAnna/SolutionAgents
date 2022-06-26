import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:manje_v2/home_page.dart';
import 'package:manje_v2/login_page.dart';



class AddStock extends StatefulWidget {
  const AddStock({Key? key}) : super(key: key);

  @override
  State<AddStock> createState() => _AddStockState();
}

class _AddStockState extends State<AddStock> {

  TextEditingController _nameGrabber = TextEditingController();
  TextEditingController _typeGrabber = TextEditingController();
  TextEditingController _priceGrabber = TextEditingController();
  TextEditingController _quantityGrabber = TextEditingController();
  TextEditingController _idGrabber = TextEditingController();

  String? scanResult;

  _barcodeScanner() async{
    String data = "";

    try{
      data = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", 
        "Cancel", 
        true, 
        ScanMode.BARCODE);
      } on PlatformException{
        data = 'Failed to scan code. Report problem to client support.';
      }

      if (!mounted) return;

      setState(() => this.scanResult = data);
  }

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
          children:  [
            const SizedBox(height: 25,),
      
            const Center(
              child: Text(
                    'Add Stock',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
      
            const SizedBox(height: 25,),
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Product Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _nameGrabber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Product Type',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _typeGrabber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _priceGrabber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Quantity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _quantityGrabber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),



            Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Product ID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _idGrabber,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40,),

          //Add button
                  ElevatedButton(
                    onPressed: () => _barcodeScanner(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: const Size(200, 40),
                    ),
                    child: const Text(
                      'Scan Barcode',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: const Size(200, 40),
                    ),
                    child: const Text(
                      'Add Item',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

      
          ],
        ),
      ),
    );
    
  }
}