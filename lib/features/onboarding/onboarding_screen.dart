import 'package:doc_now/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DocLogoAndName(),
      ),
    );
  }
}