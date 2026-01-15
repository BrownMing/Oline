import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '../olineCharacte_fableVerse_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/dfhgudifghOIUD_dfihgdufigHO.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : OlineImmersiveRoleplayHubSplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/dfhgudifghOIUD_dfihgdufigHO.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : OlineImmersiveRoleplayHubSplashWidget(),
        ),
        FFRoute(
          name: OlineImmersiveRoleplayHubSplashWidget.routeName,
          path: OlineImmersiveRoleplayHubSplashWidget.routePath,
          builder: (context, params) => OlineImmersiveRoleplayHubSplashWidget(),
        ),
        FFRoute(
          name: OlineCharacterFlowStartLoginWidget.routeName,
          path: OlineCharacterFlowStartLoginWidget.routePath,
          builder: (context, params) => OlineCharacterFlowStartLoginWidget(),
        ),
        FFRoute(
          name: OlinePersonaConstellationLoginWidget.routeName,
          path: OlinePersonaConstellationLoginWidget.routePath,
          builder: (context, params) => OlinePersonaConstellationLoginWidget(),
        ),
        FFRoute(
          name: OlineCosplayVoiceRealmSignupWidget.routeName,
          path: OlineCosplayVoiceRealmSignupWidget.routePath,
          builder: (context, params) => OlineCosplayVoiceRealmSignupWidget(),
        ),
        FFRoute(
          name: OlineCosplayEngineForgetPasswordWidget.routeName,
          path: OlineCosplayEngineForgetPasswordWidget.routePath,
          builder: (context, params) =>
              OlineCosplayEngineForgetPasswordWidget(),
        ),
        FFRoute(
          name: OlineRoleplaySystemHomePageWidget.routeName,
          path: OlineRoleplaySystemHomePageWidget.routePath,
          builder: (context, params) => OlineRoleplaySystemHomePageWidget(),
        ),
        FFRoute(
          name: OlineRoleplayMatrixVoiceRoomsWidget.routeName,
          path: OlineRoleplayMatrixVoiceRoomsWidget.routePath,
          builder: (context, params) => OlineRoleplayMatrixVoiceRoomsWidget(),
        ),
        FFRoute(
          name: OlineCosplayCollectiveChatRoomWidget.routeName,
          path: OlineCosplayCollectiveChatRoomWidget.routePath,
          builder: (context, params) => OlineCosplayCollectiveChatRoomWidget(
            olineVoiceFictionContinuumChatid: params.getParam(
              'olineVoiceFictionContinuumChatid',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OlineAvatarContinuumChatMessagesWidget.routeName,
          path: OlineAvatarContinuumChatMessagesWidget.routePath,
          builder: (context, params) =>
              OlineAvatarContinuumChatMessagesWidget(),
        ),
        FFRoute(
          name: OlineVoicePersonaCoreFansFollowingWidget.routeName,
          path: OlineVoicePersonaCoreFansFollowingWidget.routePath,
          builder: (context, params) =>
              OlineVoicePersonaCoreFansFollowingWidget(
            olineCosplayVoiceContinuum: params.getParam(
              'olineCosplayVoiceContinuum',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OlinePersonaDrivenVoiceSpaceNotificationsWidget.routeName,
          path: OlinePersonaDrivenVoiceSpaceNotificationsWidget.routePath,
          builder: (context, params) =>
              OlinePersonaDrivenVoiceSpaceNotificationsWidget(),
        ),
        FFRoute(
          name: OlineRoleplayVoiceTheatreMessagesWidget.routeName,
          path: OlineRoleplayVoiceTheatreMessagesWidget.routePath,
          builder: (context, params) => OlineRoleplayVoiceTheatreMessagesWidget(
            olineImmersiveVoicePersonaChat: params.getParam(
              'olineImmersiveVoicePersonaChat',
              ParamType.int,
            ),
            olineRoleplayInteractionFieldUser: params.getParam(
              'olineRoleplayInteractionFieldUser',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OlineAvatarRoleplayDomainChatVideoWidget.routeName,
          path: OlineAvatarRoleplayDomainChatVideoWidget.routePath,
          builder: (context, params) =>
              OlineAvatarRoleplayDomainChatVideoWidget(
            olineCharacterRoleplayVerseID: params.getParam(
              'olineCharacterRoleplayVerseID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OlineRoleplayDialogueZoneOtherinfoWidget.routeName,
          path: OlineRoleplayDialogueZoneOtherinfoWidget.routePath,
          builder: (context, params) =>
              OlineRoleplayDialogueZoneOtherinfoWidget(
            olineCosplayPerformanceUserid: params.getParam(
              'olineCosplayPerformanceUserid',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OlineCosplayEchoNetworkFindPagesWidget.routeName,
          path: OlineCosplayEchoNetworkFindPagesWidget.routePath,
          builder: (context, params) =>
              OlineCosplayEchoNetworkFindPagesWidget(),
        ),
        FFRoute(
          name: OlineCharacterImmersionHallFindDetailsWidget.routeName,
          path: OlineCharacterImmersionHallFindDetailsWidget.routePath,
          builder: (context, params) =>
              OlineCharacterImmersionHallFindDetailsWidget(
            olineFictionalPersonaDomainPost: params.getParam(
              'olineFictionalPersonaDomainPost',
              ParamType.int,
            ),
            olineRoleplayEchoSanctumUserid: params.getParam(
              'olineRoleplayEchoSanctumUserid',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OlineCosplayVoiceSessionPostImageWidget.routeName,
          path: OlineCosplayVoiceSessionPostImageWidget.routePath,
          builder: (context, params) =>
              OlineCosplayVoiceSessionPostImageWidget(),
        ),
        FFRoute(
          name: OlineInCharacterVoiceWorldInfomationsWidget.routeName,
          path: OlineInCharacterVoiceWorldInfomationsWidget.routePath,
          builder: (context, params) =>
              OlineInCharacterVoiceWorldInfomationsWidget(),
        ),
        FFRoute(
          name: OlineCosplayPersonaUniverseSettingsWidget.routeName,
          path: OlineCosplayPersonaUniverseSettingsWidget.routePath,
          builder: (context, params) =>
              OlineCosplayPersonaUniverseSettingsWidget(),
        ),
        FFRoute(
          name: OlinePersonaSpeechRechargeListWidget.routeName,
          path: OlinePersonaSpeechRechargeListWidget.routePath,
          builder: (context, params) => OlinePersonaSpeechRechargeListWidget(),
        ),
        FFRoute(
          name: OlineCosplayPersonaStageEditProfileWidget.routeName,
          path: OlineCosplayPersonaStageEditProfileWidget.routePath,
          builder: (context, params) =>
              OlineCosplayPersonaStageEditProfileWidget(),
        ),
        FFRoute(
          name: OlineCharacterEchoVerseBlockedListWidget.routeName,
          path: OlineCharacterEchoVerseBlockedListWidget.routePath,
          builder: (context, params) =>
              OlineCharacterEchoVerseBlockedListWidget(),
        ),
        FFRoute(
          name: OlineAvatarVoiceContinuityTermsServiceWidget.routeName,
          path: OlineAvatarVoiceContinuityTermsServiceWidget.routePath,
          builder: (context, params) =>
              OlineAvatarVoiceContinuityTermsServiceWidget(
            olineCharacterLoreNetworkUrl: params.getParam(
              'olineCharacterLoreNetworkUrl',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
