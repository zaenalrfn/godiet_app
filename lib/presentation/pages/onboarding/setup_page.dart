import 'package:flutter/material.dart';
import '/presentation/widgets/input_setup_widget.dart';
import '/presentation/pages/main_page/main_page.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});
  
  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  // Inisialisasi controller dengan benar
  late final TextEditingController _beratController;
  late final TextEditingController _tinggiController;
  late final TextEditingController _umurController;

  @override
  void initState() {
    super.initState();
    _beratController = TextEditingController();
    _tinggiController = TextEditingController();
    _umurController = TextEditingController();
  }

  @override
  void dispose() {
    _beratController.dispose();
    _tinggiController.dispose();
    _umurController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    // Validasi input
    if (_beratController.text.isEmpty ||
        _tinggiController.text.isEmpty ||
        _umurController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mohon isi semua data'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Handle submit
    print('Berat: ${_beratController.text}');
    print('Tinggi: ${_tinggiController.text}');
    print('Umur: ${_umurController.text}');

    // Navigate ke halaman berikutnya
    // Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: Column(
        children: [
          // Section 1: Text dan Gambar dengan SafeArea dan padding
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sebelum memulai\nsilahkan isi dibawah ini',
                    style: TextStyle(
                      color: Color(0xFF06283D),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Center(
                    child: Image.asset(
                      'assets/images/banner_setup.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Section 2: Container putih sampai bawah
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    InputSetup(
                      hint: 'Berat Badan',
                      controller: _beratController,
                      keyBoardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    InputSetup(
                      hint: 'Tinggi Badan',
                      controller: _tinggiController,
                      keyBoardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    InputSetup(
                      hint: 'Umur',
                      controller: _umurController,
                      keyBoardType: TextInputType.number,
                    ),
                    const Spacer(),
                    // Tombol Memulai
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom > 0
                            ? MediaQuery.of(context).padding.bottom
                            : 16,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF00BCD4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Memulai',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}