import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: GridView.count(
        crossAxisCount: 2, // 2 columns
        children: <Widget>[
          DashboardBox(1),
          DashboardBox(2),
          DashboardBox(3),
          DashboardBox(4),
        ],
      ),
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

class DashboardBox extends StatelessWidget {
  final int boxNumber;

  DashboardBox(this.boxNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0), // Adjust margin as needed
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: GridView.count(
        crossAxisCount: 2, // 2 columns
        children: <Widget>[
          GridItem(boxNumber, 1),
          GridItem(boxNumber, 2),
          GridItem(boxNumber, 3),
          GridItem(boxNumber, 4),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int boxNumber;
  final int itemNumber;

  GridItem(this.boxNumber, this.itemNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0), // Adjust margin as needed
      decoration: BoxDecoration(
        color: Colors.blue, // Customize the color
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          'Box $boxNumber - Item $itemNumber',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}