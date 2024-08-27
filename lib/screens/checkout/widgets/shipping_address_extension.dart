part of 'shipping_address.dart';

extension on _ShippingAddressState {
  void updateAddress(Address? newAddress) {
    address = newAddress;
    loadUserInfoFromAddress(newAddress);
    loadAddressFields(address);
  }

  void loadUserInfoFromAddress(Address? address) {
    _textControllers[AddressFieldType.firstName]?.text =
        address?.firstName?.trim() ?? '';
    _textControllers[AddressFieldType.lastName]?.text =
        address?.lastName?.trim() ?? '';
    _textControllers[AddressFieldType.phoneNumber]?.text =
        address?.phoneNumber?.trim() ?? '';
    _textControllers[AddressFieldType.email]?.text =
        address?.email?.trim() ?? '';
  }

  void loadAddressFields(Address? address) {
    _textControllers[AddressFieldType.country]?.text =
        address?.country?.trim() ?? '';
    _textControllers[AddressFieldType.state]?.text =
        address?.state?.trim() ?? '';
    _textControllers[AddressFieldType.city]?.text = address?.city?.trim() ?? '';
    _textControllers[AddressFieldType.apartment]?.text =
        address?.apartment?.trim() ?? '';
    _textControllers[AddressFieldType.block]?.text =
        address?.block?.trim() ?? '';
    _textControllers[AddressFieldType.street]?.text =
        address?.street?.trim() ?? '';
    _textControllers[AddressFieldType.zipCode]?.text =
        address?.zipCode?.trim() ?? '';
    refresh();
  }

