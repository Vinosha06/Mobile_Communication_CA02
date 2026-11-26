import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member2Screen extends StatefulWidget {
  const Member2Screen({super.key});

  @override
  State<Member2Screen> createState() => _Member2ScreenState();
}

class _Member2ScreenState extends State<Member2Screen> {
  bool _neonBorder = true;

  static const String fullName = 'Numaya Kodiweera';
  static const String studentId = '23IT0496';
  static const String address = 'Matara District';
  static const String email = 'malmikodiweera23@gmail.com';
  static const String photoPath = 'assets/images/numaya.jpeg';

  static const List<String> academics = [
    'National Diploma in Technology (NDT) in Information Technology - ITUM 2025 – 2027 (Expected)',
    'G.C.E. Advanced Level (A/L)',
    'G.C.E. Ordinary Level (O/L)',
    ];
  static const List<String> softSkills = [
    'Problem-Solving & Critical Thinking', 
    'Teamwork & Collaboration',
    'Effective Communication',
    'Adaptability & Fast Learning',
    'Time Management & Prioritization'
    ];
  static const List<String> specialTalents = [
    'Digital Art', 
    'Graphic Design',
    'UI/UX Design',
    'Photography & Video Editing'
    'Web Development'
    'Project Management'
    ];

  @override
  Widget build(BuildContext context) {
    const cyan = Color(0xFF00E5FF);
    return Scaffold(
      backgroundColor: const Color(0xFF0E131A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171F2A),
        foregroundColor: cyan,
        title: const Text('Member 02 '),
        actions: [
          Switch(
            value: _neonBorder,
            onChanged: (v) => setState(() => _neonBorder = v),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF171F2A),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: _neonBorder ? cyan : Colors.white24),
            ),
            child: Column(
              children: [
                ClipOval(child: memberAvatarImage(photoPath, width: 96, height: 96)),
                const SizedBox(height: 10),
                Text(fullName, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                Text('$studentId • $email', style: const TextStyle(color: cyan)),
                Text(address, style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 14),
          _section('Academic Qualifications', academics, cyan),
          _section('Soft Skills', softSkills, Colors.pinkAccent),
          _section('Special Talents', specialTalents, Colors.amberAccent),
        ],
      ),
    );
  }

  Widget _section(String title, List<String> items, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF171F2A),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          ...items.map((e) => Text('• $e', style: const TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}