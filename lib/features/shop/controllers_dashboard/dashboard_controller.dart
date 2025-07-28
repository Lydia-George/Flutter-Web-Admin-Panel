
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../models/order_model.dart';

class DashboardController extends GetxController{
  static DashboardController get instance => Get.find();

  final RxList<double> weeklySales = <double>[].obs;

  ///-- Order
  static final List<OrderModel> orders = [
    OrderModel(
        id: 'CWT0012',
        status: OrderStatus.processing,
        totalAmount: 265,
        orderDate: DateTime(2025,7,27),
        items: [],
      deliveryDate: DateTime(2025,7,27),
    ),OrderModel(
        id: 'CWT1254',
        status: OrderStatus.shipped,
        totalAmount: 265,
        orderDate: DateTime(2025,7,27),
        items: [],
      deliveryDate: DateTime(2025,7,27),
    ),OrderModel(
        id: 'CWT0152',
        status: OrderStatus.delivered,
        totalAmount: 245,
        orderDate: DateTime(2025,7,27),
        items: [],
      deliveryDate: DateTime(2025,7,27),
    ),OrderModel(
        id: 'CWT0170',
        status: OrderStatus.delivered,
        totalAmount: 355,
        orderDate: DateTime(2025,7,27),
        items: [],
      deliveryDate: DateTime(2025,7,27),
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    _calculateWeeklySales();
  }

  /// Calculate the weekly sales
  void _calculateWeeklySales(){
    //Reset weeklySales to Zeros
    weeklySales.value = List<double>.filled(7,0.0);

    for(var order in orders){
      final DateTime orderWeekStart = THelperFunctions.getStartOfWeek(order.orderDate);
      // Check if this order is within the current week
      if(orderWeekStart.isBefore(DateTime.now()) && orderWeekStart.add(Duration(days: 7 )).isAfter(DateTime.now())){
        int index = (order.orderDate.weekday -1) %7;

        // Ensure the index is non-negative
        index = index < 0 ? index+7 : index;

        weeklySales[index] += order.totalAmount;

        print('OrderDate: ${order.orderDate} . CurrentWeekDay: $orderWeekStart , Index: $index' );
      }
    }

    print('Weekly Sales: $weeklySales');

  }


}