  bool checkToSave() {
    var listAddress = <Address>[];
    var data = UserBox().addresses;
    if (data.isNotEmpty) {
      listAddress.addAll(data);
    }
    for (var local in listAddress) {
      final isNotExistedInLocal = local.isDiff(
        Address(
          city: _textControllers[AddressFieldType.city]?.text,
          street: _textControllers[AddressFieldType.street]?.text,
          zipCode: _textControllers[AddressFieldType.zipCode]?.text,
          state: _textControllers[AddressFieldType.state]?.text,
        ),
      );

      if (isNotExistedInLocal) {
        continue;
      }

      showDialog(
        context: context,
        useRootNavigator: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(S.of(context).yourAddressExistYourLocal),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  S.of(context).ok,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              )
            ],
          );
        },
      );
      return false;
    }
    return true;
  }

  void saveDataToLocal() {
    var listAddress = <Address>[];
    final address = this.address;
    if (address != null) {
      listAddress.add(address);
    }
    var listData = UserBox().addresses;
    if (listData.isNotEmpty) {
      for (var item in listData) {
        listAddress.add(item);
      }
    }
    UserBox().addresses = listAddress;
    FlashHelper.message(
      context,
      message: S.of(context).yourAddressHasBeenSaved,
    );
  }

  String? validateEmail(String email) {
    if (email.isEmail) {
      return null;
    }
    return S.of(context).errorEmailFormat;
  }

  /// Load Shipping beforehand
  void _loadShipping({bool beforehand = true}) {
    Services().widget.loadShippingMethods(
        context, Provider.of<CartModel>(context, listen: false), beforehand);
  }

  /// on tap to Next Button
  void _onNext() {
    {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Provider.of<CartModel>(context, listen: false).setAddress(address);
        _loadShipping(beforehand: false);
        widget.onNext!();
      } else {
        FlashHelper.errorMessage(
          context,
          message: S.of(context).pleaseInput,
        );
      }
    }
  }

  Widget renderStateInput(bool isDesktop) {
    var items = <DropdownMenuItem>[];
    for (var item in states!) {
      items.add(
        DropdownMenuItem(
          value: item.id,
          child: Text(HtmlUnescape().convert(item.name ?? '')),
        ),
      );
    }
    String? value;

    Object? firstState = states!
        .firstWhereOrNull((o) => o.id.toString() == address!.state.toString());

    if (firstState != null) {
      value = address!.state;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isDesktop)
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              S.of(context).stateProvince,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 20 / 14,
              ),
            ),
          ),
        Container(
          height: isDesktop ? 51 : null,
          decoration: isDesktop
              ? BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.surface,
                )
              : null,
          padding: isDesktop ? const EdgeInsets.all(16) : null,
          child: DropdownButton(
            items: items,
            value: value,
            onChanged: (dynamic val) async {
              address!.state = val;
              final country = Country(id: address!.country);
              final state = CountryState(id: val);
              cities = await Services().widget.loadCities(country, state);
              address!.zipCode = '';
              _textControllers[AddressFieldType.zipCode]?.text = '';
              refresh();
            },
            isExpanded: true,
            itemHeight: 70,
            icon:
                isDesktop ? const Icon(Icons.arrow_drop_down, size: 20) : null,
            hint: Text(S.of(context).stateProvince),
            underline: isDesktop ? const SizedBox() : null,
          ),
        ),
      ],
    );
  }

  Widget renderCityInput(int index) {
    var items = <DropdownMenuItem>[];
    for (var item in cities!) {
      items.add(
        DropdownMenuItem(
          value: item.id,
          child: Text(item.name!),
        ),
      );
    }
    String? value;

    Object? firstCity = cities!
        .firstWhereOrNull((o) => o.name.toString() == address!.city.toString());

    if (firstCity != null) {
      value = address!.city;
    }
    return DropdownButtonFormField<dynamic>(
      items: items,
      value: value,
      validator: (val) {
        final config = _configs[index];
        if (config == null) {
          return null;
        }
        return validateField(
            val, config, _fieldPosition[index] ?? AddressFieldType.unknown);
      },
      onChanged: (dynamic val) async {
        address!.city = val;
        final country = Country(id: address!.country);
        final state = CountryState(id: address!.state);
        final city = City(id: val, name: val);
        final zipCode =
            await Services().widget.loadZipCode(country, state, city);
        if (zipCode != null) {
          address!.zipCode = zipCode;
          _textControllers[AddressFieldType.zipCode]?.text = zipCode;
        }
        refresh();
      },
      isExpanded: true,
      itemHeight: 70,
      hint: Text(S.of(context).city),
    );
  }

  void _openCountryPickerDialog() => showDialog(
        context: context,
        useRootNavigator: false,
        builder: (contextBuilder) => countries!.isEmpty
            ? Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.pink),
                child: SizedBox(
                  height: 500,
                  child: picker.CountryPickerDialog(
                    titlePadding: const EdgeInsets.all(8.0),
                    contentPadding: const EdgeInsets.all(2.0),
                    searchCursorColor: Colors.pinkAccent,
                    searchInputDecoration:
                        const InputDecoration(hintText: 'Search...'),
                    isSearchable: true,
                    title: Text(S.of(context).country),
                    onValuePicked: (picker_country.Country country) async {
                      _textControllers[AddressFieldType.country]?.text =
                          country.isoCode;
                      address!.country = country.isoCode;
                      refresh();
                      final c =
                          Country(id: country.isoCode, name: country.name);
                      states = await Services().widget.loadStates(c);
                      address!.zipCode = '';
                      _textControllers[AddressFieldType.zipCode]?.text = '';
                      refresh();
                    },
                    itemBuilder: (country) {
                      return Row(
                        children: <Widget>[
                          picker.CountryPickerUtils.getDefaultFlagImage(
                              country),
                          const SizedBox(width: 8.0),
                          Expanded(child: Text(country.name)),
                        ],
                      );
                    },
                  ),
                ),
              )
            : Dialog(
                child: CountrySelectorWidget(
                  countries: countries,
                  onTap: (Country country) async {
                    _textControllers[AddressFieldType.country]?.text =
                        country.code!;
                    address!.country = country.id;
                    address!.countryId = country.id;
                    refresh();
                    Navigator.pop(contextBuilder);
                    states = await Services().widget.loadStates(country);
                    address!.zipCode = '';
                    _textControllers[AddressFieldType.zipCode]?.text = '';
                    refresh();
                  },
                ),
              ),
      );

  void onTextFieldSaved(String? value, AddressFieldType type) {
    switch (type) {
      case AddressFieldType.firstName:
        address?.firstName = value;
        break;
      case AddressFieldType.lastName:
        address?.lastName = value;
        break;
      case AddressFieldType.phoneNumber:
        address?.phoneNumber = value;
        break;
      case AddressFieldType.email:
        address?.email = value;
        break;
      case AddressFieldType.country:
        address?.country = value;
        break;
      case AddressFieldType.state:
        address?.state = value;
        break;
      case AddressFieldType.city:
        address?.city = value;
        break;
      case AddressFieldType.apartment:
        address?.apartment = value;
        break;
      case AddressFieldType.block:
        address?.block = value;
        break;
      case AddressFieldType.street:
        address?.street = value;
        break;
      case AddressFieldType.zipCode:
        address?.zipCode = value?.trim();
        break;

      /// Unsupported.
      case AddressFieldType.searchAddress:
      case AddressFieldType.selectAddress:
      case AddressFieldType.unknown:
      default:
        break;
    }
  }

  String? validateField(
      String? val, AddressFieldConfig config, AddressFieldType type) {
    if (!config.required) {
      return null;
    }

    final label = type.getTitle(context)?.toLowerCase();
    if ((val?.isEmpty ?? true) && label != null) {
      return S.of(context).theFieldIsRequired(label);
    }
    if (val != null && type == AddressFieldType.email) {
      return validateEmail(val);
    }
    return null;
  }

  TextInputType getKeyboardType(AddressFieldType type) {
    if (type == AddressFieldType.zipCode &&
        kPaymentConfig.enableAlphanumericZipCode) {
      return TextInputType.streetAddress;
    }
    return type.keyboardType;
  }

  Widget _buildBottom(bool isDesktop) {
    final textButton = kPaymentConfig.enableShipping
        ? S.of(context).continueToShipping
        : kPaymentConfig.enableReview
            ? S.of(context).continueToReview
            : S.of(context).continueToPayment;

    return CheckoutActionWidget(
      labelPrimary: textButton,
      iconPrimary: Icons.local_shipping_outlined,
      onTapPrimary: _onNext,
      labelSecondary: S.of(context).saveAddress,
      iconSecondary: CupertinoIcons.plus_app,
      onTapSecondary: () {
        if (!checkToSave()) return;
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          Provider.of<CartModel>(context, listen: false).setAddress(address);
          saveDataToLocal();
        } else {
          FlashHelper.errorMessage(
            context,
            message: S.of(context).pleaseInput,
          );
        }
      },
    );
  }

  bool isFieldReadOnly(int index) {
    final config = _configs[index];
    if (config == null) {
      return false;
    }

    /// Disable edit only when the field has a default value.
    if (!config.editable && config.defaultValue.isNotEmpty) {
      return true;
    }

    return false;
  }

  Widget _renderSelectAddressButton() => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _onShowSelectAddressForDesktop,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.person_crop_square,
                size: 16,
                color: Colors.blue[800],
              ),
              const SizedBox(width: 4),
              Text(
                S.of(context).selectAddress,
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
}

