// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i43;
import 'package:flutter/material.dart' as _i53;

import '../../../features/account/presentation/pages/account.dart' as _i52;
import '../../../features/account/presentation/pages/edit_account.dart' as _i28;
import '../../../features/authentication/presentation/pages/register/register_add_face_id.dart'
    as _i18;
import '../../../features/authentication/presentation/pages/register/register_add_face_id_completed.dart'
    as _i19;
import '../../../features/authentication/presentation/pages/register/register_completed.dart'
    as _i13;
import '../../../features/authentication/presentation/pages/register/register_enter_email.dart'
    as _i7;
import '../../../features/authentication/presentation/pages/register/register_enter_name_page.dart'
    as _i4;
import '../../../features/authentication/presentation/pages/register/register_enter_otp.dart'
    as _i6;
import '../../../features/authentication/presentation/pages/register/register_enter_password.dart'
    as _i8;
import '../../../features/authentication/presentation/pages/register/register_enter_phone_number.dart'
    as _i5;
import '../../../features/authentication/presentation/pages/register/register_enter_pin_setting.dart'
    as _i10;
import '../../../features/authentication/presentation/pages/register/register_enter_pin_setting_confirm.dart'
    as _i11;
import '../../../features/authentication/presentation/pages/register/register_enter_role.dart'
    as _i9;
import '../../../features/authentication/presentation/pages/register/register_profile_data.dart'
    as _i14;
import '../../../features/authentication/presentation/pages/register/register_profile_data_completed.dart'
    as _i17;
import '../../../features/authentication/presentation/pages/register/register_profile_data_form.dart'
    as _i15;
import '../../../features/authentication/presentation/pages/register/register_verify_email.dart'
    as _i12;
import '../../../features/authentication/presentation/pages/register/register_welcome_page.dart'
    as _i3;
import '../../../features/authentication/presentation/pages/sign_in/sing_in_page.dart'
    as _i2;
import '../../../features/authentication/presentation/pages/test_page/social_login_test.dart'
    as _i16;
import '../../../features/borrowing/presentation/pages/dash_board/dash_board.dart'
    as _i44;
import '../../../features/borrowing/presentation/pages/unlock_locker/list_locker.dart'
    as _i50;
import '../../../features/borrowing/presentation/pages/unlock_locker/toggle_locker.dart'
    as _i51;
import '../../../features/borrowing/presentation/pages/unlock_locker/unlock_locker.dart'
    as _i49;
import '../../../features/history/presentation/pages/history.dart' as _i47;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_category.dart'
    as _i40;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_equipment.dart'
    as _i35;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_location.dart'
    as _i38;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker.dart'
    as _i32;
import '../../../features/manage_locker_and_equipment/presentation/pages/adding_equipment.dart'
    as _i34;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_category.dart'
    as _i39;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_equipment.dart'
    as _i33;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_location.dart'
    as _i37;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_locker.dart'
    as _i30;
import '../../../features/manage_locker_and_equipment/presentation/pages/category_detail.dart'
    as _i41;
import '../../../features/manage_locker_and_equipment/presentation/pages/equipment_detail.dart'
    as _i42;
import '../../../features/manage_locker_and_equipment/presentation/pages/mac_address_help.dart'
    as _i36;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment.dart'
    as _i46;
import '../../../features/manage_locker_and_equipment/presentation/pages/qr_scanning.dart'
    as _i31;
import '../../../features/notification/presentation/pages/notification.dart'
    as _i48;
import '../../../features/role_management/presentation/pages/account_detail.dart'
    as _i27;
import '../../../features/role_management/presentation/pages/add_user.dart'
    as _i21;
import '../../../features/role_management/presentation/pages/all_account.dart'
    as _i26;
import '../../../features/role_management/presentation/pages/approve_user.dart'
    as _i22;
import '../../../features/role_management/presentation/pages/block_account.dart'
    as _i29;
import '../../../features/role_management/presentation/pages/department_detail.dart'
    as _i24;
import '../../../features/role_management/presentation/pages/department_management.dart'
    as _i23;
import '../../../features/role_management/presentation/pages/role_management.dart'
    as _i45;
import '../../utils/enum.dart' as _i54;
import '../page/add_account.dart' as _i25;
import '../page/home.dart' as _i20;
import '../page/splash.dart' as _i1;

