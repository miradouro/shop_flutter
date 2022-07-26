import 'package:flutter/material.dart';
import '../providers/counter.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({Key? key}) : super(key: key);

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exemplo Contador'),
      ),
      body: Column(
        children: [
          Text(provider?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: (){
              setState(() {
                provider?.state.inc();
                print(provider?.state.value);
              });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                provider?.state.dec();
                print(provider?.state.value);
              });
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
