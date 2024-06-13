import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_filed.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("WELCOM"),
            CustomTextField(
              hint: "WELCOM",
            ),
          ],
        ),
      ),
    );
  }
}
