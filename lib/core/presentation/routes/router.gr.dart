// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i57;
import 'package:flutter/material.dart' as _i69;
import 'package:flutter_blue_plus/flutter_blue_plus.dart' as _i74;

import '../../../features/account/presentation/pages/account.dart' as _i68;
import '../../../features/account/presentation/pages/edit_account.dart' as _i27;
import '../../../features/authentication/domain/entities/user.dart' as _i70;
import '../../../features/authentication/presentation/pages/register/register_add_face_id.dart'
    as _i17;
import '../../../features/authentication/presentation/pages/register/register_add_face_id_completed.dart'
    as _i18;
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
    as _i16;
import '../../../features/authentication/presentation/pages/register/register_profile_data_form.dart'
    as _i15;
import '../../../features/authentication/presentation/pages/register/register_verify_email.dart'
    as _i12;
import '../../../features/authentication/presentation/pages/register/register_welcome_page.dart'
    as _i3;
import '../../../features/authentication/presentation/pages/sign_in/sing_in_page.dart'
    as _i2;
import '../../../features/borrowing/presentation/pages/dash_board/dash_board.dart'
    as _i58;
import '../../../features/borrowing/presentation/pages/unlock_locker/list_locker.dart'
    as _i66;
import '../../../features/borrowing/presentation/pages/unlock_locker/toggle_locker.dart'
    as _i67;
import '../../../features/fixing/presentation/pages/fixing.dart' as _i62;
import '../../../features/fixing/presentation/pages/fixing_detail.dart' as _i52;
import '../../../features/fixing/presentation/pages/fixing_locker_detail.dart'
    as _i51;
import '../../../features/history/presentation/pages/history.dart' as _i64;
import '../../../features/manage_locker_and_equipment/domain/entities/locker.dart'
    as _i72;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_category.dart'
    as _i39;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_equipment.dart'
    as _i34;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_location.dart'
    as _i37;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_or_edit_locker.dart'
    as _i31;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_permanent_permission.dart'
    as _i45;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_temporary_permission.dart'
    as _i46;
import '../../../features/manage_locker_and_equipment/presentation/pages/adding_equipment.dart'
    as _i33;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_category.dart'
    as _i38;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_equipment.dart'
    as _i32;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_location.dart'
    as _i36;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_locker.dart'
    as _i29;
import '../../../features/manage_locker_and_equipment/presentation/pages/category_detail.dart'
    as _i40;
import '../../../features/manage_locker_and_equipment/presentation/pages/change_permission_type.dart'
    as _i47;
import '../../../features/manage_locker_and_equipment/presentation/pages/equipment_detail.dart'
    as _i41;
import '../../../features/manage_locker_and_equipment/presentation/pages/locker_detail.dart'
    as _i43;
import '../../../features/manage_locker_and_equipment/presentation/pages/mac_address_help.dart'
    as _i35;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment.dart'
    as _i60;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_permission.dart'
    as _i44;
import '../../../features/manage_locker_and_equipment/presentation/pages/qr_scanning.dart'
    as _i30;
import '../../../features/manage_locker_and_equipment/presentation/pages/request_fixing_detail.dart'
    as _i42;
import '../../../features/notification/presentation/pages/borrow_return.dart'
    as _i56;
import '../../../features/notification/presentation/pages/notification.dart'
    as _i65;
import '../../../features/report_problem/presentation/pages/report_problem.dart'
    as _i63;
import '../../../features/report_problem/presentation/pages/report_problem_detail.dart'
    as _i54;
import '../../../features/report_problem/presentation/pages/report_problem_locker_detail.dart'
    as _i53;
import '../../../features/report_problem/presentation/pages/solve_problem.dart'
    as _i55;
import '../../../features/role_management/presentation/pages/account_detail.dart'
    as _i26;
import '../../../features/role_management/presentation/pages/add_user.dart'
    as _i20;
import '../../../features/role_management/presentation/pages/all_account.dart'
    as _i25;
import '../../../features/role_management/presentation/pages/approve_user.dart'
    as _i21;
import '../../../features/role_management/presentation/pages/block_account.dart'
    as _i28;
import '../../../features/role_management/presentation/pages/department_detail.dart'
    as _i23;
import '../../../features/role_management/presentation/pages/department_management.dart'
    as _i22;
import '../../../features/role_management/presentation/pages/role_management.dart'
    as _i59;
import '../../../features/streaming_and_record/domain/entities/camera.dart'
    as _i73;
import '../../../features/streaming_and_record/presentation/pages/all_camera.dart'
    as _i48;
import '../../../features/streaming_and_record/presentation/pages/live_camera.dart'
    as _i49;
import '../../../features/streaming_and_record/presentation/pages/record_video.dart'
    as _i50;
import '../../../features/streaming_and_record/presentation/pages/streaming_and_record.dart'
    as _i61;
import '../../utils/enum.dart' as _i71;
import '../page/add_account.dart' as _i24;
import '../page/home.dart' as _i19;
import '../page/splash.dart' as _i1;

