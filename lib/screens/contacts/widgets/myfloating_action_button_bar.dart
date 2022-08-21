import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyfloatingActionButtonBar extends StatelessWidget {
  const MyfloatingActionButtonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.width*0.1,
      left: MediaQuery.of(context).size.width*0.25,
      child: Container(
        height: MediaQuery.of(context).size.width*0.18,
        width: MediaQuery.of(context).size.width*0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},icon:SvgPicture.asset("images/people-icon.svg",color: Colors.black54,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,color: Colors.grey,))
          ],
        ),

      ),
    );
  }
}