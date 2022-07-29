import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/domain/exception/failure/failure_exceptions.dart';
import 'package:flutter_map/presentation/partner/list/bloc/partner_list_bloc.dart';

class PartnerSlidingPanelListWidget extends StatefulWidget {
  PartnerSlidingPanelListWidget({Key? key}) : super(key: key);

  @override
  State<PartnerSlidingPanelListWidget> createState() =>
      _PartnerSlidingPanelListWidgetState();
}

class _PartnerSlidingPanelListWidgetState
    extends State<PartnerSlidingPanelListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerListBloc, PartnerListState>(
        builder: ((context, state) {
      return state.status.when(
          loading: () => SliverToBoxAdapter(
                child: Align(
                    child: Text(
                  "Sedang Mengambil Data...",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )),
              ),
          failure: (failure) => SliverToBoxAdapter(
                child: Align(
                    child: Text(
                  "Terjadi Kesalahan, ${FailureExceptions.getErrorMessage(failure)}",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.blue,
                  ),
                )),
              ),
          success: (data) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      data![index].name,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.blue),
                                    ),
                                  ),
                                  //Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.home_outlined,
                                        size: 25.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(Icons.home_outlined),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(Icons.home_outlined)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              data[index].address,
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              data[index].phoneNumber,
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.blue),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Open - Close",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.blue),
                                      ),
                                      Text(
                                        "09.00 - 17.00",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(100, 30),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                        ),
                                        textStyle:
                                            const TextStyle(fontSize: 15.0)),
                                    onPressed: () {},
                                    child: const Text('Book'),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 181, 171, 139),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                        ),
                                        textStyle:
                                            const TextStyle(fontSize: 15.0)),
                                    onPressed: () {},
                                    child: Icon(Icons.shopping_bag_outlined),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  // 40 list items
                  childCount: data?.length,
                ),
              ),
          initial: () => SliverToBoxAdapter(
                child: Container(),
              ));
    }));
  }
}
