import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member6Screen extends StatelessWidget {
  const Member6Screen({super.key});

  static const String fullName = 'RANDIL KAVEESHWARA';
  static const String studentId = '23IT0492';
  static const String address = 'Bandarawela, Sri Lanka';
  static const String email = 'kaweeshvera41@gmail.com';
  static const String photoPath = 'assets/images/Randil.jpeg';

  static const List<String> academics = [
    'Higher National Diploma in Information Technology - Present',
    'Institute of Technology, University of Moratuwa',
    'Postman API Fundamentals Student Expert - 2025',
    'Google AI Essentials - 2025',
    'Introduction to Prompt Engineering with GitHub Copilot - 2025',
    'Python (Basic) - HackerRank - 2025',
    'Advanced Java Programming - Sabaragamuwa University of Sri Lanka - 2024',
    'Front-End Web Development - University of Moratuwa',
    'Python for Beginners - University of Moratuwa - 2023',
    'Web Design for Beginners - University of Moratuwa - 2022',
  ];
  static const List<String> softSkills = [
    'Teamwork',
    'Communication',
    'Problem Solving',
  ];
  static const List<String> specialTalents = [
    'Full-stack Development',
    'Flutter and Clean Architecture',
    'REST API Development',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member 06'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: ClipOval(
                child: memberAvatarImage(photoPath, width: 56, height: 56),
              ),
              title: const Text(
                fullName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('$studentId • $email\n$address'),
              isThreeLine: true,
            ),
          ),
          const SizedBox(height: 8),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text('Academic Qualifications'),
            children: academics
                .map((a) => ListTile(title: Text('• $a')))
                .toList(),
          ),
          ExpansionTile(
            title: const Text('Soft Skills'),
            children: softSkills
                .map((s) => ListTile(title: Text('• $s')))
                .toList(),
          ),
          ExpansionTile(
            title: const Text('Special Talents'),
            children: specialTalents
                .map((t) => ListTile(title: Text('• $t')))
                .toList(),
          ),
        ],
      ),
    );
  }
}
