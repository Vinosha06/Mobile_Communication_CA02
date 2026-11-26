import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member5Screen extends StatelessWidget {
  const Member5Screen({super.key});

  static const String fullName = 'Chamod Nisal';
  static const String studentId = '23IT0497';
  static const String roleTitle = 'Full Stack Developer - Intern';
  static const String address = 'Tangalle, Sri Lanka';
  static const String email = 'chamodnisal2002@gmail.com';
  static const String phone = '+94 70 216 8247';
  static const String photoPath = 'assets/images/chamod.jpg';

  static const List<String> academics = [
    'Information Technology - Institute of Technology, University of Moratuwa',
    'G.C.E. Advanced Level - Physical Science',
    'G.C.E. Ordinary Level',
  ];
  static const List<String> softSkills = [
    'Adaptability',
    'Problem Solving',
    'Creative Thinking',
    'Teamwork',
  ];
  static const List<String> specialTalents = [
    'Full-Stack Development',
    'React.js Development',
    'UI/UX Design',
    'Python, Java and PHP',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Member 05 '),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Academics'),
              Tab(text: 'Skills'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: memberAvatarImage(photoPath, width: 110, height: 110),
                  ),
                  const SizedBox(height: 12),
                  const Text(fullName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Text(roleTitle),
                  const Text('ID: $studentId'),
                  const Text('Email: $email'),
                  const Text('Phone: $phone'),
                  const Text('Address: $address'),
                ],
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(16),
              children: academics.map((a) => Card(child: ListTile(title: Text(a)))).toList(),
            ),
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text('Soft Skills', style: TextStyle(fontWeight: FontWeight.bold)),
                ...softSkills.map((s) => ListTile(title: Text('• $s'))),
                const Text('Special Talents', style: TextStyle(fontWeight: FontWeight.bold)),
                ...specialTalents.map((t) => ListTile(title: Text('• $t'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}