class AppRouter extends _i43.RootStackRouter {
  AppRouter([_i53.GlobalKey<_i53.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i43.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterWelcomeRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterWelcomePage());
    },
    RegisterEnterNameRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterEnterNamePage());
    },
    RegisterEnterPhoneNumberRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterEnterPhoneNumberPage());
    },
    RegisterEnterOTPRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterEnterOTPPage());
    },
    RegisterEnterEmailRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegisterEnterEmailPage());
    },
    RegisterEnterPasswordRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegisterEnterPasswordPage());
    },
    RegisterEnterRoleRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterEnterRolePage());
    },
    RegisterEnterPinSettingRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.RegisterEnterPinSettingPage());
    },
    RegisterEnterPinSettingConfirmRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.RegisterEnterPinSettingConfirmPage());
    },
    RegisterVerifyEmailRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegisterVerifyEmailPage());
    },
    RegisterCompletedRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.RegisterCompletedPage());
    },
    RegisterProfileDataRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RegisterProfileDataPage());
    },
    RegisterProfileDataFormRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.RegisterProfileDataFormPage());
    },
    SocialLoginTestRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SocialLoginTestPage());
    },
    RegisterProfileDataCompletedRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i17.RegisterProfileDataCompletedPage());
    },
    RegisterAddFaceIdRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.RegisterAddFaceIdPage());
    },
    RegisterAddFaceIdCompletedRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i19.RegisterAddFaceIdCompletedPage());
    },
    HomeRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.HomePage());
    },
    AddUserRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.AddUserPage());
    },
    ApproveUserRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ApproveUserPage());
    },
    DepartmentManagementRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.DepartmentManagementPage());
    },
    DepartmentDetailRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.DepartmentDetailPage());
    },
    AddAccountRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.AddAccountPage());
    },
    AllAccountRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.AllAccountPage());
    },
    AccountDetailRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.AccountDetailPage());
    },
    EditAccountRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EditAccountPage());
    },
    BlockAccountRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.BlockAccountPage());
    },
    AllLockerRoute.name: (routeData) {
      final args = routeData.argsAs<AllLockerRouteArgs>(
          orElse: () => const AllLockerRouteArgs());
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i30.AllLockerPage(key: args.key, isHasLocker: args.isHasLocker));
    },
    QrScanningRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.QrScanningPage());
    },
    AddLockerRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.AddLockerPage());
    },
    AllEquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<AllEquipmentRouteArgs>(
          orElse: () => const AllEquipmentRouteArgs());
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i33.AllEquipmentPage(
              key: args.key, isHasEquipment: args.isHasEquipment));
    },
    AddingEquipment.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.AddingEquipment());
    },
    AddEquipmentRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.AddEquipmentPage());
    },
    MacAddressHelpRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.MacAddressHelpPage());
    },
    AllLocationRoute.name: (routeData) {
      final args = routeData.argsAs<AllLocationRouteArgs>();
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i37.AllLocationPage(
              key: args.key,
              viewBy: args.viewBy,
              title: args.title,
              isHasLocation: args.isHasLocation));
    },
    AddLocationRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i38.AddLocationPage());
    },
    AllCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AllCategoryRouteArgs>(
          orElse: () => const AllCategoryRouteArgs());
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i39.AllCategoryPage(
              key: args.key, isHaCategory: args.isHaCategory));
    },
    AddCategoryRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i40.AddCategoryPage());
    },
    CategoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailRouteArgs>();
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i41.CategoryDetailPage(key: args.key, title: args.title));
    },
    EquipmentDetailRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.EquipmentDetailPage());
    },
    DashBoardRouter.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.EmptyRouterPage());
    },
    NotificationRouter.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.EmptyRouterPage());
    },
    UnlockLockerRouter.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.EmptyRouterPage());
    },
    DashBoardRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i44.DashBoardPage());
    },
    RoleManagementRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i45.RoleManagementPage());
    },
    ManageLockerAndEquipmentRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i46.ManageLockerAndEquipmentPage());
    },
    HistoryRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i47.HistoryPage());
    },
    NotificationRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i48.NotificationPage());
    },
    UnlockLockerRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.UnlockLockerPage());
    },
    ListLockerRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i50.ListLockerPage());
    },
    ToggleLockerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ToggleLockerRouteArgs>(
          orElse: () =>
              ToggleLockerRouteArgs(lockerId: pathParams.getInt('lockerId')));
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i51.ToggleLockerPage(key: args.key, lockerId: args.lockerId));
    },
    AccountRoute.name: (routeData) {
      return _i43.MaterialPageX<dynamic>(
          routeData: routeData, child: _i52.AccountPage());
    }
  };

  @override
  List<_i43.RouteConfig> get routes => [
        _i43.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i43.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i43.RouteConfig(RegisterWelcomeRoute.name,
            path: '/register-welcome-page'),
        _i43.RouteConfig(RegisterEnterNameRoute.name,
            path: '/register-enter-name-page'),
        _i43.RouteConfig(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page'),
        _i43.RouteConfig(RegisterEnterOTPRoute.name,
            path: '/register-enter-ot-pPage'),
        _i43.RouteConfig(RegisterEnterEmailRoute.name,
            path: '/register-enter-email-page'),
        _i43.RouteConfig(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page'),
        _i43.RouteConfig(RegisterEnterRoleRoute.name,
            path: '/register-enter-role-page'),
        _i43.RouteConfig(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page'),
        _i43.RouteConfig(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page'),
        _i43.RouteConfig(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page'),
        _i43.RouteConfig(RegisterCompletedRoute.name,
            path: '/register-completed-page'),
        _i43.RouteConfig(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page'),
        _i43.RouteConfig(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page'),
        _i43.RouteConfig(SocialLoginTestRoute.name,
            path: '/social-login-test-page'),
        _i43.RouteConfig(RegisterProfileDataCompletedRoute.name,
            path: '/register-profile-data-completed-page'),
        _i43.RouteConfig(RegisterAddFaceIdRoute.name,
            path: '/register-add-face-id-page'),
        _i43.RouteConfig(RegisterAddFaceIdCompletedRoute.name,
            path: '/register-add-face-id-completed-page'),
        _i43.RouteConfig(HomeRoute.name, path: '/', children: [
          _i43.RouteConfig(DashBoardRouter.name,
              path: 'dash_board',
              parent: HomeRoute.name,
              children: [
                _i43.RouteConfig(DashBoardRoute.name,
                    path: '', parent: DashBoardRouter.name),
                _i43.RouteConfig(RoleManagementRoute.name,
                    path: 'role_management', parent: DashBoardRouter.name),
                _i43.RouteConfig(ManageLockerAndEquipmentRoute.name,
                    path: 'manage_locker_and_equipment_page',
                    parent: DashBoardRouter.name)
              ]),
          _i43.RouteConfig(HistoryRouter.name,
              path: 'history',
              parent: HomeRoute.name,
              children: [
                _i43.RouteConfig(HistoryRoute.name,
                    path: '', parent: HistoryRouter.name)
              ]),
          _i43.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i43.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name)
              ]),
          _i43.RouteConfig(UnlockLockerRouter.name,
              path: 'unlock_locker',
              parent: HomeRoute.name,
              children: [
                _i43.RouteConfig(UnlockLockerRoute.name,
                    path: '', parent: UnlockLockerRouter.name),
                _i43.RouteConfig(ListLockerRoute.name,
                    path: 'list_locker', parent: UnlockLockerRouter.name),
                _i43.RouteConfig(ToggleLockerRoute.name,
                    path: ':lockerId', parent: UnlockLockerRouter.name)
              ]),
          _i43.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: HomeRoute.name,
              children: [
                _i43.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ]),
        _i43.RouteConfig(AddUserRoute.name, path: '/add-user-page'),
        _i43.RouteConfig(ApproveUserRoute.name, path: '/approve-user-page'),
        _i43.RouteConfig(DepartmentManagementRoute.name,
            path: '/department-management-page'),
        _i43.RouteConfig(DepartmentDetailRoute.name,
            path: '/department-detail-page'),
        _i43.RouteConfig(AddAccountRoute.name, path: '/add-account-page'),
        _i43.RouteConfig(AllAccountRoute.name, path: '/all-account-page'),
        _i43.RouteConfig(AccountDetailRoute.name, path: '/account-detail-page'),
        _i43.RouteConfig(EditAccountRoute.name, path: '/edit-account-page'),
        _i43.RouteConfig(BlockAccountRoute.name, path: '/block-account-page'),
        _i43.RouteConfig(AllLockerRoute.name, path: '/all-locker-page'),
        _i43.RouteConfig(QrScanningRoute.name, path: '/qr-scanning-page'),
        _i43.RouteConfig(AddLockerRoute.name, path: '/add-locker-page'),
        _i43.RouteConfig(AllEquipmentRoute.name, path: '/all-equipment-page'),
        _i43.RouteConfig(AddingEquipment.name, path: '/adding-equipment'),
        _i43.RouteConfig(AddEquipmentRoute.name, path: '/add-equipment-page'),
        _i43.RouteConfig(MacAddressHelpRoute.name,
            path: '/mac-address-help-page'),
        _i43.RouteConfig(AllLocationRoute.name, path: '/all-location-page'),
        _i43.RouteConfig(AddLocationRoute.name, path: '/add-location-page'),
        _i43.RouteConfig(AllCategoryRoute.name, path: '/all-category-page'),
        _i43.RouteConfig(AddCategoryRoute.name, path: '/add-category-page'),
        _i43.RouteConfig(CategoryDetailRoute.name,
            path: '/category-detail-page'),
        _i43.RouteConfig(EquipmentDetailRoute.name,
            path: '/equipment-detail-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i43.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i43.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.RegisterWelcomePage]
class RegisterWelcomeRoute extends _i43.PageRouteInfo<void> {
  const RegisterWelcomeRoute() : super(name, path: '/register-welcome-page');

  static const String name = 'RegisterWelcomeRoute';
}

/// generated route for [_i4.RegisterEnterNamePage]
class RegisterEnterNameRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterNameRoute()
      : super(name, path: '/register-enter-name-page');

  static const String name = 'RegisterEnterNameRoute';
}

/// generated route for [_i5.RegisterEnterPhoneNumberPage]
class RegisterEnterPhoneNumberRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterPhoneNumberRoute()
      : super(name, path: '/register-enter-phone-number-page');

  static const String name = 'RegisterEnterPhoneNumberRoute';
}

/// generated route for [_i6.RegisterEnterOTPPage]
class RegisterEnterOTPRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterOTPRoute() : super(name, path: '/register-enter-ot-pPage');

  static const String name = 'RegisterEnterOTPRoute';
}

/// generated route for [_i7.RegisterEnterEmailPage]
class RegisterEnterEmailRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterEmailRoute()
      : super(name, path: '/register-enter-email-page');

  static const String name = 'RegisterEnterEmailRoute';
}

/// generated route for [_i8.RegisterEnterPasswordPage]
class RegisterEnterPasswordRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterPasswordRoute()
      : super(name, path: '/register-enter-password-page');

  static const String name = 'RegisterEnterPasswordRoute';
}

/// generated route for [_i9.RegisterEnterRolePage]
class RegisterEnterRoleRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterRoleRoute()
      : super(name, path: '/register-enter-role-page');

  static const String name = 'RegisterEnterRoleRoute';
}

/// generated route for [_i10.RegisterEnterPinSettingPage]
class RegisterEnterPinSettingRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterPinSettingRoute()
      : super(name, path: '/register-enter-pin-setting-page');

  static const String name = 'RegisterEnterPinSettingRoute';
}

