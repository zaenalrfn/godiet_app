import 'package:flutter/material.dart';

class CardMainWidget extends StatelessWidget {
  final String title;
  final String description;
  final Color colorOne;
  final Color colorTwo;
  final Image icon;

  const CardMainWidget({
    super.key,
    required this.title,
    required this.description,
    required this.colorOne,
    required this.colorTwo,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      margin: const EdgeInsets.only(bottom: 19),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Row(
          children: [
            // Bagian kiri: gambar icon menempel penuh ke kiri
            Expanded(
              flex: 10,
              child: Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
            ),

            // Bagian kanan: teks judul dan deskripsi
            Expanded(
              flex: 16,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 16, top: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 6),
                     SizedBox(
                      width: 180,
                        child: Text(
                          description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            height: 1.3,
                          ),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),  
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
