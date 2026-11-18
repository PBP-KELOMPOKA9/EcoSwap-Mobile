import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:ecoswap_mobile/screens/menu.dart';

// fungsi main: titik awal pertama kali aplikasi dijalankan
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // bungkus pakai provider biar sesi login cookierequest bisa dipake di seluruh halaman
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'EcoSwap Mobile',
        // atur tema warna
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF00804C), // hijau ecoswap
            primary: const Color(0xFF00804C),
            secondary: const Color(0xFF001F3F), // navy
          ),
          scaffoldBackgroundColor: const Color(0xFFF5F6EC), // background krem
        ),
        // halaman yang pertama kali kebuka pas aplikasi dinyalakan
        home: const MyHomePage(),
      ),
    );
  }
}
