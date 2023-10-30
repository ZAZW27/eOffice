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
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
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
      ),
      body: Column(
        children: <Widget>[
          const DataSuratMasukColumn(),
          Expanded(
            child: ListView.builder(
              itemCount: dataSuratList.length,
              itemBuilder: (BuildContext context, int index) {
                final surat = dataSuratList[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Informasi()));
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                          surat.initial,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text(
                        surat.title,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            surat.subtitle,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            surat.pengirim,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            surat.tanggal,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              surat.tautan,
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 10),
                            ),
                            onTap: () {
                              // Tambahkan aksi ketika tautan ditekan
                            },
                          ),
                          Wrap(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(surat.status,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    )),
                              ),
                              const SizedBox(width: 5.0),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  surat.disposisi,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (index < dataSuratList.length - 1)
                      const Divider(
                        color: Colors.black,
                        height: 1.0,
                      ),
                  ],
                );
              },
            ),
          ),
        ],
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
                top: screenHeight * 0.100,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Data Surat Masuk",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Menurut Data, ada $jumlahSuratMasuk Surat yang Masuk",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(
                    fontSize: 12, // Ubah ukuran teks di sini
                  ),
                  decoration: InputDecoration(
                    hintText: "Cari Surat",
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
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
                  style: TextStyle(
                    fontSize: 12, // Ubah ukuran teks di sini
                    color: Colors.blue,
                  ),
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
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Informasi(),
          ),
        );
      },
    );
  }
}

class DataSuratModel {
  final String initial;
  final String title;
  final String subtitle;
  final String pengirim;
  final String tanggal;
  final String tautan;
  final String status;
  final String disposisi;

  DataSuratModel({
    required this.initial,
    required this.title,
    required this.subtitle,
    required this.pengirim,
    required this.tanggal,
    required this.tautan,
    required this.status,
    required this.disposisi,
  });
}

final List<DataSuratModel> dataSuratList = [
  DataSuratModel(
    initial: "DB",
    title: "Surat Pengantar",
    subtitle: "surat pengantar",
    pengirim: "DIDIK BUDIANTO",
    tanggal: "24 Oktober 2023 08:29:25",
    tautan: "000/1948/E/BKPSDM",
    status: "Belum Disposisi",
    disposisi: "Biasa",
  ),
  DataSuratModel(
    initial: "AS",
    title: "Surat Undangan",
    subtitle: "Undangan",
    pengirim: "ACHMAD SAFEI",
    tanggal: "16 Oktober 2023 20:37:01",
    tautan: "005/0647/E/Bappeda Litbang",
    status: "Belum Disposisi",
    disposisi: "Biasa",
  ),
  DataSuratModel(
    initial: "DB",
    title: "Surat Biasa",
    subtitle: "Himbauan Penelitian",
    pengirim: "DIDIK BUDIANTO",
    tanggal: "16 Oktober 2023 06:14:08",
    tautan: "339/1528/E/DPMPTSP",
    status: "Belum Disposisi",
    disposisi: "Biasa",
  ),
  DataSuratModel(
    initial: "DB",
    title: "Surat Undangan",
    subtitle: "Undangan Senam Gebungan, Germas dan Bazar TPID",
    pengirim: "DIDIK BUDIANTO",
    tanggal: "12 Oktober 2023 07:45:57",
    tautan: "005/01009/Kesra",
    status: "Belum Disposisi",
    disposisi: "Biasa",
  ),
  DataSuratModel(
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
  DataSuratModel(
    initial: "AD",
    title: "Surat Cuti",
    subtitle: "CUTI TAHUNAN",
    pengirim: "ADAMIN",
    tanggal: "9 Oktober 2023 08:19:05",
    tautan: "851/0542/E/Diskominfo",
    status: "Belum Disposisi",
    disposisi: "Biasa",
  ),
];
