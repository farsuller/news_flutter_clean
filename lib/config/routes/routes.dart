import 'package:flutter/material.dart';
import 'package:news_app_clean/features/daily_news/presenstation/pages/article_detail/article_detail.dart';
import 'package:news_app_clean/features/daily_news/presenstation/pages/home/daily_news.dart';
import 'package:news_app_clean/features/daily_news/presenstation/pages/saved_article/saved_article.dart';

import '../../features/daily_news/domain/entities/article.dart';





class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const DailyNews());

      case '/ArticleDetails':
        return _materialRoute(ArticleDetailsView(article: settings.arguments as ArticleEntity));

      case '/SavedArticles':
        return _materialRoute(const SavedArticles());
        
      default:
        return _materialRoute(const DailyNews());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
