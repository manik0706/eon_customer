import 'package:flutter/material.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        //backgroundColor: Color(0xff3a3637),
        title: Text(
          "Welcome Back,",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black, //remove this when you add image.
              ),
              // child: imageCache(
              //   width: 120,
              //   height: 120,
              //   fit: BoxFit.cover,
              //   imageUrl: "imageUrl goes here",
              //),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            khali(),
            homeCard(),
          ],
        ),
      ),
    );
  }
}

// Widget mapBack() {
//   return Expanded(
//     child: GoogleMap(
//       controller: _model.googleMapsController,
//       onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
//       initialLocation: _model.googleMapsCenter ??=
//           LatLng(13.106061, -59.613158),
//       markerColor: GoogleMarkerColor.violet,
//       mapType: MapType.normal,
//       style: GoogleMapStyle.standard,
//       initialZoom: 14,
//       allowInteraction: true,
//       allowZoom: true,
//       showZoomControls: true,
//       showLocation: true,
//       showCompass: false,
//       showMapToolbar: false,
//       showTraffic: false,
//       centerMapOnMarkerTap: true,
//     ),
//   );
// }

Widget khali() {
  return Expanded(
      child: Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.black,
    ),
  ));
}

Widget homeCard() {
  return Expanded(
    child: Container(
      width: double.infinity,
      height: 800,
      decoration: BoxDecoration(
        //color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.white,
            offset: Offset(0, -1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 10, 10),
              child: SizedBox(
                height: 30,
                child: Text(
                  'Where you want to go?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),

                  // suffixIcon: Icon(
                  //   Icons.info,
                  //   color: Colors.black,
                  // ),
                  labelText: 'Enter Current Location',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                  //hintText: 'hint text',
                  //helperText: 'eg: ',

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  // ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),

                  // suffixIcon: Icon(
                  //   Icons.info,
                  //   color: Colors.black,
                  // ),
                  labelText: 'Search Destination',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                  //hintText: 'hint text',
                  //helperText: 'eg: ',

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  // ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                        //color: FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        //mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          bikeIcon(),
                          carIcon(),
                          autoIcon(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bookRideButton(),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget autoIcon() {
  return InkWell(
    child: Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
          //color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8),

          //color: FlutterFlowTheme.of(context).tertiary,
          ),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://picsum.photos/seed/821/600',
                width: 200,
                height: 71,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            'Auto',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget carIcon() {
  return InkWell(
    child: Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
          //color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8),

          //color: FlutterFlowTheme.of(context).tertiary,
          ),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://picsum.photos/seed/821/600',
                width: 200,
                height: 71,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            'Car',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget bikeIcon() {
  return InkWell(
    child: Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
          //color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8),
          //color: FlutterFlowTheme.of(context).tertiary,
          ),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://picsum.photos/seed/821/600',
                width: 200,
                height: 71,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            'Bike',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget bottomCard() {
  return Expanded(
    //flex: 2,
    child: Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.yellow,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x33000000),
            offset: Offset(0, -1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    ),
  );
}

Widget bookRideButton() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(255, 211, 0, 0.8)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Book Ride',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
