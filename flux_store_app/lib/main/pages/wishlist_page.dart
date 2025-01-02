import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/product.dart';
import 'package:flux_store_app/main/widgets/board_card.dart';
import 'package:flux_store_app/main/widgets/grid_items_two_in_row.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.black,
                      indicatorWeight: 2,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(text: "All items"),
                        Tab(text: "Boards"),
                      ],
                    ),
                  ),
                ),
              )),
          body: const TabBarView(
            children: [
              _AllItemsTab(),
              _BoardsTab(),
            ],
          ),
        ));
  }
}

class _AllItemsTab extends StatelessWidget {
  const _AllItemsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.7,
        ),
        itemCount: listOfProducts.length,
        itemBuilder: (context, index) {
          final product = listOfProducts[index];
          return GridItemsTwoInRow(
            product: product,
            isFavorite: index % 1.5 == 0 ? true : false,
          );
        },
      ),
    );
  }
}

class _BoardsTab extends StatelessWidget {
  const _BoardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: BoardCard(),
        );
      }),
    );
  }
}
