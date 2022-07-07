import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController{

  var status = 0.obs;
  Connectivity connectivity = Connectivity();
  StreamSubscription? streamSubscription;

  @override
  void onInit() {
    super.onInit();
    GetConnectionType();
    streamSubscription = connectivity.onConnectivityChanged.listen(updateConnection);

  }

  Future<void> GetConnectionType() async{
    var connectionStatus;
    try{
      connectionStatus = await connectivity.checkConnectivity();
      updateConnection(connectionStatus);
    }on PlatformException catch(e){
      Get.snackbar('Connection Error', 'message');
    }
  }

  updateConnection(ConnectivityResult result){
    switch(result){

      case ConnectivityResult.wifi:
        status.value = 1;
        break;
      case ConnectivityResult.mobile:
        status.value = 2;
        break;
      case ConnectivityResult.none:
        status.value = 0;
        break;
      default: Get.snackbar('Connection Error', '');
    }
  }

}

class NetworkBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<NetworkController>(NetworkController());
  }
}