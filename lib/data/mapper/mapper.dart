import 'package:flutter_tut_2024/app/extensions.dart';

// to convert the response into a non nullable object (model)

import 'package:flutter_tut_2024/data/responses/responses.dart';
import 'package:flutter_tut_2024/domain/model/model.dart';

const empty = "";
const zero = 0;

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? empty,
        this?.name?.orEmpty() ?? empty,
        this?.numOfNotifications?.orZero() ?? zero);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(this?.email?.orEmpty() ?? empty,
        this?.phone?.orEmpty() ?? empty, this?.link?.orEmpty() ?? empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}
