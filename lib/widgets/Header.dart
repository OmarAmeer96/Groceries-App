// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';
class Header extends StatelessWidget{
  final String text;
   Header({super.key,required this.text});
   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0,),
        Center(child: Text("$text",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Gilroy-Bold'),)),
        SizedBox(height: 10.0,),
        Divider(thickness: 1.4,),
      ],
    );
  }
}