/// generated route for [_i11.RegisterEnterPinSettingConfirmPage]
class RegisterEnterPinSettingConfirmRoute extends _i43.PageRouteInfo<void> {
  const RegisterEnterPinSettingConfirmRoute()
      : super(name, path: '/register-enter-pin-setting-confirm-page');

  static const String name = 'RegisterEnterPinSettingConfirmRoute';
}

/// generated route for [_i12.RegisterVerifyEmailPage]
class RegisterVerifyEmailRoute extends _i43.PageRouteInfo<void> {
  const RegisterVerifyEmailRoute()
      : super(name, path: '/register-verify-email-page');

  static const String name = 'RegisterVerifyEmailRoute';
}

/// generated route for [_i13.RegisterCompletedPage]
class RegisterCompletedRoute extends _i43.PageRouteInfo<void> {
  const RegisterCompletedRoute()
      : super(name, path: '/register-completed-page');

  static const String name = 'RegisterCompletedRoute';
}

/// generated route for [_i14.RegisterProfileDataPage]
class RegisterProfileDataRoute extends _i43.PageRouteInfo<void> {
  const RegisterProfileDataRoute()
      : super(name, path: '/register-profile-data-page');

  static const String name = 'RegisterProfileDataRoute';
}

/// generated route for [_i15.RegisterProfileDataFormPage]
class RegisterProfileDataFormRoute extends _i43.PageRouteInfo<void> {
  const RegisterProfileDataFormRoute()
      : super(name, path: '/register-profile-data-form-page');

