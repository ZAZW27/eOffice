// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:eoffice/pages/catatan.dart';
import 'package:eoffice/pages/informasi.dart';
import 'package:eoffice/pages/riwayat.dart';
import 'package:flutter/material.dart';

class DisposisiSection extends StatelessWidget {
  const DisposisiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          const headerSuratPengaturan(), // Perhatikan perubahan ini
          const DisposisiColumn(),
          Expanded(
            child: ListView.separated(
              itemCount: disposisiList.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final disposisi = disposisiList[index];
                return Disposisi(
                  initial: disposisi.initial,
                  dari: disposisi.dari,
                  perihal: disposisi.perihal,
                  tanggal: disposisi.tanggal,
                );
              },
            ),
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
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
      ),
      // adjust the style to the app bar 
      elevation: 0.0,
      backgroundColor:
          const Color.fromARGB(100, 255, 255, 255).withOpacity(0.7),
      centerTitle: true,
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
  const DisposisiColumn({super.key});

  @override
  State<DisposisiColumn> createState() => _DisposisiColumnState();
}

class _DisposisiColumnState extends State<DisposisiColumn> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20), // Spasi atas
          Text(
            "Disposisi Surat",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16, // Ukuran teks
              fontWeight: FontWeight.bold, // Tebal
              color: Colors.black,
            ),
          ),
          Text(
            "Daftar Dokumen Digital Surat yang diupload oleh Pembuat Surat",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 5), // Spasi antara teks dan kotak pencarian
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

  // ignore: prefer_const_constructors_in_immutables
  Disposisi({
    super.key, 
    required this.initial,
    required this.dari,
    required this.perihal,
    required this.tanggal,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DisposisiState createState() => _DisposisiState();
}

class _DisposisiState extends State<Disposisi> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10, bottom: 5), // Berikan padding keseluruhan
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10.0), // Spasi antara lingkaran dan persegi panjang
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
                duration: const Duration(milliseconds: 100),
                padding: const EdgeInsets.all(15),
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
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius:
                          20.0, // Sesuaikan dengan ukuran yang Anda inginkan
                      child: Text(
                        widget.initial,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Dari:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // const SizedBox(height: 5.0),
                          Text(
                            widget.dari,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "Perihal:",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // const SizedBox(height: 5.0),
                          Text(
                            widget.perihal,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "Tanggal:",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // const SizedBox(height: 5.0),
                          Text(
                            widget.tanggal,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // const SizedBox(height: 10.0),
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

// ignore: camel_case_types
class headerSuratPengaturan extends StatefulWidget {
  const headerSuratPengaturan({super.key});

  @override
  State<headerSuratPengaturan> createState() => _headerSuratPengaturanState();
}

class _headerSuratPengaturanState extends State<headerSuratPengaturan> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width * 0.98;
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
      child: SizedBox(
        width: contentWidth,
        // decoration: BoxDecoration(color: Colors.black),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                "DB",
                style: TextStyle(
                  fontSize: 20,
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
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Badan Kepegawaian dan Pengembangan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Sumber Daya Manusia",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, ),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "DIDIK BUDIANTO",
                  style: TextStyle(fontSize: 12),
                ),
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
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const Informasi(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 10),
                ));              
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Informasi",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                
              },
              style: OutlinedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 1, 141, 255).withOpacity(1),
                foregroundColor: Colors.white,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Disposisi",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const Riwayat(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 10),
                ));              
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Riwayat",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CatatanSection()));
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Catatan",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

