import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_admin_panel/features/shop/controllers_dashboard/dashboard_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/data_table/paginated_data_table.dart';
import '../widgets/dashboard_card.dart';

class DashboardDesktopScreen extends StatelessWidget {
  const DashboardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
        backgroundColor: TColors.light,
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
                    SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                        child: TDashboardCard(
                            title: 'Total Orders', subTitle: '36', stats: 44)),
                    SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Expanded(
                        child: TDashboardCard(
                      title: 'Visitors',
                      subTitle: '25,035',
                      stats: 2,
                    )),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Graphs
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          /// Bar Graph
                          TRoundedContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Weekly Sales',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const SizedBox(
                                  height: TSizes.spaceBtwSections,
                                ),

                                // Graph
                                SizedBox(
                                  height: 400,
                                  child: Obx(
                                      () => BarChart(
                                        BarChartData(
                                        titlesData: buildFlTitlesData(),
                                        borderData: FlBorderData(
                                            show: true,
                                            border: const Border(
                                                top: BorderSide.none,
                                                right: BorderSide.none)),
                                        gridData: const FlGridData(
                                          show: true,
                                          drawHorizontalLine: true,
                                          drawVerticalLine: true,
                                          horizontalInterval: 200,
                                        ),
                                        barGroups: controller.weeklySales
                                            .asMap()
                                            .entries
                                            .map((entry) => BarChartGroupData(
                                                    x: entry.key,
                                                    barRods: [
                                                      BarChartRodData(
                                                        width: 30,
                                                        toY: entry.value,
                                                        color:
                                                            TColors.primaryColor,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                TSizes.sm),
                                                      )
                                                    ]))
                                            .toList(),
                                        groupsSpace: TSizes.spaceBtwItems,
                                        barTouchData: BarTouchData(
                                          touchTooltipData: BarTouchTooltipData(
                                              getTooltipColor: (_) =>
                                                  TColors.secondary),
                                          touchCallback:
                                              TDeviceUtils.isDesktopScreen(
                                                      context)
                                                  ? (barTouchEvent,
                                                      barTouchResponse) {}
                                                  : null,
                                        ))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          /// Orders
                          const TRoundedContainer(),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// Pie Chart
                    const Expanded(child: TRoundedContainer()),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  FlTitlesData buildFlTitlesData() {
    return FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value , meta) {
                  // Map index to the desired day of the week
                  final days = ['Sat' , 'Sun' , 'Mon' , 'Tue' , 'Wed' , 'Thu', 'Fri'];

                  // Calculate the index and ensure it wraps around for the correct day
                  final index = value.toInt() % days.length;

                  // Get the day corresponding to the calculated index
                  final day = days[index];

                  return SideTitleWidget(axisSide: AxisSide.bottom, child: Text(day), space: 0,);


                }
            )
        ),
      leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true, interval: 200, reservedSize: 50)),
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

    );
  }
}
