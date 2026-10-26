
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111B21),
        elevation: 0,
        toolbarHeight: 52,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 18),
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 48,
                  backgroundColor: Color(0xFFE9EDEF),
                  child: Icon(
                    Icons.person,
                    size: 52,
                    color: Color(0xFF667781),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Color(0xFF111B21),
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const ProfileItem(
            icon: Icons.person_outline,
            title: "Name",
            subtitle: "bhishma astain kaffa",
          ),
          const ProfileItem(
            icon: Icons.info_outline,
            title: "About",
            subtitle: "Set About",
            subtitleColor: Color(0xFF008069),
          ),
          const ProfileItem(
            icon: Icons.alternate_email,
            title: "Username",
            subtitle: "Reserve username",
            subtitleColor: Color(0xFF008069),
          ),
          const ProfileItem(
            icon: Icons.phone_outlined,
            title: "Phone",
            subtitle: "+62-816-666-244",
          ),
          const ProfileItem(
            icon: Icons.link,
            title: "Links",
            subtitle: "Add links",
            subtitleColor: Color(0xFF008069),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.subtitleColor = const Color(0xFF667781),
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 11,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF667781),
            size: 23,
          ),
          const SizedBox(width: 28),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF111B21),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: subtitleColor,
                    fontSize: 13,
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
