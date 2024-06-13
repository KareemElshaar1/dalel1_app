import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_filed.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [CustomTextField()],
        ),
      ),
    );
  }
}
