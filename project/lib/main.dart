import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await pdfrxFlutterInitialize();
  runApp(const PortfolioApp());
}

const Color ink = Color(0xFF172B27);
const Color forest = Color(0xFF205B4D);
const Color paper = Color(0xFFF6F4ED);
const Color coral = Color(0xFFE17E62);
const Color saffron = Color(0xFFE5B75D);
const Color mist = Color(0xFFE5EEE8);
const String studentName = 'Lakshmi Vaishnavi Chittanoju';
const String studentRollNumber = '24WH1A05A9';

class PortfolioCertificate {
  const PortfolioCertificate({
    required this.title,
    required this.platform,
    required this.date,
    required this.assetPath,
    required this.icon,
    required this.color,
  });

  final String title;
  final String platform;
  final String date;
  final String assetPath;
  final IconData icon;
  final Color color;
}

const certificates = <PortfolioCertificate>[
  PortfolioCertificate(
    title: 'Python for Beginners',
    platform: 'Simplilearn SkillUp',
    date: '2 June 2025',
    assetPath: 'assets/certificates/24WH1A05A9_simply learn python.pdf',
    icon: Icons.code_rounded,
    color: forest,
  ),
  PortfolioCertificate(
    title: 'CS302PC: Data Structures',
    platform: 'CodeChef',
    date: '27 November 2025',
    assetPath: 'assets/certificates/Codechef- Data Structures.pdf',
    icon: Icons.account_tree_rounded,
    color: Color(0xFF597A91),
  ),
  PortfolioCertificate(
    title: 'Object-Oriented Programming Through Java',
    platform: 'CodeChef',
    date: '10 November 2025',
    assetPath: 'assets/certificates/CodeChef-Java.pdf',
    icon: Icons.data_object_rounded,
    color: forest,
  ),
  PortfolioCertificate(
    title: '3rd Prize - Mackathon',
    platform: 'BVRIT Hyderabad',
    date: 'National Mathematics Day 2024',
    assetPath: 'assets/certificates/24WH1A05A9_Macakthon certificate .pdf',
    icon: Icons.emoji_events_rounded,
    color: Color(0xFFB68336),
  ),
  PortfolioCertificate(
    title: 'Software Engineering Job Simulation',
    platform: 'JPMorgan Chase & Co. · Forage',
    date: '5 November 2025',
    assetPath:
        'assets/certificates/JP Morgan job simulation completion_certificate.pdf',
    icon: Icons.business_center_outlined,
    color: Color(0xFF597A91),
  ),
];

class PortfolioProject {
  const PortfolioProject({
    required this.title,
    required this.period,
    required this.summary,
    required this.technologies,
    this.contribution,
    this.demoUrl,
  });

  final String title;
  final String period;
  final String summary;
  final List<String> technologies;
  final String? contribution;
  final String? demoUrl;
}

