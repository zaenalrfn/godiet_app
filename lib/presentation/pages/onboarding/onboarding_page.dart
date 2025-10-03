import 'package:flutter/material.dart';
// import '/core/routes/app_routes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Ilustrasi atau gambar onboarding
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/images/onboarding.png', // nanti tambah di pubspec.yaml
                    height: 250,
                  ),
                ),
              ),
              const Text(
                "Selamat datang di GoDiet!\nTeman diet sehatmu.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // ElevatedButton.icon(
              //   onPressed: () {
              //     Navigator.pushReplacementNamed(context, AppRoutes.login);
              //   },
              //   icon: const Icon(Icons.login),
              //   label: const Text("Lanjutkan dengan Google"),
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: const Size(double.infinity, 50),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(12)),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
