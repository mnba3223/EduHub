import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.homeTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $count'),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/courses'),
              child: Text(l10n.coursesTitle),
            ),
          ],
        ),
      ),
    );
  }
}
