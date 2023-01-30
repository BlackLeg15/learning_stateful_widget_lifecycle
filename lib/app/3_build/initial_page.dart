import 'package:flutter/material.dart';

import 'second_page.dart';
import 'widgets/label_widget.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  //1 Entre nesta página
  //2 Entre na página seguinte
  //3 Volte
  //4 setState
  //5 remova o const de LabelWidget e salve
  //6 Refaça os passos 1-4

  //Assim, é possível concluir que 
  //o const evitará a reconstrução (build) do widget
  //através do aproveitamento da instância constante (leia-se imutável)
  //definida na fase de compilação

  @override
  Widget build(BuildContext context) {
    debugPrint("--- Initial Page's build ---");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SecondPage()));
              },
              child: const Text("Go to the next page"),
            ),
            
            const LabelWidget(),
            TextButton(onPressed: (){
              setState(() {
                
              });
            }, child: const Text('setState'))
          ],
        ),
      ),
    );
  }
}
