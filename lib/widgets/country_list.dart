import 'package:flutter/material.dart';

import '../models/country_time.dart';

class CountryList extends StatelessWidget {
  final List<CountryTime> countryTime;

  CountryList(this.countryTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: countryTime.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No country added yet!',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    )),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    title: Text(
                      countryTime[index].name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                );
              },
              itemCount: countryTime.length,
            ),
    );
  }
}
