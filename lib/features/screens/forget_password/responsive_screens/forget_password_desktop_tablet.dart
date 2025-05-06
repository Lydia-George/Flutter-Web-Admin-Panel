import 'package:ecommerce_admin_panel/common/widgets/layouts/templates/login_template.dart';
import 'package:flutter/material.dart';


import '../../../../utils/constants/text_strings.dart';
import '../widgets/header_form.dart';

class ForgetPasswordScreenDesktopTablet extends StatelessWidget {
  const ForgetPasswordScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const TLoginTemplate(
        child: HeaderAndForm());
  }
}

