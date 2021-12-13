//
//  MapView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI
import MapKit

// MARK: - Location
struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

// MARK: - MapView
struct MapView: View {
    
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 56.242243, longitude: 43.860245),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations = [
        Location(name: "Park Kul'tury", coordinate: CLLocationCoordinate2D(
        latitude: 56.242243,
        longitude: 43.860245))
    ]
    
    
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                
                MarkerInfoView(nameCafe: "Park Kultury")
            }
        }
    }
}










struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}