class CountrySelectorWidget extends StatefulWidget {
  const CountrySelectorWidget({
    super.key,
    this.countries,
    required this.onTap,
  });

  final List<Country>? countries;
  final void Function(Country) onTap;

  @override
  State<CountrySelectorWidget> createState() => _CountrySelectorWidgetState();
}

class _CountrySelectorWidgetState extends State<CountrySelectorWidget> {
  late final _listCountry = List<Country>.from(widget.countries ?? []);
  late final _listCountryShow = List<Country>.from(_listCountry);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.7,
      constraints: const BoxConstraints(
        maxWidth: 600,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              S.of(context).country,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: S.of(context).country,
            ),
            onChanged: (value) {
              setState(() {
                final listItem = List<Country>.from(_listCountry);
                if (value.isNotEmpty) {
                  listItem.removeWhere((element) {
                    final valueCompare = value.toLowerCase();
                    final notContainsName =
                        element.name!.toLowerCase().contains(valueCompare) ==
                            false;

                    final notContainsIsoCode =
                        element.code!.toLowerCase().contains(valueCompare) ==
                            false;

                    return notContainsIsoCode && notContainsName;
                  });
                }

                _listCountryShow
                  ..clear()
                  ..addAll(listItem);
              });
            },
          ),
          const SizedBox(height: 5),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  _listCountryShow.length,
                  (index) {
                    return GestureDetector(
                      onTap: () async {
                        widget.onTap(_listCountryShow[index]);
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: _listCountryShow[index].icon != null
                            ? SizedBox(
                                height: 30,
                                width: 50,
                                child: FluxImage(
                                  imageUrl: _listCountryShow[index].icon!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : (_listCountryShow[index].code != null
                                ? Image.asset(
                                    picker.CountryPickerUtils
                                        .getFlagImageAssetPath(
                                            _listCountryShow[index].code!),
                                    height: 30,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    package: 'country_pickers',
                                  )
                                : const SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: Icon(Icons.streetview),
                                  )),
                        title: Text(_listCountryShow[index].name!),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
