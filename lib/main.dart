import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/cubit/theme_cubit.dart';
import 'package:theme/theme/theme.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Theme',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: context.read<ThemeCubit>().isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Display Large',
                    style: Theme.of(context).textTheme.displayLarge),
                Text('Display Medium',
                    style: AppTheme.getTextTheme(context).displayMedium),
                Text('Display Small',
                    style: Theme.of(context).textTheme.displaySmall),
                Text('Headline Large',
                    style: Theme.of(context).textTheme.headlineLarge),
                Text('Headline Medium',
                    style: Theme.of(context).textTheme.headlineMedium),
                Text('Headline Small',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('Title Large',
                    style: Theme.of(context).textTheme.titleLarge),
                Text('Title Medium',
                    style: Theme.of(context).textTheme.titleMedium),
                Text('Title Small',
                    style: Theme.of(context).textTheme.titleSmall),
                Text('Body Large',
                    style: Theme.of(context).textTheme.bodyLarge),
                Text('Body Medium',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text('Body Small',
                    style: Theme.of(context).textTheme.bodySmall),
                Text('Label Large',
                    style: Theme.of(context).textTheme.labelLarge),
                Text('Label Medium',
                    style: Theme.of(context).textTheme.labelMedium),
                Text('Label Small',
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SwitchListTile(
                title: Text(
                  "Dark Mode",
                  style: AppTheme.getTextTheme(context).labelLarge,
                ),
                value: context.read<ThemeCubit>().isDark,
                onChanged: (value) {
                  context.read<ThemeCubit>().changeTheme(value);
                }),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
