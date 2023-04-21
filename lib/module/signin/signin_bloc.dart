// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:buy_books_online/base/base_bloc.dart';
import 'package:buy_books_online/base/base_event.dart';
import 'package:buy_books_online/data/repo/user_repo.dart';
import 'package:buy_books_online/event/signin_event.dart';
import 'package:buy_books_online/event/signup_event.dart';

class SignInBloc extends BaseBloc {
  final UserRepo _userRepo;

  SignInBloc({
    required UserRepo userRepo
  }): _userRepo = userRepo;
  @override
  void dispatchEvent(BaseEvent event) {
    switch (event.runtimeType) {
      case SignInEvent:
        handleSignInEvent(event);
        break;
      case SignUpEvent:
        handleSignUpEvent(event);
    }
  }

  handleSignInEvent(event) {
    
  }
  handleSignUpEvent(event) {}
}
