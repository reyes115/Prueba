import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late TextEditingController _controller;
  bool _isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu), //PRIMERA FORMA DE ICONOS
          //  leading: IconButton( icon: Icon(Icons.menu), onPressed: () => {},), //SEGUNDA FORMA DE ICONOS
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Formulario'),
          elevation: 20.0,
          shadowColor: Colors.black,
          //backgroundColor: Colors.red,
          //actionsIconTheme: IconThemeData(color: Colors.red), //PARA EL COLOR DE LOS ICONOS
          shape: RoundedRectangleBorder(
            //Nos funciona para los bordes de la barrra de opciones
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {},
            ),
            //        IconButton(
            //         icon: Icon(Icons.note),
            //        onPressed: () => {print('BOT├ôN DE NOTAS')},
            //S     ),
          ],
        ),
        body: Center(
          child: Form(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                inputEmail(_controller),
                const SizedBox(height: 10),
                inputPassword(),
                const SizedBox(height: 10),
                inputCard(),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CheckboxListTile(
                      title: const Text('Validar'),
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      }),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => {}, child: const Text('Enviar')),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Regresar')),
              ])),
        ));
  }
}

Widget inputCard() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(16)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}

Widget inputPassword() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.lock),
          labelText: 'Contraseña'),
    ),
  );
}

Widget inputEmail(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.contact_mail),
          labelText: 'Correo',
          hintText: 'micorreo@correo.com'),
    ),
  );
}
