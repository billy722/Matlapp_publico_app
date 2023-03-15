import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matlapp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(88, 29, 125, 1)),
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    //Quita barra de estado
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(87, 41, 122, 1),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            // color: Color.fromRGBO(245, 223, 187, 1),
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 223, 187, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.amber,
                    height: 130,
                    width: 130,
                    child: Image.asset(
                        'lib/assets/images/bienvenida/icono_entrada.png'),
                  ),
                ),
                Expanded(
                  child: Container(
                    // color: Colors.amber,
                    height: 470,
                    width: 470,
                    child: Image.asset(
                        'lib/assets/images/bienvenida/isologotipo_app.png'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          fit: StackFit.loose,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              height: 400,
                              width: 400,
                              child: Image.asset(
                                  'lib/assets/images/bienvenida/aprende_jugando_tarjeta.png'),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                  'lib/assets/images/bienvenida/boton_play_jugar.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