const portfolioProjects = <PortfolioProject>[
  PortfolioProject(
    title: 'Health Tracker Web Application',
    period: 'June 2026',
    summary:
        'A responsive web application for monitoring and managing personal health records.',
    technologies: ['HTML', 'CSS', 'JavaScript'],
    demoUrl: 'health-tracker-lp15.onrender.com',
  ),
  PortfolioProject(
    title: 'Reminder Flow',
    period: 'March 2026',
    summary:
        'A reminder and alarm application with live clock updates, snooze options, and recurring alarms.',
    technologies: ['HTML', 'CSS', 'JavaScript'],
    contribution:
        'Implemented incremental alarm scheduling, snooze options, repeat modes, and an interactive interface.',
  ),
  PortfolioProject(
    title: 'Building Blocks Educational Game',
    period: 'January 2024 - May 2025',
    summary:
        'An interactive drag-and-drop game where users build structures by placing and rotating blocks.',
    technologies: ['Python', 'Pygame'],
    contribution:
        'Implemented block rotation, grid snapping, collision detection, and structure validation.',
  ),
];

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: paper,
        colorScheme: ColorScheme.fromSeed(
          seedColor: forest,
          primary: forest,
          surface: paper,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 17,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFDDE2DB)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFDDE2DB)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: forest, width: 1.5),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _rollController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _rollController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text('Please fill in both fields.')),
        );
      return;
    }
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const PortfolioDashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final wide = constraints.maxWidth >= 1000;
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: wide ? 52 : 24,
                    vertical: wide ? 34 : 18,
                  ),
                  child: wide
                      ? Row(
                          children: [
                            const Expanded(child: _WelcomePanel()),
                            const SizedBox(width: 64),
                            SizedBox(width: 390, child: _loginForm()),
                          ],
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              const _WelcomePanel(compact: true),
                              const SizedBox(height: 34),
                              _loginForm(),
                            ],
                          ),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('WELCOME BACK', style: _eyebrowStyle),
          const SizedBox(height: 10),
          Text(
            'Sign in to your\nportfolio.',
            style: const TextStyle(
              color: ink,
              fontSize: 34,
              height: 1.12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 30),
          Text('Roll number', style: _labelStyle),
          const SizedBox(height: 8),
          TextFormField(
            controller: _rollController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              hintText: 'Enter your roll number',
              prefixIcon: Icon(Icons.badge_outlined),
            ),
            validator: (value) =>
                value == null || value.trim().isEmpty ? 'Required' : null,
          ),
          const SizedBox(height: 18),
          Text('Password', style: _labelStyle),
          const SizedBox(height: 8),
          TextFormField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            onFieldSubmitted: (_) => _login(),
            decoration: InputDecoration(
              hintText: 'Enter your password',
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                tooltip: _obscurePassword ? 'Show password' : 'Hide password',
                onPressed: () => setState(() {
                  _obscurePassword = !_obscurePassword;
                }),
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            validator: (value) =>
                value == null || value.isEmpty ? 'Required' : null,
          ),
          const SizedBox(height: 26),
          SizedBox(
            height: 54,
            child: FilledButton.icon(
              onPressed: _login,
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Open my portfolio'),
              style: FilledButton.styleFrom(
                backgroundColor: forest,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomePanel extends StatelessWidget {
  const _WelcomePanel({this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          compact ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: compact ? 47 : 62,
          backgroundColor: mist,
          backgroundImage: const AssetImage('assets/Profile/Photo.jpg'),
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment:
              compact ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: forest,
                borderRadius: BorderRadius.circular(11),
              ),
              child: const Icon(
                Icons.auto_stories_rounded,
                color: Colors.white,
                size: 21,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'My Portfolio',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: ink,
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
        Text(
          'A record of\nwhat I am becoming.',
          textAlign: compact ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            color: ink,
            fontSize: compact ? 25 : 45,
            height: 1.13,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Learning, creating, and collecting moments along the way.',
          textAlign: compact ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            color: ink.withValues(alpha: 0.65),
            fontSize: compact ? 14 : 16,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

const TextStyle _eyebrowStyle = TextStyle(
  color: coral,
  fontSize: 11,
  letterSpacing: 1.5,
  fontWeight: FontWeight.w800,
);
const TextStyle _labelStyle = TextStyle(
  color: ink,
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

class PortfolioDashboard extends StatefulWidget {
  const PortfolioDashboard({super.key});

  @override
  State<PortfolioDashboard> createState() => _PortfolioDashboardState();
}

class _PortfolioDashboardState extends State<PortfolioDashboard> {
  int _selectedIndex = 0;

  static const _destinations = <NavigationDestination>[
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school_rounded),
      label: 'Study',
    ),
    NavigationDestination(
      icon: Icon(Icons.workspace_premium_outlined),
      selectedIcon: Icon(Icons.workspace_premium_rounded),
      label: 'Skills',
    ),
    NavigationDestination(
      icon: Icon(Icons.volunteer_activism_outlined),
      selectedIcon: Icon(Icons.volunteer_activism_rounded),
      label: 'Activities',
    ),
    NavigationDestination(
      icon: Icon(Icons.auto_awesome_outlined),
      selectedIcon: Icon(Icons.auto_awesome_rounded),
      label: 'Awards',
    ),
    NavigationDestination(
      icon: Icon(Icons.logout_rounded),
      label: 'Logout',
    ),
  ];

  void _selectDestination(int index) {
    if (index == 4) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(builder: (_) => const LoginPage()),
        (route) => false,
      );
      return;
    }
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 850;
        return Scaffold(
          body: SafeArea(
            child: Row(
              children: [
                if (wide)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 8, 20),
                    child: NavigationRail(
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: _selectDestination,
                      labelType: NavigationRailLabelType.all,
                      backgroundColor: paper,
                      leading: Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: _brandMark(),
                      ),
                      destinations: _destinations
                          .map(
                            (destination) => NavigationRailDestination(
                              icon: destination.icon,
                              selectedIcon: destination.selectedIcon,
                              label: Text(destination.label),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                Expanded(
                  child: Column(
                    children: [
                      _DashboardHeader(wide: wide),
                      Expanded(
                        child: Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1120),
                            child: _currentSection(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: wide
              ? null
              : NavigationBar(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _selectDestination,
                  destinations: _destinations,
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  backgroundColor: Colors.white,
                  indicatorColor: mist,
                ),
        );
      },
    );
  }

  Widget _currentSection() {
    return switch (_selectedIndex) {
      0 => const _AcademicSection(),
      1 => const _SkillsSection(),
      2 => const _ActivitiesSection(),
      _ => const _AwardsSection(),
    };
  }
}

Widget _brandMark() => Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: forest,
        borderRadius: BorderRadius.circular(13),
      ),
      child: const Icon(Icons.auto_stories_rounded, color: Colors.white),
    );

class _DashboardHeader extends StatelessWidget {
  const _DashboardHeader({required this.wide});

  final bool wide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(wide ? 30 : 22, 18, wide ? 34 : 22, 14),
      child: Row(
        children: [
          if (!wide) ...[_brandMark(), const SizedBox(width: 12)],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('STUDENT E-PORTFOLIO', style: _eyebrowStyle),
                const SizedBox(height: 4),
                Text(
                  'Hello, $studentName',
                  style: TextStyle(
                    fontSize: wide ? 24 : 20,
                    fontWeight: FontWeight.w700,
                    color: ink,
                  ),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            radius: 21,
            backgroundColor: mist,
            backgroundImage: AssetImage('assets/Profile/Photo.jpg'),
          ),
        ],
      ),
    );
  }
}

class _SectionFrame extends StatelessWidget {
  const _SectionFrame({
    required this.kicker,
    required this.title,
    required this.child,
    this.description,
  });

  final String kicker;
  final String title;
  final String? description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 14, 24, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(kicker.toUpperCase(), style: _eyebrowStyle),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: ink,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (description != null && description!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              description!,
              style: TextStyle(
                color: ink.withValues(alpha: 0.62),
                fontSize: 14,
              ),
            ),
          ],
          const SizedBox(height: 25),
          child,
        ],
      ),
    );
  }
}

class _AcademicSection extends StatelessWidget {
  const _AcademicSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      kicker: '01 / Learning path',
      title: 'Academic details',
      description: 'The milestones behind the work.',
      child: _AcademicContent(),
    );
  }
}

