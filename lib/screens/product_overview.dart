import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/product_grid.dart';

enum FilterOptions { FAVORITE, ALL }

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavoriteItems = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shop'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                print(selectedValue);
                setState(() {
                  if (selectedValue == FilterOptions.FAVORITE) {
                    _showOnlyFavoriteItems = true;
                  } else {
                    _showOnlyFavoriteItems = false;
                  }
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                        child: Text('Only favorite'),
                        value: FilterOptions.FAVORITE),
                    PopupMenuItem(child: Text('All'), value: FilterOptions.ALL),
                  ])
        ],
      ),
      // improve the performance of the app by using builder
      body: ProductGrid(_showOnlyFavoriteItems),
    );
  }
}
