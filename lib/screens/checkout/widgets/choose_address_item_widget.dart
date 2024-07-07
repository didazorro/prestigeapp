import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../models/entities/address.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import 'choose_address_layout.dart';

class ChooseAddressItemWidget extends StatelessWidget {
  const ChooseAddressItemWidget({
    super.key,
    this.onSelected,
    this.onRemove,
    required this.address,
    this.isSelected = false,
    this.onEdit,
  });

  final void Function(Address)? onSelected;
  final void Function(Address)? onRemove;
  final void Function(Address)? onEdit;
  final bool isSelected;

  final Address address;

  @override
  Widget build(BuildContext context) {
    if (Layout.isDisplayDesktop(context)) {
      final small = onEdit == null && onRemove == null;

      return GestureDetector(
        onTap: () => onSelected?.call(address),
        behavior: HitTestBehavior.translucent,
        child: ChooseAddressLayout(
          height: small ? 115 : 150,
          isSelected: isSelected,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                address.fullName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text(address.fullInfoAddress),
              Expanded(
                child: Column(
                  mainAxisAlignment:
                      small ? MainAxisAlignment.end : MainAxisAlignment.center,
                  children: [
                    Text(address.phoneNumber ?? ''),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (onEdit != null)
                    GestureDetector(
                      onTap: () => onEdit?.call(address),
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.edit_location_alt_rounded,
                            size: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            S.of(context).edit,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (onEdit != null && onRemove != null)
                    const SizedBox(width: 20),
                  if (onRemove != null)
                    GestureDetector(
                      onTap: () => onRemove?.call(address),
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.delete,
                            size: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            S.of(context).delete,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ].expand((element) => [element, const SizedBox(height: 8)]).toList()
              ..removeLast(),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: GestureDetector(
          onTap: () => onSelected?.call(address),
          behavior: HitTestBehavior.translucent,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(color: Theme.of(context).primaryColorLight),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.home,
                      color: Theme.of(context).primaryColor,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: convertToCard(context, address),
                  ),
                  GestureDetector(
                    onTap: () => onRemove?.call(address),
                    child: Icon(
                      Icons.delete,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget convertToCard(BuildContext context, Address address) {
    final s = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${s.streetName}:  ',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Flexible(
              child: Column(
                children: <Widget>[Text(address.street.toString())],
              ),
            )
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${s.city}:  ',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Flexible(
              child: Column(
                children: <Widget>[Text(address.city.toString())],
              ),
            )
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${s.stateProvince}:  ',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Flexible(
              child: Column(
                children: <Widget>[Text(address.state.toString())],
              ),
            )
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${s.country}:  ',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Flexible(
              child: Column(
                children: <Widget>[Text(address.country.toString())],
              ),
            )
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${s.zipCode}:  ',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Flexible(
              child: Column(
                children: <Widget>[Text(address.zipCode.toString())],
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
