import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik/config/theme/app_theme.dart';
import 'package:tok_tik/infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:tok_tik/infrastructure/repositories/videos_posts_repositories_impl.dart';
import 'package:tok_tik/presentation/providers/discover_provider.dart';
import 'package:tok_tik/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostsRepository =
        VideoPostsRepositoryImpl(videoPostsDatasource: LocalVideosDatasource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostsRepository: videoPostsRepository)
                ..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'Tok Tik',
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Tok Tik'),
            ),
            body: const DiscoverScreen()),
      ),
    );
  }
}
