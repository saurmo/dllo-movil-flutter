import 'package:flutter/material.dart';
import 'package:todov2/bases/container.dart';

class RowsBase extends StatelessWidget {
  final ContainerBase _containerBase = ContainerBase();

  createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _containerBase.createContainer("Item1"),
        _containerBase.createContainer("Item2"),
        _containerBase.createContainer("Item3"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // return createRow();
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 1)
      ),
      child: createRow(),
    );
  }
}
