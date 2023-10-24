import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      // Title name for the app bar
      title: Text(
        'Dashboard eOffice',
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500
        ),
      ),
      // adjust the style to the app bar 
      backgroundColor: Colors.blue.shade500.withOpacity(0.7),
      centerTitle: true,
      // add the arrow icons to the app bar
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/left-arrow.svg', 
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.blue.shade300.withOpacity(0.7),
            borderRadius: BorderRadius.circular(29)
          ),  
        ),
      ),
    );
  }
}
