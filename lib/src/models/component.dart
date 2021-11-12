import 'package:flutter/material.dart';

import 'package:bootstrap_flutter/bootstrap_flutter.dart';

class Component {
  final String style;
  final Widget child;
  final Map<TypeScreen, Organization> organizations;

  Component(
      {required this.style,
      required this.child,
      this.organizations = const {}});

  Component copyWith({
    Map<TypeScreen, Organization>? organizations,
  }) {
    return Component(
      style: this.style,
      child: this.child,
      organizations: organizations ?? this.organizations,
    );
  }
}
