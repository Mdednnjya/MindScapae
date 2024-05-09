import 'package:flutter/material.dart';
import 'package:mindscape/ui/widgets/row_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(21.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Center(
                child: Container(
                  width: 158,
                  height: 158,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/user/user_profil.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19),
              Center(
                child: Text(
                  'Lotar Finez',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.41,
                    height: 1.3,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Text(
                  '@finezsainz55',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                    height: 1.6,
                    color: Color(0xFFABABAB),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.41,
                    height: 1.3,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  color: const Color(0x87F7F7F),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    RowWidget(
                      leading: 'assets/images/user/membership_card.png',
                      title: 'Subscription',
                      trailing: 'assets/images/user/collapse_arrow.png',
                      textColor: Color(0xFF888888),
                      fontWeight: FontWeight.w600,
                      onTap: () {
                        // todo
                      },
                    ),
                    RowWidget(
                      leading: 'assets/images/user/user_male.png',
                      title: 'Manage account',
                      trailing: 'assets/images/user/collapse_arrow.png',
                      textColor: Color(0xFF888888),
                      fontWeight: FontWeight.w600,
                      onTap: () {
                        // todo
                      },
                    ),
                    RowWidget(
                      leading: 'assets/images/user/gear.png',
                      title: 'Settings',
                      trailing: 'assets/images/user/collapse_arrow.png',
                      textColor: Color(0xFF888888),
                      fontWeight: FontWeight.w600,
                      onTap: () {
                        // todo
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  color: const Color(0x87F7F7F),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: RowWidget(
                  leading: 'assets/images/user/logout_rounded.png',
                  title: 'Log out',
                  textColor: Color(0xFFDE5B5B),
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    // todo
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
