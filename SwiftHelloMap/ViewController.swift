/*
 * Copyright (c) 2011-2019 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

import UIKit

import NMAKit

class ViewController: UIViewController
{
    @IBOutlet weak var mapView: NMAMapView!
        private var mapMarker : NMAMapMarker?
    private class Defaults {
        static let imageName = "0.png"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.useHighResolutionMap = true
        mapView.zoomLevel = 13.2
        mapView.set(geoCenter: NMAGeoCoordinates(latitude: 44.715855, longitude: 37.791237), animation: .linear)
        mapView.copyrightLogoPosition = NMALayoutPosition.bottomCenter
    }
    private func createMapMarker() {
        let geoCoord = NMAGeoCoordinates(latitude: 44.689243, longitude: 37.792877)
        //create NMAMapMarker located with geo coordinate and icon image
        let mapMarker1 = mapMarker
        mapMarker1?.coordinates = geoCoord
        //add NMAMapMarker to map view
        _ = mapMarker.map{ _ in mapView.add(mapMarker1!) }
    }
    /*
    func addMapMarker() {
        if mapMarker == nil {
            let coordinates: NMAGeoCoordinates =
                NMAGeoCoordinates(latitude: 49.258867, longitude: -123.008046)
            NMAMapCircle = NMAMapCircle(coordinates: coordinates, radius: 50)
            mapView.add(NMAMapCircle?)

        }
    }
 */
}
