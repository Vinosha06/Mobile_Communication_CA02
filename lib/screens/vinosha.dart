import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/photo_helper.dart';

class Member1Screen extends StatefulWidget {
  const Member1Screen({super.key});

  @override
  State<Member1Screen> createState() => _Member1ScreenState();
}

class _Member1ScreenState extends State<Member1Screen> {
int _likes = 15;
bool _isLiked = false;
int _selectedTab = 0;

static const String fullName = 'T.M. Vinosha Sewmini Kumarasinghe';
static const String roleTitle = 'IT UNDERGRADUATE • NDT (ITUM)';
static const String studentId = '23IT0498';
static const String address = 'Anuradhapura, Sri Lanka';
static const String email = 'vinoshaseumini@gmail.com';
static const String githubUrl = 'https://github.com/Vinosha06';
static const String linkedinUrl = 'https://www.linkedin.com/in/vinosha-sewmini/';
static const String photoPath = 'assets/images/vinosha.jpeg';
static const String bioSummary =
'I am a dedicated Information Technology undergraduate at the Institute of Technology, University of Moratuwa (ITUM), originally from Anuradhapura. With a strong passion for Flutter mobile development, full-stack engineering, and UI/UX wireframing, I enjoy turning complex ideas into clean, user-friendly applications.';

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
'Adaptability',
'Team Collaboration',
'Attention to Detail',
];

static const List<String> specialTalents = [
'Flutter & Full-Stack App Building',
'UI/UX Wireframing & Prototyping',
'Creative Designing',
'API & Database Integration',
'Project Presentation',
];


static const List<Map<String, String>> projects = [
{
'title': 'DocRoad - Roadside Vehicle Repair & Assistance System',
'tech': 'Flutter • React • Firebase • MongoDB ',
'desc': ' Developed a full-stack roadside vehicle repair and emergency assistance system connecting drivers and mechanics.',
},
{
'title': 'TripMind AI - AI-Driven Hyper-Personalized Itinerary Planner',
'tech': 'React • Python • Weather API',
'desc': ' Developed an AI-powered travel planning web application that creates personalized itineraries based on destination, budget, interests, mood, and travel style.',
},
];


static const List<Map<String, String>> references = [
{
'name': 'Mrs. D.A.P. Ruwanmini ',
'role': 'Lecturer,Division of Information Technology, ITUM',
'contact': ' +94 77 855 8303',
},
{
'name': 'Mr. Pramith Wijethunga',
'role': 'Software Engineer, Celestial BI Boston, USA ',
'contact': '+94 71 788 8714',
},
];

void _copyLink(String label, String link) {
Clipboard.setData(ClipboardData(text: link));
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text('$label link copied: $link'),
backgroundColor: const Color(0xFF1E1B4B),
duration: const Duration(seconds: 2),
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFFAF8F5),
appBar: AppBar(
elevation: 0,
backgroundColor: const Color(0xFFFAF8F5),
foregroundColor: const Color(0xFF1E1B4B),
title: const Text(
'Member 01',
style: TextStyle(
fontSize: 13,
fontWeight: FontWeight.w800,
letterSpacing: 1.5,
color: Color(0xFF1E1B4B),
),
),
actions: [
Padding(
padding: const EdgeInsets.only(right: 16),
child: InkWell(
borderRadius: BorderRadius.circular(30),
onTap: () {
setState(() {
_isLiked = !_isLiked;
_likes += _isLiked ? 1 : -1;
});
},
child: Container(
padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
decoration: BoxDecoration(
color: _isLiked ? const Color(0xFF1E1B4B) : Colors.white,
borderRadius: BorderRadius.circular(30),
border: Border.all(color: const Color(0xFF1E1B4B), width: 1.2),
),
child: Row(
children: [
Icon(
_isLiked ? Icons.favorite : Icons.favorite_border,
color: _isLiked ? const Color(0xFFF59E0B) : const Color(0xFF1E1B4B),
size: 17,
),
const SizedBox(width: 6),
Text(
'$_likes',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 13,
color: _isLiked ? Colors.white : const Color(0xFF1E1B4B),
),
),
],
),
),
),
),
],
),
body: SingleChildScrollView(
padding: const EdgeInsets.fromLTRB(18, 8, 18, 36),
child: Center(
child: ConstrainedBox(
constraints: const BoxConstraints(maxWidth: 760),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// 1. ASYMMETRIC MAGAZINE HERO CARD
Container(
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: const Color(0xFF1E1B4B),
borderRadius: BorderRadius.circular(24),
boxShadow: [
BoxShadow(
color: const Color(0xFF1E1B4B).withValues(alpha: 0.18),
blurRadius: 20,
offset: const Offset(0, 10),
),
],
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
decoration: BoxDecoration(
color: const Color(0xFFF59E0B).withValues(alpha: 0.2),
borderRadius: BorderRadius.circular(6),
border: Border.all(color: const Color(0xFFF59E0B), width: 0.8),
),
child: const Text(
roleTitle,
style: TextStyle(
color: Color(0xFFFCD34D),
fontSize: 10.5,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
),
const SizedBox(height: 12),
const Text(
fullName,
style: TextStyle(
fontSize: 21,
fontWeight: FontWeight.bold,
color: Colors.white,
height: 1.25,
),
),
const SizedBox(height: 10),
_heroInfoRow(Icons.badge_outlined, 'Student ID: $studentId'),
const SizedBox(height: 5),
_heroInfoRow(Icons.email_outlined, email),
const SizedBox(height: 5),
_heroInfoRow(Icons.location_on_outlined, address),
const SizedBox(height: 12),
// GitHub & LinkedIn Interactive Pills
Wrap(
spacing: 8,
runSpacing: 6,
children: [
_socialPill(
Icons.code_rounded,
'GitHub',
() => _copyLink('GitHub', 'https://$githubUrl'),
),
_socialPill(
Icons.work_outline_rounded,
'LinkedIn',
() => _copyLink('LinkedIn', 'https://$linkedinUrl'),
),
],
),
],
),
),
const SizedBox(width: 16),
// Framed Portrait Photo
Stack(
children: [
Container(
margin: const EdgeInsets.only(left: 6, top: 6),
width: 118,
height: 142,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(18),
border: Border.all(color: const Color(0xFFF59E0B), width: 2),
),
),
ClipRRect(
borderRadius: BorderRadius.circular(18),
child: memberAvatarImage(
photoPath,
width: 118,
height: 142,
),
),
],
),
],
),
),
  const SizedBox(height: 20),
