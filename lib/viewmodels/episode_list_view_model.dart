import 'package:flutter/cupertino.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/services/navigation_service.dart';

class EpisodeListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _navigationService
        .navigateTo(EpisodeDetailsRoute, queryParams: {'id': index.toString()});
  }
}