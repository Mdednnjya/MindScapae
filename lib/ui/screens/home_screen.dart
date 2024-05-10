import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/mood_button.dart';
import '../utils/feedback_utils.dart';
import 'chat_screen.dart';
import 'navbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedMood;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(55, 55, 55, 25),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: const AssetImage('assets/images/people.png'),
              ),
            ),

            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, [Your Name]',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      letterSpacing: -0.41,
                    ),
                  ),
                  Text(
                    'How are you doing today?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                      letterSpacing: -0.41,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_active,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/noti');
                  },
                ),
                // Menambahkan bulatan merah ketika ada notifikasi
                // if (_hasNotification)
                //   Positioned(
                //     top: 0,
                //     right: 0,
                //     child: Container(
                //       width: 10,
                //       height: 10,
                //       decoration: BoxDecoration(
                //         color: Colors.red,
                //         shape: BoxShape.circle,
                //       ),
                //     ),
                //   ),
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 15),
      Container(
        padding: const EdgeInsets.fromLTRB(55, 5, 55, 1),
        child: Column(
          children: [
        Text(
          'Choose your mood level:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
            letterSpacing: -0.41,
          ),
        ),
        const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoodButton(
                  emoji: '\u{1F600}',
                  label: 'Joyful',
                  mood: 'joyful',
                  isSelected: selectedMood == 'joyful',
                  onPressed: () {
                    setState(() {
                      selectedMood = 'joyful';
                    });
                    showFeedback(context, 'joyful');
                  },
                ),
                MoodButton(
                  emoji: '\u{1F61F}',
                  label: 'Anxious',
                  mood: 'anxious',
                  isSelected: selectedMood == 'anxious',
                  onPressed: () {
                    setState(() {
                      selectedMood = 'anxious';
                    });
                    showFeedback(context, 'anxious');
                  },
                ),
                MoodButton(
                  emoji: '\u{1F622}',
                  label: 'Sad',
                  mood: 'sad',
                  isSelected: selectedMood == 'sad',
                  onPressed: () {
                    setState(() {
                      selectedMood = 'sad';
                    });
                    showFeedback(context, 'sad');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        padding: const EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        // image: AssetImage('assets/images/home/daun.svg'),
        //   ),
        // ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '13.671',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 1),
                SvgPicture.asset(
                  'assets/images/home/Live.svg',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
        Text(
          'People are meditating\nright now',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            color: Color(0xFF5C5C5C),
            letterSpacing: -0.41,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // toDo: redirect to meditation page
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF41C9E2),
          ),
          child: const Text(
            'Join now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            ),
          ),
        ),
          ],
        ),
      ),
      const SizedBox(height: 10),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/home/gabi_banner.svg"),
            const SizedBox(height: 30),
            const Text(
              'Try GABI AI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Explore a safe space where you can share your thoughts, feelings, and concerns. Whether you're seeking advice or simply need someone to listen, GABI is here for you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF5C5C5C),
                  fontFamily: 'Inter',
                  letterSpacing: -0.41,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, '/chat_gabi');
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF41C9E2),
              ),
              child: const Text(
                'Chat Now',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
