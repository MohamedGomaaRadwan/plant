import 'package:flutter/material.dart';
import 'package:planet/ui/helper/app_validator.dart';
import 'package:planet/ui/helper/navigator.dart';
import 'package:planet/ui/resources/app_palette.dart';
import 'package:planet/ui/resources/app_routes.dart';
import 'package:planet/ui/resources/app_strings.dart';
import 'package:planet/ui/resources/app_text_styles.dart';
import 'package:planet/ui/widgets/app_button.dart';
import 'package:planet/ui/widgets/app_padding.dart';
import 'package:planet/ui/widgets/app_size_boxes.dart';
import 'package:planet/ui/widgets/app_text_display.dart';
import 'package:planet/ui/widgets/form_fields/app_input_text_field.dart';
import 'package:planet/ui/widgets/form_fields/app_password_input_field.dart';
import 'background_image_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
            SingleChildScrollView(
              child: Container(
                color: Colors.transparent,
                child: AppPadding(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        16.heightBox,
                        _buildTitleText(),
                        200.heightBox,
                        _buildEmailField(context),
                        16.heightBox,
                        _buildPasswordField(context),
                        16.heightBox,
                        _buildLoginButton(context),
                        12.heightBox,
                        _buildHaveAnAccount(context),
                      ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppButton _buildLoginButton(context) {
    return AppButton(
      translation: AppStrings.login,
      onTap: () {
        if (formKey.currentState!.validate()) {
          pushNameReplacement(context, AppRoute.mainHome);
        }
      },
      color: AppPalette.primaryColor.withOpacity(.7),
    );
  }

  Widget _buildTitleText() {
    return Center(
      child: AppText(
        translation: AppStrings.login,
        style: AppTextStyles.h1.copyWith(
          color: AppPalette.textWhiteColor,
        ),
      ),
    );
  }

  Widget _buildEmailField(context) {
    return AppTextInputField(
      hintText: AppStrings.email,
      controller: _emailController,
      validator: (value) => AppValidator.validatorEmail(value!, context),
      style: AppTextStyles.h3.copyWith(color: Colors.white),
    );
  }

  Widget _buildPasswordField(context) {
    return AppPasswordInputField(
      hintText: AppStrings.password,
      controller: _passwordController,
      validator: (value) => AppValidator.validatorPassword(value!, context),
      style: AppTextStyles.h3.copyWith(color: Colors.white),
    );
  }

  Widget _buildHaveAnAccount(context) {
    return InkWell(
      onTap: () {
        pushName(context, AppRoute.signUp);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            translation: AppStrings.dontHaveAccount,
            style:
                AppTextStyles.body1.copyWith(color: AppPalette.textWhiteColor),
          ),
          4.widthBox,
          AppText(
            translation: AppStrings.signUp,
            style: AppTextStyles.body1.copyWith(color: AppPalette.primaryColor),
          ),
        ],
      ),
    );
  }
}
