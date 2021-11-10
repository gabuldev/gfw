import 'package:bootstrap_flutter/src/controller_web.dart';
import 'package:flutter/material.dart';

class ScaffoldWeb extends StatefulWidget {
  final List<Component> children;
  ScaffoldWeb({Key? key, required this.children}) : super(key: key);

  @override
  _ScaffoldWebState createState() => _ScaffoldWebState();
}

class _ScaffoldWebState extends State<ScaffoldWeb> {
  late Controller controller;

  @override
  void didChangeDependencies() {
    controller = Controller(widget.children);
    controller.createComponents(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 768) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: controller.widgets[TypeScreen.xs]!,
                );
              } else if (constraints.maxWidth >= 768 &&
                  constraints.maxWidth < 992) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: controller.widgets[TypeScreen.sm]!,
                );
              } else if (constraints.maxWidth >= 992 &&
                  constraints.maxWidth < 1200) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: controller.widgets[TypeScreen.md]!,
                );
              } else if (constraints.maxWidth >= 1200) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: controller.widgets[TypeScreen.lg]!,
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
