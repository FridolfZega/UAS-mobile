import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/study_case_controller.dart';

class StudyCaseView extends GetView<StudyCaseController> {
  const StudyCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _StudyCasePage();
  }
}

/* ================= MAIN PAGE ================= */

class _StudyCasePage extends StatefulWidget {
  const _StudyCasePage({Key? key}) : super(key: key);

  @override
  State<_StudyCasePage> createState() => _StudyCasePageState();
}

class _StudyCasePageState extends State<_StudyCasePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    AboutScreen(),
    ProgramsScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universitas Matana',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF001f3f),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF001f3f),
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Program'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Kontak'),
        ],
      ),
    );
  }
}

/* ================= HOME ================= */

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // HERO IMAGE
          Stack(
            children: [
              Image.network(
                'https://matanauniversity.ac.id/media/uploads/image/2025/07/gedung-matana-expanded-1.webp',
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                height: 280,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87],
                  ),
                ),
              ),
              const Positioned(
                bottom: 24,
                left: 16,
                right: 16,
                child: Text(
                  'Universitas Matana\nExcellence in Higher Education',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Universitas Matana adalah universitas swasta modern di Gading Serpong '
              'yang berfokus pada pendidikan berkualitas, integritas, dan inovasi.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: const [
                _InfoCard(Icons.school, '10+ Program', 'Sarjana'),
                _InfoCard(Icons.location_city, 'Lokasi', 'Gading Serpong'),
                _InfoCard(Icons.trending_up, 'Metode', 'RBTL'),
                _InfoCard(Icons.group, 'Mahasiswa', 'Aktif & Kreatif'),
              ],
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _InfoCard(this.icon, this.title, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: const Color(0xFF001f3f)),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

/* ================= ABOUT ================= */

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tentang Kami',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text(
                'Universitas Matana didirikan pada tahun 2014 dengan visi '
                'menjadi perguruan tinggi terpercaya dan berdaya saing global.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* ================= PROGRAMS ================= */

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final programs = [
      'Informatika',
      'Manajemen',
      'Akuntansi',
      'Statistika',
      'Pariwisata',
      'Desain Komunikasi Visual',
      'Fisika Medis',
      'Arsitektur',
      'Kesehatan & Keselamatan Kerja',

    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: programs.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: const Icon(Icons.school, color: Color(0xFF001f3f)),
            title: Text(programs[index]),
          ),
        );
      },
    );
  }
}

/* ================= CONTACT ================= */

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kontak Kami',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text('📍 Gading Serpong, Tangerang'),
              SizedBox(height: 6),
              Text('📞 (021) 2923 2999'),
              SizedBox(height: 6),
              Text('✉ info@matanauniversity.ac.id'),
            ],
          ),
        ),
      ),
    );
  }
}
