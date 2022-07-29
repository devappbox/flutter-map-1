import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_map/application/partner/partner_service.dart';
import 'package:flutter_map/domain/partner/entity/partner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'partner_list_state.dart';
part 'partner_list_cubit.freezed.dart';

class PartnerListCubit extends Cubit<PartnerListState> {
  final PartnerService partnerService;
  PartnerListCubit({required this.partnerService})
      : _partnerService = partnerService,
        super(PartnerListState.initial());

  late PartnerService _partnerService;

  onStarted() async {
    List<Partner> p = await _partnerService.getAllPartners();
    emit(state.copyWith(partners: p));
  }

  // onSearchKeyChanged(String v) {
  //   if (v.isNotEmpty) {
  //     List<CustomerModel>? customers = [];
  //     _customerListCubit.state.customers?.forEach((customer) {
  //       if (customer.name.toLowerCase().contains(v.toLowerCase())) {
  //         customers?.add(CustomerModel.fromCustomer(customer));
  //       }
  //     });
  //     if (customers.isEmpty) {
  //       customers = null;
  //     }
  //     emit(state.copyWith(customers: customers, keyWord: v));
  //   } else {
  //     List<CustomerModel>? customers =
  //         _customerListCubit.state.customers!.map((customer) {
  //       return CustomerModel.fromCustomer(customer);
  //     }).toList();
  //     emit(state.copyWith(customers: customers));
  //   }
  // }

  // onReset() {
  //   List<CustomerModel>? customers =
  //       _customerListCubit.state.customers?.map((customer) {
  //     return CustomerModel.fromCustomer(customer);
  //   }).toList();

  //   emit(state.copyWith(customers: customers, keyWord: null));
  // }

  // onCustomerChannged(CustomerListState customerListState) {
  //   if (state.keyWord == null) {
  //     List<CustomerModel>? customers =
  //         _customerListCubit.state.customers!.map((customer) {
  //       return CustomerModel.fromCustomer(customer);
  //     }).toList();
  //     emit(state.copyWith(customers: customers));
  //   } else {
  //     List<CustomerModel>? customers = [];
  //     _customerListCubit.state.customers?.forEach((customer) {
  //       if (customer.name
  //           .toLowerCase()
  //           .contains(state.keyWord!.toLowerCase())) {
  //         customers?.add(CustomerModel.fromCustomer(customer));
  //       }
  //     });
  //     if (customers.isEmpty) {
  //       customers = null;
  //     }
  //     emit(state.copyWith(customers: customers));
  //   }
  // }

}