  static const String name = 'RegisterProfileDataFormRoute';
}

/// generated route for [_i16.SocialLoginTestPage]
class SocialLoginTestRoute extends _i43.PageRouteInfo<void> {
  const SocialLoginTestRoute() : super(name, path: '/social-login-test-page');

  static const String name = 'SocialLoginTestRoute';
}

/// generated route for [_i17.RegisterProfileDataCompletedPage]
class RegisterProfileDataCompletedRoute extends _i43.PageRouteInfo<void> {
  const RegisterProfileDataCompletedRoute()
      : super(name, path: '/register-profile-data-completed-page');

  static const String name = 'RegisterProfileDataCompletedRoute';
}

/// generated route for [_i18.RegisterAddFaceIdPage]
class RegisterAddFaceIdRoute extends _i43.PageRouteInfo<void> {
  const RegisterAddFaceIdRoute()
      : super(name, path: '/register-add-face-id-page');

  static const String name = 'RegisterAddFaceIdRoute';
}

/// generated route for [_i19.RegisterAddFaceIdCompletedPage]
class RegisterAddFaceIdCompletedRoute extends _i43.PageRouteInfo<void> {
  const RegisterAddFaceIdCompletedRoute()
      : super(name, path: '/register-add-face-id-completed-page');

  static const String name = 'RegisterAddFaceIdCompletedRoute';
}

