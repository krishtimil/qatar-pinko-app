import 'package:qatar_pinko_cup/presentation/main_menu_screen/main_menu_screen.dart';
import 'package:qatar_pinko_cup/presentation/main_menu_screen/binding/main_menu_binding.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_one_screen/team_choosing_one_screen.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_one_screen/binding/team_choosing_one_binding.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/team_choosing_screen.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/binding/team_choosing_binding.dart';
import 'package:qatar_pinko_cup/presentation/bet_screen/bet_screen.dart';
import 'package:qatar_pinko_cup/presentation/bet_screen/binding/bet_binding.dart';
import 'package:qatar_pinko_cup/presentation/confirm_screen/confirm_screen.dart';
import 'package:qatar_pinko_cup/presentation/confirm_screen/binding/confirm_binding.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_one_screen/gameplay_one_screen.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_one_screen/binding/gameplay_one_binding.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_two_screen/gameplay_two_screen.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_two_screen/binding/gameplay_two_binding.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/gameplay_screen.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/binding/gameplay_binding.dart';
import 'package:qatar_pinko_cup/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:qatar_pinko_cup/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String mainMenuScreen = '/main_menu_screen';

  static String teamChoosingOneScreen = '/team_choosing_one_screen';

  static String teamChoosingScreen = '/team_choosing_screen';

  static String betScreen = '/bet_screen';

  static String confirmScreen = '/confirm_screen';

  static String gameplayOneScreen = '/gameplay_one_screen';

  static String gameplayTwoScreen = '/gameplay_two_screen';

  static String gameplayScreen = '/gameplay_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mainMenuScreen,
      page: () => MainMenuScreen(),
      bindings: [
        MainMenuBinding(),
      ],
    ),
    GetPage(
      name: teamChoosingOneScreen,
      page: () => TeamChoosingOneScreen(),
      bindings: [
        TeamChoosingOneBinding(),
      ],
    ),
    GetPage(
      name: teamChoosingScreen,
      page: () => TeamChoosingScreen(),
      bindings: [
        TeamChoosingBinding(),
      ],
    ),
    GetPage(
      name: betScreen,
      page: () => BetScreen(),
      bindings: [
        BetBinding(),
      ],
    ),
    GetPage(
      name: confirmScreen,
      page: () => ConfirmScreen(),
      bindings: [
        ConfirmBinding(),
      ],
    ),
    GetPage(
      name: gameplayOneScreen,
      page: () => GameplayOneScreen(),
      bindings: [
        GameplayOneBinding(),
      ],
    ),
    GetPage(
      name: gameplayTwoScreen,
      page: () => GameplayTwoScreen(),
      bindings: [
        GameplayTwoBinding(),
      ],
    ),
    GetPage(
      name: gameplayScreen,
      page: () => GameplayScreen(),
      bindings: [
        GameplayBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MainMenuScreen(),
      bindings: [
        MainMenuBinding(),
      ],
    )
  ];
}
