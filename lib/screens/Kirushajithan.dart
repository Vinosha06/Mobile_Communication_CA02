import 'package:flutter/material.dart';
import '../widgets/photo_helper.dart';

class Member7Screen extends StatefulWidget {
  const Member7Screen({super.key});

  @override
  State<Member7Screen> createState() => _Member7ScreenState();
}

class _Member7ScreenState extends State<Member7Screen> {
  int _selectedSection = 0;
  bool _isEndorsed = false;
  int _endorsements = 12;

  static const String fullName = 'Sriranjan Kirushajithan';
  static const String roleTitle = 'Aspiring Software Engineer';
  static const String studentId = '23IT0494';
  static const String phone = '+94 778780167';
  static const String address = 'Orrshill, Trincomalee';
  static const String email = 'kirrshkirrsh185@gmail.com';
  static const String linkedIn = 'Sriranjan Kirushajithan';
  static const String github = 'Sriranjan Kirushajithan';
  static const String photoPath = 'assets/images/Kirrsh.jpg';

  static const String summary =
      'Information Technology undergraduate at the Institute of Technology, '
      'University of Moratuwa, with academic exposure to machine learning, '
      'computational mathematics, statistics, database management, and software '
      'engineering. Builds software projects using Python, Java, JavaScript, '
      'React, and relational databases, with an interest in applying data '
      'analysis and machine learning to practical problems. Seeking an AI/ML, '
      'machine learning, data science, or Python development internship to '
      'strengthen practical experience and contribute to real-world projects.';

  static const List<_EducationItem> education = [
    _EducationItem(
      title: 'National Diploma in Technology (NDT) in Information Technology',
      institution: 'Institute of Technology, University of Moratuwa',
      period: '2024 – 2026',
      highlights: [
        'Major: Computer Science',
        'Relevant Coursework: Data Mining and Analytics, Business Intelligence, '
            'Database Management Systems, Machine Learning',
      ],
    ),
    _EducationItem(
      title: 'School Education',
      institution: "T/Orr's Hill Vivekananda College",
      period: '2019 – 2022',
      highlights: [
        'G.C.E. Advanced Level (2022/2023) — G.C.E. Ordinary Level (2019)',
      ],
    ),
  ];

  static const List<_SkillCategory> technicalSkills = [
    _SkillCategory(
      name: 'Programming Languages',
      items: ['Python', 'Java', 'JavaScript', 'C', 'SQL', 'R'],
    ),
    _SkillCategory(
      name: 'Data Analytics Tools',
      items: [
        'Pandas',
        'NumPy',
        'scikit-learn',
        'SHAP',
        'Data Preprocessing',
        'Exploratory Data Analysis',
        'Data Visualization',
        'Machine Learning Fundamentals',
      ],
    ),
    _SkillCategory(
      name: 'Frontend Development',
      items: ['React.js', 'HTML5/CSS3', 'Bootstrap'],
    ),
    _SkillCategory(
      name: 'Backend Development',
      items: ['Spring Boot', 'Node.js'],
    ),
    _SkillCategory(
      name: 'Database',
      items: ['PostgreSQL', 'MySQL', 'Microsoft SQL Server'],
    ),
    _SkillCategory(
      name: 'Cloud & DevOps',
      items: ['Google Cloud Platform (GCP)', 'AWS', 'Docker'],
    ),
    _SkillCategory(
      name: 'Tools & Technologies',
      items: ['Git', 'GitHub', 'VS Code', 'IntelliJ IDEA', 'Canva'],
    ),
  ];

  static const List<_ProjectItem> projects = [
    _ProjectItem(
      title: 'ResQAI',
      stack: 'Python, TensorFlow / PyTorch, OpenCV, FastAPI, GCP, React Native / React.js',
      description:
          'Engineered an AI-powered disaster management platform to streamline '
          'emergency reporting and response coordination. Designed AI-driven '
          'analysis of voice, text, and image reports to assess urgency and '
          'prioritize emergency requests, along with intelligent risk '
          'identification and resource allocation features.',
    ),
    _ProjectItem(
      title: 'React Portfolio Web Application',
      stack: 'React.js, JavaScript, Tailwind CSS / Bootstrap, Framer Motion, EmailJS, Git & GitHub, Vercel / Netlify',
      description:
          'Developed a responsive single-page portfolio to present projects, '
          'technical skills, and professional information with reusable React '
          'components and interactive presentation features.',
    ),
    _ProjectItem(
      title: 'Bus Booking System',
      stack: 'Java, MySQL, JDBC, HTML/CSS, Servlets',
      description:
          'Built a ticket-booking application supporting route browsing, seat '
          'booking, and schedule management backed by a Java application and '
          'relational database.',
    ),
    _ProjectItem(
      title: 'E-Commerce Website',
      stack: 'React.js, Node.js, Express.js, MongoDB / MySQL, Stripe API',
      description:
          'Built a full-stack e-commerce platform featuring product browsing, '
          'shopping cart management, backend services for products, customers, '
          'and orders, and Stripe payment gateway integration.',
    ),
    _ProjectItem(
      title: 'Shipment and Logistics Management',
      stack: 'Java, MySQL, HTML/CSS, JavaScript',
      description:
          'Worked on an academic system focused on shipment workflow '
          'management, supply-chain data tracking, and delivery operations.',
    ),
  ];

