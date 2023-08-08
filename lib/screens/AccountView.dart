import 'package:flutter/material.dart';
class AccountView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: CircleAvatar(backgroundImage: AssetImage("images/ya.png"),),
                ),
                SizedBox(width: 30.0,),
                Column(
                  children: [
                    SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.only(right: 85),
                      child: Text("Esraa",style: TextStyle(fontSize: 18,fontFamily: 'Gilroy-Bold')),
                    ),
                    Text("Esraa@Gmail.com",style: TextStyle(fontSize: 16,fontFamily: 'Gilroy-Bold',color: Color(0xFF7C7C7C))),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
             Divider(),
             Expanded(
               child: ListView(children: [
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     ImageIcon(
                       AssetImage("images/Orders icon.png"),
                     ),
                     SizedBox(width: 20.0,),
                     Text("Orders",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 200.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Icon(Icons.content_paste_search_sharp),
                     SizedBox(width: 20.0,),
                     Text("My Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 170.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Icon(Icons.location_on),
                     SizedBox(width: 20.0,),
                     Text("Delievery Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 105.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Icon(Icons.published_with_changes_sharp),
                     SizedBox(width: 20.0,),
                     Text("Theme",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 200.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Icon(Icons.language),
                     SizedBox(width: 20.0,),
                     Text("Language",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 170.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
                 Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Icon(Icons.people_alt_outlined),
                     SizedBox(width: 20.0,),
                     Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Gilroy-Bold'),),
                     SizedBox(width: 160.0,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                   ],
                 ),
                 Divider(),
               ],),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
               child: MaterialButton(onPressed: (){},
                   color:  Color(0xFFf2f3f2),
                 //  minWidth: 250,
                   child: Row(
                     children: [
                       SizedBox(width: 15,),
                       Icon(Icons.logout,color: Color(0xFF8D070F),),
                       SizedBox(width: 114,),
                       Text("Log Out",style: TextStyle(color: Color(0xFF8D070F),fontSize: 18,fontFamily: 'Gilroy-Bold'),),
                     ],
                   ),
                   padding: EdgeInsets.symmetric(vertical: 18),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19.0)),
               ),
             )
          ],
        )
    );
  }

}