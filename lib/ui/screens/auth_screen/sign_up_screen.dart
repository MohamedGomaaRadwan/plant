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

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _membershipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const BackGroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: AppPadding(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      _buildTitleText(),
                      32.heightBox,
                      _buildNameField(context),
                      16.heightBox,
                      _buildEmailField(context),
                      16.heightBox,
                      _buildMobile(context),
                      16.heightBox,
                      _buildPasswordField(context),
                      16.heightBox,
                      _buildConfirmPasswordField(context),
                      16.heightBox,
                      _buildSignUpButton(context),
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

  Widget _buildTitleText() {
    return Center(
      child: AppText(
        translation: AppStrings.signUp,
        style: AppTextStyles.h1.copyWith(
          color: AppPalette.textWhiteColor,
        ),
      ),
    );
  }

  Widget _buildMobile(context) {
    return AppTextInputField(
      hintText: AppStrings.mobile,
      controller: _mobileController,
      validator: (value) => AppValidator.validateMobile(value, '01', context),
    );
  }

  Widget _buildNameField(context) {
    return AppTextInputField(
      hintText: AppStrings.name,
      controller: _nameController,
      validator: (value) => AppValidator.validatorRequired(value, context),
    );
  }

  Widget _buildEmailField(context) {
    return AppTextInputField(
      hintText: AppStrings.email,
      controller: _emailController,
      validator: (value) => AppValidator.validatorEmail(value!, context),
    );
  }

  Widget _buildPasswordField(context) {
    return AppPasswordInputField(
      hintText: AppStrings.password,
      controller: _passwordController,
      validator: (value) => AppValidator.validatorPassword(value!, context),
    );
  }

  Widget _buildConfirmPasswordField(context) {
    return AppPasswordInputField(
      hintText: AppStrings.confirmPassword,
      controller: _passwordController,
      validator: (value) => AppValidator.validatorPassword(value!, context),
    );
  }

  Widget _buildHaveAnAccount(context) {
    return InkWell(
      onTap: () {
        pushName(context, AppRoute.login);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            translation: AppStrings.alreadyHaveAccount,
            style:
                AppTextStyles.body1.copyWith(color: AppPalette.textWhiteColor),
          ),
          4.widthBox,
          AppText(
            translation: AppStrings.login,
            style: AppTextStyles.body1.copyWith(color: AppPalette.primaryColor),
          ),
        ],
      ),
    );
  }

  AppButton _buildSignUpButton(context) {
    return AppButton(
      translation: AppStrings.signUp,
      onTap: () {
        if (formKey.currentState!.validate()) {
          pushNameReplacement(context, AppRoute.mainHome);
        }
      },
      color: AppPalette.primaryColor.withOpacity(.7),
    );
  }
}