  static const String achievementTitle = 'Best Poster Award – ITUMIRC 2026';
  static const String achievementDetail =
      'Received the Best Poster Award in the Information Technology category '
      'at the International Research Conference 2026 (ITUMIRC 2026) for the '
      'research project "ResQAI – AI-Powered Real-Time Disaster Relief Platform".';

  static const List<String> certificates = [
    'Google Cloud (GCP) MasterClass - GCP Live Projects (Udemy)',
    'Python Machine Learning - From Beginner to Pro (Udemy)',
    'Python for Beginners - University of Moratuwa',
    'Introduction to Java Spring Framework 101 - Simplilearn',
    'Java Programming for Beginners - Simplilearn',
  ];

  static const List<_ReferenceItem> references = [
    _ReferenceItem(
      name: 'Mrs. A.U.P. Athukorala',
      role: 'Head of Division, Division of Information Technology',
      institution: 'Institute of Technology, University of Moratuwa',
      email: 'uthpala@itum.mrt.ac.lk',
      phone: '+94 11 212 4000',
    ),
    _ReferenceItem(
      name: 'Mrs. A.M.T.N. Adasuriya',
      role: 'Lecturer, Division of Information Technology',
      institution: 'Institute of Technology, University of Moratuwa',
      email: 'tharukshin@itum.mrt.ac.lk',
      phone: '+94 77 190 2981',
    ),
  ];

  static const List<String> _sections = [
    'All',
    'About & Edu',
    'Skills',
    'Projects',
    'Awards & Refs',
  ];

