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
          const HeaderSuratPengaturan(), // Perhatikan perubahan ini
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
          SizedBox(height: 5),
          Text(
            "Disposisi Surat",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
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
          SizedBox(height: 5),
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
    Key? key,
    required this.initial,
    required this.dari,
    required this.perihal,
    required this.tanggal,
  }) : super(key: key);

  @override
  _DisposisiState createState() => _DisposisiState();
}

class _DisposisiState extends State<Disposisi> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: ListTile(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            widget.initial,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dari:",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
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
            Text(
              widget.tanggal,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5.0),
          ],
        ),
        tileColor: isTapped ? Colors.grey[100] : Colors.white,
      ),
    );
  }
}

class HeaderSuratPengaturan extends StatefulWidget {
  // Perhatikan perubahan ini
  const HeaderSuratPengaturan({super.key});

  @override
  State<HeaderSuratPengaturan> createState() =>
      _HeaderSuratPengaturanState(); // Perhatikan perubahan ini
}

class _HeaderSuratPengaturanState extends State<HeaderSuratPengaturan> {
  // Perhatikan perubahan ini
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width * 0.98;
    return SingleChildScrollView(
      child: Column(
        children: [
          _infoBanner(contentWidth),
          const SizedBox(height: 20),
          _navBar(),
        ],
      ),
    );
  }

  Center _infoBanner(double contentWidth) {
    return Center(
      child: SizedBox(
        width: contentWidth * 0.9,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                "DB",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text(
                  textAlign: TextAlign.center,
                  "Badan Kepegawaian dan Pengembangan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Sumber Daya Manusia",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center,
                  "DIDIK BUDIANTO",
                  style: TextStyle(fontSize: 12),
                ),
                // SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center,
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
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Informasi()));
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
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 1, 141, 255).withOpacity(1),
                foregroundColor: Colors.white,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Riwayat()));
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

class DisposisiModel {
  final String initial;
  final String dari;
  final String perihal;
  final String tanggal;

  DisposisiModel({
    required this.initial,
    required this.dari,
    required this.perihal,
    required this.tanggal,
  });
}

List<DisposisiModel> disposisiList = [
  DisposisiModel(
    initial: "AD",
    dari: "ADAMIN",
    perihal:
        "Diminta kepada semua pegawai diskominfo untuk mendaftar sebagai peserta donor darah sesuai ketentuan umum dalam surat tersebut. Minta dikoordinir oleh kasubag umum",
    tanggal: "2023-10-20 13:05:01",
  ),
  DisposisiModel(
    initial: "RR",
    dari: "RAIHANAH RAHMAH",
    perihal:
        "Diinformasikan kepada seluruh pegawai, bagi yang ingin donor dan memenuhi syarat langsung berkoordinasi dgn sebag umum",
    tanggal: "2023-10-20 13:52:22",
  ),
  DisposisiModel(
    initial: "AW",
    dari: "ADITYA EKA WICAKSANA",
    perihal: "-",
    tanggal: "2023-10-20 15:58:43",
  ),
  DisposisiModel(
      initial: "AR",
      dari: "ABDUL RACHIM",
      perihal:
          "sesuaikan disposisi kadis untuk di infokan ke pegawai yang berminat dan sesuai syarat",
      tanggal: "2023-10-21 14:44:12")
  // Tambahkan data disposisi lainnya di sini
];
