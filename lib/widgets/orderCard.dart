import 'package:clap_partner/cubits/order_detail_cubit.dart';
import 'package:clap_partner/screens/OrderDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class NewOrderCard extends StatelessWidget {
  NewOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.red.shade50,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red.shade900)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [Text('#orderID'), Text('date__time')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [Text('10 items'), Text('420 Rupees')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.red.shade900)
                      )
                  ),
                  onPressed: () {},
                  child: Text(
                    'Out of Stock',
                    style: TextStyle(color: Colors.red.shade900),
                  )),
              OutlinedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.green.shade900)
                      )
                  ),
                  onPressed: () {
                    Get.to(() =>
                        BlocProvider(
                          create: (context) => OrderDetailCubit(),
                          child: OrderDetail(),
                        ));
                  },
                  child: Text(
                    'Accept Order',
                    style: TextStyle(color: Colors.green.shade900),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
