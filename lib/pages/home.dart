import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    final cruHeight = MediaQuery.of(context).size.height;
    return Scaffold(
    appBar: appBar(),
      body: Column(
        children: [
          _bannerApp(context),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2 columns
              children: <Widget>[
                // CONTAINERS FOR GRID: 1 (top left)
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Widht saat ini $curWidth'),
                ),
                // CONTAINERS FOR GRID: 2 (top right)
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Height saat ini $cruHeight'),
                ),
                // CONTAINERS FOR GRID: 3 (bottom left)
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 204, 218, 230),
                  ),
                  child: Text('percobaan menggunakna container'),
                ),
                // CONTAINERS FOR GRID: 4 (bottom right)
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('percobaan menggunakna container'),
                ),
              ],
            ),
          )


        ],
      ),
    );
  }

  /* =============================================================================
  ----------------------------- CONTENT: BANNER APP ------------------------------
  ============================================================================= */
  Container _bannerApp(BuildContext context){
    return Container(
      // IMAGE BANNER
      width: MediaQuery.of(context).size.height * 1.8,
      height: MediaQuery.of(context).size.height * 0.19, // 18% of screen height
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Radius adjusment Match the other one below \/
        image: DecorationImage(
          image: AssetImage('assets/images/WavyBackground.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Gradient overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), // Match the radius of the outer container
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black, // Starting color (bottom)
                  Colors.transparent, // Ending color (top)
                ],
              ),
            ),
          ),
          // Content and texts
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( // First Text
                      'PRANATA KOMPUTER PERTAMA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text( // Second Text
                      'Dinas Komunikasi dan Informatika Jabatan Definitif',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // Add more Text widgets as needed
            ],
          ),
        ],
      ),
    );
  }

  /* =============================================================================
  ------------------------------- CONTENT: APP BAR -------------------------------
  ============================================================================= */
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
