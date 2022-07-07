import 'package:clap_partner/screens/Home.dart';
import 'package:clap_partner/screens/OrderDetailPage.dart';
import 'package:get/route_manager.dart';

class AppRoutes{
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: '/home', page: ()=> Home()),
    GetPage(name: '/orderDetails', page: ()=> OrderDetail())
  ];
}