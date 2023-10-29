import 'package:eoffice/pages/informasi.dart';

import 'package:flutter/material.dart';

class DataSuratPage extends StatefulWidget {
  const DataSuratPage({super.key});

  @override
  State<DataSuratPage> createState() => _DataSuratPageState();
}

class _DataSuratPageState extends State<DataSuratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: ListView(
        children: const <Widget>[
          DataSuratMasukColumn(), // Gunakan widget DataSuratMasukColumn di sini
          DataSurat(
            initial: "DB",
            title: "Surat Pengantar",
            subtitle: "surat pengantar",
            pengirim: "DIDIK BUDIANTO",
            tanggal: "24 Oktober 2023 08:29:25",
            tautan: "000/1948/E/BKPSDM",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "AS",
            title: "Surat Undangan",
            subtitle: "Undangan",
            pengirim: "ACHMAD SAFEI",
            tanggal: "16 Oktober 2023 20:37:01",
            tautan: "005/0647/E/Bappeda Litbang",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "DB",
            title: "Surat Biasa",
            subtitle: "Himbauan Penelitian",
            pengirim: "DIDIK BUDIANTO",
            tanggal: "16 Oktober 2023 06:14:08",
            tautan: "339/1528/E/DPMPTSP",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "DB",
            title: "Surat Undangan",
            subtitle: "Undangan Senam Gebungan, Germas dan Bazar TPID",
            pengirim: "DIDIK BUDIANTO",
            tanggal: "12 Oktober 2023 07:45:57",
            tautan: "005/01009/Kesra",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "DB",
            title: "Surat Undangan",
            subtitle:
                "Rapat Penafsiran Nilai TKDN dan Money P3DN di Lingkungan Pemerintah Kota Balikpapan",
            pengirim: "DIDIK BUDIANTO",
            tanggal: "12 Oktober 2023 07:45:19",
            tautan: "027/0660_/PBJ",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "AD",
            title: "Surat Cuti",
            subtitle: "CUTI TAHUNAN",
            pengirim: "ADAMIN",
            tanggal: "9 Oktober 2023 08:19:05",
            tautan: "851/0542/E/Diskominfo",
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

class DataSuratMasukColumn extends StatefulWidget {
  const DataSuratMasukColumn({super.key});

  @override
  State<DataSuratMasukColumn> createState() => _DataSuratMasukColumnState();
}

class _DataSuratMasukColumnState extends State<DataSuratMasukColumn> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  width: screenWidth,
                  height: screenHeight * 0.25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/WavyBackground.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight *
                    0.100, // Atur tinggi teks agar berada di tengah gambar
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Data Surat Masuk",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Menurut Data, ada $jumlahSuratMasuk Surat yang Masuk",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Surat",
                    prefixIcon: const Icon(Icons.search, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol "Cari" ditekan
                },
                child: const Text(
                  "Cari",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataSurat extends StatefulWidget {
  final String initial;
  final String title;
  final String subtitle;
  final String pengirim;
  final String tanggal;
  final String tautan;
  final String status;
  final String disposisi;

  const DataSurat({
    super.key,
    required this.initial,
    required this.title,
    required this.subtitle,
    required this.pengirim,
    required this.tanggal,
    required this.tautan,
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
    return Padding(
      padding: const EdgeInsets.all(20.0), // Berikan padding keseluruhan
      child: Row(
        children: <Widget>[
          // Kolom pertama dengan lingkaran
          Container(
            width: 60.0, // Lebar lingkaran
            height: 60.0, // Tinggi lingkaran
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Informasi()));
              },
              //contoh aku ambil
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                        color: isTapped ? Colors.blue : Colors.black,
                      ),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      widget.pengirim,
                    ),
                    Text(
                      widget.tanggal,
                    ),
                    const SizedBox(height: 10.0),
                    GestureDetector(
                      child: Text(
                        widget.tautan,
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        // Tambahkan aksi ketika tautan ditekan
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Wrap(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            widget.status,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            widget.disposisi,
                            style: const TextStyle(
                              color: Colors.white,
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
    );
  }
}
