import 'package:flutter/material.dart';



class currencyConverterPage extends StatefulWidget{
   const currencyConverterPage({super.key});

 @override
  State<currencyConverterPage> createState() {
   return _currencyConverterPageState();
  }}
  class _currencyConverterPageState extends State<currencyConverterPage>{

double result=0;
  final TextEditingController controller=TextEditingController();

     void convert(){
      double num=double.parse(controller.text);
       setState(() {
    result = num * 92;
  });
     }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ColoredBox(
        color: Colors.black45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
                fontSize: 40,
              ),
            ),
            TextField(
              controller: controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter the amount in USD",
                hintStyle: TextStyle(color: Colors.yellow),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.white,
                filled: true,
                fillColor: Colors.white10,

                // ✅ Border added here (correct place)
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              
            ),

TextButton(
  onPressed: () {
  convert;
  },
  child: const Text("Convert"),
  style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.blue),
    foregroundColor: MaterialStatePropertyAll(Colors.white),
   
  ),
)          ],
        ),
      ),
    );
  }
}