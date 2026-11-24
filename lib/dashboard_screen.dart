import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.tune, color: Colors.black),
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Profile Header Row with Stack & Positioned
              Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 38,
                        backgroundColor: Color(0xFF90CDF4),
                        backgroundImage: AssetImage('assets/images.jpg'),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A365D),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1.5),
                          ),
                          child: const Text(
                            'HEAD',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE2E8F0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Amako Inako Bluebuff',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'IT DEPARTMENT',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'IT HEAD',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Announcement Box
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ANNOUNCEMENT: ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Expanded(
                      child: Text(
                        'All students! The Art Club will hold its first meeting this Thursday at 3:30 PM.',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),

              // Schedule Heading & Card
              const Text(
                'Schedule',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('PATH - Fit 1', style: TextStyle(fontFamily: 'monospace', fontSize: 13)),
                    Text('[10:00 AM - 12:00PM]', style: TextStyle(fontFamily: 'monospace', fontSize: 13)),
                    SizedBox(height: 8),
                    Text('Chem 1/L', style: TextStyle(fontFamily: 'monospace', fontSize: 13)),
                    Text('[1:00PM - 5:30PM/CS01]', style: TextStyle(fontFamily: 'monospace', fontSize: 13)),
                  ],
                ),
              ),
              const SizedBox(height: 18),

              // Week 1 Test Progress Card
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFF94A3B8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '• Week 1 Test',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('Upcoming', style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Week 9–10 • Bug fixes, user testing, performance',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(
                      value: 0.0,
                      backgroundColor: Colors.white54,
                      color: Color(0xFF1A365D),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text('W9-W10', style: TextStyle(fontSize: 10)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_outlined, size: 28),
            Icon(Icons.calendar_today_outlined, size: 26),
            Icon(Icons.badge_outlined, size: 26),
            Icon(Icons.notifications_none, size: 28),
            Icon(Icons.person_outline, size: 28),
          ],
        ),
      ),
    );
  }
}