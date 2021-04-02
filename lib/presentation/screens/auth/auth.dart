import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_corporate_portal/domain/bloc/auth/auth.dart';
import 'package:mobile_corporate_portal/presentation/general/custom_loader.dart';
import 'package:mobile_corporate_portal/presentation/screens/profile/profile.dart';

class AuthScreen extends StatefulWidget {
  static String routeName = '/auth';
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _tempEmail = '';
  String _tempPassword = '';

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusScope.of(context);
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.worker != null) {
            Navigator.of(context).pushNamed(ProfileScreen.routeName);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                  ),
                  child: Stack(
                    children: [
                      if (state.isSubmiting)
                        const Center(
                          child: CustomLoader(),
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Center(
                              child: Text(
                                'Войти',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          // Login
                          Padding(
                            padding: EdgeInsets.only(
                                top: 96, left: 16, right: 16),
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                prefix: SizedBox(width: 14),
                                hintText: 'Email',
                                errorMaxLines: 3,
                                errorText: !state.isEmailValid
                                    ? state?.validatorUsernameMessage
                                            ?.description ??
                                        ''
                                    : null,
                              ),
                              onChanged: (value) => setState(() {
                                _tempEmail = value;
                              }),
                              onEditingComplete: focusNode.nextFocus,
                            ),
                          ),
                          // Password
                          Padding(
                            padding: EdgeInsets.only(
                                top: 12, left: 16, right: 16),
                            child: TextField(
                              obscureText: true,
                              controller: _passwordController,
                              decoration: InputDecoration(
                                prefix: SizedBox(width: 14),
                                hintText: 'Пароль',
                                errorMaxLines: 3,
                                errorText: !state.isPasswordValid
                                    ? state?.validatorPasswordMessage
                                            ?.description ??
                                        ''
                                    : null,
                              ),
                              onChanged: (value) =>
                                  setState(() => _tempPassword = value),
                              onEditingComplete: focusNode.unfocus,
                              cursorRadius: const Radius.circular(2),
                            ),
                          ),
                          // Enter Button
                          Container(
                            padding: EdgeInsets.only(
                                top: 18, left: 16, right: 16),
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              onPressed: _tempEmail.isNotEmpty &&
                                      _tempPassword.isNotEmpty &&
                                      !state.isSubmiting
                                  ? _handlerAuth
                                  : null,
                              elevation: 0,
                              disabledTextColor: Colors.white.withOpacity(0.3),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Войти',
                                    style: TextStyle(
                                      // color:  Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _handlerAuth() async {
    context.read<AuthBloc>().add(
          AuthLogin(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        );
  }
}