class _AcademicContent extends StatelessWidget {
  const _AcademicContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: forest,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Expanded(
                child: _Stat(label: 'CURRENT COURSE', value: 'B.Tech'),
              ),
              SizedBox(width: 14),
              Expanded(child: _Stat(label: 'CURRENT YEAR', value: '3rd year')),
              SizedBox(width: 14),
              Expanded(child: _Stat(label: 'ROLL NUMBER', value: studentRollNumber)),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Education',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ink,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE5E8E1)),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 22,
              columns: const [
                DataColumn(label: Text('Course')),
                DataColumn(label: Text('Institution')),
                DataColumn(label: Text('Period')),
                DataColumn(label: Text('Result')),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(SizedBox(width: 145, child: Text('B.Tech - CSE'))),
                    DataCell(
                      SizedBox(
                        width: 210,
                        child: Text('BVRIT Hyderabad College of Engineering for Women'),
                      ),
                    ),
                    DataCell(Text('Aug 2024 - Jun 2028')),
                    DataCell(Text('GPA: 7.2')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(SizedBox(width: 145, child: Text('Intermediate'))),
                    DataCell(SizedBox(width: 210, child: Text('Aspire Junior College'))),
                    DataCell(Text('Jul 2022 - May 2024')),
                    DataCell(Text('72.1%')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(SizedBox(width: 145, child: Text('Secondary Education'))),
                    DataCell(SizedBox(width: 210, child: Text('Vilas Concept School'))),
                    DataCell(Text('Apr 2021 - Mar 2022')),
                    DataCell(Text('63%')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFBFD4C9),
            fontSize: 9,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.7,
          ),
        ),
        const SizedBox(height: 7),
        FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      kicker: '02 / Tools and learning',
      title: 'Skills & certifications',
      description: 'Technical strengths, coursework, and verified certificates.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SkillGroup(
            title: 'Languages & tools',
            details: 'Java · Python · C · MySQL · Git · Tableau',
          ),
          const _SkillGroup(
            title: 'Platforms & environments',
            details:
                'Linux · Windows · VS Code · Eclipse · MySQL Workbench · Dev C++ · Google Colab · Excel',
          ),
          const _SkillGroup(
            title: 'Coursework',
            details:
                'Database Management Systems · Discrete Mathematics · Internet of Things',
          ),
          const _SkillGroup(
            title: 'Soft skills',
            details: 'Problem Solving · Team Management · Communication',
          ),
          const _SkillGroup(
            title: 'Networking certification',
            details:
                'JNCIA-Junos Associate · HPE Networking Education Services · June 2026',
          ),
          const SizedBox(height: 25),
          const Text(
            'Uploaded certificates',
            style: TextStyle(
              color: ink,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth > 760 ? 3 : 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: certificates.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  mainAxisExtent: 250,
                ),
                itemBuilder: (context, index) =>
                    _CertificateCard(certificate: certificates[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkillGroup extends StatelessWidget {
  const _SkillGroup({required this.title, required this.details});

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE3E6DF))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: forest,
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            details,
            style: TextStyle(color: ink.withValues(alpha: 0.8), height: 1.45),
          ),
        ],
      ),
    );
  }
}

