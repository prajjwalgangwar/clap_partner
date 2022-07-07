import 'package:cached_network_image/cached_network_image.dart';
import 'package:clap_partner/ConstantData.dart';
import 'package:clap_partner/controllers/networkController.dart';
import 'package:clap_partner/widgets/appBar.dart';
import 'package:clap_partner/widgets/orderCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class Home extends StatelessWidget {
  final NetworkController networkController =
      Get.put<NetworkController>(NetworkController());

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(()=>Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: networkController.status.value != 0
          ? Column(
              children: [
                const CustomAppBar(
                  route: '/home',
                  title: 'Manage Orders',
                  leading: Icon(IconlyBold.user_2),
                  trailing: Icon(IconlyBold.show),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    NewOrderCard(),
                  ],
                )),
              ],
            )
          :
      Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider('https://cdn.dribbble.com/users/214929/screenshots/4830845/no-intenet-connection.gif')
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'No Internet'
                ),
              )
            ],
          ),
        ),
      ),
    )));
  }
}
