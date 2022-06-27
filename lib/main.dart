import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'estilostextfield.dart';
import 'textfieldcontraseña.dart';
import 'estilosboton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController contrasena1 = new TextEditingController();

  //bool _autovalidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("AI7 Login page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          Column(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          image: new NetworkImage(
                              "data:image/jpeg;base64,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"))),
                ),
              ),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    personalizarTextfield(
                        texto: "Nombre",
                        miIcono: Icon(Icons.person_outline),
                        validator: validacionNoVacio,
                        validator2: validarLetras),
                    personalizarTextfield(
                        texto: "Apellido paterno",
                        miIcono: Icon(Icons.person_pin_outlined),
                        validator: validacionNoVacio,
                        validator2: validarLetras),
                    personalizarTextfield(
                      texto: "Apellido materno",
                      miIcono: Icon(Icons.person_pin_outlined),
                      validator: validacionNoVacio,
                      validator2: validarLetras,
                    ),
                    personalizarTextfield(
                      texto: "Telefono",
                      miIcono: Icon(Icons.phone_outlined),
                      validator: validacionNoVacio,
                      validator2: validarTelefono,
                    ),
                    personalizarTextfield(
                      texto: "Correo",
                      miIcono: Icon(Icons.mail_outline),
                      validator: validacionNoVacio,
                      validator2: emailValidador,
                    ),
                    textfieldcontrasena(
                        texto: "Contraseña",
                        miIcono: Icon(Icons.password),
                        validator: validacionNoVacio),
                    textfieldcontrasena(
                        texto: "Confirmar contraseña",
                        miIcono: Icon(Icons.password),
                        validator: validacionNoVacio),
                    MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //_showSnackBar(context, "Informacion valida");
                        }
                      },
                      child: Text("enviar"),
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //motodos de validacion
  String? validacionNoVacio(String? value) {
    return value!.isEmpty ? "el campo no puede estar vacio" : null;
  }

  String? emailValidador(String? value) {
    return value?.contains("@") == false ? "correo invalido" : null;
  }

  String? validarTelefono(String? value) {
    final RegExp numberregexp = RegExp('[0-9]');
    return numberregexp.hasMatch(value!) == false
        ? "solo acepta numeros"
        : null;
  }

  String? validarLetras(String? value) {
    final RegExp numberregexp = RegExp('[a-z]');
    return numberregexp.hasMatch(value!) == false ? "solo acepta letras" : null;
  }
}
