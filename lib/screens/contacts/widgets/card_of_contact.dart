

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../../../constant.dart';

class CardOfContact extends StatelessWidget {
  String img;
  String name;
  String num;
  CardOfContact({
    Key? key,
    required this.img,
    required this.name,
    required this.num
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: Image.asset(
              img,
            ).image,
            backgroundColor: Colors.black54,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
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
          Spacer(),
          IconButton(onPressed: ()async{
            await FlutterPhoneDirectCaller.callNumber(num);
          }, icon: Icon(
            Icons.phone,
            color: primaryColor,
            size: 32,
          )),
        ],
      ),
    );
  }
}