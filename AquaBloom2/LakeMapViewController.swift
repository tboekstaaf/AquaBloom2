//
//  LakeMapViewController.swift
//  AquaBloom2
//
//  Created by Tanisha Boekstaaf on 4/28/25.
//
import UIKit
import MapKit

class LakeMapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let lakeMichiganCoordinate = CLLocationCoordinate2D(latitude: 42.3655, longitude: -88.0833)

        let region = MKCoordinateRegion(
            center: lakeMichiganCoordinate,
            latitudinalMeters: 2000,
            longitudinalMeters: 2000
        )

        mapView.setRegion(region, animated: true)
    }
}
