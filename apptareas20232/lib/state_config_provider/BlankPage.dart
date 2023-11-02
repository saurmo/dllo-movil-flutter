import 'package:apptareas20232/state_config_provider/StateProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StateProvider _stateProvider = Provider.of<StateProvider>(context);
    List<String> products = _stateProvider.getProductos();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _stateProvider.setName("UdeM");
                },
                child: Text("Asignar nombre"),
              ),
              ElevatedButton(
                onPressed: () {
                  _stateProvider.addProduct("Arroz");
                },
                child: Text("Agregar Arroz"),
              ),
              ElevatedButton(
                onPressed: () {
                  _stateProvider.addProduct("Manzana");
                },
                child: Text("Agregar Manzana"),
              ),
              Text(_stateProvider.getName()),
              const Divider(),
              Text("Nro Productos: ${_stateProvider.getProductos().length}"),
            ],
          ),
        ),
      ),
    );
  }
}
