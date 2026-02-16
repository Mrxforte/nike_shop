import 'package:flutter/material.dart';
import '../../../core/services/di.dart';
import '../../../core/services/auth_service.dart';

class LoginViewModel extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService _authService = locator<AuthService>();

  bool isLoading = false;
  String? errorMessage;

  Future<void> login() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();
    try {
      await _authService.signInWithEmail(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
    } catch (e) {
      errorMessage = 'Login failed: ${e.toString()}';
    }
    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
