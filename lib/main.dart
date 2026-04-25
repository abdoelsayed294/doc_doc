import 'package:doc_now/core/di/dependency_injection.dart';
import 'package:doc_now/core/routing/app_router.dart';
import 'package:doc_now/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter()));
}

