import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import 'contacts/addContact/add_contact.dart';
import 'contacts/contacts_page.dart';
import 'package:url_launcher/url_launcher.dart';

class KeyboardPage extends StatefulWidget {
  const KeyboardPage({Key? key}) : super(key: key);

  @override
  State<KeyboardPage> createState() => _KeyboardPageState();
}
 String EnterNum='';

class _KeyboardPageState extends State<KeyboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
                EnterNum,
            style: TextStyle(
                color: Colors.black54, fontSize: 32),
          )),
           const SizedBox(
             height: 32,
           ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddContact()));
          }, child:  Text(
            "+ Add to contacts",
            style: TextStyle(
                color: primaryColor, fontSize: 20),
          ),),
          const SizedBox(
            height: 56,
          ),
          Keybourd(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactPage()));
              },icon:SvgPicture.asset(
                 'images/people-icon.svg',
                 height: 35.0,
                 width: 35.0,
                 color: Colors.black54,
                 allowDrawingOutsideViewBox: true,
               )),
               InkWell(
                 onTap: ()async{
                  await FlutterPhoneDirectCaller.callNumber(EnterNum);
                 },
                 child: Container(
                   height: 72,
                   width: 72,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: primaryColor,
                   ),
                   child: Icon(Icons.phone,size: 35,color: Colors.white,),
                 ),
               ),
               //Icon(Icons.backspace_outlined,size: 30,color: Colors.black54,),
             IconButton(onPressed: (){
               if (EnterNum != null && EnterNum.length > 0) {
                 EnterNum = EnterNum.substring(0, EnterNum.length - 1);
               }
              setState(() {});
              print(EnterNum);
             }, icon:Icon( Icons.backspace_outlined,size: 30,color: Colors.black54,))
             ],
          ),
        ],
      ),
    );
  }

  TextButton MyNumButton(String num, String txt) {
    return TextButton(onPressed: (){
      EnterNum=EnterNum+num;
      setState(() {});
    }, child: Column(
          children: [
            Text(num,style: TextStyle(fontSize: 32,color: Colors.black54),),
            Text(txt,style: TextStyle(fontSize: 16,color: Colors.grey),)
          ],
        ));
  }
  Column Keybourd(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyNumButton('1',''),
            MyNumButton('2','ABC'),
            MyNumButton('3','DEF'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyNumButton('4','GHI'),
            MyNumButton('5','JKL'),
            MyNumButton('6','MNO'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyNumButton('7','PQRS'),
            MyNumButton('8','TUV'),
            MyNumButton('9','WXYZ'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyNumButton('*','PQRS'),
            MyNumButton('0','+'),
            MyNumButton('#',''),
          ],
        ),
      ],
    );
  }
}
