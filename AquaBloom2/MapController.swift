//
//  MapController.swift
//  AquaBloom2
//
//  Created by Tanisha Boekstaaf on 4/8/25.
//

import Foundation
import SwiftUICore
import _MapKit_SwiftUI
import MapKit

class MapController: NSObject, ObservableObject {
    @Published var annotations: [MKPointAnnotation] = []
}
struct MapView: View {
    let lake1 = CLLocationCoordinate2D(latitude: 43.4501, longitude: -87.2220)
    let lake2 = CLLocationCoordinate2D(latitude: 45.0522, longitude: -82.4851)
    let lake3 = CLLocationCoordinate2D(latitude: 47.7231, longitude: -86.9407)
    let lake4 = CLLocationCoordinate2D(latitude: 42.0669, longitude: -81.3399)
    
    @State var camera: MapCameraPosition = .automatic
    
var body: some View {
        Map () {
            
            Annotation("Lake Michigan", coordinate:lake1) {
                Image("map marker (unselected) icon")
                    .background(Color.clear)
                    .imageScale(.small)
            }
            Annotation("Lake Huron", coordinate:lake2) {
                Image("map marker (unselected) icon")
                    .background(Color.clear)
                    .imageScale(.small)
            }
            Annotation("Lake Superior", coordinate:lake3) {
                Image("map marker (unselected) icon")
                    .background(Color.clear)
                    .imageScale(.small)
            }
            Annotation("Lake Erie", coordinate:lake4) {
                Image("map marker (unselected) icon")
                    .background(Color.clear)
                    .imageScale(.small)
                
            }
           
            /*
            Marker("Lake Michigan", image: "map marker (unselected) icon", coordinate: lake1)
            Marker("Lake Huron", image: "map marker (unselected) icon", coordinate: lake2)
            Marker("Lake Superior", image: "map marker (unselected) icon", coordinate: lake3)
            Marker("Lake Erie", image: "map marker (unselected) icon", coordinate: lake4)
*/
        }
    }
}

