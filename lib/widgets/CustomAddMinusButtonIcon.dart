import 'package:flutter/material.dart';
class AddMinusButtonIcon extends StatelessWidget{
  final IconData icon;
  final Color color;
  const AddMinusButtonIcon({super.key,required this.icon,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
        color: Colors.black.withOpacity(.05),
      ),
      child: Center(
        child: Icon(icon,size: 28,color: color),
      ),
    );
  }

}