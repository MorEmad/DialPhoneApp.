

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/contacts_model.dart';
import '../../keyboard.dart';
import '../contacts_page.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
 final  _controllerFistname = TextEditingController(text: " ");
 final  _controllerLastname = TextEditingController(text: " ");
 final  _controllerNumber   = TextEditingController(text: EnterNum);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top: 30,left: 16,right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(child: Text("Cancel",style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),onPressed: (){
                    Navigator.pop(context);
                  }),
                  TextButton(child: Text("Done",style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),onPressed: (){
                    if(_controllerNumber.text != null){
                      infoList.add(InfoContact(num: EnterNum, name:_controllerFistname.text+ _controllerLastname.text , img: 'images/placeholder_profile.png',));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactPage()));
                    }
                  },),
                ],
              ),
              SizedBox(height: 16,),
              CircleAvatar(
                radius: 75,
                backgroundImage: Image.asset(
                  "images/placeholder_profile.png",
                ).image,
                backgroundColor: Colors.black54,
              ),
              SizedBox(height: 16,),
              Text("Add Image",style: TextStyle(color: primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
              MyTextfield(MyhintText: 'First Nmae', Mycontroller: _controllerFistname),
              MyTextfield(MyhintText: 'Last Name', Mycontroller: _controllerLastname),
              MyTextfield(MyhintText: 'Enter a Number',Mycontroller: _controllerNumber),
            ],
          ),
        )
      ),
    );
  }
}

class MyTextfield extends StatelessWidget {
  String MyhintText;

  TextEditingController Mycontroller;
   MyTextfield({
    Key? key,
    required this.MyhintText,

     required this.Mycontroller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextFormField(
        controller: Mycontroller,
        decoration:InputDecoration(
          border: OutlineInputBorder(),
          hintText: MyhintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1,color:primaryColor),
          ),
        ),
      ),
    );
  }
}
