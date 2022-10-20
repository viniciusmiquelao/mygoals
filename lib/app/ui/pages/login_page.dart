import 'package:flutter/material.dart';
import 'package:mygoals/app/constants/spacements.dart';
import 'package:mygoals/app/ui/components/assets.dart';
import 'package:mygoals/app/ui/components/base_body.dart';
import 'package:mygoals/app/ui/components/base_button.dart';
import 'package:mygoals/app/ui/components/safe_scroll_view.dart';

import '../../routes/routes.dart';
import '../components/custom_app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: BaseBody(
        child: SafeScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Spacements.XL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: Spacements.XL),
                const Spacer(),
                Column(
                  children: const [
                    Asset(
                      Assets.logo,
                      height: 120,
                    ),
                    SizedBox(height: Spacements.S),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'my',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: 'goals',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(height: Spacements.M),
                Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'user@test.com',
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: Spacements.L),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '********',
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: Spacements.S),
                    Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(height: Spacements.M),
                BaseButton(
                  text: 'Log In',
                  onPressed: () => Navigator.pushNamed(context, Routes.home),
                ),
                const Spacer(),
                const SizedBox(height: Spacements.L),
                Column(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const SizedBox(height: Spacements.XS),
                    Text(
                      'Create an Account.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
