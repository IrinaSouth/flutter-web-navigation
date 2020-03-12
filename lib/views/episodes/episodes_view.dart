import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import 'package:the_basics/datamodels/season_details_model.dart';
import 'package:the_basics/viewmodels/episodes_view_model.dart';
import 'package:the_basics/widgets/episodes_list/episodes_list.dart';
import 'package:the_basics/widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodesViewModel>.withConsumer(
      viewModel: EpisodesViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: Colors.blue,
              child: DropDownSample()),

          SizedBox(
            height: 100,
          ),
//          SeasonDetails(
//            details: SeasonDetailsModel(
//              title: 'SEASON 1',
//              description:
//                  'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
//            ),
//          ),
          SizedBox(
            height: 50,
          ),
//          model.episodes == null
//              ? CircularProgressIndicator()
//              : EpisodesList(episodes: model.episodes),
        ],
      )),
    );
  }
}


class DropDownSample extends StatefulWidget {
  DropDownSample({Key key}) : super(key: key);

  @override
  _DropDownSampleState createState() => _DropDownSampleState();
}

class _DropDownSampleState extends State<DropDownSample> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
//      icon: Icon(Icons.arrow_downward),
//      iconSize: 24,
//      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
