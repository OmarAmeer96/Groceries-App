// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';
class FavItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: [
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 28.0,left: 10.0),
               child: Image.network("https://s3-alpha-sig.figma.com/img/d2f3/f869/3088e089e4cfee3167faeb848cf9ea96?Expires=1692576000&Signature=V43XlH43kU8heWzJY~nYG9s9TuwC5i-ot1uOPkUGPVblu0HqrHx4qMWoXVNosxyJuAYKMFRGsEUi2IIvY9tKCPWWeH3BsAho2bN9nfQ3JQ-Fw~uJvkVkIvLNAa4rmfMkqHl4EyJ5IxZWDSvQLIdJAScJdrAeNKwFjAhgJyRhhnYfwJLoLzK67XtaX8xbQod3S8LYO~L1tx7U3mh0qnSdSnBAeOlpdWgWOPKZg~J7udK24EQ4rDoHb-LC31DMadsygnzPD9hg1gjb0x8ibJYako414xDN-xeCOqVcNKyLvnYxWba~5NTEG1cIddb76MDhB2FrJKb8AOd0~TcFfi3jYQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",width: 86.74,height: 86.74,),
             ),
             SizedBox(width: 30,),
             Padding(
               padding: const EdgeInsets.only(top: 32),
               child: Column(
                 children: [
                   Text("Sprite Can",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Gilroy-Bold')),
                   SizedBox(height: 5,),
                   Text("325ml, Price",style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C),fontFamily: 'Gilroy-Bold')),
                 ],
               ),
             ),
             SizedBox(width: 90.0,),
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Row(
                 children: [
                   Text("\$1.99",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Gilroy-Bold'),),
                   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                 ],
               ),
             ),
           ],
         ),
         SizedBox(height: 10,),
         Divider(),
       ],
     ),
   );
  }

}