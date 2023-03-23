import 'package:flutter/material.dart';
import 'package:todov2/app_ejemplo_1/controller/api_type.controller.dart';

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
    return ListView.separated(
      itemBuilder: fillListView,
      separatorBuilder: (context, index) => Divider(),
      itemCount: apiTypeController.apis.length,
    );
  }

  Widget fillListView(context, index) {
     var apis = apiTypeController.getApis();
 
    return ListTile(
        title: Text(apis[index].description),
        subtitle: Text("${apis[index].api} - ${apis[index].link}"),
      );
  }
}