/// generated route for [_i20.HomePage]
class HomeRoute extends _i43.PageRouteInfo<void> {
  const HomeRoute({List<_i43.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i21.AddUserPage]
class AddUserRoute extends _i43.PageRouteInfo<void> {
  const AddUserRoute() : super(name, path: '/add-user-page');

  static const String name = 'AddUserRoute';
}

/// generated route for [_i22.ApproveUserPage]
class ApproveUserRoute extends _i43.PageRouteInfo<void> {
  const ApproveUserRoute() : super(name, path: '/approve-user-page');

  static const String name = 'ApproveUserRoute';
}

/// generated route for [_i23.DepartmentManagementPage]
class DepartmentManagementRoute extends _i43.PageRouteInfo<void> {
  const DepartmentManagementRoute()
      : super(name, path: '/department-management-page');

  static const String name = 'DepartmentManagementRoute';
}

/// generated route for [_i24.DepartmentDetailPage]
class DepartmentDetailRoute extends _i43.PageRouteInfo<void> {
  const DepartmentDetailRoute() : super(name, path: '/department-detail-page');

  static const String name = 'DepartmentDetailRoute';
}

/// generated route for [_i25.AddAccountPage]
class AddAccountRoute extends _i43.PageRouteInfo<void> {
  const AddAccountRoute() : super(name, path: '/add-account-page');

  static const String name = 'AddAccountRoute';
}

/// generated route for [_i26.AllAccountPage]
class AllAccountRoute extends _i43.PageRouteInfo<void> {
  const AllAccountRoute() : super(name, path: '/all-account-page');

  static const String name = 'AllAccountRoute';
}

/// generated route for [_i27.AccountDetailPage]
class AccountDetailRoute extends _i43.PageRouteInfo<void> {
  const AccountDetailRoute() : super(name, path: '/account-detail-page');

  static const String name = 'AccountDetailRoute';
}

/// generated route for [_i28.EditAccountPage]
class EditAccountRoute extends _i43.PageRouteInfo<void> {
  const EditAccountRoute() : super(name, path: '/edit-account-page');

  static const String name = 'EditAccountRoute';
}

/// generated route for [_i29.BlockAccountPage]
class BlockAccountRoute extends _i43.PageRouteInfo<void> {
  const BlockAccountRoute() : super(name, path: '/block-account-page');

  static const String name = 'BlockAccountRoute';
}

/// generated route for [_i30.AllLockerPage]
class AllLockerRoute extends _i43.PageRouteInfo<AllLockerRouteArgs> {
  AllLockerRoute({_i53.Key? key, bool isHasLocker = true})
      : super(name,
            path: '/all-locker-page',
            args: AllLockerRouteArgs(key: key, isHasLocker: isHasLocker));

  static const String name = 'AllLockerRoute';
}

class AllLockerRouteArgs {
  const AllLockerRouteArgs({this.key, this.isHasLocker = true});

  final _i53.Key? key;

  final bool isHasLocker;

  @override
  String toString() {
    return 'AllLockerRouteArgs{key: $key, isHasLocker: $isHasLocker}';
  }
}

/// generated route for [_i31.QrScanningPage]
class QrScanningRoute extends _i43.PageRouteInfo<void> {
  const QrScanningRoute() : super(name, path: '/qr-scanning-page');

  static const String name = 'QrScanningRoute';
}

/// generated route for [_i32.AddLockerPage]
class AddLockerRoute extends _i43.PageRouteInfo<void> {
  const AddLockerRoute() : super(name, path: '/add-locker-page');

  static const String name = 'AddLockerRoute';
}

/// generated route for [_i33.AllEquipmentPage]
class AllEquipmentRoute extends _i43.PageRouteInfo<AllEquipmentRouteArgs> {
  AllEquipmentRoute({_i53.Key? key, bool isHasEquipment = false})
      : super(name,
            path: '/all-equipment-page',
            args: AllEquipmentRouteArgs(
                key: key, isHasEquipment: isHasEquipment));

  static const String name = 'AllEquipmentRoute';
}

class AllEquipmentRouteArgs {
  const AllEquipmentRouteArgs({this.key, this.isHasEquipment = false});

  final _i53.Key? key;

  final bool isHasEquipment;

  @override
  String toString() {
    return 'AllEquipmentRouteArgs{key: $key, isHasEquipment: $isHasEquipment}';
  }
}

/// generated route for [_i34.AddingEquipment]
class AddingEquipment extends _i43.PageRouteInfo<void> {
  const AddingEquipment() : super(name, path: '/adding-equipment');

  static const String name = 'AddingEquipment';
}

/// generated route for [_i35.AddEquipmentPage]
class AddEquipmentRoute extends _i43.PageRouteInfo<void> {
  const AddEquipmentRoute() : super(name, path: '/add-equipment-page');

  static const String name = 'AddEquipmentRoute';
}

/// generated route for [_i36.MacAddressHelpPage]
class MacAddressHelpRoute extends _i43.PageRouteInfo<void> {
  const MacAddressHelpRoute() : super(name, path: '/mac-address-help-page');

  static const String name = 'MacAddressHelpRoute';
}

/// generated route for [_i37.AllLocationPage]
class AllLocationRoute extends _i43.PageRouteInfo<AllLocationRouteArgs> {
  AllLocationRoute(
      {_i53.Key? key,
      required _i54.ManagementLocationView viewBy,
      required String title,
      bool isHasLocation = true})
      : super(name,
            path: '/all-location-page',
            args: AllLocationRouteArgs(
                key: key,
                viewBy: viewBy,
                title: title,
                isHasLocation: isHasLocation));

  static const String name = 'AllLocationRoute';
}

class AllLocationRouteArgs {
  const AllLocationRouteArgs(
      {this.key,
      required this.viewBy,
      required this.title,
      this.isHasLocation = true});

  final _i53.Key? key;

  final _i54.ManagementLocationView viewBy;

  final String title;

  final bool isHasLocation;

  @override
  String toString() {
    return 'AllLocationRouteArgs{key: $key, viewBy: $viewBy, title: $title, isHasLocation: $isHasLocation}';
  }
}

/// generated route for [_i38.AddLocationPage]
class AddLocationRoute extends _i43.PageRouteInfo<void> {
  const AddLocationRoute() : super(name, path: '/add-location-page');

  static const String name = 'AddLocationRoute';
}

/// generated route for [_i39.AllCategoryPage]
class AllCategoryRoute extends _i43.PageRouteInfo<AllCategoryRouteArgs> {
  AllCategoryRoute({_i53.Key? key, bool isHaCategory = true})
      : super(name,
            path: '/all-category-page',
            args: AllCategoryRouteArgs(key: key, isHaCategory: isHaCategory));

  static const String name = 'AllCategoryRoute';
}

class AllCategoryRouteArgs {
  const AllCategoryRouteArgs({this.key, this.isHaCategory = true});

  final _i53.Key? key;

  final bool isHaCategory;

  @override
  String toString() {
    return 'AllCategoryRouteArgs{key: $key, isHaCategory: $isHaCategory}';
  }
}

/// generated route for [_i40.AddCategoryPage]
class AddCategoryRoute extends _i43.PageRouteInfo<void> {
  const AddCategoryRoute() : super(name, path: '/add-category-page');

  static const String name = 'AddCategoryRoute';
}

/// generated route for [_i41.CategoryDetailPage]
class CategoryDetailRoute extends _i43.PageRouteInfo<CategoryDetailRouteArgs> {
  CategoryDetailRoute({_i53.Key? key, required String title})
      : super(name,
            path: '/category-detail-page',
            args: CategoryDetailRouteArgs(key: key, title: title));

  static const String name = 'CategoryDetailRoute';
}

class CategoryDetailRouteArgs {
  const CategoryDetailRouteArgs({this.key, required this.title});

  final _i53.Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for [_i42.EquipmentDetailPage]
class EquipmentDetailRoute extends _i43.PageRouteInfo<void> {
  const EquipmentDetailRoute() : super(name, path: '/equipment-detail-page');

  static const String name = 'EquipmentDetailRoute';
}

/// generated route for [_i43.EmptyRouterPage]
class DashBoardRouter extends _i43.PageRouteInfo<void> {
  const DashBoardRouter({List<_i43.PageRouteInfo>? children})
      : super(name, path: 'dash_board', initialChildren: children);

  static const String name = 'DashBoardRouter';
}

/// generated route for [_i43.EmptyRouterPage]
class HistoryRouter extends _i43.PageRouteInfo<void> {
  const HistoryRouter({List<_i43.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i43.EmptyRouterPage]
class NotificationRouter extends _i43.PageRouteInfo<void> {
  const NotificationRouter({List<_i43.PageRouteInfo>? children})
      : super(name, path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for [_i43.EmptyRouterPage]
class UnlockLockerRouter extends _i43.PageRouteInfo<void> {
  const UnlockLockerRouter({List<_i43.PageRouteInfo>? children})
      : super(name, path: 'unlock_locker', initialChildren: children);

  static const String name = 'UnlockLockerRouter';
}

/// generated route for [_i43.EmptyRouterPage]
class AccountRouter extends _i43.PageRouteInfo<void> {
  const AccountRouter({List<_i43.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for [_i44.DashBoardPage]
class DashBoardRoute extends _i43.PageRouteInfo<void> {
  const DashBoardRoute() : super(name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for [_i45.RoleManagementPage]
class RoleManagementRoute extends _i43.PageRouteInfo<void> {
  const RoleManagementRoute() : super(name, path: 'role_management');

  static const String name = 'RoleManagementRoute';
}

/// generated route for [_i46.ManageLockerAndEquipmentPage]
class ManageLockerAndEquipmentRoute extends _i43.PageRouteInfo<void> {
  const ManageLockerAndEquipmentRoute()
      : super(name, path: 'manage_locker_and_equipment_page');

  static const String name = 'ManageLockerAndEquipmentRoute';
}

/// generated route for [_i47.HistoryPage]
class HistoryRoute extends _i43.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: '');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i48.NotificationPage]
class NotificationRoute extends _i43.PageRouteInfo<void> {
  const NotificationRoute() : super(name, path: '');

  static const String name = 'NotificationRoute';
}

/// generated route for [_i49.UnlockLockerPage]
class UnlockLockerRoute extends _i43.PageRouteInfo<void> {
  const UnlockLockerRoute() : super(name, path: '');

  static const String name = 'UnlockLockerRoute';
}

/// generated route for [_i50.ListLockerPage]
class ListLockerRoute extends _i43.PageRouteInfo<void> {
  const ListLockerRoute() : super(name, path: 'list_locker');

  static const String name = 'ListLockerRoute';
}

/// generated route for [_i51.ToggleLockerPage]
class ToggleLockerRoute extends _i43.PageRouteInfo<ToggleLockerRouteArgs> {
  ToggleLockerRoute({_i53.Key? key, required int lockerId})
      : super(name,
            path: ':lockerId',
            args: ToggleLockerRouteArgs(key: key, lockerId: lockerId),
            rawPathParams: {'lockerId': lockerId});

  static const String name = 'ToggleLockerRoute';
}

class ToggleLockerRouteArgs {
  const ToggleLockerRouteArgs({this.key, required this.lockerId});

  final _i53.Key? key;

  final int lockerId;

  @override
  String toString() {
    return 'ToggleLockerRouteArgs{key: $key, lockerId: $lockerId}';
  }
}

/// generated route for [_i52.AccountPage]
class AccountRoute extends _i43.PageRouteInfo<void> {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}
