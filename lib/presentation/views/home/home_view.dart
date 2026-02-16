import 'package:flutter/material.dart';
import '../../viewmodels/home/home_viewmodel.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/utils/responsive.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, vm, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(AppConstants.appName),
            ),
            body: Center(
              child: Text(
                Responsive.isMobile(context)
                    ? 'Mobile Home'
                    : Responsive.isTablet(context)
                        ? 'Tablet Home'
                        : 'Desktop Home',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}
