import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicoding/screens/contacts/widgets/my_top_bar.dart';
import '../../models/contacts_model.dart';
import '../keyboard.dart';
import 'widgets/card_of_contact.dart';
import 'widgets/myfloating_action_button_bar.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => KeyboardPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 24,
          ),
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
                  height: MediaQuery.of(context).size.height * 0.77,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: infoList.length,
                    itemBuilder: (context, index) => CardOfContact(
                        img: infoList[index].img,
                        name: infoList[index].name,
                        num: infoList[index].num),
                  ),
                ),
              ],
            ),
          ),
          const MyfloatingActionButtonBar()
        ],
      ),
    );
  }
}
