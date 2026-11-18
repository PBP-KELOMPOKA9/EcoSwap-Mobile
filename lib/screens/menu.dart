import 'package:flutter/material.dart';
import 'package:ecoswap_mobile/screens/login.dart';
import 'package:ecoswap_mobile/screens/register.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // data identitas
  final String npm = '2506657182';
  final String nama = 'Nayla Putri Novita';
  final String kelas = 'PBP A / Kelompok A9';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6EC), // warna krem ecoswap
      appBar: AppBar(
        title: const Text(
          'EcoSwap Mobile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF00804C), // warna hijau ecoswap
        foregroundColor: Colors.white,
      ),
      // biar layarnya aman bisa discroll
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // kartu putih tempat nampilin data mahasiswa
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // logo ecoswap
                    Image.asset(
                      'assets/logo-ecoswap.png',
                      width: 80,
                      height: 55,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 16),
                    // teks nama, npm, dan modul
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nama,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF001F3F),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'NPM: $npm • $kelas',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Modul 2: Autentikasi & Akun',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF00804C),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Akses Modul Autentikasi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF001F3F),
              ),
            ),
            const SizedBox(height: 12),

            // 2 tombol kartu berdampingan (login & register)
            Row(
              children: [
                // kartu masuk akun
                Expanded(
                  child: _buildActionCard(
                    title: 'Masuk Akun (Login)',
                    icon: Icons.login,
                    color: const Color(0xFF00804C),
                    onTap: () {
                      // klik ini langsung buka halaman login
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                // kartu daftar akun
                Expanded(
                  child: _buildActionCard(
                    title: 'Daftar Akun (Register)',
                    icon: Icons.person_add,
                    color: const Color(0xFF001F3F),
                    onTap: () {
                      // klik ini langsung buka halaman daftar
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // cetakan kartu tombol biar kodenya ga perlu ngetik ulang-ulang
  Widget _buildActionCard({
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      // inkwell biar ada animasi pas kartunya dipencet
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // bulatan ikon dengan warna transparan
              CircleAvatar(
                radius: 28,
                backgroundColor: color.withOpacity(0.12),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
