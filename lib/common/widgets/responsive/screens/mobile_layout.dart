import 'package:ecommerce_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';
class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  /// Widget for the Mobile Layout
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const THeader(),
      body: body ??  Container(),
    );
  }
}
