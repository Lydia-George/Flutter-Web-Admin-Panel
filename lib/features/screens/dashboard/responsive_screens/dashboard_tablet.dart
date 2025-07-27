import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_card.dart';

class DashboardTabletScreen extends StatelessWidget {
  const DashboardTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Cards
              const Row(
                children: [
                  Expanded(
                      child: TDashboardCard(
                    title: 'Sales Total',
                    subTitle: '365.5',
                    stats: 25,
                  )),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                      child: TDashboardCard(
                    title: 'Average Order Value',
                    subTitle: '25',
                    stats: 15,
                  )),

                ],
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              /// Cards
              const Row(
                children: [
                  Expanded(child: TDashboardCard(title: 'Total Orders', subTitle: '36', stats: 44)),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Expanded(child: TDashboardCard(title: 'Visitors', subTitle: '25,035', stats: 2,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
