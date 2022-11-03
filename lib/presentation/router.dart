import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/presentation/main/main_screen.dart';
import 'package:provider_sample/presentation/main/main_view_model.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => MainViewModel(),
            child: const MainScreen(),
          );
        }),
  ],
);
