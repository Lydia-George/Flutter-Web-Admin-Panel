import 'package:ecommerce_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';
class MobileLayout extends StatelessWidget {
   MobileLayout({super.key, this.body});

  /// Widget for the Mobile Layout
  final Widget? body;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar:  THeader(scaffoldKey: scaffoldKey,),
      body: body ??  Container(),
    );
  }
}