class _CertificateCard extends StatelessWidget {
  const _CertificateCard({required this.certificate});

  final PortfolioCertificate certificate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5E8E1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: mist,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(certificate.icon, color: forest),
              ),
              const Spacer(),
              Flexible(
                child: Text(
                  certificate.date,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: ink.withValues(alpha: 0.6)),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            certificate.title,
            style: const TextStyle(
              color: ink,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            certificate.platform,
            style: TextStyle(color: ink.withValues(alpha: 0.6)),
          ),
          const SizedBox(height: 13),
          OutlinedButton.icon(
            onPressed: () => _showCertificate(context, certificate),
            icon: const Icon(Icons.visibility_outlined, size: 17),
            label: const Text('View certificate'),
            style: OutlinedButton.styleFrom(
              foregroundColor: forest,
              side: const BorderSide(color: Color(0xFFD5E1D9)),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
        ],
      ),
    );
  }
}

void _showCertificate(BuildContext context, PortfolioCertificate certificate) {
  showDialog<void>(
    context: context,
    builder: (context) => Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1100,
          maxHeight: MediaQuery.sizeOf(context).height * 0.86,
        ),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.92,
          height: MediaQuery.sizeOf(context).height * 0.82,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 8, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        certificate.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: 'Close certificate',
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(child: PdfViewer.asset(certificate.assetPath)),
            ],
          ),
        ),
      ),
    ),
  );
}

