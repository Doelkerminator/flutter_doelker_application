import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  var alm = TextEditingController();
  String tempRes = "";

  bool fToC = true;

  void calcTemp(var a) {
    double convert;
    if (fToC) {
      convert = (a - 32) * 5 / 9;
    } else {
      convert = (a * 9 / 5) + 32;
    }
    setState(() {
      tempRes = convert.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text("Temperature converter"),
          backgroundColor: const Color(0xFF1F1F1F),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF363637)),
            child: Center(
                child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Row(children: [
                        SizedBox(
                          width: 250,
                          child: Center(
                            child: Text(tempRes,
                                style: const TextStyle(
                                    fontSize: 50, color: Color(0xFFFF1166))),
                          ),
                        ),
                        Text(
                          fToC ? "ºC" : "ºF",
                          style: const TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Dialog(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                            controller: alm,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder()),
                            onChanged: (text) => {
                                  if (text != "-")
                                    {
                                      if (text.isNotEmpty)
                                        calcTemp(num.parse(text))
                                      else
                                        calcTemp(0)
                                    }
                                }),
                      ),
                    ),
                    Center(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                fToC = !fToC;
                              });
                              if (alm.text != "-") {
                                if (alm.text.isNotEmpty) {
                                  calcTemp(num.parse(alm.text));
                                } else {
                                  calcTemp(0);
                                }
                              }
                            },
                            child: Text(fToC ? "ºC a ºF" : "ºF a ºC"))),
                  ],
                ),
              ],
            )),
          ),
        ),
      ],
    );
  }
}
