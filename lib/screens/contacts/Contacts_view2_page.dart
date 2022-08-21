import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicoding/screens/contacts/widgets/card_of_contact.dart';
import 'package:unicoding/screens/contacts/widgets/card_of_contact2.dart';
import 'package:unicoding/screens/contacts/widgets/my_top_bar.dart';
import '../../models/contacts_model.dart';
import 'widgets/myfloating_action_button_bar.dart';

class ContactPage2 extends StatefulWidget {
  const ContactPage2({Key? key}) : super(key: key);

  @override
  State<ContactPage2> createState() => _ContactPage2State();
}

class _ContactPage2State extends State<ContactPage2> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
          size: 24,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                myTopBar(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: double.infinity,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16
                    ),
                    itemCount: infoList.length,
                    itemBuilder: (context, index) => CardOfContact2(
                      img: infoList[index].img,
                      name: infoList[index].name,
                      num: infoList[index].num,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyfloatingActionButtonBar()
        ],
      ),
    );
  }
}
