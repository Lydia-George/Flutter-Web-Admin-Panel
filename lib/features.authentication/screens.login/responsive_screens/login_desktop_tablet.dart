import 'package:ecommerce_admin_panel/common/styles/spacing_styles.dart';
import 'package:ecommerce_admin_panel/common/widgets/layouts/templates/login_template.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/layouts/headers/header.dart';
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
