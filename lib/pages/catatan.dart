// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatatanSection extends StatelessWidget {
  const CatatanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Column(
        children: <Widget>[
          Expanded(
            child: Catatan(),
          ),
          CatatanInput(),
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
      // add the arrow icons to the app bar
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/left-arrow.svg',  // Replace with the path to your SVG image
          color: Colors.black, // Color of the icon
          width: 40, // Width of the icon
          height: 40, // Height of the icon
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

class Catatan extends StatelessWidget {
  const Catatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Menampilkan 2 catatan:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Gunakan ListView untuk menggulir daftar catatan
            Expanded(
              child: ListView(
                children: const [
                  // Catatan 1
                  CatatanItem(
                    initial: 'JD', 
                    nama: 'john doe',
                    tanggal: '05-01-2023',
                    catatanText:
                        '1. Perlu diingat bahwa tanggal tenggat waktu pengiriman dokumen adalah 15 November 2023.\n'
                        '2. Pastikan untuk mencantumkan nomor referensi surat pada setiap dokumen terkait.\n'
                        '3. Perlu koordinasi dengan departemen IT terkait untuk mengatasi masalah teknis di ruang pertemuan.\n'
                        '4. Agenda rapat dijadwalkan pada tanggal 10 November 2023, pukul 10:00 pagi di ruang pertemuan utama.\n'
                        '5. Evaluasi dampak proyek saat ini terhadap anggaran dan sumber daya manusia sebelum rapat pemantauan minggu depan.',
                  ),
                  // Catatan 2
                  CatatanItem(
                    initial: 'JD', 
                    nama: 'john doe',
                    tanggal: '01-4-2022',
                    catatanText:
                        '1. Harap segera menyelesaikan laporan keuangan bulan lalu dan kirimkan kepada Departemen Keuangan paling lambat tanggal 5 Desember 2023.\n'
                        '2. Ruang rapat telah dijadwalkan untuk digunakan pada tanggal 12 Desember 2023, pukul 14:00 untuk presentasi proyek.\n'
                        '3. Mohon konfirmasi kehadiran Anda dalam rapat tim besok jam 9 pagi di ruang pertemuan kecil.\n'
                        '4. Persiapkan materi presentasi untuk rapat dewan direksi yang akan datang pada tanggal 18 Desember 2023.\n'
                        '5. Segera hubungi vendor IT untuk perbaikan perangkat keras di departemen IT dan pastikan untuk melaporkan biaya perbaikan.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CatatanItem extends StatelessWidget {
  final String initial;
  final String nama;
  final String tanggal;
  final String catatanText;

  const CatatanItem({
    Key? key,
    required this.initial,
    required this.nama,
    required this.tanggal,
    required this.catatanText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 18, 13, 50), width: 1.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0), // Atur padding sesuai preferensi Anda
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween, // Adjust main axis alignment
                    children: [
                      Wrap(
                        direction:Axis.horizontal,
                        alignment: WrapAlignment.center,
                        children: [
                          Container(
                            width: 30.0, // Lebar lingkaran
                            height: 30.0, // Tinggi lingkaran
                            decoration: const BoxDecoration(
                              color: Colors.blue, // Warna lingkaran
                              shape: BoxShape.circle, // Bentuk lingkaran
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  initial,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                )
                              ]
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 4),
                            child: Text(
                              nama, 
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          tanggal,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black, // Color of the border
                        width: 1.0,          // Width of the border
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 4),
                        child: Text(
                          'Catatan:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        catatanText,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CatatanInput extends StatefulWidget {
  const CatatanInput({super.key});

  @override
  _CatatanInputState createState() => _CatatanInputState();
}

class _CatatanInputState extends State<CatatanInput> {
  final TextEditingController _catatanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _catatanController,
              maxLines: 3,
              style: const TextStyle(fontSize: 11), // Adjust the font size as needed
              decoration: InputDecoration(
                hintText: 'Tambahkan catatan...',
                hintStyle: const TextStyle(fontSize: 11),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ),
          const SizedBox(width: 10.0),
          ElevatedButton(
            onPressed: () {
              // Lakukan sesuatu dengan teks yang ada di _catatanController
              String catatan = _catatanController.text;
              if (catatan.isNotEmpty) {
                // Tambahkan logika untuk menangani catatan di sini
                // ignore: avoid_print
                print('Catatan: $catatan');
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _catatanController.dispose();
    super.dispose();
  }
}
