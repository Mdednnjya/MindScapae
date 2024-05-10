import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(46.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                      child: SvgPicture.asset(
                        'assets/images/user/subscription/back_button.svg',
                        width: 16,
                        height: 16,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Manage account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 19,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.41,
                          height: 1.3,
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 35.0),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 82,
                        height: 82,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/user/user_profil.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: Text(
                        'Change photo',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF7F7F7F),
                          letterSpacing: -0.41,
                          height: 1.47,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 27.0),
                          Text(
                            'Account',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF7F7F7F),
                              letterSpacing: -0.41,
                              height: 1.47,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41,
                                  height: 1.47,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Lotar Finez',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                      height: 1.47,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  SvgPicture.asset('assets/images/user/manage_account/right_arrow.svg'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41,
                                  height: 1.47,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '@finezsainz55',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                      height: 1.47,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  SvgPicture.asset('assets/images/user/manage_account/right_arrow.svg'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Phone number',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41,
                                  height: 1.47,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '+44 20 7946 0958',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF7F7F7F),
                                      letterSpacing: -0.41,
                                      height: 1.47,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  SvgPicture.asset('assets/images/user/manage_account/right_arrow.svg'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 75),
                    SvgPicture.asset(
                      'assets/images/user/manage_account/manage_account_asset.svg',
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Copyright 2024 MindScape v4.3',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          color: Color(0xFF848484),
                          letterSpacing: -0.41,
                          height: 1.83,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.0),
            ],
          ),
        ),
      ),
    );
  }
}