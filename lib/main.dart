import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f0f7),
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),

          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Profile picture
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.deepPurple,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300',
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Name
                const Text(
                  'M.Yasaswini lalitha',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                // Job
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

                // Description
                const Text(
                  'Passionate developer who loves building '
                  'beautiful mobile applications with Flutter.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 25),

                // Details
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Hyderabad, India',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add),
                      label: const Text('Follow'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 14,
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.message),
                      label: const Text('Message'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
