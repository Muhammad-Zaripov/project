import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wallet/injection_container.dart' as di;
import 'core/localization/generated/app_localizations.dart';
import 'core/localization/localization_service.dart';
import 'core/navigation/app_router.dart';
import 'core/navigation/navigation_cubit.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/internal/app_button.dart';

class FuelBackApp extends StatefulWidget {
  const FuelBackApp({super.key});

  @override
  State<FuelBackApp> createState() => _FuelBackAppState();
}

class _FuelBackAppState extends State<FuelBackApp> {
  Locale? _locale;
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    _loadSavedLocale();
  }

  // Load saved language preference
  Future<void> _loadSavedLocale() async {
    final savedLocale = await LocalizationService.getSavedLocale();
    if (savedLocale != null && mounted) {
      setState(() {
        _locale = savedLocale;
      });
    }
  }

  // Update locale when user changes language
  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
    LocalizationService.setLocale(locale);
  }

  @override
  /*Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuelBack',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,

      // Localization
      locale: _locale,
      supportedLocales: LocalizationService.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // Locale resolution callback
      localeResolutionCallback: (locale, supportedLocales) {
        // If saved locale exists, use it
        if (_locale != null) {
          return _locale;
        }

        // Check if device locale is supported
        if (locale != null) {
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }

          // Check language code only
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
        }

        // Default to English
        return LocalizationService.defaultLocale;
      },

      // Routing
      onGenerateRoute: _appRouter.onGenerateRoute,
      initialRoute: AppRouter.splash,

      // Pass locale setter to allow language changes from anywhere
      builder: (context, child) {
        AppButton(text: "text");
        return _LocaleProvider(setLocale: _setLocale, child: child!);
      },
    );
  }*/
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Navigation cubit
        BlocProvider(create: (_) => di.sl<NavigationCubit>()),
      ],
      child: MaterialApp(
        title: 'FuelBack',
        debugShowCheckedModeBanner: false,

        // Theme
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,

        // Localization
        locale: _locale,
        supportedLocales: LocalizationService.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        // Locale resolution callback
        localeResolutionCallback: (locale, supportedLocales) {
          // If saved locale exists, use it
          if (_locale != null) {
            return _locale;
          }

          // Check if device locale is supported
          if (locale != null) {
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }

            // Check language code only
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode) {
                return supportedLocale;
              }
            }
          }

          // Default to English
          return LocalizationService.defaultLocale;
        },

        // Routing
        onGenerateRoute: _appRouter.onGenerateRoute,
        // initialRoute: AppRouter.splash,
        initialRoute: AppRouter.main,

        // Pass locale setter to allow language changes from anywhere
        builder: (context, child) {
          AppButton(text: "text");
          return _LocaleProvider(setLocale: _setLocale, child: child!);
        },
      ),
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}

// Provider to access locale setter from anywhere in the app
class _LocaleProvider extends InheritedWidget {
  final void Function(Locale) setLocale;

  const _LocaleProvider({required this.setLocale, required super.child});

  static _LocaleProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_LocaleProvider>();
  }

  @override
  bool updateShouldNotify(_LocaleProvider oldWidget) => false;
}

// Extension to easily access locale setter
extension LocaleExtension on BuildContext {
  void setLocale(Locale locale) {
    _LocaleProvider.of(this)?.setLocale(locale);
  }
}
