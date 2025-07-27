import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../widgets/dashboard_card.dart';

class DashboardMobileScreen extends StatelessWidget {
  const DashboardMobileScreen({super.key});

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
              const TDashboardCard(
                              title: 'Sales Total',
                              subTitle: '365.5',
                              stats: 25,
                            ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TDashboardCard(
                              title: 'Average Order Value',
                              subTitle: '25',
                              stats: 15,
                            ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Cards
              const TDashboardCard(
                  title: 'Total Orders', subTitle: '36', stats: 44),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TDashboardCard(
                              title: 'Visitors',
                              subTitle: '25,035',
                              stats: 2,
                            )
            ],
          ),
        ),
      ),
    );
  }
}
