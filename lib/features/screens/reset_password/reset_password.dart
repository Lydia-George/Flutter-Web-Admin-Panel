import 'package:ecommerce_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/screens/reset_password/responsive_screens/reset_password_desktop_tablet.dart';
import 'package:ecommerce_admin_panel/features/screens/reset_password/responsive_screens/reset_password_mobile.dart';
import 'package:flutter/material.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

final String email;

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(
      useLayout: false,
      desktop: ResetPasswordScreenDesktopTablet(),
      mobile: ResetPasswordScreenMobile(),
    );
  }
}
