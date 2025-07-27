import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/data_table/paginated_data_table.dart';
import '../widgets/dashboard_card.dart';

class DashboardDesktopScreen extends StatelessWidget {
  const DashboardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.light,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text('Dashboard' , style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Cards
              const Row(
                children: [
                  Expanded(child: TDashboardCard(title: 'Sales Total', subTitle: '365.5', stats: 25,)),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(child: TDashboardCard(title: 'Average Order Value', subTitle: '25', stats: 15,)),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(child: TDashboardCard(title: 'Total Orders', subTitle: '36', stats: 44)),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(child: TDashboardCard(title: 'Visitors', subTitle: '25,035', stats: 2,)),
                ],
              )
            ],
                  ),
            ),
      ));

  }
}



