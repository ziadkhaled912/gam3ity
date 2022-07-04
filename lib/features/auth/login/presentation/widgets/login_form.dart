import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gam3ity/core/presentation/widgets/app_snack_bar.dart';
import 'package:gam3ity/core/presentation/widgets/button.dart';
import 'package:gam3ity/core/presentation/widgets/textfields/generic_text_field.dart';
import 'package:gam3ity/core/presentation/widgets/textfields/mobile_number_text_field.dart';
import 'package:gam3ity/di/injection_container.dart';
import 'package:gam3ity/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:gam3ity/features/auth/login/presentation/cubit/login_state.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late final LoginCubit _cubit;
  CountryCode? _countryCode;
  bool _isSecure = true;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<LoginCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            MobileNumberTextField(
              _mobileController,
              label: S.of(context).enterPhoneNumber,
              textInputAction: TextInputAction.next,
              nextFocusNode: _passwordFocus,
              hintText: 'ex.0123456789',
              countryCode: _countryCode,
              onCountryChange: (code) => _countryCode = code,
            ),
            const SizedBox(height: 25),
            GenericTextField(
              controller: _passwordController,
              focusNode: _passwordFocus,
              labelText: S.of(context).password,
              hint: S.of(context).enterPassword,
              contentPadding: const EdgeInsets.all(16),
              type: TextInputType.visiblePassword,
              isSecure: _isSecure,
              suffix: IconButton(
                icon: _isSecure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isSecure = !_isSecure;
                  });
                },
              ),
            ),
            const SizedBox(height: 60),
            BlocConsumer<LoginCubit, LoginState>(
              bloc: _cubit,
              listener: (context, state) {
                state.maybeWhen(
                  error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: AppSnackBar(
                        text: message,
                        snackBarState: SnackBarState.error,
                      ),
                    ),
                  ),
                  // loginSuccess: () => ,
                  noNetwork: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: AppSnackBar(
                        text: S.of(context).no_internet,
                        snackBarState: SnackBarState.noInternet,
                      ),
                    ),
                  ),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return CustomButton(
                  label: S.of(context).login,
                  width: MediaQuery.of(context).size.width * 0.55,
                  isLoading: (state is Loading),
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      _cubit.login(
                          _countryCode!.dialCode!, _mobileController.text);
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).dontHaveAccount),
                TextButton(
                  onPressed: () => context.pushNamed('register'),
                  child: Text(
                    S.of(context).register,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
