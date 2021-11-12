import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test ScaffoldBoostrap", () {
    testWidgets("With all screens sizes - 800x600", (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(800, 600);
      await tester.pumpWidget(MaterialApp(
        home: ScaffoldBootstrap(children: [
          Component(
              style: 'lg-4 md-4 md-4 xs-12',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.green,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              ))
        ]),
      ));
      expect(find.byType(Container), findsNWidgets(3));
    });
    testWidgets("With all screens sizes - 1024x768", (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(1024, 768);
      await tester.pumpWidget(MaterialApp(
        home: ScaffoldBootstrap(children: [
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.green,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              ))
        ]),
      ));
      expect(find.byType(Container), findsNWidgets(3));
    });
    testWidgets("With all screens sizes - 1200x900", (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(1200, 900);
      await tester.pumpWidget(MaterialApp(
        home: ScaffoldBootstrap(children: [
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.green,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              ))
        ]),
      ));
      expect(find.byType(Container), findsNWidgets(3));
    });
    testWidgets("With all screens sizes - 1600x1200", (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(1600, 1200);
      await tester.pumpWidget(MaterialApp(
        home: ScaffoldBootstrap(children: [
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.green,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              )),
          Component(
              style: 'lg-4 md-4 md-4 xs-4',
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.red,
              ))
        ]),
      ));
      expect(find.byType(Container), findsNWidgets(3));
    });
  });
}
