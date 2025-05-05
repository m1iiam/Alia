import 'package:flutter/material.dart';
import 'package:widgets/profile_column.dart';
import 'package:widgets/section_column.dart';
import '../widgets/base_spacing.dart';
import '../widgets/header_stack.dart';
import '../widgets/icon_row.dart';
import '../widgets/profile_column.dart';
import '../widgets/section_column.dart';
import '../widgets/custom_button.dart';
import 'base_spacing.dart';
import 'header_stack.dart';
import 'icon_row.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderStack(
              background: _buildProfileBackground(),
              foreground: ProfileColumn(
                name: 'John Doe',
                email: 'john.doe@example.com',
                imagePath: 'assets/profile_image.png',
              ),
            ),
            Padding(
              padding: BaseSpacing.screenPadding,
              child: Column(
                children: [
                  BaseSpacing.sectionSpacing,
                  const SectionColumn(
                    title: 'Profile Settings',
                    children: [
                      IconRow(
                        text: 'Edit Profile',
                        leadingIcon: Icons.person_outline,
                        trailingIcon: Icons.arrow_forward_ios,
                        onPressed: _navigateToEditProfile,
                      ),
                      IconRow(
                        text: 'Notification Settings',
                        leadingIcon: Icons.notifications_outlined,
                        trailingIcon: Icons.arrow_forward_ios,
                        onPressed: _navigateToNotifications,
                      ),
                    ],
                  ),
                  BaseSpacing.sectionSpacing,
                  const Divider(),
                  BaseSpacing.elementSpacing,
                  const SectionColumn(
                    title: 'Legal',
                    children: [
                      IconRow(
                        text: 'Privacy Policy',
                        leadingIcon: Icons.privacy_tip_outlined,
                        trailingIcon: Icons.arrow_forward_ios,
                        onPressed: _navigateToPrivacyPolicy,
                      ),
                      IconRow(
                        text: 'Terms of Service',
                        leadingIcon: Icons.description_outlined,
                        trailingIcon: Icons.arrow_forward_ios,
                        onPressed: _navigateToTerms,
                      ),
                    ],
                  ),
                  BaseSpacing.sectionSpacing,
                  CustomButton(
                    text: 'Log Out',
                    icon: Icons.logout,
                    onPressed: _handleLogout,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _navigateToTerms {
}

class _navigateToEditProfile {
}

Widget _buildProfileBackground() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue.shade400, Colors.blue.shade700],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  );
}