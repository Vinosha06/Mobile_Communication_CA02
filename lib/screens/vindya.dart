import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member3Screen extends StatefulWidget {
  const Member3Screen({super.key});

  @override
  State<Member3Screen> createState() => _Member3ScreenState();
}

class _Member3ScreenState extends State<Member3Screen> {
  int _tab = 0;

  static const String fullName = 'K.W.M.Nayomi Vindya Kumari';
  static const String studentId = '23IT0499';
  static const String address = 'Kandy,Sri Lanka';
  static const String email = 'nayomivindya711@gmail.com';
  static const String photoPath = 'assets/images/vindya.jpg';

  static const List<String> academics = [
    'National Diploma in Technology (NDT) in Information Technology - ITUM',
    'G.C.E. Advanced Level (A/L)',
    'G.C.E. Ordinary Level (O/L)',
    ];
  static const List<String> softSkills = [
    'Time Management', 
    'Leadership',
    'Problem Solving',
    'communication'
    ];
  static const List<String> specialTalents = [
    'Web Development',
    'UI/UX Design',
    'Competitive Programming',
    'Software Testing / QA'
  ];

  @override
  Widget build(BuildContext context) {
    final tabs = [academics, softSkills, specialTalents];
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8BBD0),
        title: const Text('Member 3 '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFCE4EC),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(fullName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('ID: $studentId'),
                        Text(email),
                        Text(address),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: memberAvatarImage(photoPath, width: 95, height: 105),
                ),
              ],
            ),
            const SizedBox(height: 14),
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('Academics')),
                ButtonSegment(value: 1, label: Text('Skills')),
                ButtonSegment(value: 2, label: Text('Talents')),
              ],
              selected: {_tab},
              onSelectionChanged: (s) => setState(() => _tab = s.first),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: tabs[_tab]
                    .map((item) => Card(child: ListTile(title: Text('• $item'))))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}