// 2. ABOUT ME CARD
  Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      border: const Border(
        left: BorderSide(color: Color(0xFFF59E0B), width: 4),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.04),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ABOUT ME',
          style: TextStyle(
            fontSize: 11.5,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.2,
            color: Color(0xFFD97706),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          bioSummary,
          style: const TextStyle(
            fontSize: 13.5,
            color: Color(0xFF334155),
            height: 1.55,
          ),
        ),
      ],
    ),
  ),
  const SizedBox(height: 20),
// 3. INTERACTIVE FILTER TABS
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        _filterTab(0, 'Overview'),
        const SizedBox(width: 8),
        _filterTab(1, 'Academics'),
        const SizedBox(width: 8),
        _filterTab(2, 'Skills & Projects'),
        const SizedBox(width: 8),
        _filterTab(3, 'References'),
      ],
    ),
  ),
  const SizedBox(height: 18),
// SECTION 01: ACADEMIC QUALIFICATIONS
  if (_selectedTab == 0 || _selectedTab == 1) ...[
    _editorialSectionHeader('01', 'Academic Qualifications'),
    const SizedBox(height: 12),
    Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        children: List.generate(academics.length, (index) {
          return Padding(
            padding: EdgeInsets.only(bottom: index == academics.length - 1 ? 0 : 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 28,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1B4B),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '0${index + 1}',
                    style: const TextStyle(
                      color: Color(0xFFFCD34D),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      academics[index],
                      style: const TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1E293B),
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    ),
    const SizedBox(height: 22),
  ],
// SECTION 02 & 03: SOFT SKILLS & SPECIAL TALENTS
  if (_selectedTab == 0 || _selectedTab == 2) ...[
    _editorialSectionHeader('02', 'Soft Skills'),
    const SizedBox(height: 12),
    Wrap(
      spacing: 8,
      runSpacing: 8,
      children: softSkills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFCBD5E1)),
          ),
          child: Text(
            skill,
            style: const TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E1B4B),
            ),
          ),
        );
      }).toList(),
    ),
    const SizedBox(height: 22),
    _editorialSectionHeader('03', 'Special Talents'),
    const SizedBox(height: 12),
    Wrap(
      spacing: 8,
      runSpacing: 8,
      children: specialTalents.map((talent) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
          decoration: BoxDecoration(
            color: const Color(0xFFFEF3C7),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFF59E0B)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.auto_awesome, size: 15, color: Color(0xFFB45309)),
              const SizedBox(width: 6),
              Text(
                talent,
                style: const TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF78350F),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
    const SizedBox(height: 22),
// SECTION 04: FEATURED PROJECTS
    _editorialSectionHeader('04', 'Featured Projects'),
    const SizedBox(height: 12),
    ...projects.map((proj) => Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  proj['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E1B4B),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF2FF),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  proj['tech']!,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3730A3),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            proj['desc']!,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF475569),
              height: 1.4,
            ),
          ),
        ],
      ),
    )),
    const SizedBox(height: 10),
  ],
// SECTION 05: REFERENCES
  if (_selectedTab == 0 || _selectedTab == 3) ...[
    _editorialSectionHeader('05', 'References'),
    const SizedBox(height: 12),
    ...references.map((ref) => Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFFEF3C7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.verified_user_outlined, color: Color(0xFFB45309), size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ref['name']!,
                  style: const TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E1B4B),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  ref['role']!,
                  style: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF475569),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  ref['contact']!,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF64748B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )),
  ],
],
),
),
),
),
);
}
  Widget _heroInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: const Color(0xFFFCD34D)),
        const SizedBox(width: 7),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12.5,
              color: Color(0xFFE2E8F0),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
  Widget _socialPill(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFFCD34D).withValues(alpha: 0.6)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 13, color: const Color(0xFFFCD34D)),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _filterTab(int index, String label) {
    final isSelected = _selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedTab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1E1B4B) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color(0xFF1E1B4B) : const Color(0xFFCBD5E1),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF475569),
          ),
        ),
      ),
    );
  }
  Widget _editorialSectionHeader(String number, String title) {
    return Row(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Color(0xFFD97706),
          ),
        ),
        const SizedBox(width: 8),
        Container(width: 18, height: 2, color: const Color(0xFFD97706)),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E1B4B),
          ),
        ),
      ],
    );
  }
}
