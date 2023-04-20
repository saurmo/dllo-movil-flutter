import 'dart:math';

import 'package:flutter/material.dart';

class HomeInfinityScroll extends StatefulWidget {
  @override
  State<HomeInfinityScroll> createState() => _HomeInfinityScrollState();
}

class _HomeInfinityScrollState extends State<HomeInfinityScroll> {
  // Ids de las imagenes
  final List<int> imagesIds = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  final ScrollController scrollController = ScrollController();

  bool loading = false;

  // Ejecución de eventos al crear la página
  @override
  void initState() {
    // No funciona el hot reload
    super.initState();

    // Se crear el escuchador cuando se hace scroll
    scrollController.addListener(() {
      var currentlyPixel = scrollController
          .position.pixels; // Se captura la posición actual del scroll
      var maxScroll = scrollController
          .position.maxScrollExtent; // Se captura la posición max del scroll
      if (currentlyPixel + 500 > maxScroll) {
        // Cuando este llegando al final se cargan más imagenes
        getInfo();
      }
    });
  }

  void addImages() {
    for (var i = 0; i < 10; i++) {
      imagesIds.add(Random().nextInt(900));
      setState(() {});
    }
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    imagesIds.clear();
    getInfo();
  }

  Future getInfo() async {
    if (loading) {
      // Se valida que no haya una petición en progeso
      return;
    }
    // Se activa la petición en progreso y se refresca el state para widgtes asociados al loading
    loading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3)); // Simula petición

    addImages(); // Se agregan imagenes

    loading = false;
    setState(() {}); // Se actualiza estado

    // Se crea una animación para que el usuario sepa visualmente que ya cargo la info
    var currentlyPixel = scrollController.position.pixels;
    var maxScroll = scrollController.position.maxScrollExtent;

    // Se hace la validación de mostrar la animación solo cuando esta en la posición
    // del final del scroll, si no le va a mostrar la animación estando por ejemplo
    // al inicio
    if (currentlyPixel + 100 <= maxScroll) {
      return;
    }
    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.bounceIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Se captura el tamaño del dispositivo para centrar el loading
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, // Remueve el espacio del app bar
        removeBottom: true, // Remueve el espacio del footer
        child: Stack(
          // Permite agregar un elemento encima (listView, encima el loading)
          children: [
            RefreshIndicator(
              // Permite controlar el evento del pull to refresh (scroll en la parte de arriba)
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (context, index) {
                  return FadeInImage(
                    height: 300,
                    width: double.infinity, // El ancho max
                    fit: BoxFit.cover,
                    placeholder: const AssetImage("assets/images/fade.gif"),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                  );
                },
              ),
            ),
            if (loading) // Solo muestra el loading cuando esta en true
              Positioned(
                // Permite controlar la posición de un evento
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingView(),
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 60,
      height: 60,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const CircularProgressIndicator(),
    );
  }
}
