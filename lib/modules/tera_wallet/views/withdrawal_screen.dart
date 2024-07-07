import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/tera_wallet/wallet_request_model.dart';
import 'widgets/request_item.dart';
import 'widgets/submit_request_form.dart';

enum RequestType { pending, approved, cancelled }

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({super.key});

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  RequestType _selectedType = RequestType.pending;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _refreshRequests();
    });
  }

  void _changeRequestType(RequestType type) {
    setState(() {
      _selectedType = type;
    });
    _refreshRequests();
  }

  void _refreshRequests() {
    final walletRequestModel =
        Provider.of<WalletRequestModel>(context, listen: false);
    walletRequestModel.getRequests(type: _selectedType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          S.of(context).withdrawal,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RouteList.teraWalletWithdrawalSettings);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Consumer<WalletRequestModel>(builder: (context, model, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: [
                    TabItem(
                      label: S.of(context).withdrawRequest,
                      selected: _selectedType == RequestType.pending,
                      onTap: () {
                        if (!model.isLoading) {
                          _changeRequestType(RequestType.pending);
                        }
                      },
                    ),
                    TabItem(
                      label: S.of(context).approvedRequests,
                      selected: _selectedType == RequestType.approved,
                      onTap: () {
                        if (!model.isLoading) {
                          _changeRequestType(RequestType.approved);
                        }
                      },
                    ),
                    TabItem(
                      label: S.of(context).cancelledRequests,
                      selected: _selectedType == RequestType.cancelled,
                      onTap: () {
                        if (!model.isLoading) {
                          _changeRequestType(RequestType.cancelled);
                        }
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                  child: model.isLoading
                      ? Center(child: kLoadingWidget(context))
                      : (model.requests?.isNotEmpty ?? false)
                          ? ListView.builder(
                              itemCount: model.requests?.length ?? 0,
                              itemBuilder: (BuildContext context, int index) {
                                return RequestItem(
                                    item: model.requests![index]);
                              })
                          : _selectedType == RequestType.pending
                              ? const SubmitRequestForm()
                              : Center(
                                  child: Text(S.of(context).noTransactionsMsg),
                                ))
            ],
          ),
        );
      }),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem(
      {super.key,
      required this.label,
      required this.selected,
      required this.onTap});
  final String label;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var disabledColor = Theme.of(context).disabledColor;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: selected ? primaryColor : disabledColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(height: 12),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                  color: selected ? primaryColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(1.5)),
            )
          ],
        ),
      ),
    );
  }
}
