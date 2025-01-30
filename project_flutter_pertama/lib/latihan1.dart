// //Latihan 1
// 1. Cara membuat proyek menggunakan Command Prompt atau terminal:
//  -Masuk ke terminal, kemudian tulis command seperti ini: flutter create nama_proyek
//  -kemudian masuk ke folder proyek, misalnya cd nama_folder
//  -jika sudah membuat proyek, bisa menjalankannya dengan perintah di terminal atau command prompt: flutter run

// 2. Nama project dalam Flutter harus mengikuti aturan berikut:
//  -Hanya boleh menggunakan huruf kecil, angka, dan underscore (_).
//  -Tidak boleh menggunakan spasi atau huruf kapital.
//  -Tidak boleh diawali dengan angka.
// Contoh benar: latihan_flutter, my_app, belajar_dart.
// Contoh salah: Latihan-Flutter, my-app, 123flutter.

// 3. flutter secara otomatis membuat beberapa folder untuk platform tertentu, yaitu:
//  -android -> untuk menjalankan aplikasi di Android.
//  -ios -> untuk menjalankan di ios
//  -web -> untuk aplikasi berbasis web
//  -windows -> untuk aplikasi windows.
//  -linux -> untuk aplikasi linux.
//  -macOs -. untuk aplikasi macOS.

// 4. fungsi .dart_tools dan .idea:
//  -dart_tool berisi konfigurasi dart package yang di generate oleh flutter. Berisi file-file yang digunakan oleh Dart untuk caching dan pengelolaan dependency.
//  -.idea  menyimpan beberapa konfigurasi untuk android studio. Karena kita nantinya tidak menggunakan android studio untuk editornya, maka kita tidak butuh untuk mengubah apapun di dalam folder ini.

// 5. Buka VScode, kemudian open folder, cari proyek flutter yang ingin dibuka.

// 6. Android SDK dibutuhkan untuk Menyediakan tools dan libraries yang digunakan untuk membangun aplikasi Android dan Memungkinkan Flutter untuk menjalankan dan menguji aplikasi di emulator atau perangkat fisik

// 7. Beberapa langkah yang bisa dilakukan:
//  -Pastikan Android SDK sudah terinstal dengan benar.
//  -Periksa apakah path SDK sudah benar dengan perintah:
//   flutter config --android-sdk <path-to-android-sdk>
//  -Pastikan Command-line tools sudah terinstal (lihat poin berikutnya).
//  -Jalankan ulang: flutter doctor.

// 8. Cara Menambahkan Android SDK Command-line Tools Melalui Android Studio
//  -Buka Android Studio.
//  -Pergi ke Settings (Ctrl + Alt + S).
//  -Pilih Appearance & Behavior → System Settings → Android SDK.
//  -Pergi ke tab SDK Tools.
//  -Centang Android SDK Command-line Tools.
//  -Klik Apply lalu OK.

// 9. File .gitignore digunakan untuk menentukan file atau folder mana yang tidak perlu dimasukkan ke dalam Git repository. 

// 10. pubspec.yaml adalah file konfigurasi utama dalam proyek flutter.
//  fungsi:
//  -mengelola dependensi (package)
//  -mengatur assets (gambar, font, dll)
//  -menemukan informasiproyek seperti nama dan versi aplikasi

// 11. Widget adalah komponen dasar dalam Flutter yang digunakan untuk membangun antarmuka pengguna. Contohnya: Text, Button, Image, Column, Row.

// 12. Pewarisan digunakan untuk membuat widget baru dengan mewarisi dari StatelessWidget atau StatefulWidget. (menggunakan extends)

// 13. MaterialApp adalah widget utama yang membungkus seluruh aplikasi berbasis Material Design.

// 14. Fungsi runApp digunakan untuk menjalankan aplikasi Flutter. tanpa runApp, aplikasi tidak bisa berjalan.

// 15. Scaffold menyediakan struktur dasar aplikasi, seperti:
//  -AppBar (header aplikasi)
//  -Body (konten utama)
//  -FloatingActionButton
//  -Drawer (navigasi samping)

// 16. contoh kode untuk menambahkan app bar dan body pada Scaffold:
//   Scaffold(
//   appBar: AppBar(title: Text("Judul Aplikasi")),
//   body: Center(child: Text("Ini Body")),
// );

// 17. StatelessWidget:
//   -Tidak bisa berubah (immutable)
//   -Digunakan untuk UI statis
//   -Tidak memiliki setState()	
//   StatefulWidget:
//   - Bisa berubah (mutable)
//   - Digunakan untuk UI yang bisa berubah
//   - Memiliki setState()

// 18. Karena StatefulWidget bisa menyimpan dan mengubah data selama aplikasi berjalan. Contohnya, ketika ada tombol yang bisa mengubah teks.

// 19 dan 20 contoh stateless dan statefull widget

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget untuk menampilkan teks statis
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Ini adalah StatelessWidget!", 
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

// StatefulWidget untuk counter
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Counter: $_counter",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text("Tambah"),
        ),
      ],
    );
  }
}

// Struktur utama aplikasi menggunakan MaterialApp dan Scaffold
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless & Stateful Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyStatelessWidget(),
              SizedBox(height: 20),
              MyStatefulWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
