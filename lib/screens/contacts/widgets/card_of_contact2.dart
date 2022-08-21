import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../../../constant.dart';

class CardOfContact2 extends StatelessWidget {
  String img;
  String name;
  String num;

  CardOfContact2(
      {Key? key, required this.img, required this.name, required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: ()async{
          await FlutterPhoneDirectCaller.callNumber(num);
        },
        child: Container(
          padding: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.width * 0.36,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset(
                  img,
                ).image,
                backgroundColor: Colors.black54,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                num,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
