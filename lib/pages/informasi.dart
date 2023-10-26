
import 'package:flutter/material.dart';

class Informasi extends StatefulWidget {
  const Informasi({super.key});

  @override
  State<Informasi> createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  
  @override
  Widget build(BuildContext context) {
    final contentWidth =  MediaQuery.of(context).size.width * 0.98;
    return Scaffold (
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: contentWidth,
                // decoration: BoxDecoration(
                //   color: const Color.fromARGB(255, 14, 12, 12),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        // Gambar profil pengguna (jika ada)
                        // Misalnya, backgroundImage: AssetImage('gambar_profil.jpg'),
                    ),
                    Container(
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            "Badan Kepegawaian dan Pengembangan",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "Sumber Daya Manusia",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "DIDIK BUDIANTO",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "198701312011011007",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Action to perform when the "Informasi" button is pressed
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Informasi", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Action to perform when the "Disposisi" button is pressed
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Disposisi", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Action to perform when the "Riwayat" button is pressed
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Riwayat", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Action to perform when the "Catatan" button is pressed
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Catatan", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            )

          ],
        )
        
      ),
    );
  }
  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Data Surat',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700
        ),
      ),
      // adjust the style to the app bar 
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(100, 255, 255, 255).withOpacity(0.7),
      centerTitle: true,
      // add the arrow icons to the app bar
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}