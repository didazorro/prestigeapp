import 'package:intl/intl.dart';

import '../../../common/config.dart';

class WalletHelpers {
  static final _defaultCurrency = kAdvanceConfig.defaultCurrency;
  static final _numberFormat = NumberFormat.currency(
    locale: kAdvanceConfig.defaultLanguage,
    name: _defaultCurrency?.currencyDisplay,
    symbol: _defaultCurrency?.symbol,
    decimalDigits: _defaultCurrency?.decimalDigits,
  );

  static double parseSymbolNumberToNumber(String currencyText) {
    if (currencyText.isEmpty) return 0.0;
    final textAfterReplace = currencyText
        .replaceAll(_numberFormat.symbols.GROUP_SEP, '')
        .replaceAll(_numberFormat.currencySymbol, '')
        .trim();
    // Because with currency of Arabic, after replace currency symbol, the number will be like •123.45
    final filterNumber = textAfterReplace.replaceAll(RegExp(r'[^\d.]'), '');
    final num = double.parse(filterNumber);
    return num;
  }

  static String parseNumberToCurrencyText(double number) {
    return _numberFormat.format(number);
  }

  static NumberFormat get numberFormat => _numberFormat;
}
