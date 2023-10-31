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
      appBar: appBar(context),
      body: Column(
        children: <Widget>[
          _bannerApp(context),
          const DataSuratMasukColumn(),
          _listSurat(),
        ],
      ),
    );
  }

  Expanded _listSurat() {
    return Expanded(
      child: ListView.builder(
        itemCount: dataSuratList.length,
        itemBuilder: (BuildContext context, int index) {
          final surat = dataSuratList[index];
          return Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const Informasi(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, -1.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    // ignore: prefer_const_constructors
                    transitionDuration: Duration(milliseconds: 200),
                  ));
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
                        style:
                            const TextStyle(color: Colors.blue, fontSize: 10),
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
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Container _bannerApp(BuildContext context) {
    return Container(
      // IMAGE BANNER
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.19, // 18% of screen height
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            15), // Radius adjusment Match the other one below \/
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
              borderRadius: BorderRadius.circular(
                  15), // Match the radius of the outer container
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
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // First Text
                      'PRANATA KOMPUTER PERTAMA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      // Second Text
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
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.white
            .withOpacity(0), // Add a semi-transparent white background
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 12, // Adjust the text size here
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
                    // Action when the "Cari" button is pressed
                  },
                  child: const Text(
                    "Cari",
                    style: TextStyle(
                      fontSize: 12, // Adjust the text size here
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
