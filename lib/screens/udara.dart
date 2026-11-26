import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member8Screen extends StatelessWidget {
  const Member8Screen({super.key});

  static const String fullName = 'KODIKARA ARACHCHIGE UDARA HANSANA KODIKARA';
  static const String studentId = '23IT0495';
  static const String address = 'Pugoda, Gampaha';
  static const String email = 'udarahansana2001@gmail.com';
  static const String photoPath = 'assets/images/udara.jpg';

  static const List<String> academics = ['Diploma in IT (ITUM - Ongoing)'];
  static const List<String> softSkills = ['Teamwork', 'Friendly & Collaborative'];
  static const List<String> specialTalents = ['Taekwondo'];

  @override
  Widget build(BuildContext context) {
    final cards = [...softSkills, ...specialTalents];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member 08 '),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: memberAvatarImage(photoPath, width: 76, height: 76),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fullName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('$studentId • $email'),
                      Text(address),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text('Academics', style: TextStyle(fontWeight: FontWeight.bold)),
            ...academics.map((a) => Text('• $a')),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                itemCount: cards.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.8,
                ),
                itemBuilder: (_, i) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(cards[i], style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
