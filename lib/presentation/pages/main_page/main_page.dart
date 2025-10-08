import 'package:flutter/material.dart';
import 'widget/card_main_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Seberapa Sehatkah\nHidup Anda?',
                    style: TextStyle(
                      color: Color(0xFF06283D),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFF06283D),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              
              // Cards
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CardMainWidget(
                        title: "IDEALKAN TUBUH",
                        description: "Tinggi dan berat badan kalian masuk kategori ideal gak gaes?",
                        colorOne: Color(0xFF00B1F1),
                        colorTwo: Color(0xFF0084B4),
                        icon: Image.asset(
                          'assets/images/mainPage/banner_idel.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      CardMainWidget(
                        title: "AKTIVITAS KALORI",
                        description: "Lebih banyak kalori yang anda bakar akan lebih baik untukmu!",
                        colorOne: Color(0xFFEA444E),
                        colorTwo: Color(0xFFB21B36),
                        icon: Image.asset(
                          'assets/images/mainPage/banner_aktivitas.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      CardMainWidget(
                        title: "MENU DIET",
                        description: "Menu yang anda dapat pilih selama menjalankan program diet ini.",
                        colorOne: Color(0xFFA5B902),
                        colorTwo: Color(0xFF889900),
                        icon: Image.asset(
                          'assets/images/mainPage/banner_menu.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      CardMainWidget(
                        title: "TIPS DIET",
                        description: "Berikut tips – tips yang dapat menyempurnakan program diet mu!",
                        colorOne: Color(0xFF36AA4A),
                        colorTwo: Color(0xFF217230),
                        icon: Image.asset(
                          'assets/images/mainPage/banner_tips.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}