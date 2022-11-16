import 'package:qatar_pinko_cup/presentation/main_menu_screen/main_menu_screen.dart';
import 'package:qatar_pinko_cup/presentation/main_menu_screen/binding/main_menu_binding.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/team_choosing_screen.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/binding/team_choosing_binding.dart';
import 'package:qatar_pinko_cup/presentation/bet_screen/bet_screen.dart';
import 'package:qatar_pinko_cup/presentation/bet_screen/binding/bet_binding.dart';
import 'package:qatar_pinko_cup/presentation/confirm_screen/confirm_screen.dart';
import 'package:qatar_pinko_cup/presentation/confirm_screen/binding/confirm_binding.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/gameplay_screen.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/binding/gameplay_binding.dart';
import 'package:qatar_pinko_cup/presentation/result_screen/result_screen.dart';
import 'package:qatar_pinko_cup/presentation/result_screen/binding/result_binding.dart';
import 'package:qatar_pinko_cup/presentation/stats_screen/stats_screen.dart';
import 'package:qatar_pinko_cup/presentation/stats_screen/binding/stats_binding.dart';
import 'package:qatar_pinko_cup/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:qatar_pinko_cup/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String mainMenuScreen = '/main_menu_screen';

  static String teamChoosingScreen = '/team_choosing_screen';

  static String betScreen = '/bet_screen';

  static String confirmScreen = '/confirm_screen';

  static String gameplayScreen = '/gameplay_screen';

  static String resultScreen = '/result_screen';

  static String statsScreen = '/stats_screen';

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
      name: gameplayScreen,
      page: () => GameplayScreen(),
      bindings: [
        GameplayBinding(),
      ],
    ),
    GetPage(
      name: resultScreen,
      page: () => ResultScreen(),
      bindings: [
        ResultBinding(),
      ],
    ),
    GetPage(
      name: statsScreen,
      page: () => StatsScreen(),
      bindings: [
        StatsBinding(),
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
