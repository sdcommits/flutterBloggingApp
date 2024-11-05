import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/data/repositories/repository.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:bogging_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

class LoginViewModel{
  final Repository repository;
  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);


  login(context) async {
    isLoadingBloc.onUpdateData(true);
    var loginData = await repository.authRepo
        .userLogin(emailController.text, passwordController.text, context);
    if (loginData.accessToken != null) {
      Utils.saveToken(loginData.accessToken.toString());
      AutoRouter.of(context).push(const GeneralPageRoute());
    }
    isLoadingBloc.onUpdateData(false);

  }
}