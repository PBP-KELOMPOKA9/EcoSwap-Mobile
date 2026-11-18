import 'package:flutter/material.dart';
import 'package:ecoswap_mobile/screens/menu.dart';
import 'package:ecoswap_mobile/screens/login.dart';

// menu drawer samping buat navigasi antar halaman
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // bagian hijau paling atas drawer
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF00804C)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // logo daun dan nama ecoswap
                Row(
                  children: [
                    Icon(Icons.eco, color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'EcoSwap',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Solusi Berkelanjutan Mahasiswa UI',
                  style: TextStyle(fontSize: 13, color: Colors.white70),
                ),
                SizedBox(height: 4),
                Text(
                  'Modul 2: Autentikasi & Akun',
                  style: TextStyle(fontSize: 11, color: Colors.white54),
                ),
              ],
            ),
          ),

          // menu 1: balik ke halaman utama
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Color(0xFF00804C)),
            title: const Text('Halaman Utama'),
            onTap: () {
              // ganti halaman ke beranda biar ga numpuk riwayat
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),

          // menu 2: buka halaman login
          ListTile(
            leading: const Icon(Icons.login, color: Color(0xFF001F3F)),
            title: const Text('Masuk Akun (Login)'),
            onTap: () {
              // buka halaman login
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
