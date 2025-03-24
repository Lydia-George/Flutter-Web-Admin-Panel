import 'package:ecommerce_admin_panel/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

import '../../containers/circular_container.dart';
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, this.body});

  /// Widget for the tablet Layout
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar:const THeader(),
      body: Expanded(child:body ?? const SizedBox(), )
    );
  }
}
