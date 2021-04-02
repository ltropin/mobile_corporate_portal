import 'package:flutter/material.dart';
import 'package:mobile_corporate_portal/domain/model/token.dart';

class GlobalDI {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
  BuildContext get context => _navigatorKey.currentContext;

  Token token;
}
