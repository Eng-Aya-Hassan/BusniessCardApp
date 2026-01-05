import 'package:flutter/material.dart';

void main() {
  runApp(const MyBusinessCardApp());
}

class MyBusinessCardApp extends StatelessWidget {
  const MyBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({super.key});

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget infoCard(IconData icon, String text) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xff00C6FA), size: 30),
        title: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff278FC0),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Logo
              CircleAvatar(
                radius: 115,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage:
                  const AssetImage('assets/images/logo.png'),
                ),
              ),

              const SizedBox(height: 16),

              /// Name
              const Text(
                'Eng: Aya Hassan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              /// Job Title
              const Text(
                'Software Engineer',
                style: TextStyle(
                  color: Color(0xff00C6FA),
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 16),

              Divider(
                color: const Color(0xff00C6FA),
                thickness: 2,
                indent: 80,
                endIndent: 80,
              ),

              const SizedBox(height: 12),

              /// Info Cards
              infoCard(Icons.phone, '+967 777777667'),
              infoCard(Icons.email, 'ay00shhas126san@gmail.com'),
              infoCard(
                Icons.language,
                'aya-hassan-portfolio.vercel.app',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
