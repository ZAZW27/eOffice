import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    final curHeigth = MediaQuery.of(context).size.height;
    
    final contentWidth = MediaQuery.of(context).size.height * 1.5;
    double screenHeight = MediaQuery.of(context).size.height * 0.82;
    double contentHeight = ((curHeigth * 1.2) - screenHeight);

    return Scaffold(
    appBar: appBar(),
      body: Column(
        children: [
          _bannerApp(context),
          SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  height: 400,
                  // CONTETN FOT ALL OF THEM ASSIGNED AS ORANGE COLOR (while making it)
                  child: Container(
                    margin: EdgeInsets.only(top: 10,),
                    width: contentWidth,
                    child: Container(
                      child: Flex(
                        direction: Axis.vertical,
                        // mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // CONTAINER UNTUK TEXT "STATISTIK SURAT"
                          Container(
                            width: contentWidth,
                            margin: EdgeInsets.only(left: 5, right: 5),
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Statistik Surat",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600, 
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Statistika menunjukkan data surat masuk yang belum dicbaca atau ditandatangani secara elektronik ",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 10, 
                                    fontStyle: FontStyle.italic,
                                    height: 1
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          // EXPANDED UNTUK KEEMPAT TOMBOL SURAT
                          
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                // EXPANDED 1
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 140,
                                    margin: EdgeInsets.only(left: 10, right: 3, ),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 87, 226),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(98, 158, 158, 158), // Shadow color
                                          offset: Offset(0, 2), // Offset of the shadow
                                          blurRadius: 4, // Spread of the shadow
                                          spreadRadius: 0, // Amount of expansion/contraction
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15)                                      
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
                                              color: Color.fromARGB(255, 98, 175, 253), 
                                              borderRadius: BorderRadius.circular(15), 
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(255, 8, 38, 86), // Shadow color
                                                  offset: Offset(0, 2), // Offset of the shadow
                                                  blurRadius: 4, // Spread of the shadow
                                                  spreadRadius: -5.0, // Amount of expansion/contraction
                                                )
                                              ], 

                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Positioned(
                                                  top: 2,
                                                  right: 1,
                                                  child: Text('193',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600, 
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white, 
                                                    shape: BoxShape.circle
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
                                        Center(child: Text(
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
                                // EXPANDED 2
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 100,
                                    margin: EdgeInsets.only(left: 10, right: 3, ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 243, 114, 33),
                                    ),
                                    child: Text('Hieght saat ini $contentHeight'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Expanded(
                            // flex: 1,
                            child: Row(
                              children: <Widget>[
                                // EXPANDED 3
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 170,
                                    margin: EdgeInsets.only(left: 10, right: 3, ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 243, 114, 33),
                                    ),
                                    child: Text('Hieght saat ini $screenHeight'),
                                  ),
                                ),
                                // EXPANDED 4
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 3, right: 10, ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: Text('percobaan menggunakna container'),
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
          ),
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
      width: MediaQuery.of(context).size.width,
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
