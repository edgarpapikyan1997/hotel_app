import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'attributes/go_router/go_router.dart';
import 'attributes/themes/app_colors.dart';
import 'attributes/utils/extensions/extensions.dart';
import 'blocs/bloc_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ru', 'RU')],
      path: 'assets/translations',
      fallbackLocale: Locale('ru', 'RU'),
      child: MultiBlocProvider(
          providers: AppBlocProviders.allBlocProviders,
          child: App()),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    context.setLocale(const Locale('ru', 'RU'));
    return MaterialApp.router(
      color: AppColors.white,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.whiteSmock),
        brightness: Brightness.light,
        fontFamily: 'SFProDisplay',
      ),
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