class AppRouter extends _i57.RootStackRouter {
  AppRouter([_i69.GlobalKey<_i69.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i57.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterWelcomeRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterWelcomePage());
    },
    RegisterEnterNameRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterEnterNamePage());
    },
    RegisterEnterPhoneNumberRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterEnterPhoneNumberPage());
    },
    RegisterEnterOTPRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterEnterOTPPage());
    },
    RegisterEnterEmailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegisterEnterEmailPage());
    },
    RegisterEnterPasswordRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegisterEnterPasswordPage());
    },
    RegisterEnterRoleRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterEnterRolePage());
    },
    RegisterEnterPinSettingRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.RegisterEnterPinSettingPage());
    },
    RegisterEnterPinSettingConfirmRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.RegisterEnterPinSettingConfirmPage());
    },
    RegisterVerifyEmailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegisterVerifyEmailPage());
    },
    RegisterCompletedRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.RegisterCompletedPage());
    },
    RegisterProfileDataRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RegisterProfileDataPage());
    },
    RegisterProfileDataFormRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.RegisterProfileDataFormPage());
    },
    RegisterProfileDataCompletedRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i16.RegisterProfileDataCompletedPage());
    },
    RegisterAddFaceIdRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.RegisterAddFaceIdPage());
    },
    RegisterAddFaceIdCompletedRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i18.RegisterAddFaceIdCompletedPage());
    },
    HomeRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.HomePage());
    },
    AddUserRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.AddUserPage());
    },
    ApproveUserRoute.name: (routeData) {
      final args = routeData.argsAs<ApproveUserRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i21.ApproveUserPage(key: args.key, users: args.users));
    },
    DepartmentManagementRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.DepartmentManagementPage());
    },
    DepartmentDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.DepartmentDetailPage());
    },
    AddAccountRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.AddAccountPage());
    },
    AllAccountRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.AllAccountPage());
    },
    AccountDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.AccountDetailPage());
    },
    EditAccountRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.EditAccountPage());
    },
    BlockAccountRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.BlockAccountPage());
    },
    AllLockerRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.AllLockerPage());
    },
    QrScanningRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.QrScanningPage());
    },
    AddOrEditLockerRoute.name: (routeData) {
      final args = routeData.argsAs<AddOrEditLockerRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i31.AddOrEditLockerPage(args.lockerId, key: args.key));
    },
    AllEquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<AllEquipmentRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i32.AllEquipmentPage(key: args.key, lockerId: args.lockerId));
    },
    AddingEquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<AddingEquipmentRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i33.AddingEquipmentPage(args.lockerId, key: args.key));
    },
    AddEquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<AddEquipmentRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i34.AddEquipmentPage(
              key: args.key,
              scanResult: args.scanResult,
              lockerId: args.lockerId,
              isError: args.isError));
    },
    MacAddressHelpRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.MacAddressHelpPage());
    },
    AllLocationRoute.name: (routeData) {
      final args = routeData.argsAs<AllLocationRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i36.AllLocationPage(
              key: args.key,
              viewBy: args.viewBy,
              title: args.title,
              isHasLocation: args.isHasLocation));
    },
    AddLocationRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.AddLocationPage());
    },
    AllCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AllCategoryRouteArgs>(
          orElse: () => const AllCategoryRouteArgs());
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i38.AllCategoryPage(
              key: args.key, isHaCategory: args.isHaCategory));
    },
    AddCategoryRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.AddCategoryPage());
    },
    CategoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i40.CategoryDetailPage(key: args.key, title: args.title));
    },
    EquipmentDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.EquipmentDetailPage());
    },
    RequestFixingDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.RequestFixingDetailPage());
    },
    LockerDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.LockerDetailPage());
    },
    ManagePermissionRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i44.ManagePermissionPage());
    },
    AddPermanentPermissionRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i45.AddPermanentPermissionPage());
    },
    AddTemporaryPermissionRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i46.AddTemporaryPermissionPage());
    },
    ChangePermissionTypeRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePermissionTypeRouteArgs>(
          orElse: () => const ChangePermissionTypeRouteArgs());
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i47.ChangePermissionTypePage(
              key: args.key, isPermanentType: args.isPermanentType));
    },
    AllCameraRoute.name: (routeData) {
      final args = routeData.argsAs<AllCameraRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i48.AllCameraPage(key: args.key, locker: args.locker));
    },
    LiveCameraRoute.name: (routeData) {
      final args = routeData.argsAs<LiveCameraRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i49.LiveCameraPage(
              key: args.key,
              camera: args.camera,
              index: args.index,
              lockerId: args.lockerId));
    },
    RecordVideoRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i50.RecordVideoPage());
    },
    FixingLockerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FixingLockerDetailRouteArgs>(
          orElse: () => const FixingLockerDetailRouteArgs());
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i51.FixingLockerDetailPage(key: args.key, title: args.title));
    },
    FixingDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i52.FixingDetailPage());
    },
    ReportProblemLockerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ReportProblemLockerDetailRouteArgs>(
          orElse: () => const ReportProblemLockerDetailRouteArgs());
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i53.ReportProblemLockerDetailPage(
              key: args.key, title: args.title));
    },
    ReportProblemDetailRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i54.ReportProblemDetailPage());
    },
    SolveProblemRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i55.SolveProblemPage());
    },
    BorrowReturnRoute.name: (routeData) {
      final args = routeData.argsAs<BorrowReturnRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i56.BorrowReturnPage(
              borrowReturnGroupId: args.borrowReturnGroupId, key: args.key));
    },
    DashBoardRouter.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.EmptyRouterPage());
    },
    NotificationRouter.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.EmptyRouterPage());
    },
    UnlockLockerRouter.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.EmptyRouterPage());
    },
    DashBoardRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i58.DashBoardPage());
    },
    RoleManagementRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i59.RoleManagementPage());
    },
    ManageLockerAndEquipmentRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i60.ManageLockerAndEquipmentPage());
    },
    StreamingAndRecordRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i61.StreamingAndRecordPage());
    },
    FixingRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i62.FixingPage());
    },
    ReportProblemRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i63.ReportProblemPage());
    },
    HistoryRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i64.HistoryPage());
    },
    NotificationRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i65.NotificationPage());
    },
    ListLockerRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i66.ListLockerPage());
    },
    ToggleLockerRoute.name: (routeData) {
      final args = routeData.argsAs<ToggleLockerRouteArgs>();
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i67.ToggleLockerPage(
              key: args.key, locker: args.locker, device: args.device));
    },
    AccountRoute.name: (routeData) {
      return _i57.MaterialPageX<dynamic>(
          routeData: routeData, child: _i68.AccountPage());
    }
  };

  @override
  List<_i57.RouteConfig> get routes => [
        _i57.RouteConfig(SplashRoute.name, path: '/'),
        _i57.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i57.RouteConfig(RegisterWelcomeRoute.name,
            path: '/register-welcome-page'),
        _i57.RouteConfig(RegisterEnterNameRoute.name,
            path: '/register-enter-name-page'),
        _i57.RouteConfig(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page'),
        _i57.RouteConfig(RegisterEnterOTPRoute.name,
            path: '/register-enter-ot-pPage'),
        _i57.RouteConfig(RegisterEnterEmailRoute.name,
            path: '/register-enter-email-page'),
        _i57.RouteConfig(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page'),
        _i57.RouteConfig(RegisterEnterRoleRoute.name,
            path: '/register-enter-role-page'),
        _i57.RouteConfig(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page'),
        _i57.RouteConfig(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page'),
        _i57.RouteConfig(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page'),
        _i57.RouteConfig(RegisterCompletedRoute.name,
            path: '/register-completed-page'),
        _i57.RouteConfig(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page'),
        _i57.RouteConfig(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page'),
        _i57.RouteConfig(RegisterProfileDataCompletedRoute.name,
            path: '/register-profile-data-completed-page'),
        _i57.RouteConfig(RegisterAddFaceIdRoute.name,
            path: '/register-add-face-id-page'),
        _i57.RouteConfig(RegisterAddFaceIdCompletedRoute.name,
            path: '/register-add-face-id-completed-page'),
        _i57.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i57.RouteConfig(DashBoardRouter.name,
              path: 'dash_board',
              parent: HomeRoute.name,
              children: [
                _i57.RouteConfig(DashBoardRoute.name,
                    path: '', parent: DashBoardRouter.name),
                _i57.RouteConfig(RoleManagementRoute.name,
                    path: 'role_management', parent: DashBoardRouter.name),
                _i57.RouteConfig(ManageLockerAndEquipmentRoute.name,
                    path: 'manage_locker_and_equipment_page',
                    parent: DashBoardRouter.name),
                _i57.RouteConfig(StreamingAndRecordRoute.name,
                    path: 'streaming_and_record', parent: DashBoardRouter.name),
                _i57.RouteConfig(FixingRoute.name,
                    path: 'fixing', parent: DashBoardRouter.name),
                _i57.RouteConfig(ReportProblemRoute.name,
                    path: 'report_problem', parent: DashBoardRouter.name)
              ]),
          _i57.RouteConfig(HistoryRouter.name,
              path: 'history',
              parent: HomeRoute.name,
              children: [
                _i57.RouteConfig(HistoryRoute.name,
                    path: '', parent: HistoryRouter.name)
              ]),
          _i57.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i57.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name)
              ]),
          _i57.RouteConfig(UnlockLockerRouter.name,
              path: 'unlock_locker',
              parent: HomeRoute.name,
              children: [
                _i57.RouteConfig(ListLockerRoute.name,
                    path: '', parent: UnlockLockerRouter.name),
                _i57.RouteConfig(ToggleLockerRoute.name,
                    path: ':lockerId', parent: UnlockLockerRouter.name)
              ]),
          _i57.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: HomeRoute.name,
              children: [
                _i57.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ]),
        _i57.RouteConfig(AddUserRoute.name, path: '/add-user-page'),
        _i57.RouteConfig(ApproveUserRoute.name, path: '/approve-user-page'),
        _i57.RouteConfig(DepartmentManagementRoute.name,
            path: '/department-management-page'),
        _i57.RouteConfig(DepartmentDetailRoute.name,
            path: '/department-detail-page'),
        _i57.RouteConfig(AddAccountRoute.name, path: '/add-account-page'),
        _i57.RouteConfig(AllAccountRoute.name, path: '/all-account-page'),
        _i57.RouteConfig(AccountDetailRoute.name, path: '/account-detail-page'),
        _i57.RouteConfig(EditAccountRoute.name, path: '/edit-account-page'),
        _i57.RouteConfig(BlockAccountRoute.name, path: '/block-account-page'),
        _i57.RouteConfig(AllLockerRoute.name, path: '/all-locker-page'),
        _i57.RouteConfig(QrScanningRoute.name, path: '/qr-scanning-page'),
        _i57.RouteConfig(AddOrEditLockerRoute.name,
            path: '/add-or-edit-locker-page'),
        _i57.RouteConfig(AllEquipmentRoute.name, path: '/all-equipment-page'),
        _i57.RouteConfig(AddingEquipmentRoute.name,
            path: '/adding-equipment-page'),
        _i57.RouteConfig(AddEquipmentRoute.name, path: '/add-equipment-page'),
        _i57.RouteConfig(MacAddressHelpRoute.name,
            path: '/mac-address-help-page'),
        _i57.RouteConfig(AllLocationRoute.name, path: '/all-location-page'),
        _i57.RouteConfig(AddLocationRoute.name, path: '/add-location-page'),
        _i57.RouteConfig(AllCategoryRoute.name, path: '/all-category-page'),
        _i57.RouteConfig(AddCategoryRoute.name, path: '/add-category-page'),
        _i57.RouteConfig(CategoryDetailRoute.name,
            path: '/category-detail-page'),
        _i57.RouteConfig(EquipmentDetailRoute.name,
            path: '/equipment-detail-page'),
        _i57.RouteConfig(RequestFixingDetailRoute.name,
            path: '/request-fixing-detail-page'),
        _i57.RouteConfig(LockerDetailRoute.name, path: '/locker-detail-page'),
        _i57.RouteConfig(ManagePermissionRoute.name,
            path: '/manage-permission-page'),
        _i57.RouteConfig(AddPermanentPermissionRoute.name,
            path: '/add-permanent-permission-page'),
        _i57.RouteConfig(AddTemporaryPermissionRoute.name,
            path: '/add-temporary-permission-page'),
        _i57.RouteConfig(ChangePermissionTypeRoute.name,
            path: '/change-permission-type-page'),
        _i57.RouteConfig(AllCameraRoute.name, path: '/all-camera-page'),
        _i57.RouteConfig(LiveCameraRoute.name, path: '/live-camera-page'),
        _i57.RouteConfig(RecordVideoRoute.name, path: '/record-video-page'),
        _i57.RouteConfig(FixingLockerDetailRoute.name,
            path: '/fixing-locker-detail-page'),
        _i57.RouteConfig(FixingDetailRoute.name, path: '/fixing-detail-page'),
        _i57.RouteConfig(ReportProblemLockerDetailRoute.name,
            path: '/report-problem-locker-detail-page'),
        _i57.RouteConfig(ReportProblemDetailRoute.name,
            path: '/report-problem-detail-page'),
        _i57.RouteConfig(SolveProblemRoute.name, path: '/solve-problem-page'),
        _i57.RouteConfig(BorrowReturnRoute.name, path: '/borrow-return-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i57.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i57.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.RegisterWelcomePage]
class RegisterWelcomeRoute extends _i57.PageRouteInfo<void> {
  const RegisterWelcomeRoute()
      : super(RegisterWelcomeRoute.name, path: '/register-welcome-page');

  static const String name = 'RegisterWelcomeRoute';
}

/// generated route for
/// [_i4.RegisterEnterNamePage]
class RegisterEnterNameRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterNameRoute()
      : super(RegisterEnterNameRoute.name, path: '/register-enter-name-page');

  static const String name = 'RegisterEnterNameRoute';
}

/// generated route for
/// [_i5.RegisterEnterPhoneNumberPage]
class RegisterEnterPhoneNumberRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterPhoneNumberRoute()
      : super(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page');

  static const String name = 'RegisterEnterPhoneNumberRoute';
}

/// generated route for
/// [_i6.RegisterEnterOTPPage]
class RegisterEnterOTPRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterOTPRoute()
      : super(RegisterEnterOTPRoute.name, path: '/register-enter-ot-pPage');

  static const String name = 'RegisterEnterOTPRoute';
}

/// generated route for
/// [_i7.RegisterEnterEmailPage]
class RegisterEnterEmailRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterEmailRoute()
      : super(RegisterEnterEmailRoute.name, path: '/register-enter-email-page');

  static const String name = 'RegisterEnterEmailRoute';
}

/// generated route for
/// [_i8.RegisterEnterPasswordPage]
class RegisterEnterPasswordRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterPasswordRoute()
      : super(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page');

  static const String name = 'RegisterEnterPasswordRoute';
}

/// generated route for
/// [_i9.RegisterEnterRolePage]
class RegisterEnterRoleRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterRoleRoute()
      : super(RegisterEnterRoleRoute.name, path: '/register-enter-role-page');

  static const String name = 'RegisterEnterRoleRoute';
}

/// generated route for
/// [_i10.RegisterEnterPinSettingPage]
class RegisterEnterPinSettingRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterPinSettingRoute()
      : super(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page');

  static const String name = 'RegisterEnterPinSettingRoute';
}

/// generated route for
/// [_i11.RegisterEnterPinSettingConfirmPage]
class RegisterEnterPinSettingConfirmRoute extends _i57.PageRouteInfo<void> {
  const RegisterEnterPinSettingConfirmRoute()
      : super(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page');

  static const String name = 'RegisterEnterPinSettingConfirmRoute';
}

/// generated route for
/// [_i12.RegisterVerifyEmailPage]
class RegisterVerifyEmailRoute extends _i57.PageRouteInfo<void> {
  const RegisterVerifyEmailRoute()
      : super(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page');

  static const String name = 'RegisterVerifyEmailRoute';
}

/// generated route for
/// [_i13.RegisterCompletedPage]
class RegisterCompletedRoute extends _i57.PageRouteInfo<void> {
  const RegisterCompletedRoute()
      : super(RegisterCompletedRoute.name, path: '/register-completed-page');

  static const String name = 'RegisterCompletedRoute';
}

/// generated route for
/// [_i14.RegisterProfileDataPage]
class RegisterProfileDataRoute extends _i57.PageRouteInfo<void> {
  const RegisterProfileDataRoute()
      : super(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page');

  static const String name = 'RegisterProfileDataRoute';
}

/// generated route for
/// [_i15.RegisterProfileDataFormPage]
class RegisterProfileDataFormRoute extends _i57.PageRouteInfo<void> {
  const RegisterProfileDataFormRoute()
      : super(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page');

  static const String name = 'RegisterProfileDataFormRoute';
}

/// generated route for
/// [_i16.RegisterProfileDataCompletedPage]
class RegisterProfileDataCompletedRoute extends _i57.PageRouteInfo<void> {
  const RegisterProfileDataCompletedRoute()
      : super(RegisterProfileDataCompletedRoute.name,
            path: '/register-profile-data-completed-page');

  static const String name = 'RegisterProfileDataCompletedRoute';
}

/// generated route for
/// [_i17.RegisterAddFaceIdPage]
class RegisterAddFaceIdRoute extends _i57.PageRouteInfo<void> {
  const RegisterAddFaceIdRoute()
      : super(RegisterAddFaceIdRoute.name, path: '/register-add-face-id-page');

  static const String name = 'RegisterAddFaceIdRoute';
}

/// generated route for
/// [_i18.RegisterAddFaceIdCompletedPage]
class RegisterAddFaceIdCompletedRoute extends _i57.PageRouteInfo<void> {
  const RegisterAddFaceIdCompletedRoute()
      : super(RegisterAddFaceIdCompletedRoute.name,
            path: '/register-add-face-id-completed-page');

  static const String name = 'RegisterAddFaceIdCompletedRoute';
}

/// generated route for
/// [_i19.HomePage]
class HomeRoute extends _i57.PageRouteInfo<void> {
  const HomeRoute({List<_i57.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i20.AddUserPage]
class AddUserRoute extends _i57.PageRouteInfo<void> {
  const AddUserRoute() : super(AddUserRoute.name, path: '/add-user-page');

  static const String name = 'AddUserRoute';
}

/// generated route for
/// [_i21.ApproveUserPage]
class ApproveUserRoute extends _i57.PageRouteInfo<ApproveUserRouteArgs> {
  ApproveUserRoute({_i69.Key? key, required List<_i70.UserType> users})
      : super(ApproveUserRoute.name,
            path: '/approve-user-page',
            args: ApproveUserRouteArgs(key: key, users: users));

  static const String name = 'ApproveUserRoute';
}

class ApproveUserRouteArgs {
  const ApproveUserRouteArgs({this.key, required this.users});

  final _i69.Key? key;

  final List<_i70.UserType> users;

  @override
  String toString() {
    return 'ApproveUserRouteArgs{key: $key, users: $users}';
  }
}

/// generated route for
/// [_i22.DepartmentManagementPage]
class DepartmentManagementRoute extends _i57.PageRouteInfo<void> {
  const DepartmentManagementRoute()
      : super(DepartmentManagementRoute.name,
            path: '/department-management-page');

  static const String name = 'DepartmentManagementRoute';
}

/// generated route for
/// [_i23.DepartmentDetailPage]
class DepartmentDetailRoute extends _i57.PageRouteInfo<void> {
  const DepartmentDetailRoute()
      : super(DepartmentDetailRoute.name, path: '/department-detail-page');

  static const String name = 'DepartmentDetailRoute';
}

/// generated route for
/// [_i24.AddAccountPage]
class AddAccountRoute extends _i57.PageRouteInfo<void> {
  const AddAccountRoute()
      : super(AddAccountRoute.name, path: '/add-account-page');

  static const String name = 'AddAccountRoute';
}

/// generated route for
/// [_i25.AllAccountPage]
class AllAccountRoute extends _i57.PageRouteInfo<void> {
  const AllAccountRoute()
      : super(AllAccountRoute.name, path: '/all-account-page');

  static const String name = 'AllAccountRoute';
}

/// generated route for
/// [_i26.AccountDetailPage]
class AccountDetailRoute extends _i57.PageRouteInfo<void> {
  const AccountDetailRoute()
      : super(AccountDetailRoute.name, path: '/account-detail-page');

  static const String name = 'AccountDetailRoute';
}

/// generated route for
/// [_i27.EditAccountPage]
class EditAccountRoute extends _i57.PageRouteInfo<void> {
  const EditAccountRoute()
      : super(EditAccountRoute.name, path: '/edit-account-page');

  static const String name = 'EditAccountRoute';
}

/// generated route for
/// [_i28.BlockAccountPage]
class BlockAccountRoute extends _i57.PageRouteInfo<void> {
  const BlockAccountRoute()
      : super(BlockAccountRoute.name, path: '/block-account-page');

  static const String name = 'BlockAccountRoute';
}

/// generated route for
/// [_i29.AllLockerPage]
class AllLockerRoute extends _i57.PageRouteInfo<void> {
  const AllLockerRoute() : super(AllLockerRoute.name, path: '/all-locker-page');

  static const String name = 'AllLockerRoute';
}

/// generated route for
/// [_i30.QrScanningPage]
class QrScanningRoute extends _i57.PageRouteInfo<void> {
  const QrScanningRoute()
      : super(QrScanningRoute.name, path: '/qr-scanning-page');

  static const String name = 'QrScanningRoute';
}

/// generated route for
/// [_i31.AddOrEditLockerPage]
class AddOrEditLockerRoute
    extends _i57.PageRouteInfo<AddOrEditLockerRouteArgs> {
  AddOrEditLockerRoute({required int lockerId, _i69.Key? key})
      : super(AddOrEditLockerRoute.name,
            path: '/add-or-edit-locker-page',
            args: AddOrEditLockerRouteArgs(lockerId: lockerId, key: key));

  static const String name = 'AddOrEditLockerRoute';
}

class AddOrEditLockerRouteArgs {
  const AddOrEditLockerRouteArgs({required this.lockerId, this.key});

  final int lockerId;

  final _i69.Key? key;

  @override
  String toString() {
    return 'AddOrEditLockerRouteArgs{lockerId: $lockerId, key: $key}';
  }
}

/// generated route for
/// [_i32.AllEquipmentPage]
class AllEquipmentRoute extends _i57.PageRouteInfo<AllEquipmentRouteArgs> {
  AllEquipmentRoute({_i69.Key? key, required int lockerId})
      : super(AllEquipmentRoute.name,
            path: '/all-equipment-page',
            args: AllEquipmentRouteArgs(key: key, lockerId: lockerId));

  static const String name = 'AllEquipmentRoute';
}

class AllEquipmentRouteArgs {
  const AllEquipmentRouteArgs({this.key, required this.lockerId});

  final _i69.Key? key;

  final int lockerId;

  @override
  String toString() {
    return 'AllEquipmentRouteArgs{key: $key, lockerId: $lockerId}';
  }
}

/// generated route for
/// [_i33.AddingEquipmentPage]
class AddingEquipmentRoute
    extends _i57.PageRouteInfo<AddingEquipmentRouteArgs> {
  AddingEquipmentRoute({required int lockerId, _i69.Key? key})
      : super(AddingEquipmentRoute.name,
            path: '/adding-equipment-page',
            args: AddingEquipmentRouteArgs(lockerId: lockerId, key: key));

  static const String name = 'AddingEquipmentRoute';
}

class AddingEquipmentRouteArgs {
  const AddingEquipmentRouteArgs({required this.lockerId, this.key});

  final int lockerId;

  final _i69.Key? key;

  @override
  String toString() {
    return 'AddingEquipmentRouteArgs{lockerId: $lockerId, key: $key}';
  }
}

/// generated route for
/// [_i34.AddEquipmentPage]
class AddEquipmentRoute extends _i57.PageRouteInfo<AddEquipmentRouteArgs> {
  AddEquipmentRoute(
      {_i69.Key? key,
      Map<String, dynamic>? scanResult,
      required int lockerId,
      bool? isError})
      : super(AddEquipmentRoute.name,
            path: '/add-equipment-page',
            args: AddEquipmentRouteArgs(
                key: key,
                scanResult: scanResult,
                lockerId: lockerId,
                isError: isError));

  static const String name = 'AddEquipmentRoute';
}

class AddEquipmentRouteArgs {
  const AddEquipmentRouteArgs(
      {this.key, this.scanResult, required this.lockerId, this.isError});

  final _i69.Key? key;

  final Map<String, dynamic>? scanResult;

  final int lockerId;

  final bool? isError;

  @override
  String toString() {
    return 'AddEquipmentRouteArgs{key: $key, scanResult: $scanResult, lockerId: $lockerId, isError: $isError}';
  }
}

/// generated route for
/// [_i35.MacAddressHelpPage]
class MacAddressHelpRoute extends _i57.PageRouteInfo<void> {
  const MacAddressHelpRoute()
      : super(MacAddressHelpRoute.name, path: '/mac-address-help-page');

  static const String name = 'MacAddressHelpRoute';
}

/// generated route for
/// [_i36.AllLocationPage]
class AllLocationRoute extends _i57.PageRouteInfo<AllLocationRouteArgs> {
  AllLocationRoute(
      {_i69.Key? key,
      required _i71.ManagementLocationView viewBy,
      required String title,
      bool isHasLocation = true})
      : super(AllLocationRoute.name,
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

  final _i69.Key? key;

  final _i71.ManagementLocationView viewBy;

  final String title;

  final bool isHasLocation;

  @override
  String toString() {
    return 'AllLocationRouteArgs{key: $key, viewBy: $viewBy, title: $title, isHasLocation: $isHasLocation}';
  }
}

/// generated route for
/// [_i37.AddLocationPage]
class AddLocationRoute extends _i57.PageRouteInfo<void> {
  const AddLocationRoute()
      : super(AddLocationRoute.name, path: '/add-location-page');

  static const String name = 'AddLocationRoute';
}

/// generated route for
/// [_i38.AllCategoryPage]
class AllCategoryRoute extends _i57.PageRouteInfo<AllCategoryRouteArgs> {
  AllCategoryRoute({_i69.Key? key, bool isHaCategory = true})
      : super(AllCategoryRoute.name,
            path: '/all-category-page',
            args: AllCategoryRouteArgs(key: key, isHaCategory: isHaCategory));

  static const String name = 'AllCategoryRoute';
}

class AllCategoryRouteArgs {
  const AllCategoryRouteArgs({this.key, this.isHaCategory = true});

  final _i69.Key? key;

  final bool isHaCategory;

  @override
  String toString() {
    return 'AllCategoryRouteArgs{key: $key, isHaCategory: $isHaCategory}';
  }
}

/// generated route for
/// [_i39.AddCategoryPage]
class AddCategoryRoute extends _i57.PageRouteInfo<void> {
  const AddCategoryRoute()
      : super(AddCategoryRoute.name, path: '/add-category-page');

  static const String name = 'AddCategoryRoute';
}

/// generated route for
/// [_i40.CategoryDetailPage]
class CategoryDetailRoute extends _i57.PageRouteInfo<CategoryDetailRouteArgs> {
  CategoryDetailRoute({_i69.Key? key, required String title})
      : super(CategoryDetailRoute.name,
            path: '/category-detail-page',
            args: CategoryDetailRouteArgs(key: key, title: title));

  static const String name = 'CategoryDetailRoute';
}

class CategoryDetailRouteArgs {
  const CategoryDetailRouteArgs({this.key, required this.title});

  final _i69.Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i41.EquipmentDetailPage]
class EquipmentDetailRoute extends _i57.PageRouteInfo<void> {
  const EquipmentDetailRoute()
      : super(EquipmentDetailRoute.name, path: '/equipment-detail-page');

  static const String name = 'EquipmentDetailRoute';
}

/// generated route for
/// [_i42.RequestFixingDetailPage]
class RequestFixingDetailRoute extends _i57.PageRouteInfo<void> {
  const RequestFixingDetailRoute()
      : super(RequestFixingDetailRoute.name,
            path: '/request-fixing-detail-page');

  static const String name = 'RequestFixingDetailRoute';
}

/// generated route for
/// [_i43.LockerDetailPage]
class LockerDetailRoute extends _i57.PageRouteInfo<void> {
  const LockerDetailRoute()
      : super(LockerDetailRoute.name, path: '/locker-detail-page');

  static const String name = 'LockerDetailRoute';
}

/// generated route for
/// [_i44.ManagePermissionPage]
class ManagePermissionRoute extends _i57.PageRouteInfo<void> {
  const ManagePermissionRoute()
      : super(ManagePermissionRoute.name, path: '/manage-permission-page');

  static const String name = 'ManagePermissionRoute';
}

/// generated route for
/// [_i45.AddPermanentPermissionPage]
class AddPermanentPermissionRoute extends _i57.PageRouteInfo<void> {
  const AddPermanentPermissionRoute()
      : super(AddPermanentPermissionRoute.name,
            path: '/add-permanent-permission-page');

  static const String name = 'AddPermanentPermissionRoute';
}

/// generated route for
/// [_i46.AddTemporaryPermissionPage]
class AddTemporaryPermissionRoute extends _i57.PageRouteInfo<void> {
  const AddTemporaryPermissionRoute()
      : super(AddTemporaryPermissionRoute.name,
            path: '/add-temporary-permission-page');

  static const String name = 'AddTemporaryPermissionRoute';
}

/// generated route for
/// [_i47.ChangePermissionTypePage]
class ChangePermissionTypeRoute
    extends _i57.PageRouteInfo<ChangePermissionTypeRouteArgs> {
  ChangePermissionTypeRoute({_i69.Key? key, bool isPermanentType = false})
      : super(ChangePermissionTypeRoute.name,
            path: '/change-permission-type-page',
            args: ChangePermissionTypeRouteArgs(
                key: key, isPermanentType: isPermanentType));

  static const String name = 'ChangePermissionTypeRoute';
}

class ChangePermissionTypeRouteArgs {
  const ChangePermissionTypeRouteArgs({this.key, this.isPermanentType = false});

  final _i69.Key? key;

  final bool isPermanentType;

  @override
  String toString() {
    return 'ChangePermissionTypeRouteArgs{key: $key, isPermanentType: $isPermanentType}';
  }
}

/// generated route for
/// [_i48.AllCameraPage]
class AllCameraRoute extends _i57.PageRouteInfo<AllCameraRouteArgs> {
  AllCameraRoute({_i69.Key? key, required _i72.Locker locker})
      : super(AllCameraRoute.name,
            path: '/all-camera-page',
            args: AllCameraRouteArgs(key: key, locker: locker));

  static const String name = 'AllCameraRoute';
}

class AllCameraRouteArgs {
  const AllCameraRouteArgs({this.key, required this.locker});

  final _i69.Key? key;

  final _i72.Locker locker;

  @override
  String toString() {
    return 'AllCameraRouteArgs{key: $key, locker: $locker}';
  }
}

/// generated route for
/// [_i49.LiveCameraPage]
class LiveCameraRoute extends _i57.PageRouteInfo<LiveCameraRouteArgs> {
  LiveCameraRoute(
      {_i69.Key? key,
      required _i73.Camera camera,
      required int index,
      required int lockerId})
      : super(LiveCameraRoute.name,
            path: '/live-camera-page',
            args: LiveCameraRouteArgs(
                key: key, camera: camera, index: index, lockerId: lockerId));

  static const String name = 'LiveCameraRoute';
}

class LiveCameraRouteArgs {
  const LiveCameraRouteArgs(
      {this.key,
      required this.camera,
      required this.index,
      required this.lockerId});

  final _i69.Key? key;

  final _i73.Camera camera;

  final int index;

  final int lockerId;

  @override
  String toString() {
    return 'LiveCameraRouteArgs{key: $key, camera: $camera, index: $index, lockerId: $lockerId}';
  }
}

/// generated route for
/// [_i50.RecordVideoPage]
class RecordVideoRoute extends _i57.PageRouteInfo<void> {
  const RecordVideoRoute()
      : super(RecordVideoRoute.name, path: '/record-video-page');

  static const String name = 'RecordVideoRoute';
}

/// generated route for
/// [_i51.FixingLockerDetailPage]
class FixingLockerDetailRoute
    extends _i57.PageRouteInfo<FixingLockerDetailRouteArgs> {
  FixingLockerDetailRoute({_i69.Key? key, String title = '??????????????????????????????????????????'})
      : super(FixingLockerDetailRoute.name,
            path: '/fixing-locker-detail-page',
            args: FixingLockerDetailRouteArgs(key: key, title: title));

  static const String name = 'FixingLockerDetailRoute';
}

class FixingLockerDetailRouteArgs {
  const FixingLockerDetailRouteArgs({this.key, this.title = '??????????????????????????????????????????'});

  final _i69.Key? key;

  final String title;

  @override
  String toString() {
    return 'FixingLockerDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i52.FixingDetailPage]
class FixingDetailRoute extends _i57.PageRouteInfo<void> {
  const FixingDetailRoute()
      : super(FixingDetailRoute.name, path: '/fixing-detail-page');

  static const String name = 'FixingDetailRoute';
}

/// generated route for
/// [_i53.ReportProblemLockerDetailPage]
class ReportProblemLockerDetailRoute
    extends _i57.PageRouteInfo<ReportProblemLockerDetailRouteArgs> {
  ReportProblemLockerDetailRoute(
      {_i69.Key? key, String title = '??????????????????????????????????????????'})
      : super(ReportProblemLockerDetailRoute.name,
            path: '/report-problem-locker-detail-page',
            args: ReportProblemLockerDetailRouteArgs(key: key, title: title));

  static const String name = 'ReportProblemLockerDetailRoute';
}

class ReportProblemLockerDetailRouteArgs {
  const ReportProblemLockerDetailRouteArgs(
      {this.key, this.title = '??????????????????????????????????????????'});

  final _i69.Key? key;

  final String title;

  @override
  String toString() {
    return 'ReportProblemLockerDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i54.ReportProblemDetailPage]
class ReportProblemDetailRoute extends _i57.PageRouteInfo<void> {
  const ReportProblemDetailRoute()
      : super(ReportProblemDetailRoute.name,
            path: '/report-problem-detail-page');

  static const String name = 'ReportProblemDetailRoute';
}

/// generated route for
/// [_i55.SolveProblemPage]
class SolveProblemRoute extends _i57.PageRouteInfo<void> {
  const SolveProblemRoute()
      : super(SolveProblemRoute.name, path: '/solve-problem-page');

  static const String name = 'SolveProblemRoute';
}

/// generated route for
/// [_i56.BorrowReturnPage]
class BorrowReturnRoute extends _i57.PageRouteInfo<BorrowReturnRouteArgs> {
  BorrowReturnRoute({required int borrowReturnGroupId, _i69.Key? key})
      : super(BorrowReturnRoute.name,
            path: '/borrow-return-page',
            args: BorrowReturnRouteArgs(
                borrowReturnGroupId: borrowReturnGroupId, key: key));

  static const String name = 'BorrowReturnRoute';
}

class BorrowReturnRouteArgs {
  const BorrowReturnRouteArgs({required this.borrowReturnGroupId, this.key});

  final int borrowReturnGroupId;

  final _i69.Key? key;

  @override
  String toString() {
    return 'BorrowReturnRouteArgs{borrowReturnGroupId: $borrowReturnGroupId, key: $key}';
  }
}

/// generated route for
/// [_i57.EmptyRouterPage]
class DashBoardRouter extends _i57.PageRouteInfo<void> {
  const DashBoardRouter({List<_i57.PageRouteInfo>? children})
      : super(DashBoardRouter.name,
            path: 'dash_board', initialChildren: children);

  static const String name = 'DashBoardRouter';
}

/// generated route for
/// [_i57.EmptyRouterPage]
class HistoryRouter extends _i57.PageRouteInfo<void> {
  const HistoryRouter({List<_i57.PageRouteInfo>? children})
      : super(HistoryRouter.name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i57.EmptyRouterPage]
class NotificationRouter extends _i57.PageRouteInfo<void> {
  const NotificationRouter({List<_i57.PageRouteInfo>? children})
      : super(NotificationRouter.name,
            path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for
/// [_i57.EmptyRouterPage]
class UnlockLockerRouter extends _i57.PageRouteInfo<void> {
  const UnlockLockerRouter({List<_i57.PageRouteInfo>? children})
      : super(UnlockLockerRouter.name,
            path: 'unlock_locker', initialChildren: children);

  static const String name = 'UnlockLockerRouter';
}

/// generated route for
/// [_i57.EmptyRouterPage]
class AccountRouter extends _i57.PageRouteInfo<void> {
  const AccountRouter({List<_i57.PageRouteInfo>? children})
      : super(AccountRouter.name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i58.DashBoardPage]
class DashBoardRoute extends _i57.PageRouteInfo<void> {
  const DashBoardRoute() : super(DashBoardRoute.name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i59.RoleManagementPage]
class RoleManagementRoute extends _i57.PageRouteInfo<void> {
  const RoleManagementRoute()
      : super(RoleManagementRoute.name, path: 'role_management');

  static const String name = 'RoleManagementRoute';
}

/// generated route for
/// [_i60.ManageLockerAndEquipmentPage]
class ManageLockerAndEquipmentRoute extends _i57.PageRouteInfo<void> {
  const ManageLockerAndEquipmentRoute()
      : super(ManageLockerAndEquipmentRoute.name,
            path: 'manage_locker_and_equipment_page');

  static const String name = 'ManageLockerAndEquipmentRoute';
}

/// generated route for
/// [_i61.StreamingAndRecordPage]
class StreamingAndRecordRoute extends _i57.PageRouteInfo<void> {
  const StreamingAndRecordRoute()
      : super(StreamingAndRecordRoute.name, path: 'streaming_and_record');

  static const String name = 'StreamingAndRecordRoute';
}

/// generated route for
/// [_i62.FixingPage]
class FixingRoute extends _i57.PageRouteInfo<void> {
  const FixingRoute() : super(FixingRoute.name, path: 'fixing');

  static const String name = 'FixingRoute';
}

/// generated route for
/// [_i63.ReportProblemPage]
class ReportProblemRoute extends _i57.PageRouteInfo<void> {
  const ReportProblemRoute()
      : super(ReportProblemRoute.name, path: 'report_problem');

  static const String name = 'ReportProblemRoute';
}

/// generated route for
/// [_i64.HistoryPage]
class HistoryRoute extends _i57.PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: '');

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [_i65.NotificationPage]
class NotificationRoute extends _i57.PageRouteInfo<void> {
  const NotificationRoute() : super(NotificationRoute.name, path: '');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i66.ListLockerPage]
class ListLockerRoute extends _i57.PageRouteInfo<void> {
  const ListLockerRoute() : super(ListLockerRoute.name, path: '');

  static const String name = 'ListLockerRoute';
}

/// generated route for
/// [_i67.ToggleLockerPage]
class ToggleLockerRoute extends _i57.PageRouteInfo<ToggleLockerRouteArgs> {
  ToggleLockerRoute(
      {_i69.Key? key,
      required _i72.Locker locker,
      required _i74.BluetoothDevice device})
      : super(ToggleLockerRoute.name,
            path: ':lockerId',
            args: ToggleLockerRouteArgs(
                key: key, locker: locker, device: device));

  static const String name = 'ToggleLockerRoute';
}

class ToggleLockerRouteArgs {
  const ToggleLockerRouteArgs(
      {this.key, required this.locker, required this.device});

  final _i69.Key? key;

  final _i72.Locker locker;

  final _i74.BluetoothDevice device;

  @override
  String toString() {
    return 'ToggleLockerRouteArgs{key: $key, locker: $locker, device: $device}';
  }
}

/// generated route for
/// [_i68.AccountPage]
class AccountRoute extends _i57.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '');

  static const String name = 'AccountRoute';
}
