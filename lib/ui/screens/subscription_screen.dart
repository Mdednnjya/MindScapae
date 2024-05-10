import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(56.0),
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
                        'Subscription',
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
              SizedBox(height: 27.0),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/user/subscription/crown.svg',
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Premium Plan',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.41,
                                height: 1.3,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Billed annually',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    color: Color(0xFF838383),
                                    letterSpacing: -0.41,
                                    height: 1.7,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  '• Active',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    color: Color(0xFF41C9E2),
                                    letterSpacing: -0.41,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/images/user/subscription/grey_right_arrow.svg',
                        ),
                      ],
                    ),
                    SizedBox(height: 27.0),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/user/subscription/billing.svg',
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Billing',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.41,
                                height: 1.3,
                              ),
                            ),
                            Text(
                              'See details',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Color(0xFF838383),
                                letterSpacing: -0.41,
                                height: 1.7,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/images/user/subscription/grey_right_arrow.svg',
                        ),
                      ],
                    ),
                    SizedBox(height: 27.0),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/user/subscription/list_checklist.svg',
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'See available plans',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.41,
                                height: 1.3,
                              ),
                            ),
                            Text(
                              'Offer and more',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Color(0xFF838383),
                                letterSpacing: -0.41,
                                height: 1.7,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/images/user/subscription/grey_right_arrow.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 52.0),
              SvgPicture.asset(
                'assets/images/user/subscription/asset_subs.svg',
              ),
              SizedBox(height: 16.0),
              Container(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                        'More information about how our subscription works or any other billing related issue, ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF838383),
                          letterSpacing: -0.41,
                          height: 1.7,
                        ),
                      ),
                      TextSpan(
                        text: 'click here',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF838383),
                          letterSpacing: -0.41,
                          height: 1.7,
                          decoration: TextDecoration.underline,
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