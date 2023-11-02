import 'package:apptareas20232/config/StateProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlankPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StateProvider _stateProvider = Provider.of<StateProvider>(context);
    List<String> products = _stateProvider.getProductos();

    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(products[index]);
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
