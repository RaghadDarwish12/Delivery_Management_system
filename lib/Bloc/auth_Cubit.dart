import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  AuthState({this.isLoading = false, this.isSuccess = false, this.errorMessage});
}

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  Future<bool> login(String email, String password) async {
    emit(AuthState(isLoading: true));
    try {
      final response = await http.post(
        Uri.parse('https://your-laravel-api.com/api/login'),
        body: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        emit(AuthState(isSuccess: true));
        return true;

      } else {
        final error = json.decode(response.body);
        emit(AuthState(errorMessage: error['message'] ?? 'Invalid credentials'));
        return false;
      }
    } catch (e) {
      emit(AuthState(errorMessage: 'An error occurred'));
      return false;
    }
  }
}
