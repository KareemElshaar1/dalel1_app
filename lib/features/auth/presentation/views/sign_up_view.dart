import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/welcome_Text.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_filed.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 180),
            ),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(
              text: AppStrings.welcome,
            )),
            // const SliverToBoxAdapter(
            //   child: SizedBox(height: 60),
            // ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.password,
                isPassword: true,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConidtionWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 88,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomButton(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
