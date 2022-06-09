import 'package:flutter/material.dart';
import 'package:flutter_ca/flutter_ca.dart';
import 'package:flutter_ca_example/app/view_models/person_details_view_model.dart';

class PersonDetailsView extends StatelessView<PersonDetailsViewModel> {
  const PersonDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, PersonDetailsViewModel viewModel) {
    return Scaffold(
      key: GlobalKey(),
      appBar: AppBar(
        title: const Text('Person Generator'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(viewModel.person?.name ?? 'No Person'),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              onPressed: viewModel.generatePerson,
              child: const Text('Fetch Person'),
            ),
          ],
        ),
      )),
    );
  }
}