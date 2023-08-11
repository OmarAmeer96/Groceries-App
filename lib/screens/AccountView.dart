// ------------------------------ Esraa Elnajjar ---------------------------------

import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/MyCartView.dart';
import 'package:provider/provider.dart';
import '../provider/dark_theme_provider.dart';
import '../helpers/auth_util.dart';
import '../widgets/custom_gnav_bar.dart';
import 'FavouriteView.dart';
import 'explore_screen.dart';
import 'home_screen.dart';
import 'sign_up_screen.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountView extends StatefulWidget {
  static String id = 'AccountView';

  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

void navigate1(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate2(BuildContext context) {
  Navigator.pushNamed(context, ExploreScreen.id);
}

void navigate3(BuildContext context) {
  Navigator.pushNamed(context, MyCartView.id);
}

void navigate4(BuildContext context) {
  Navigator.pushNamed(context, FavouriteView.id);
}

void navigate5(BuildContext context) {
  Navigator.pushNamed(context, AccountView.id);
}

class _AccountViewState extends State<AccountView> {
  XFile? _imagefile;
  final ImagePicker picker=ImagePicker();
  @override
  void initState(){
    super.initState();
    LoadImage(_imagefile);
  }
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    int currentIndex = 4;
    String? firstName = AuthUtil.getUserFirstName();
    String? email = AuthUtil.getUserEmail();
    return Scaffold(
        bottomNavigationBar: CustomGNavBar(
          navigate1: () => navigate1(context),
          navigate2: () => navigate2(context),
          navigate3: () => navigate3(context),
          navigate4: () => navigate4(context),
          navigate5: () => navigate5(context),
          currentIndex: currentIndex,
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(children: [
                    CircleAvatar(minRadius: 40,backgroundImage:
                    _imagefile==null
                        ?null
                        :FileImage(File(_imagefile!.path)),
                    ),
                    Positioned(
                        bottom: 1,
                        right: 1,
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(
                                context: context,
                                builder: ((builder)=>BottomSheet())
                            );
                          },
                          child: Icon(
                            Icons.camera_alt_outlined,size: 25,
                            color: Colors.teal,
                          ),
                        )),
                  ],),
                ),
                SizedBox(width: 30.0,),
                Column(
                  children: [
                    SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.only(right: 85),
                      child: Text("$firstName",style: TextStyle(fontSize: 18,fontFamily: 'Gilroy-Bold')),
                    ),
                    Text("$email",style: TextStyle(fontSize: 16,fontFamily: 'Gilroy-Bold',color: Color(0xFF7C7C7C))),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.shopping_cart_outlined),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  MyCartView()),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.content_paste_search_sharp),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "My Details",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 170.0,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Delievery Address",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 105.0,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.sunny),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Theme",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                      Checkbox(
                          value: themeChange.darkTheme,
                          onChanged: (bool? value) {
                            themeChange.darkTheme = value!;
                          }),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.language),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Language",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 170.0,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.people_alt_outlined),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Bold'),
                      ),
                      SizedBox(
                        width: 160.0,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                color: Color(0xFFf2f3f2),
                //  minWidth: 250,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.logout,
                      color: Color(0xFF8D070F),
                    ),
                    SizedBox(
                      width: 114,
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(
                          color: Color(0xFF8D070F),
                          fontSize: 18,
                          fontFamily: 'Gilroy-Bold'),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.0)),
              ),
            )
          ],
        ));
  }
  Widget BottomSheet(){
    void takePhoto(ImageSource source)async{
      final pickedFile=await picker.pickImage(source: source);
      setState((){
        _imagefile=pickedFile;
        saveImage(_imagefile!.path);
      });
    }
    return Container(
      height: 150.0,
      //width: MediaQuery.of(context).size.width,
      width: 150,
      margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
      child: Row(
        children: [
          SizedBox(width: 80,),
          Column(
            children: [
              Text("Choose Profile Photo",style: TextStyle(fontSize: 20.0,fontFamily:'Gilroy-Bold'),),
              SizedBox(height: 20.0,),
              Row(children: [
                Column(
                  children: [
                    IconButton(onPressed: (){
                      takePhoto(ImageSource.camera);
                    }, icon: Icon(Icons.camera_alt)),
                    Text("Camera",style: TextStyle(fontFamily:'Gilroy-Regular'),),
                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    IconButton(onPressed: (){
                      takePhoto(ImageSource.gallery);
                    }, icon: Icon(Icons.camera)),
                    Text("Gallery",style: TextStyle(fontFamily:'Gilroy-Regular'),),
                  ],
                ),
              ],),

            ],
          ),
        ],
      ),
    );
  }

  void saveImage(path) async{
    SharedPreferences saveimage=await SharedPreferences.getInstance();
    saveimage.setString("imagepath", path);
  }
  void LoadImage(path) async{
    SharedPreferences saveimage=await SharedPreferences.getInstance();
    saveimage.getString("imagepath");
  }
}