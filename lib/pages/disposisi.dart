import 'package:eoffice/pages/informasi.dart';
import 'package:eoffice/pages/riwayat.dart';
import 'package:flutter/material.dart';

class DisposisiSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: <Widget>[
          headerSuratPengaturan(),
          DisposisiColumn(), // Gunakan widget DataSuratMasukColumn di sini
          Disposisi(
            initial: "AD",
            dari: "ADAMIN",
            perihal:
                "Diminta kepada semua pegawai diskominfo untuk mendaftar sebagai peserta donor darah sesuai ketentuan umum dalam surat tersebut. Minta dikoordinir oleh kasubag umum",
            tanggal: "2023-10-20 13:05:01",
          ),
          Disposisi(
            initial: "RR",
            dari: "RAIHANAH RAHMAH",
            perihal:
                "Diinformasikan kepada seluruh pegawai, bagi yang ingin donor dan memenuhi syarat langsung berkoordinasi dgn sebag umum",
            tanggal: "2023-10-20 13:52:22",
          ),
          Disposisi(
            initial: "AW",
            dari: "ADITYA EKA WICAKSANA",
            perihal: "-",
            tanggal: "2023-10-20 15:58:43",
          ),
          Disposisi(
            initial: "AR",
            dari: "ABDUL RACHIM",
            perihal:
                "sesuaikan disposisi kadis untuk di infokan ke pegawai yang berminat dan sesuai syarat",
            tanggal: "2023-10-21 14:44:12",
          ),
        ],
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

class DisposisiColumn extends StatefulWidget {
  @override
  State<DisposisiColumn> createState() => _DisposisiColumnState();
}

class _DisposisiColumnState extends State<DisposisiColumn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20), // Spasi atas
          Text(
            "Disposisi Surat",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, // Ukuran teks
              fontWeight: FontWeight.bold, // Tebal
              color: Colors.black,
            ),
          ),
          Text(
            "Daftar Dokumen Digital Surat yang diupload oleh Pembuat Surat",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 20), // Spasi antara teks dan kotak pencarian
          // Tambahkan konten lainnya di bawah teks "Data Surat Masuk"
        ],
      ),
    );
  }
}

class Disposisi extends StatefulWidget {
  final String initial;
  final String dari;
  final String perihal;
  final String tanggal;

  Disposisi({
    required this.initial,
    required this.dari,
    required this.perihal,
    required this.tanggal,
  });

  @override
  State<Disposisi> createState() => _DisposisiState();
}

class _DisposisiState extends State<Disposisi> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0), // Berikan padding keseluruhan
      child: Row(
        children: <Widget>[
          SizedBox(width: 10.0), // Spasi antara lingkaran dan persegi panjang
          // Kolom kedua dengan persegi panjang
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              onTapDown: (details) {
                setState(() {
                  isTapped = true;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isTapped ? Colors.grey[100] : Colors.white,
                  border: Border.all(
                    color: isTapped ? Colors.blue : Colors.black,
                    width: isTapped ? 2 : 1,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  // Menggunakan Row untuk menyatukan lingkaran dan konten dalam satu baris
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.initial,
                            style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Dari:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            widget.dari,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Perihal:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            widget.perihal,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Tanggal:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            widget.tanggal,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class headerSuratPengaturan extends StatefulWidget {
  const headerSuratPengaturan({super.key});

  @override
  State<headerSuratPengaturan> createState() => _headerSuratPengaturanState();
}

class _headerSuratPengaturanState extends State<headerSuratPengaturan> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    final contentWidth =  MediaQuery.of(context).size.width * 0.98;
    return SingleChildScrollView(
      child: Column(
        children: [
          _infoBanner(contentWidth), // Consists of profile pic, and surat info
          const SizedBox(height:20), 
          _navBar(), // consists of navigation button to navigate through out the pages
        ],
      ),
    );
  }
  Center _infoBanner(double contentWidth) {
    return Center(
      child: Container(
        width: contentWidth * 0.9,
        // decoration: BoxDecoration(color: Colors.black),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(
                "DB",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
                // Gambar profil pengguna (jika ada)
                // Misalnya, backgroundImage: AssetImage('gambar_profil.jpg'),
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Badan Kepegawaian dan Pengembangan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Sumber Daya Manusia",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, ),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "DIDIK BUDIANTO",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "198701312011011007",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _navBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Informasi()));
                // Action to perform when the "SuratPengaturan" button is pressed
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Informasi", style: TextStyle(color: Colors.black),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 1, 141, 255).withOpacity(1), 
                foregroundColor: Colors.white,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Disposisi", style: TextStyle(color: Colors.white),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Riwayat()));
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                
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
          ),
        ],
      ),
    );
  }
}

