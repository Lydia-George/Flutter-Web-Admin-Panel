import 'package:ecommerce_admin_panel/common/widgets/layouts/templates/login_template.dart';

import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const TLoginTemplate(
        child: Column(
      children: [
        // Header (with logo)
        TLoginHeader(),

        ///FORM
        TLoginForm(),
      ],
    ));
  }
}
