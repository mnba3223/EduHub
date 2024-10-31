import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/state_management/cubit/authCubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:edutec_hub/presentation/screens/auth/termsAndConditionAndPrivacyPolicyContainer.dart';

import 'package:edutec_hub/presentation/ui_widget/custom_widget/customCircularProgressIndicator.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/customRoundedButton.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/customTextFieldContainer.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/passwordHideShowButton.dart';
import 'package:edutec_hub/utils/constants.dart';
import 'package:edutec_hub/utils/labelKeys.dart';
import 'package:edutec_hub/utils/uiUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({super.key});

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();

  // static Route route(RouteSettings routeSettings) {
  //   return CupertinoPageRoute(
  //     builder: (_) => MultiBlocProvider(
  //       providers: [
  //         BlocProvider<SignInCubit>(
  //           create: (_) => SignInCubit(AuthRepository()),
  //         ),
  //       ],
  //       child: const StudentLoginScreen(),
  //     ),
  //   );
  // }
}

class _StudentLoginScreenState extends State<StudentLoginScreen>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  );

  late final Animation<double> _patterntAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
    ),
  );

  late final Animation<double> _formAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
    ),
  );

  final TextEditingController _grNumberTextEditingController =
      TextEditingController(
          text: showDefaultCredentials
              ? defaultStudentGRNumber
              : null); //default grNumber

  final TextEditingController _passwordTextEditingController =
      TextEditingController(
          text: showDefaultCredentials
              ? defaultStudentPassword
              : null); //default password

  bool _hidePassword = true;

  @override
  void initState() {
    // remove when official
    _grNumberTextEditingController.text = "test student";
    _passwordTextEditingController.text = "1234";
    super.initState();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _grNumberTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  void _signInStudent() {
    if (_grNumberTextEditingController.text.trim().isEmpty) {
      UiUtils.showCustomSnackBar(
        context: context,
        errorMessage:
            UiUtils.getTranslatedLabel(context, pleaseEnterGRNumberKey),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
      return;
    }

    if (_passwordTextEditingController.text.trim().isEmpty) {
      UiUtils.showCustomSnackBar(
        context: context,
        errorMessage:
            UiUtils.getTranslatedLabel(context, pleaseEnterPasswordKey),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
      return;
    }

    context.read<SignInCubit>().signInUser(
          userId: _grNumberTextEditingController.text.trim(),
          password: _passwordTextEditingController.text.trim(),

          // isStudentLogin: true,
        );
  }

  Widget _buildRequestResetPasswordContainer() {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: GestureDetector(
          onTap: () {
            // if (UiUtils.isDemoVersionEnable(context: context)) {
            //   UiUtils.showFeatureDisableInDemoVersion(context);
            //   return;
            // }
            // UiUtils.showBottomSheet(
            //   child: BlocProvider(
            //     create: (_) => RequestResetPasswordCubit(AuthRepository()),
            //     child: const RequestResetPasswordBottomsheet(),
            //   ),
            //   context: context,
            // ).then((value) {
            //   if (value != null && !value['error']) {
            //     UiUtils.showCustomSnackBar(
            //       context: context,
            //       errorMessage: UiUtils.getTranslatedLabel(
            //         context,
            //         passwordResetRequestKey,
            //       ),
            //       backgroundColor: Theme.of(context).colorScheme.onPrimary,
            //     );
            //   }
            // });
          },
          child: Text(
            "${UiUtils.getTranslatedLabel(context, resetPasswordKey)}?",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }

  Widget _buildUpperPattern() {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: FadeTransition(
        opacity: _patterntAnimation,
        child: SlideTransition(
          position: _patterntAnimation.drive(
            Tween<Offset>(begin: const Offset(0.0, -1.0), end: Offset.zero),
          ),
          child: Image.asset(UiUtils.getImagePath("upper_pattern.png")),
        ),
      ),
    );
  }

  Widget _buildLowerPattern() {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: FadeTransition(
        opacity: _patterntAnimation,
        child: SlideTransition(
          position: _patterntAnimation.drive(
            Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero),
          ),
          child: Image.asset(UiUtils.getImagePath("lower_pattern.png")),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Align(
      alignment: Alignment.topCenter,
      child: FadeTransition(
        opacity: _formAnimation,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom), //to make UI scrollable when keyboard is opened
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: NotificationListener(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * (0.075),
                  right: MediaQuery.of(context).size.width * (0.075),
                  top: MediaQuery.of(context).size.height * (0.25),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      UiUtils.getTranslatedLabel(context, letsSignInKey),
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: UiUtils.getColorScheme(context).secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "${UiUtils.getTranslatedLabel(context, welcomeBackKey)}, \n${UiUtils.getTranslatedLabel(context, youHaveBeenMissedKey)}",
                      style: TextStyle(
                        fontSize: 24.0,
                        height: 1.5,
                        color: UiUtils.getColorScheme(context).secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFieldContainer(
                      hideText: false,
                      hintTextKey: grNumberKey,
                      bottomPadding: 0,
                      textEditingController: _grNumberTextEditingController,
                      suffixWidget: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          UiUtils.getImagePath("user_icon.svg"),
                          colorFilter: ColorFilter.mode(
                            UiUtils.getColorScheme(context).secondary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFieldContainer(
                      textEditingController: _passwordTextEditingController,
                      suffixWidget: PasswordHideShowButton(
                        hidePassword: _hidePassword,
                        onTap: () {
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                      ),
                      hideText: _hidePassword,
                      hintTextKey: passwordKey,
                      bottomPadding: 0,
                    ),
                    _buildRequestResetPasswordContainer(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: BlocConsumer<SignInCubit, SignInState>(
                        listener: (context, state) {
                          if (state is SignInSuccess) {
                            if (state.role == UserRole.student) {
                              // Navigate to student home
                              context.go('/student-home');
                            } else {
                              // Handle unexpected role
                              UiUtils.showCustomSnackBar(
                                context: context,
                                errorMessage: "Unexpected user role",
                                backgroundColor:
                                    Theme.of(context).colorScheme.error,
                              );
                            }
                          } else if (state is SignInFailure) {
                            UiUtils.showCustomSnackBar(
                              context: context,
                              errorMessage: state.errorMessage,
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                            );
                          }

                          // if (state is SignInSuccess) {
                          //   // context.read<AuthCubit>().authenticateUser(
                          //   //       jwtToken: state.jwtToken,
                          //   //       isStudent: state.isStudentLogIn,
                          //   //       parent: state.parent,
                          //   //       student: state.student,
                          //   //     );
                          //   //if user logs out, the login will set count to 0
                          //   // SettingsRepository().setNotificationCount(0);
                          //   // if (
                          //   //   context
                          //   //         .read<AuthCubit>()
                          //   //         .getStudentDetails()
                          //   //         .isFeePaymentDue &&
                          //   //     context
                          //   //         .read<AppConfigurationCubit>()
                          //   //         .isCompulsoryFeePaymentMode()) {
                          //   //   Navigator.of(context).pushNamedAndRemoveUntil(
                          //   //     Routes.studentFeePaymentDueScreen,
                          //   //     (Route<dynamic> route) => false,
                          //   //   );
                          //   // } else {
                          //   //   Navigator.of(context).pushNamedAndRemoveUntil(
                          //   //     Routes.home,
                          //   //     (Route<dynamic> route) => false,
                          //   //   );
                          //   // }
                          // } else if (state is SignInFailure) {
                          //   UiUtils.showCustomSnackBar(
                          //     context: context,
                          //     errorMessage:
                          //         UiUtils.getErrorMessageFromErrorCode(
                          //       context,
                          //       state.errorMessage,
                          //     ),
                          //     backgroundColor:
                          //         Theme.of(context).colorScheme.error,
                          //   );
                          //   // Navigator.of(context).pushNamedAndRemoveUntil(
                          //   //   Routes.studentFeePaymentDueScreen,
                          //   //   (Route<dynamic> route) => false,
                          //   // );
                          // }
                        },
                        builder: (context, state) {
                          return CustomRoundedButton(
                            onTap: () {
                              // context.go('/student-home');
                              if (state is SignInInProgress) {
                                return;
                              }
                              FocusScope.of(context).unfocus();

                              _signInStudent();
                            },
                            widthPercentage: 0.8,
                            backgroundColor:
                                UiUtils.getColorScheme(context).primary,
                            buttonTitle:
                                UiUtils.getTranslatedLabel(context, signInKey),
                            titleColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            showBorder: false,
                            child: state is SignInInProgress
                                ? const CustomCircularProgressIndicator(
                                    strokeWidth: 2,
                                    widthAndHeight: 20,
                                  )
                                : null,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    BlocBuilder<SignInCubit, SignInState>(
                      builder: (context, state) {
                        return Center(
                          child: InkWell(
                            onTap: () {
                              if (state is SignInInProgress) {
                                return;
                              }
                              // Navigator.of(context)
                              //     .pushReplacementNamed(Routes.parentLogin);
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: UiUtils.getColorScheme(context)
                                          .primary,
                                    ),
                                    text: UiUtils.getTranslatedLabel(
                                      context,
                                      loginAsKey,
                                    ),
                                  ),
                                  const TextSpan(text: " "),
                                  TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      color: UiUtils.getColorScheme(context)
                                          .secondary,
                                    ),
                                    text:
                                        "${UiUtils.getTranslatedLabel(context, parentKey)}?",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TermsAndConditionAndPrivacyPolicyContainer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.025),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //to aboide the lower pattern from hiding login form when keyboard is open
      body: Stack(
        children: [
          _buildLoginForm(),
          _buildLowerPattern(),
          _buildUpperPattern(),
        ],
      ),
    );
  }
}
