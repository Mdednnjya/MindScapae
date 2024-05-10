import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 51),
                    Text(
                      'Heyaaa, Wanna start a chat today?',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        letterSpacing: -0.41,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Choose which service you want to use',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xFF838383),
                        letterSpacing: -0.41,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/chat_gabi');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(21.0, 41.0, 10.0, 41.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF41C9E2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            'assets/images/icons/gabi_av.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GABI',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              fontSize: 19,
                              letterSpacing: -0.41,
                              height: 1.3,
                            ),
                          ),
                          Text(
                            'Chat with your personal AI therapist',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              letterSpacing: -0.41,
                              height: 1.7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:21),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 41.0, 0.0, 41.0),
                decoration: BoxDecoration(
                  color: Color(0xFF41C9E2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/icons/certified_herapist.svg'),
                    SizedBox(width: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Certified Therapist',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            fontSize: 19,
                            letterSpacing: -0.41,
                            height: 1.3,
                          ),
                        ),
                        Text(
                          'Chat with our trusted therapist',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            letterSpacing: -0.41,
                            height: 1.7,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/images/icons/pro_label.svg'),
                  ],
                ),
              ),
              SizedBox(height: 48),
              Text(
                'Try saying',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                  letterSpacing: -0.41,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(21),
                decoration: BoxDecoration(
                  color: Color(0xFF41C9E2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            color: Colors.white,
                            child: Transform.scale(
                              scale: 1.1,
                              child: Image.asset(
                                'assets/images/icons/gabi_av.png',
                                width: 65,
                                height: 65,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'GABI:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            letterSpacing: -0.41,
                            height: 1.7,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Why am I so sad lately?',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  letterSpacing: -0.41,
                                  height: 1.7,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'How do I stop negative self-talk??',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  letterSpacing: -0.41,
                                  height: 1.7,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'My relationship is really struggling.',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  letterSpacing: -0.41,
                                  height: 1.7,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
            ],
          ),
        ),
      ),
    );
  }
}