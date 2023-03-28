import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_1/controller/api_type.controller.dart';
import 'package:todov2/app_ejemplo_1/controller/models/ApiType.dart';

class ApisFree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApisFree();
  }
}

class _ApisFree extends State {
  ApiTypeController apiTypeController = ApiTypeController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: apiTypeController.getApis(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            case ConnectionState.done:
              if (snapshot.hasData) {
                List<ApiType>? data = snapshot.data;
                if (data != null) {
                  return createListView(data);
                } else {
                  return Text("Error cargando la lista.");
                }
              } else {
                return Text("No hay datos para mostrar");
              }

            default:
              return Text("Ha ocurrido un error inesperado.");
          }
        },
      ),
    );
  }

  Widget createListView(List<ApiType> apis) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(apis[index].description),
          subtitle: Text("${apis[index].api} - ${apis[index].link}"),
          onTap: () {
            apiTypeController.showDetail(apis[index]);
          },
          onLongPress: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Desea eliminar el elemento?"),
                  content: Text("El elemento no se puede recuperar"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("No"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Si"),
                    )
                  ],
                );
              },
            );
          },
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: apis.length,
    );
  }
}