class _ActivitiesSection extends StatelessWidget {
  const _ActivitiesSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      kicker: '03 / Work and participation',
      title: 'Projects & activities',
      description: 'Selected software projects and a national-day hackathon award.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: ink),
          ),
          const SizedBox(height: 12),
          ...portfolioProjects.map((project) => _ProjectCard(project: project)),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: forest,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.emoji_events_rounded, color: saffron, size: 30),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3rd Prize - Mackathon',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'BVRIT Hyderabad College of Engineering for Women · December 2024',
                        style: TextStyle(color: Color(0xFFDCE9E1), height: 1.4),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Presented a mathematical solution to a real-world problem during National Mathematics Day.',
                        style: TextStyle(color: Color(0xFFDCE9E1), height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class _ProjectCard extends StatelessWidget {
  const _ProjectCard({required this.project});

  final PortfolioProject project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: const Color(0xFFE5E8E1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  project.title,
                  style: const TextStyle(
                    color: ink,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                project.period,
                textAlign: TextAlign.end,
                style: TextStyle(color: ink.withValues(alpha: 0.6), fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            project.summary,
            style: TextStyle(color: ink.withValues(alpha: 0.76), height: 1.45),
          ),
          if (project.contribution != null) ...[
            const SizedBox(height: 7),
            Text(
              'Contribution: ${project.contribution}',
              style: TextStyle(color: ink.withValues(alpha: 0.76), height: 1.45),
            ),
          ],
          const SizedBox(height: 9),
          Text(
            'Tech stack: ${project.technologies.join(', ')}',
            style: const TextStyle(color: forest, fontWeight: FontWeight.w600),
          ),
          if (project.demoUrl != null) ...[
            const SizedBox(height: 7),
            SelectableText(
              'Live demo: ${project.demoUrl}',
              style: TextStyle(color: ink.withValues(alpha: 0.7), fontSize: 13),
            ),
          ],
        ],
      ),
    );
  }
}
class _AwardsSection extends StatelessWidget {
  const _AwardsSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      kicker: '04 / Moments worth keeping',
      title: 'Achievements',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 22),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFE5E8E1)),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.lightbulb_outline_rounded, color: coral, size: 28),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smart Monitoring of Illegal Construction on Government Lands',
                        style: TextStyle(
                          color: ink,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Published patent proposing an AI-powered system that uses satellite imagery and GIS data to automatically detect illegal construction on government land.',
                        style: TextStyle(color: ink, height: 1.45),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _AchievementReel(),
        ],
      ),
    );
  }
}

class _AchievementReel extends StatefulWidget {
  const _AchievementReel();

  @override
  State<_AchievementReel> createState() => _AchievementReelState();
}

class _AchievementReelState extends State<_AchievementReel> {
  final _controller = PageController(viewportFraction: 0.88);
  Timer? _timer;
  int _page = 0;
  bool _playing = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!_playing || !_controller.hasClients) return;
      _page = (_page + 1) % certificates.length;
      _controller.animateToPage(
        _page,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 370,
          child: PageView.builder(
            controller: _controller,
            itemCount: certificates.length,
            onPageChanged: (page) => setState(() => _page = page),
            itemBuilder: (context, index) {
              final slide = certificates[index];
              final slideNumber = (index + 1).toString().padLeft(2, '0');
              return Padding(
                padding: const EdgeInsets.only(right: 14),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 450),
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    color: slide.color,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -8,
                        top: -20,
                        child: Icon(
                          slide.icon,
                          size: 165,
                          color: Colors.white.withValues(alpha: 0.12),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'PORTFOLIO  /  $slideNumber',
                                style: const TextStyle(
                                  color: Color(0xFFDCE9E1),
                                  fontSize: 10,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.verified_rounded,
                                color: saffron,
                                size: 25,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.14),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(slide.icon, color: Colors.white, size: 28),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            slide.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              height: 1.12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${slide.platform} · ${slide.date}',
                            style: const TextStyle(
                              color: Color(0xFFDCE9E1),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(height: 1, color: Colors.white24),
                          const SizedBox(height: 12),
                          Text(
                            studentName.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.1,
                            ),
                          ),
                          const SizedBox(height: 12),
                          OutlinedButton.icon(
                            onPressed: () => _showCertificate(context, slide),
                            icon: const Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 17,
                            ),
                            label: const Text('View certificate PDF'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: const BorderSide(color: Colors.white54),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            IconButton.filledTonal(
              tooltip: _playing ? 'Pause slideshow' : 'Play slideshow',
              onPressed: () => setState(() => _playing = !_playing),
              icon: Icon(_playing ? Icons.pause_rounded : Icons.play_arrow_rounded),
            ),
            const SizedBox(width: 10),
            ...List.generate(
              certificates.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: index == _page ? 23 : 7,
                height: 7,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  color: index == _page ? forest : const Color(0xFFCFD8D0),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Previous achievement',
              onPressed: () => _controller.previousPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOut,
              ),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            IconButton(
              tooltip: 'Next achievement',
              onPressed: () => _controller.nextPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOut,
              ),
              icon: const Icon(Icons.arrow_forward_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
