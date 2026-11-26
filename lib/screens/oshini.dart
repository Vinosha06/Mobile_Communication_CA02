
import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member4Screen extends StatefulWidget {
  const Member4Screen({super.key});

  @override
  State<Member4Screen> createState() => _Member4ScreenState();
}

class _Member4ScreenState extends State<Member4Screen> {

  static const String fullName = 'Oshini Hewagamage';
  static const String email = 'hewagamageoshinikumari@gmail.com';
  static const String address = 'Angunukolapelassa, Sri Lanka';

  static const String photoPath = 'assets/images/oshini.jpg';

  static const List<String> education = [
    'National Diploma in Technology (NDT) in Information Technology',
    'Institute of Technology, University of Moratuwa',
    '2025 – 2027 (Expected)',
  ];

  static const List<String> technicalSkills = [
    'Requirement Elicitation',
    'User Stories & Acceptance Criteria',
    'BRD / FRD Documentation',
    'BPMN 2.0',
    'Use Case Modeling',
    
  ];

  static const List<String> softSkills = [
    'Stakeholder Negotiation',
    'Cross-Functional Collaboration',
    'Root-Cause Analysis',
    'Conflict Resolution',
    'Technical Presentation (English)',
  ];

  static const List<String> achievements = [
    'Sri Lanka University Games (SLUG) Colors Awardee – Represented University of Moratuwa in Kabaddi.',
  ];

  static const List<String> certifications = [
    'Cisco Networking Academy – Data Science Essentials with Python.',
  ];

  Widget sectionTitle(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, top: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal, size: 22),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }

  Widget detailCard(List<Widget> children) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget infoText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, height: 1.5),
      ),
    );
  }

  Widget skillChips(List<String> skills) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skills.map((skill) {
        return Chip(
          label: Text(skill),
          backgroundColor: Colors.teal.shade50,
          side: BorderSide.none,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member 04'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // PROFILE PHOTO AND NAME

          Center(
            child: Column(
              children: [
                ClipOval(
                  child: memberAvatarImage(
                    photoPath,
                    width: 120,
                    height: 120,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  fullName,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'IT Undergraduate',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // EDUCATION

          sectionTitle('Education', Icons.school),

          detailCard([
            ...education.map((e) => infoText(e)),
          ]),

          // TECHNICAL SKILLS

          sectionTitle('Technical Skills', Icons.computer),

          detailCard([
            skillChips(technicalSkills),
          ]),

          // SOFT SKILLS

          sectionTitle('Soft Skills', Icons.people),

          detailCard([
            skillChips(softSkills),
          ]),

          // ACHIEVEMENTS

          sectionTitle('Achievements', Icons.emoji_events),

          detailCard([
            ...achievements.map((e) => infoText(e)),
          ]),

          // CERTIFICATIONS

          sectionTitle('Certifications', Icons.workspace_premium),

          detailCard([
            ...certifications.map((e) => infoText(e)),
          ]),

          // CONTACT DETAILS

          sectionTitle('Contact Details', Icons.contact_mail),

          detailCard([
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.email, color: Colors.teal),
              title: const Text('Email'),
              subtitle: const Text(email),
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on, color: Colors.teal),
              title: const Text('Address'),
              subtitle: const Text(address),
            ),
          ]),
        ],
      ),
    );
  }
}
