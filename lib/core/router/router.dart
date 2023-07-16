import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/data/repository/swopen_station_repository_impl.dart';
import 'package:subway_search/domain/use_case/get_top_most_arrive_info_use_case.dart';
import 'package:subway_search/presentation/main/main_screen.dart';
import 'package:subway_search/presentation/main/main_view_model.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(GetTopMostArriveInfoUseCase(
            SwopenRepositoryImpl(),
          )),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
