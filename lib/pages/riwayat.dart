import 'dart:ui';

import 'package:eoffice/pages/surat_pengaturan.dart';
import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: const <Widget>[
          headerSuratPengaturan(), // Gunakan widget DataSuratMasukColumn di sini
          DataSurat(
            initial: "AD",
            dari: "PURNOMO M - 1968100611990031004",
            kepada: "ADAMIN - 196804132000031008",
            tanggal: "2023-10-20 12:47:51",
            status: "Sudah Disposisi",
            disposisi: "Sudah Dilihat",
          ),
          DataSurat(
            initial: "RR",
            dari: "ADAMIN - 196804132000031008",
            kepada: "RAIHANAH RAHMAN - 19708021999032004",
            tanggal: "2023-10-20 '.3:5022",
            status: "Sudah Disposisi",
            disposisi: "Sudah Dilihat",
          ),
          DataSurat(
            initial: "AW",
            dari: "ADAMIN - 196804132000031008",
            kepada: "ADITYA EKA WICAKSANA- 19tszou132002121001",
            tanggal: "2023-10-20",
            status: "Sudah Disposisi",
            disposisi: "Sudah dilihat",
          ),
          DataSurat(
            initial: "AR",
            dari: "ADAMIN - 196804132000031008",
            kepada:"ABDUL RACHMAN - 96811181996031004",
            tanggal: "2023 10 20",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "AD",
            dari: "Surat Cuti",
            kepada: "CUTI TAHUNAN",
            tanggal: "9 Oktober 2023 08:19:05",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Riwayat',
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

class DataSuratMasukColumn extends StatefulWidget {
  const DataSuratMasukColumn({super.key});

  @override
  State<DataSuratMasukColumn> createState() => _DataSuratMasukColumnState();
}

class _DataSuratMasukColumnState extends State<DataSuratMasukColumn> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20), // Spasi atas
          const Text(
            "Data Surat Masuk",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, // Ukuran teks
              fontWeight: FontWeight.bold, // Tebal
              color: Colors.blue,
            ),
          ),
          Text(
            "Menurut Data, ada $jumlahSuratMasuk Surat yang Masuk",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20), // Spasi antara teks dan kotak pencarian
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Surat",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol "Cari" ditekan
                },
                child: const Text("Cari"),
              ),
            ],
          ),
          // Tambahkan konten lainnya di bawah teks "Data Surat Masuk"
        ],
      ),
    );
  }
}

class DataSurat extends StatefulWidget {
  final String initial;
  final String dari;
  final String kepada;
  final String tanggal;
  final String status;
  final String disposisi;

  const DataSurat({super.key, 
    required this.initial,
    required this.dari,
    required this.kepada,
    required this.tanggal,
    required this.status,
    required this.disposisi,
  });

  @override
  State<DataSurat> createState() => _DataSuratState();
}

class _DataSuratState extends State<DataSurat> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 7, right: 7),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isTapped ? const Color.fromARGB(255, 243, 243, 245) : const Color.fromARGB(0, 255, 255, 255),
        border: Border(
          bottom: BorderSide(
            color: isTapped ? const Color.fromARGB(255, 15, 79, 131) : const Color.fromARGB(255, 223, 221, 221),
            width: isTapped ? 2 : 1.5,
          ),
        ),
        
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10), // Berikan padding keseluruhan
        child: Row(
          children: <Widget>[
            // Kolom pertama dengan lingkaran
            Container(
              width: 50.0, // Lebar lingkaran
              height: 50.0, // Tinggi lingkaran
              decoration: const BoxDecoration(
                color: Colors.blue, // Warna lingkaran
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.initial,
                    style: const TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  )
                ]
              )
            ),
            const SizedBox(width: 10.0), // Spasi antara lingkaran dan persegi panjang
            // Kolom kedua dengan persegi panjang
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                //contoh aku ambil
                onTapDown: (details) {
                  setState(() {
                    isTapped = true;
                  });
                },
                // CONTENT: information
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    // color: const Color.fromARGB(19, 0, 0, 0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dari:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            widget.dari,
                            style: TextStyle(
                              fontSize: 14.2,
                              fontWeight: FontWeight.w400,
                              color: isTapped ? Colors.blue : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Kepada:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            widget.kepada,
                            style: TextStyle(
                              fontSize: 14.2,
                              fontWeight: FontWeight.w400,
                              color: isTapped ? Colors.blue : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        widget.tanggal,
                      ),
                      
                      const SizedBox(height: 10.0),
                      Wrap(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 77, 190, 82),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                widget.status,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500, 
                                    fontSize: 11,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(1.5, 1.0), // Set the shadow offset
                                        color: Color.fromARGB(255, 109, 109, 109),      // Set the shadow color
                                      ),
                                    ],
                                  ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 77, 190, 82),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                widget.disposisi,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500, 
                                  fontSize: 11,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.0), // Set the shadow offset
                                      color: Color.fromARGB(255, 109, 109, 109),      // Set the shadow color
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
