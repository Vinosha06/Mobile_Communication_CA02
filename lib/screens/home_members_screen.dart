import 'package:flutter/material.dart';
import '../auth_service.dart';
import '../models/member_item.dart';
import 'vinosha.dart';
import 'randil.dart';
import 'matheesha.dart';
import 'Kirushajithan.dart';
import 'udara.dart';
import 'numaya.dart';
import 'chamod.dart';
import 'vindya.dart';
import 'oshini.dart';


class HomeMembersScreen extends StatelessWidget {
  const HomeMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    final members = <MemberItem>[
      MemberItem(
        number: 1,
        name: 'Vinosha Sewmini Kumarasinghe',
        studentId: '23IT0498',
        subtitle: 'Student at ITUM',
        color: Colors.indigo,
        builder: (_) => const Member1Screen(),
      ),
      MemberItem(
        number: 2,
        name: 'Malmi Numaya Kodiweera',
        studentId: '23IT0496',
        subtitle: 'Student at ITUM',
        color: Colors.cyan,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 2'),
      ),
      MemberItem(
        number: 3,
        name: 'Nayomi Vindya',
        studentId: '23IT0499',
        subtitle: 'Student at ITUM',
        color: Colors.pink,
        builder: (_) => const Member3Screen(),
      ),
      MemberItem(
        number: 4,
        name: 'Oshini Kumari',
        studentId: '23IT0500',
        subtitle: 'Student at ITUM',
        color: Colors.teal,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 4'),
      ),
      MemberItem(
        number: 5,
        name: 'Chamod Nisal Kumara',
        studentId: '23IT0497',
        subtitle: 'Student at ITUM',
        color: Colors.deepOrange,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 5'),
      ),
      MemberItem(
        number: 6,
        name: 'Randil Kaveeshwara',
        studentId: '23IT0492',
        subtitle: 'Student at ITUM',
        color: Colors.purple,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 6'),
      ),
      MemberItem(
        number: 7,
        name: 'S Kirushajithan',
        studentId: '23IT0494',
        subtitle: 'Student at ITUM',
        color: Colors.blue,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 7'),
      ),
      MemberItem(
        number: 8,
        name: 'Udara Hansana',
        studentId: '23IT0495',
        subtitle: 'Student at ITUM',
        color: Colors.green,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 8'),
      ),
      MemberItem(
        number: 9,
        name: 'Matheesha Kekula',
        studentId: '23IT0493',
        subtitle: 'Student at ITUM',
        color: Colors.brown,
        builder: (_) => const PlaceholderMemberScreen(title: 'Member 9'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Members'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () => authService.signOut(),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: members.length,
        itemBuilder: (context, index) {
          final m = members[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: m.color.withValues(alpha: 0.15),
                child: Text(
                  '${m.number}',
                  style: TextStyle(color: m.color, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                m.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${m.studentId} • ${m.subtitle}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: m.builder),
                );
              },
            ),
          );
        },
      ),
    );
  }
}


class PlaceholderMemberScreen extends StatelessWidget {
  final String title;
  const PlaceholderMemberScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          '$title Profile Coming Soon!',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
