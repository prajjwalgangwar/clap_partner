import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CustomAppBar extends StatelessWidget{

  final String title;
  final Widget leading, trailing;
  final String route;

  const CustomAppBar({Key? key, required this.title, required this.leading, required this.trailing, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      color: Colors.white70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Get.toNamed(route);
          }, icon: leading),
          Text(title),
          IconButton(onPressed: (){}, icon: trailing)
        ],
      ),
    );
  }
  
}