import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search_screen.dart';
import 'navbar.dart';

class QuitezoneIntroScreen extends StatelessWidget {
  const QuitezoneIntroScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 31),
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Transform.scale(
                scale: 1.2,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ),
            ),
            const SizedBox(height: 36),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 64.0),
              child: Column(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/search/quitezone_asset.svg',
                    ),
                  ),
                  SizedBox(height: 36.0),
                  Text(
                    'Introducing QuiteZone',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'QuiteZone is a sanctuary where the cacophony of life dissolves into whispers. Within its virtual embrace, stress retreats like a tide, leaving behind a tranquil shore. Here, meditation intertwines with Virtual Reality (VR), weaving a tapestry of serenity. With a VR headset as your compass, you wander through 360-degree vistas—each a haven of calm, each a refuge from the mundane. No need to traverse physical miles; QuiteZone transports you to serene realms, where time slows, and the soul finds solace.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      letterSpacing: -0.41,
                      height: 2.0,
                      color: const Color(0xFF7F7F7F),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 54.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Benefits :',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/search/head_reload.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Very minimal Distraction : ',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: Colors.black, // Warna teks hitam
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'helps users achieve a heightened state of concentration, making each meditation session more effective.',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: const Color(0xFF7F7F7F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/search/mortarboard.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Stress Reduction : ',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: Colors.black, // Warna teks hitam
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'harnessing the power of meditation to alleviate stress. It\'s like having a personal retreat where peace and tranquility reign.',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: const Color(0xFF7F7F7F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/search/mountain.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Immersive Environments : ',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Transport you to a variety of natural settings, providing a 360-degree immersive experience.',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        letterSpacing: -0.41,
                                        height: 1.5,
                                        color: const Color(0xFF7F7F7F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // todo
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF41C9E2)), // Warna latar belakang
                        minimumSize: MaterialStateProperty.all<Size>(Size(170, 34)), // Ukuran tombol
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0), // Corner radius 11
                          ),
                        ),
                      ),
                      child: Text(
                        'Try it free',
                        style: TextStyle(
                          color: Colors.white, // Warna teks
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          letterSpacing: -0.41,
                          height: 0.8,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 21.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}