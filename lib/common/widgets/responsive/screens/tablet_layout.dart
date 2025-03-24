import 'package:ecommerce_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

import '../../containers/circular_container.dart';
class TabletLayout extends StatelessWidget {
   TabletLayout({super.key, this.body});

  /// Widget for the tablet Layout
  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: THeader(scaffoldKey: scaffoldKey,),
      body: Expanded(child:body ?? const SizedBox(), )
    );
  }
}
