import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/order.dart';
import 'package:flux_store_app/main/pages/main_page.dart';
import 'package:flux_store_app/main/pages/order_detail_delivered_page.dart';
import 'package:flux_store_app/main/pages/order_detail_pending_page.dart';
import 'package:flux_store_app/main/widgets/order_card.dart';

class AllOrdersPage extends StatelessWidget {
  const AllOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Order> listOfPendingOrders =
        listOfOrders.where((order) => order.status == "PENDING").toList();
    List<Order> listOfDeliveredOrders =
        listOfOrders.where((order) => order.status == "DELIVERED").toList();
    List<Order> listOfCancelledOrders =
        listOfOrders.where((order) => order.status == "CANCELLED").toList();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 10,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(text: 'Pending'),
                    Tab(text: 'Delivered'),
                    Tab(text: 'Cancelled'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildOrderCards(listOfPendingOrders),
            _buildOrderCards(listOfDeliveredOrders),
            _buildOrderCards(listOfCancelledOrders),
          ],
        ),
      ),
    );
  }

  ListView _buildOrderCards(List<Order> orders) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
            order: order,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                if (order.status == 'DELIVERED') {
                  return OrderDetailDeliveredPage(
                    order: order,
                  );
                } else if (order.status == 'PENDING') {
                  return OrderDetailPendingPage(
                    order: order,
                  );
                }
                return MainPage();
              }));
            });
      },
    );
  }
}
