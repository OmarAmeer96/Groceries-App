import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget{
  final String text;
  CustomButton({super.key,required this.text});
  @override
  Widget build(BuildContext context) {
  return MaterialButton(
      onPressed: (){},
      color: Color(0xFF8D070F)
      ,child: Text("$text",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Gilroy-Bold'),),
      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19.0))
  );
  }

}
