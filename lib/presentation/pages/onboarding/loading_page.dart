import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/banner_loading_onboarding.png',
                  width: 342,
                  height: 342, // boleh disesuaikan
                ),
              // const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Selamat Datang di',
                    style: TextStyle(
                      color: Color(0xFF06283D),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Image.asset(
                    'assets/images/logo_godiet.png',
                    width: 88.0,
                    height: 26.0,
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CircularProgressIndicator(
                color: Color(0xFF06283D),
                strokeWidth: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}