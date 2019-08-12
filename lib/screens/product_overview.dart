import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shop'),
      ),
      // improve the performance of the app by using builder
      body: ProductGrid(),
    );
  }
}
