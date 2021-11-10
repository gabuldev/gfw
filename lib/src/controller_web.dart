import 'package:flutter/material.dart';
/*

col-xs- => <768px (Container), Column(auto)
col-sm- => >= 768px (Container,750px), Column(~62px)
col-md => >= 992px (Container,970px), Column(~81px)
col-lg => >= 1200px (Container, 1170px), Column(~97px)
*/

enum TypeScreen { xs, sm, md, lg }

class ScreenData {
  final double width;
  final int operador;
  final double column;

  ScreenData(
      {required this.width, required this.operador, required this.column});
}

class Screen {
  static Map<TypeScreen, ScreenData> screens() {
    Map<TypeScreen, ScreenData> screens = {};
    screens.addAll(
        {TypeScreen.xs: ScreenData(width: 768.0, operador: 0, column: 768.0)});
    screens.addAll(
        {TypeScreen.sm: ScreenData(width: 768.0, operador: 1, column: 62.0)});
    screens.addAll(
        {TypeScreen.md: ScreenData(width: 992.0, operador: 1, column: 81.0)});
    screens.addAll(
        {TypeScreen.lg: ScreenData(width: 1200.0, operador: 1, column: 97.0)});
    return screens;
  }
}

class Organization {
  final TypeScreen type;
  final int division;
  final double height;

  Organization({
    required this.type,
    required this.division,
    required this.height,
  });
}

class Component {
  final String style;
  final Widget child;

  Component({required this.style, required this.child});
}

extension OrganizationExt on String {
  Organization get parse {
    final r = this.split('-')[1];
    final division = int.parse(r.split(',')[0]);
    var height = 1.0;
    try {
      final hOperator =r.split(':h')[1].split("")[0];
      if (hOperator == "/") {
        height = 1 / double.parse(r.split(':h')[1].split("")[1]);
      } else if (hOperator == "*") {
        {
          height = double.parse(r.split(':h')[1].split("")[1]);
        }
      }
    } catch (e) {}

    if (this.contains('xs')) {
      return Organization(
          type: TypeScreen.xs, division: division, height: height);
    } else if (this.contains('sm')) {
      return Organization(
          type: TypeScreen.sm, division: division, height: height);
    } else if (this.contains('md')) {
      return Organization(
          type: TypeScreen.md, division: division, height: height);
    } else if (this.contains('lg')) {
      return Organization(
          type: TypeScreen.lg, division: division, height: height);
    }

    return Organization(type: TypeScreen.xs, division: division, height: 1);
  }
}

class Controller {
  late Map<TypeScreen, List<Widget>> widgets;
  final List<Component> componets;
  Controller(this.componets) {
    widgets = {
      TypeScreen.lg: [],
      TypeScreen.md: [],
      TypeScreen.sm: [],
      TypeScreen.xs: []
    };
  }

  void createComponents(BuildContext context) {
    for (var item in componets) {
      final styles = ["xs", "sm", "md", "lg"];
      for (var i = 0; i < styles.length; i++) {
        final regExp = RegExp("${styles[i]}[-:h/]*[0-9]*");
        final s = regExp.allMatches(item.style).map((e) => e.group(0)).toList();
        styles[i] = s.join(",");
      }
      for (var i in styles) {
        final f = i.parse;
        switch (f.type) {
          case TypeScreen.xs:
            {
              widgets[f.type]!.add(SizedBox(
                width: Screen.screens()[f.type]!.column * f.division,
                height: MediaQuery.of(context).size.height * f.height,
                child: item.child,
              ));
              break;
            }

          case TypeScreen.sm:
            {
              widgets[f.type]!.add(SizedBox(
                width: Screen.screens()[f.type]!.column * f.division,
                height: MediaQuery.of(context).size.height * f.height,
                child: item.child,
              ));
              break;
            }
          case TypeScreen.md:
            {
              widgets[f.type]!.add(SizedBox(
                width: Screen.screens()[f.type]!.column * f.division,
                height: MediaQuery.of(context).size.height * f.height,
                child: item.child,
              ));
              break;
            }
          case TypeScreen.lg:
            {
              widgets[f.type]!.add(SizedBox(
                width: Screen.screens()[f.type]!.column * f.division,
                height: MediaQuery.of(context).size.height * f.height,
                child: item.child,
              ));
              break;
            }
        }
      }
    }
  }
}
