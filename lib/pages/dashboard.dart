import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {    
    final contentWidth = MediaQuery.of(context).size.height * 1.5;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          _bannerApp(context),
          _mainContent(contentWidth),
          ],
        )
      ),
    );
  }

  SingleChildScrollView _mainContent(double contentWidth) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: 400,
            // CONTETN FOT ALL OF THEM ASSIGNED AS ORANGE COLOR (while making it)
            child: Container(
              margin: const EdgeInsets.only(top: 10,),
              width: contentWidth,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Flex(
                  direction: Axis.vertical,
                  // mainAxisAlignment: MainAxisAlignment.start, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // CONTAINER UNTUK TEXT "STATISTIK SURAT"
                    Container(
                      width: contentWidth,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Statistik Surat",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600, 
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Statistika menunjukkan data surat masuk yang belum dicbaca atau ditandatangani secara elektronik ",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13, 
                              fontStyle: FontStyle.italic,
                              height: 1
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    // EXPANDED UNTUK KEEMPAT TOMBOL SURAT
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          // EXPANDED 1
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // On tap function
                              onTap: (){}, 
                              child: Container(
                                height: 140,
                                margin: const EdgeInsets.only(left: 10, right: 3, ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 87, 226),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(80, 71, 56, 129), // Shadow color
                                      offset: Offset(1, 3), // Offset of the shadow
                                      blurRadius: 2, // Spread of the shadow
                                      spreadRadius: 0, // Amount of expansion/contraction
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5)                                      
                                ),
                                // GAMBARAN DAN TEXT 
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    // CONTAINER GAMBAR
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Container(
                                        height: 80,
                                        
                                        decoration: BoxDecoration(
                                          
                                          gradient: const LinearGradient(
                                            colors: [Color.fromARGB(255, 132, 192, 253), Color.fromARGB(255, 66, 162, 241)], // Define your gradient colors
                                            begin: Alignment.topCenter, // Adjust the starting point
                                            end: Alignment.bottomCenter, // Adjust the ending point
                                          ),
                                          borderRadius: BorderRadius.circular(7), 
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(195, 8, 38, 86), // Shadow color
                                              offset: Offset(0, 2), // Offset of the shadow
                                              blurRadius: 7, // Spread of the shadow
                                              spreadRadius: -3.0, // Amount of expansion/contraction
                                            )
                                          ], 
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child: Text('193',
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 255, 255, 255),
                                                  fontWeight: FontWeight.w600, 
                                                  fontSize: 20,
                                                  shadows: [
                                                    Shadow(
                                                      color: Color.fromARGB(255, 86, 103, 199), // Shadow color
                                                      offset: Offset(3, 1), // Shadow offset (horizontal, vertical)
                                                      blurRadius: 1, // Shadow blur radius
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                color: Colors.white, 
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(118, 25, 89, 190), // Shadow color
                                                    offset: Offset(0, 2), // Offset of the shadow
                                                    blurRadius: 4, // Spread of the shadow
                                                    spreadRadius: -1, // Amount of expansion/contraction
                                                  )
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/surat-masuk.svg'
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Center(child: Text(
                                      "Surat masuk",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600, 
                                        
                                      ),  
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // EXPANDED 2
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // On tap function
                              onTap: () {
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                child: Container(
                                  height: 140,
                                  margin: const EdgeInsets.only(left: 3, right: 10 ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 8, 206, 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(80, 71, 56, 129), // Shadow color
                                        offset: Offset(1, 3), // Offset of the shadow
                                        blurRadius: 3, // Spread of the shadow
                                        spreadRadius: 0, // Amount of expansion/contraction
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5)                                      
                                  ),
                                  // GAMBARAN DAN TEXT 
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      // CONTAINER GAMBAR
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, right: 10),
                                        child: Container(
                                          height: 80,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [Color.fromARGB(255, 136, 255, 176), Color.fromARGB(255, 65, 243, 124)], // Define your gradient colors
                                              begin: Alignment.topCenter, // Adjust the starting point
                                              end: Alignment.bottomCenter, // Adjust the ending point
                                            ),
                                            
                                            borderRadius: BorderRadius.circular(7), 
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(195, 8, 38, 86), // Shadow color
                                                offset: Offset(0, 2), // Offset of the shadow
                                                blurRadius: 7, // Spread of the shadow
                                                spreadRadius: -3.0, // Amount of expansion/contraction
                                              )
                                            ], 
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                child: Text('39',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 255, 255, 255),
                                                    fontWeight: FontWeight.w600, 
                                                    fontSize: 20,
                                                    shadows: [
                                                      Shadow(
                                                        color: Color.fromARGB(255, 65, 187, 69), // Shadow color
                                                        offset: Offset(3, 1), // Shadow offset (horizontal, vertical)
                                                        blurRadius: 1, // Shadow blur radius
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 60,
                                                height: 60,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white, 
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(118, 25, 89, 190), // Shadow color
                                                      offset: Offset(0, 2), // Offset of the shadow
                                                      blurRadius: 4, // Spread of the shadow
                                                      spreadRadius: -1, // Amount of expansion/contraction
                                                    )
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/surat-keluar.svg'
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Center(child: Text(
                                        "Surat keluar",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600, 
                                          
                                        ),  
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          // EXPANDED 3
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                });
                              },
                              
                              child: Container(
                                height: 140,
                                margin: const EdgeInsets.only(left: 10, right: 3),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 244, 5, 5),
                                  boxShadow: const [  // Remove the shadow on tap
                                    BoxShadow(
                                      color: Color.fromARGB(80, 71, 56, 129),
                                      offset: Offset(1, 3),
                                      blurRadius: 2,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 10), // Decrease padding on tap
                                      child: Container(
                                        height: 80,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [Color.fromARGB(255, 255, 142, 142), Color.fromARGB(255, 245, 108, 108)],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                          borderRadius: BorderRadius.circular(7),
                                          boxShadow: const [  // Remove the shadow on tap
                                            BoxShadow(
                                              color: Color.fromARGB(195, 8, 38, 86),
                                              offset: Offset(0, 2),
                                              blurRadius: 7,
                                              spreadRadius: -3.0,
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child: Text('193',
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 255, 255, 255),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20,
                                                  shadows: [
                                                    Shadow(
                                                      color: Color.fromARGB(255, 175, 54, 54),
                                                      offset: Offset(3, 1),
                                                      blurRadius: 1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(118, 25, 89, 190),
                                                    offset: Offset(0, 2),
                                                    blurRadius: 4,
                                                    spreadRadius: -1,
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/surat-belum-ditandatangani.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Center(child: Text(
                                      "Belum TTD",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // EXPANDED 4
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              // On tap function
                              onTap: (){}, 
                              child: Container(
                                height: 140,
                                margin: const EdgeInsets.only(left: 3, right: 10 ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 235, 200, 3),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(80, 71, 56, 129), // Shadow color
                                      offset: Offset(1, 3), // Offset of the shadow
                                      blurRadius: 2, // Spread of the shadow
                                      spreadRadius: 0, // Amount of expansion/contraction
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5)                                      
                                ),
                                // GAMBARAN DAN TEXT 
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    // CONTAINER GAMBAR
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Container(
                                        height: 80,
                                        
                                        decoration: BoxDecoration(
                                          
                                          gradient: const LinearGradient(
                                            colors: [Color.fromARGB(255, 248, 228, 149), Color.fromARGB(255, 252, 243, 69)], // Define your gradient colors
                                            begin: Alignment.topCenter, // Adjust the starting point
                                            end: Alignment.bottomCenter, // Adjust the ending point
                                          ),
                                          borderRadius: BorderRadius.circular(7), 
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(195, 8, 38, 86), // Shadow color
                                              offset: Offset(0, 2), // Offset of the shadow
                                              blurRadius: 7, // Spread of the shadow
                                              spreadRadius: -3.0, // Amount of expansion/contraction
                                            )
                                          ], 
                            
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child: Text('39',
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 255, 255, 255),
                                                  fontWeight: FontWeight.w600, 
                                                  fontSize: 20,
                                                  shadows: [
                                                    Shadow(
                                                      color: Color.fromARGB(255, 187, 167, 65), // Shadow color
                                                      offset: Offset(3, 1), // Shadow offset (horizontal, vertical)
                                                      blurRadius: 1, // Shadow blur radius
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                color: Colors.white, 
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(118, 25, 89, 190), // Shadow color
                                                    offset: Offset(0, 2), // Offset of the shadow
                                                    blurRadius: 4, // Spread of the shadow
                                                    spreadRadius: -1, // Amount of expansion/contraction
                                                  )
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/surat-belum-dibaca.svg'
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Center(child: Text(
                                      "Belum dibaca",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600, 
                                        
                                      ),  
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }

  /* =============================================================================
  ----------------------------- CONTENT: BANNER APP ------------------------------
  ============================================================================= */
  Container _bannerApp(BuildContext context){
    return Container(
      // IMAGE BANNER
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.19, // 18% of screen height
      margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Radius adjusment Match the other one below \/
        image: const DecorationImage(
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
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black, // Starting color (bottom)
                  Colors.transparent, // Ending color (top)
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
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Column(
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
      title: const Text(
        'Dashboard eOffice',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700
        ),
      ),
      // adjust the style to the app bar 
      elevation: 0.0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
      centerTitle: true,
      // add the arrow icons to the app bar
      leading: InkWell(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 202, 215, 225).withOpacity(0.7),
            borderRadius: BorderRadius.circular(29)
          ),
          child: SvgPicture.asset(
            'assets/icons/left-arrow.svg', 
          ),  
        ),
      ),
    );
  }
}
