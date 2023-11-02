import 'package:apptareas20232/state_config_provider/StateProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlankPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StateProvider _stateProvider = Provider.of<StateProvider>(context);
    print(_stateProvider.getName());
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _stateProvider.setName("Page 2");
                  },
                  child: Text("Asignar nombre")),
              Text(_stateProvider.getName()),
            ],
          ),
        ),
      ),
    );
  }
}
