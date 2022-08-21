

import 'package:flutter/material.dart';
import 'package:unicoding/screens/contacts/Contacts_view2_page.dart';
import 'package:unicoding/screens/contacts/addContact/add_contact.dart';
import 'package:unicoding/screens/contacts/contacts_page.dart';

import 'screens/keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const KeyboardPage(),
    );
  }
}

