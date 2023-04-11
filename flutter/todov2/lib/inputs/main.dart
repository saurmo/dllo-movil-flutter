import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: const _InputsView(),
    );
  }
}

class _InputsView extends StatefulWidget {
  const _InputsView();

  @override
  State<_InputsView> createState() => _InputsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _InputsViewState extends State<_InputsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  String studentName = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        TextFormField(
          // autofocus: true,
          initialValue: studentName,
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            setState(() {
              studentName = value;
            });
          },
          // Activador de validador
          // autovalidateMode: AutovalidateMode.always,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value == "") {
              return "Este campo es obligatorio.";
            }
            if (value.length < 3) {
              return "Mínimo 3 letras";
            }
          },
          decoration: const InputDecoration(
            hintText: "Ingrese nombre",
            labelText: "Nombre del estudiante",
            counterText: "20",
            suffixIcon: Icon(Icons.person),
            // icon: Icon(Icons.account_balance),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        Text(studentName),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Is developer"),
            Switch(
              value: isDeveloper,
              onChanged: (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
            ),
          ],
        ),
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}