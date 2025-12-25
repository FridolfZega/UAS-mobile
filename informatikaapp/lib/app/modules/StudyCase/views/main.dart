import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universitas Matana',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF001f3f),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF001f3f),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomeScreen(),
    AboutScreen(),
    ProgramsScreen(),
    ContactScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universitas Matana',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF001f3f),
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://matanauniversity.ac.id/media/logo/matana-university-logo.png',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.school, color: Colors.white),
            ),
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF001f3f),
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex,
        elevation: 8,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Program Studi'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Kontak'),
        ],
      ),
    );
  }
}

// =============== HOME SCREEN ===============
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Hero Image
          Stack(
            children: [
              Image.network(
                'https://matanauniversity.ac.id/media/uploads/image/2025/07/gedung-matana-expanded-1.webp',
                height: 320,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                height: 320,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87],
                  ),
                ),
              ),
              const Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang di',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Universitas Matana',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Excellence in Higher Education',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Universitas swasta modern di Gading Serpong, Tangerang yang fokus pada pendidikan berkualitas, integritas, penatalayanan, dan saling menghargai. Didirikan tahun 2014 dengan komitmen mencetak pemimpin masa depan.',
              style: TextStyle(fontSize: 16, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),

          // Quick Info Cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.4,
              children: [
                _infoCard(Icons.school, '10+ Program S1', 'Berakreditasi Baik'),
                _infoCard(Icons.location_city, 'Gading Serpong', 'Tangerang, Banten'),
                _infoCard(Icons.trending_up, 'Metode RBTL', 'Research Based Teaching & Learning'),
                _infoCard(Icons.group, 'Komunitas Aktif', 'Mahasiswa Kreatif & Inovatif'),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _infoCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: const Color(0xFF001f3f)),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 13), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

// =============== ABOUT SCREEN ===============
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sejarah', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF001f3f))),
                  SizedBox(height: 10),
                  Text(
                    'Universitas Matana didirikan pada tahun 2014 dan mulai beroperasi pada Agustus 2014 di Matana University Tower, Gading Serpong, Tangerang. '
                    'Universitas ini bertujuan mendidik calon eksekutif bisnis dan pemimpin masa depan dengan standar pendidikan tinggi.',
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                  SizedBox(height: 20),
                  Text('Visi', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF001f3f))),
                  SizedBox(height: 10),
                  Text(
                    'Menjadi Perguruan Tinggi terpercaya dan terkemuka dalam akademik dan profesionalisme yang berwawasan nasional dan internasional.',
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                  SizedBox(height: 20),
                  Text('Misi', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF001f3f))),
                  SizedBox(height: 10),
                  Text(
                    '• Membentuk lulusan yang memiliki jiwa kepemimpinan dan berdedikasi pada perilaku etis\n'
                    '• Menciptakan lulusan yang mampu melakukan penelitian, kreativitas, dan inovasi\n'
                    '• Menghasilkan generasi penerus yang peduli terhadap kehidupan berkelanjutan',
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                  SizedBox(height: 20),
                  Text('Nilai Inti', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF001f3f))),
                  SizedBox(height: 10),
                  Text(
                    'Integritas • Penatalayanan • Saling Menghargai',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// =============== PROGRAMS SCREEN ===============
class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  final List<Map<String, dynamic>> programs = const [
    {'icon': Icons.computer, 'name': 'Teknik Informatika'},
    {'icon': Icons.science, 'name': 'Fisika'},
    {'icon': Icons.calculate, 'name': 'Statistika'},
    {'icon': Icons.business_center, 'name': 'Manajemen'},
    {'icon': Icons.account_balance_wallet, 'name': 'Akuntansi'},
    {'icon': Icons.travel_explore, 'name': 'Pariwisata'},
    {'icon': Icons.architecture, 'name': 'Arsitektur'},
    {'icon': Icons.design_services, 'name': 'Desain Komunikasi Visual'},
    {'icon': Icons.health_and_safety, 'name': 'Keselamatan & Kesehatan Kerja (K3)'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Text(
              'Program Studi Sarjana (S1)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF001f3f)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...programs.map((prog) => Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 6),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(prog['icon'] as IconData, color: const Color(0xFF001f3f), size: 36),
                title: Text(prog['name'] as String, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
              ),
            )),
      ],
    );
  }
}

// =============== CONTACT SCREEN ===============
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hubungi Kami', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF001f3f))),
              SizedBox(height: 24),
              ListTile(
                leading: Icon(Icons.location_on, color: Color(0xFF001f3f), size: 32),
                title: Text('Alamat', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Matana University Tower\nJl. CBD Barat Kav. 1\nGading Serpong, Tangerang\nBanten 15810'),
              ),
              Divider(height: 32),
              ListTile(
                leading: Icon(Icons.phone, color: Color(0xFF001f3f), size: 32),
                title: Text('Telepon & WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('(021) 2923 2999\n0812-8777-5999'),
              ),
              Divider(height: 32),
              ListTile(
                leading: Icon(Icons.email, color: Color(0xFF001f3f), size: 32),
                title: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('info@matanauniversity.ac.id'),
              ),
              Divider(height: 32),
              ListTile(
                leading: Icon(Icons.web, color: Color(0xFF001f3f), size: 32),
                title: Text('Website', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('www.matanauniversity.ac.id'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}