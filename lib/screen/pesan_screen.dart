import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:windramayu/colors.dart';

class PesanScreen extends StatefulWidget {
  PesanScreen({Key? key}) : super(key: key);

  @override
  State<PesanScreen> createState() => _PesanScreenState();
}

class _PesanScreenState extends State<PesanScreen> {
  final ctrlEmail = TextEditingController();
  final ctrlMassage = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlSubject = TextEditingController();

  final _fomKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary1,
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "ABOUT",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Form(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      textFromField("Nama cannot be empty", ctrlName),
                      const SizedBox(height: 15),
                      const Text("Email",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      textFromField("Email cannot be empty", ctrlEmail),
                      const SizedBox(height: 15),
                      const Text("Specific Erorr",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      textFromField("Specific cannot be empty", ctrlSubject),
                      const SizedBox(height: 15),
                      const Text("Description",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextFormField(
                          maxLines: 8,
                          controller: ctrlMassage,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20),
                                right: Radius.circular(20),
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Description cannot be empty",
                                  textColor: Colors.white,
                                  backgroundColor: Colors.red);
                            }
                            return null;
                          }),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            textStyle: const TextStyle(fontSize: 20)),
                        child: const Text(
                          'SEND',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textFromField(msgValidator, controller) {
  return TextFormField(
    controller: controller,
    decoration: const InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
      ),
      fillColor: Colors.white,
      filled: true,
    ),
    validator: (value) {
      if (value!.isEmpty) {
        Fluttertoast.showToast(
          msg: msgValidator,
          textColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        );
      }
      return null;
    },
  );
}