  @override
  Widget build(BuildContext context) {
    final showOverview = _selectedSection == 0 || _selectedSection == 1;
    final showSkills = _selectedSection == 0 || _selectedSection == 2;
    final showProjects = _selectedSection == 0 || _selectedSection == 3;
    final showExtras = _selectedSection == 0 || _selectedSection == 4;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),
      appBar: AppBar(
        title: const Text('Member 07'),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white.withValues(alpha: 0.16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  _isEndorsed = !_isEndorsed;
                  _endorsements += _isEndorsed ? 1 : -1;
                });
              },
              icon: Icon(
                _isEndorsed ? Icons.favorite : Icons.favorite_border,
                size: 18,
                color: _isEndorsed ? Colors.amberAccent : Colors.white,
              ),
              label: Text('$_endorsements'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildSectionSelector(),
                    const SizedBox(height: 16),
                    if (showOverview) ...[
                      _SectionCard(
                        icon: Icons.person_outline,
                        title: 'Professional Summary',
                        child: Text(
                          summary,
                          style: const TextStyle(
                            fontSize: 13.8,
                            height: 1.5,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                      ),
                      _SectionCard(
                        icon: Icons.school_outlined,
                        title: 'Education',
                        child: Column(
                          children: education
                              .map((item) => _EducationTile(item: item))
                              .toList(),
                        ),
                      ),
                    ],
                    if (showSkills)
                      _SectionCard(
                        icon: Icons.build_outlined,
                        title: 'Technical Skills',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: technicalSkills
                              .map((category) => _SkillGroup(category: category))
                              .toList(),
                        ),
                      ),
                    if (showProjects)
                      _SectionCard(
                        icon: Icons.folder_open_outlined,
                        title: 'Projects',
                        child: Column(
                          children: projects
                              .map((project) => _ProjectCard(project: project))
                              .toList(),
                        ),
                      ),
                    if (showExtras) ...[
                      _SectionCard(
                        icon: Icons.emoji_events_outlined,
                        title: 'Achievements',
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.blue.shade200),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                achievementTitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.5,
                                  color: Color(0xFF1E3A8A),
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                achievementDetail,
                                style: TextStyle(
                                  fontSize: 13.5,
                                  height: 1.45,
                                  color: Color(0xFF1E293B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _SectionCard(
                        icon: Icons.workspace_premium_outlined,
                        title: 'Certificates',
                        child: Column(
                          children: certificates
                              .map(
                                (cert) => Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.verified_outlined,
                                        size: 18,
                                        color: Colors.blue.shade700,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          cert,
                                          style: const TextStyle(
                                            fontSize: 13.5,
                                            height: 1.4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      _SectionCard(
                        icon: Icons.people_outline,
                        title: 'References',
                        child: Column(
                          children: references
                              .map((ref) => _ReferenceTile(reference: ref))
                              .toList(),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        SizedBox(
          height: 188,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 136,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.shade900,
                        Colors.blue.shade600,
                        Colors.lightBlueAccent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade900.withValues(alpha: 0.18),
                        blurRadius: 14,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: memberAvatarImage(
                      photoPath,
                      width: 102,
                      height: 102,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          fullName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Text(
            '$roleTitle • $studentId',
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade800,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: const [
              _ContactPill(icon: Icons.email_outlined, label: email),
              _ContactPill(icon: Icons.phone_outlined, label: phone),
              _ContactPill(icon: Icons.location_on_outlined, label: address),
              _ContactPill(icon: Icons.work_outline, label: 'LinkedIn: $linkedIn'),
              _ContactPill(icon: Icons.code, label: 'GitHub: $github'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSectionSelector() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_sections.length, (index) {
          final isSelected = _selectedSection == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(_sections[index]),
              selected: isSelected,
              onSelected: (_) => setState(() => _selectedSection = index),
              selectedColor: Colors.blue.shade800,
              backgroundColor: Colors.white,
              side: BorderSide(
                color: isSelected ? Colors.blue.shade800 : Colors.blue.shade100,
              ),
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.blue.shade900,
                fontWeight: FontWeight.w600,
                fontSize: 12.5,
              ),
              showCheckmark: false,
            ),
          );
        }),
      ),
    );
  }
}

class _ContactPill extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ContactPill({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: Colors.blue.shade700),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(fontSize: 12.5, color: Color(0xFF334155)),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const _SectionCard({
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: 1.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.blue.shade50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: Colors.blue.shade800),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}

class _EducationTile extends StatelessWidget {
  final _EducationItem item;

  const _EducationTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5,
                    color: Color(0xFF0F172A),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  item.period,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          Text(
            item.institution,
            style: TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 4),
          ...item.highlights.map(
            (line) => Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                '• $line',
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  color: Color(0xFF475569),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillGroup extends StatelessWidget {
  final _SkillCategory category;

  const _SkillGroup({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13.5,
              color: Color(0xFF1E293B),
            ),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: category.items
                .map(
                  (skill) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      skill,
                      style: TextStyle(
                        fontSize: 12.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final _ProjectItem project;

  const _ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.5,
              color: Colors.blue.shade900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            project.stack,
            style: TextStyle(
              fontSize: 12.2,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 13.2,
              height: 1.45,
              color: Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReferenceTile extends StatelessWidget {
  final _ReferenceItem reference;

  const _ReferenceTile({required this.reference});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reference.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '${reference.role}\n${reference.institution}',
            style: const TextStyle(
              fontSize: 12.8,
              height: 1.35,
              color: Color(0xFF475569),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '${reference.email}  •  ${reference.phone}',
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade800,
            ),
          ),
        ],
      ),
    );
  }
}

class _EducationItem {
  final String title;
  final String institution;
  final String period;
  final List<String> highlights;

  const _EducationItem({
    required this.title,
    required this.institution,
    required this.period,
    required this.highlights,
  });
}

class _SkillCategory {
  final String name;
  final List<String> items;

  const _SkillCategory({required this.name, required this.items});
}

class _ProjectItem {
  final String title;
  final String stack;
  final String description;

  const _ProjectItem({
    required this.title,
    required this.stack,
    required this.description,
  });
}

class _ReferenceItem {
  final String name;
  final String role;
  final String institution;
  final String email;
  final String phone;

  const _ReferenceItem({
    required this.name,
    required this.role,
    required this.institution,
    required this.email,
    required this.phone,
  });
}


class _EducationTile extends StatelessWidget {
  final _EducationItem item;

  const _EducationTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5,
                    color: Color(0xFF0F172A),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  item.period,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          Text(
            item.institution,
            style: TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 4),
          ...item.highlights.map(
            (line) => Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                '• $line',
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  color: Color(0xFF475569),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillGroup extends StatelessWidget {
  final _SkillCategory category;

  const _SkillGroup({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13.5,
              color: Color(0xFF1E293B),
            ),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: category.items
                .map(
                  (skill) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      skill,
                      style: TextStyle(
                        fontSize: 12.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final _ProjectItem project;

  const _ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.5,
              color: Colors.blue.shade900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            project.stack,
            style: TextStyle(
              fontSize: 12.2,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 13.2,
              height: 1.45,
              color: Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReferenceTile extends StatelessWidget {
  final _ReferenceItem reference;

  const _ReferenceTile({required this.reference});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reference.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '${reference.role}\n${reference.institution}',
            style: const TextStyle(
              fontSize: 12.8,
              height: 1.35,
              color: Color(0xFF475569),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '${reference.email}  •  ${reference.phone}',
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade800,
            ),
          ),
        ],
      ),
    );
  }
}

class _EducationItem {
  final String title;
  final String institution;
  final String period;
  final List<String> highlights;

  const _EducationItem({
    required this.title,
    required this.institution,
    required this.period,
    required this.highlights,
  });
}

class _SkillCategory {
  final String name;
  final List<String> items;

  const _SkillCategory({required this.name, required this.items});
}

class _ProjectItem {
  final String title;
  final String stack;
  final String description;

  const _ProjectItem({
    required this.title,
    required this.stack,
    required this.description,
  });
}

class _ReferenceItem {
  final String name;
  final String role;
  final String institution;
  final String email;
  final String phone;

  const _ReferenceItem({
    required this.name,
    required this.role,
    required this.institution,
    required this.email,
    required this.phone,
  });
}