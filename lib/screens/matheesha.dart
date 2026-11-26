import 'package:flutter/material.dart';

import '../widgets/photo_helper.dart';

class Member9Screen extends StatelessWidget {
  const Member9Screen({super.key});

  static const String fullName = 'Matheesha IK Jayawardhana';
  static const String studentId = '23IT0493';
  static const String address = 'Embilipitiya / Rathnapura';
  static const String email = 'matheejayawardhana1229@gmail.com';
  static const String photoPath = 'assets/images/matheesha.jpg';

  static const List<String> academics = [
    'National Diploma in Technology (NDT), Information Technology — ITUM (in progress)',
    'National Certificate - Computer Hardware Technician (NVQ Level 4) — Technical College, Embilipitiya',
    'CCNA coursework — Cisco Networking Academy (in progress)',
    'Cisco course certificates: Introduction to Networks and Switching, Routing, and Wireless Essentials',
  ];
  static const List<String> technicalSkills = [
    'Routing, switching, subnetting, and network troubleshooting',
    'TCP/IP, IPv4, IPv6, DHCP, and DNS',
  ];
  static const List<String> practicalExperience = [
    'Computer Hardware Technician Intern — Trio Computers & Mobiles',
    'Diagnosed PC hardware faults, replaced components, and repaired mobile phones',
    'Installed Windows and device drivers',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF7F2),
        title: const Text('Member 09'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              fullName,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
            ),
            const Text('$studentId • $email • $address'),
            const SizedBox(height: 14),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: memberAvatarImage(
                photoPath,
                width: double.infinity,
                height: 180,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'ACADEMIC QUALIFICATIONS',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            ),
            const Divider(),
            ...academics.map((a) => Text('• $a')),
            const SizedBox(height: 14),
            const Text(
              'TECHNICAL SKILLS',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            ),
            const Divider(),
            ...technicalSkills.map((s) => Text('• $s')),
            const SizedBox(height: 14),
            const Text(
              'PRACTICAL EXPERIENCE',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            ),
            const Divider(),
            ...practicalExperience.map((t) => Text('• $t')),
          ],
        ),
      ),
    );
  }
}
