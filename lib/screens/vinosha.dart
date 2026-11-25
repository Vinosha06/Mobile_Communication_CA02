import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member1Screen extends StatefulWidget {
  const Member1Screen({super.key});

  @override
  State<Member1Screen> createState() => _Member1ScreenState();
}

class _Member1ScreenState extends State<Member1Screen> {
int _likes = 15;
bool _isLiked = false;

static const String fullName = 'T.M. Vinosha Sewmini Kumarasinghe';
static const String roleTitle = 'IT Undergraduate • NDT (ITUM)';
static const String studentId = '23IT0498';
static const String address = 'Anuradhapura, Sri Lanka';
static const String email = 'vinoshaseumini@gmail.com';
static const String photoPath = 'assets/images/vinosha.jpeg';
static const String bioSummary =
'I am a dedicated Information Technology undergraduate at the Institute of Technology, University of Moratuwa (ITUM), originally from Anuradhapura. With a strong passion for Flutter mobile development, full-stack engineering, and UI/UX wireframing, I enjoy turning complex ideas into clean, user-friendly applications. Driven by curiosity and strong leadership skills, I thrive in collaborative team environments and constantly explore innovative ways to solve real-world problems through creative design.';

static const List<String> academics = [
'National Diploma in Technology (NDT) in Information Technology - ITUM',
'G.C.E. Advanced Level (A/L)',
'G.C.E. Ordinary Level (O/L)',
];

static const List<String> softSkills = [
'Team Leadership',
'Problem Solving',
'Communication',
'Time Management',
'Critical Thinking',
'Adaptability & Quick Learning',
'Decision Making',
];

static const List<String> specialTalents = [
'Flutter & Full-Stack App Building',
'UI/UX Wireframing',
'Creative Designing',
'Database Architecture & API Integration',
'Responsive Web Design',
'Interactive Prototyping & Figma',
];

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFF4F6FB),
appBar: AppBar(
elevation: 0,
title: const Text(
'Member 01',
style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, letterSpacing: 0.3),
),
backgroundColor: const Color(0xFF283593), 
foregroundColor: Colors.white,
actions: [
Padding(
padding: const EdgeInsets.only(right: 14),
child: InkWell(
borderRadius: BorderRadius.circular(20),
onTap: () {
setState(() {
_isLiked = !_isLiked;
_likes += _isLiked ? 1 : -1;
});
},
child: Container(
padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
decoration: BoxDecoration(
color: Colors.white.withValues(alpha: 0.15),
borderRadius: BorderRadius.circular(20),
),
child: Row(
children: [
Icon(
_isLiked ? Icons.favorite : Icons.favorite_border,
color: _isLiked ? Colors.redAccent.shade100 : Colors.white,
size: 19,
),
const SizedBox(width: 6),
Text(
'$_likes',
style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
),
],
),
),
),
),
],
),
body: SingleChildScrollView(
child: Column(
children: [
// Top Hero Banner and Profile Photo
Stack(
clipBehavior: Clip.none,
alignment: Alignment.center,
children: [
// Deep Indigo Gradient Header
Container(
height: 110,
width: double.infinity,
decoration: const BoxDecoration(
gradient: LinearGradient(
colors: [Color(0xFF283593), Color(0xFF3F51B5)],
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
),
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(36),
bottomRight: Radius.circular(36),
),
),
),

Positioned(
top: 32,
child: Container(
padding: const EdgeInsets.all(5),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(28),
boxShadow: [
BoxShadow(
color: const Color(0xFF283593).withValues(alpha: 0.22),
blurRadius: 18,
offset: const Offset(0, 8),
),
],
),
child: ClipRRect(
borderRadius: BorderRadius.circular(23),
child: memberAvatarImage(
photoPath,
width: 125,
height: 125,
),
),
),
),
],
),

const SizedBox(height: 68),

// 2. Name, Role, ID Badge and Contact Info
Padding(
padding: const EdgeInsets.symmetric(horizontal: 20),
child: Column(
children: [
const Text(
fullName,
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 21,
fontWeight: FontWeight.bold,
color: Color(0xFF0F172A),
letterSpacing: -0.2,
),
),
const SizedBox(height: 4),
Text(
roleTitle,
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w500,
color: Colors.indigo.shade700,
),
),
const SizedBox(height: 10),
// Student ID Pill
Container(
padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
decoration: BoxDecoration(
color: Colors.indigo.shade50,
borderRadius: BorderRadius.circular(20),
border: Border.all(color: Colors.indigo.shade200),
),
child: Text(
'Student ID: $studentId',
style: TextStyle(
fontSize: 12.5,
fontWeight: FontWeight.w600,
color: Colors.indigo.shade900,
),
),
),
const SizedBox(height: 12),
// Email & Location
Wrap(
alignment: WrapAlignment.center,
spacing: 16,
runSpacing: 6,
children: [
_contactChip(Icons.email_outlined, email),
_contactChip(Icons.location_on_outlined, address),
],
),
],
),
),

const SizedBox(height: 18),

// Editorial Details Card
Padding(
padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
child: Card(
elevation: 2,
shadowColor: Colors.black.withValues(alpha: 0.05),
color: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(22),
),
child: Padding(
padding: const EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// About Me Summary
_sectionTitle(Icons.person_outline_rounded, 'About Me'),
const SizedBox(height: 8),
Text(
bioSummary,
style: const TextStyle(
fontSize: 13.5,
color: Color(0xFF475569),
height: 1.5,
),
),

const Divider(height: 28),

// Academic Qualifications
_sectionTitle(Icons.school_outlined, 'Academic Qualifications'),
const SizedBox(height: 12),
...academics.map((a) => Padding(
padding: const EdgeInsets.only(bottom: 10),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
margin: const EdgeInsets.only(top: 5),
width: 7,
height: 7,
decoration: const BoxDecoration(
color: Color(0xFF3F51B5),
shape: BoxShape.circle,
),
),
const SizedBox(width: 12),
Expanded(
child: Text(
a,
style: const TextStyle(
fontSize: 13.5,
color: Color(0xFF1E293B),
height: 1.4,
),
),
),
],
),
)),
  const Divider(height: 28),
// Soft Skills
  _sectionTitle(Icons.psychology_outlined, 'Soft Skills'),
  const SizedBox(height: 12),
  Wrap(
    spacing: 8,
    runSpacing: 8,
    children: softSkills
        .map((s) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.indigo.shade100),
      ),
      child: Text(
        s,
        style: const TextStyle(
          color: Color(0xFF1E293B),
          fontSize: 12.5,
          fontWeight: FontWeight.w500,
        ),
      ),
    ))
        .toList(),
  ),
  const Divider(height: 28),
// Special Talents
  _sectionTitle(Icons.workspace_premium_outlined, 'Special Talents'),
  const SizedBox(height: 12),
  Wrap(
    spacing: 8,
    runSpacing: 8,
    children: specialTalents
        .map((t) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.indigo.shade200),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, size: 16, color: Colors.amber.shade700),
          const SizedBox(width: 6),
          Text(
            t,
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ))
        .toList(),
  ),
],
),
),
),
),
],
),
),
);
}
Widget _contactChip(IconData icon, String text) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 15, color: Colors.indigo.shade600),
      const SizedBox(width: 5),
      Text(
        text,
        style: const TextStyle(
          fontSize: 12.5,
          color: Color(0xFF475569),
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
Widget _sectionTitle(IconData icon, String title) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 18, color: const Color(0xFF283593)),
      ),
      const SizedBox(width: 10),
      Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xFF0F172A),
        ),
      ),
    ],
  );
}
}

