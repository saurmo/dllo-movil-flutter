import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tareas/providers/course_provider.dart';
import 'package:tareas/widgets/custom_input.dart';
import 'package:tareas/widgets/navegation_drawer.dart';

class CoursePage extends StatefulWidget {
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cursos"),
        ),
        drawer: NavegationDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ChangeNotifierProvider(
              create: (_) {
                return CourseProvider();
              },
              child: const _CourseForm()),
        )
        // ,
        );
  }
}

class _CourseForm extends StatefulWidget {
  const _CourseForm({
    super.key,
  });

  @override
  State<_CourseForm> createState() => _CourseFormState();
}

class _CourseFormState extends State<_CourseForm> {
  @override
  Widget build(BuildContext context) {
    CourseProvider courseForm = Provider.of<CourseProvider>(context);

    return Form(
      key: courseForm.formKey,
      child: ListView(
        children: [
          CustomInput(
            userInfo: courseForm.courseInfo,
            property: "name",
            labelText: "Nombre del curso",
            hintText: "Ingrese el nombre del curso",
            // autofocus: true,
          ),
          CustomInput(
            userInfo: courseForm.courseInfo,
            property: "description",
            labelText: "Descripción",
            type: TextInputType.multiline,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () async {
                courseForm.isValidForm();
                await courseForm.createCourse();
              },
              child: Text("Guardar"),
            ),
          ),
        ],
      ),
    );
  }
}
