import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'dialog_about.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              child: Text(S.of(context).titleHome),
              onPressed: () => DialogAbout.show(context)),
          ElevatedButton(
              child: Text(S.of(context).buttonTextMatch),
              onPressed: () => DialogAbout.show(context)),
          ElevatedButton(
              child: Text(S.of(context).buttonTextGroup),
              onPressed: () => DialogAbout.show(context)),
          ElevatedButton(
              child: Text(S.of(context).buttonTextMy),
              onPressed: () => DialogAbout.show(context)),
        ],
      ),
      // FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: "add activity",
      //   elevation: 5,
      //   child: const Icon(Icons.add, color: Colors.blue), //z-阴影盖度
      // )
    );
  }
//
}

/*
import 'package:flutter/material.dart';
import 'package:widgets/utils/dialog_about.dart';
class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
            child: const Text("ElevatedButton"),
            onPressed: () => DialogAbout.show(context)),
        OutlinedButton(
            child: const Text("Outlined"),
            onPressed: () => DialogAbout.show(context)),
        TextButton(
          onPressed: () => DialogAbout.show(context),
          child: const Text("TextButton"),
        )
      ],
    );
  }
}



import 'package:flutter/material.dart';
class CustomFAB extends StatelessWidget {
  const CustomFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<Color,IconData> data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
          heroTag: e.toString()+"a",
          onPressed: () {},
          backgroundColor: e,
          foregroundColor: Colors.white,
          child: Icon(data[e]),
          tooltip: "android",
          elevation: 5, //z-阴影盖度
        )).toList());
  }
}
 */