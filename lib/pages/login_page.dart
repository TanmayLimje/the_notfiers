import 'package:flutter/material.dart';
import 'package:the_notfiers/pages/loading_page.dart';
import 'package:the_notfiers/widgets/input_decoration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loading = false;
  String error = '';

  final formkey = GlobalKey<FormState>();
  TextEditingController userId = TextEditingController();
  TextEditingController userPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return loading
        ? const LoadingPage()
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 250),
                child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) => value == null || value.isEmpty
                              ? "ENTER USER ID"
                              : null,
                          decoration:
                              textInputDecoration.copyWith(hintText: "USER ID"),
                          controller: userId,
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          validator: (value) => value == null || value.isEmpty
                              ? "ENTER PASSWORD"
                              : null,
                          decoration: textInputDecoration.copyWith(
                              hintText: "PASSWORD"),
                          controller: userPass,
                        ),
                        const SizedBox(height: 15),
                        Center(
                            child: Text(
                          error,
                          style: const TextStyle(
                              color: Colors.red,
                              letterSpacing: 1.25,
                              fontSize: 15),
                        )),
                        const SizedBox(height: 15),
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.teal),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0),
                              onPressed: () => {},
                              child: const Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 1.25,
                                      color: Colors.white),
                                ),
                              ),
                            )),
                      ],
                    )),
              ),
            ),
          );
  }
}
