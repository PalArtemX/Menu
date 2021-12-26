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
    @ObservedObject var vm: MenuViewModel
    
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 56.242243, longitude: 43.860245),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    // MARK: locations
    let locations = [
        Location(name: "Park Kultury",
                 coordinate: CLLocationCoordinate2D(latitude: 56.242243, longitude: 43.860245))]
    
    var body: some View {
        // MARK: Map
        Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                MarkerInfoView(vm: vm)
            }
        }
    }
}










struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(vm: MenuViewModel())
            .previewLayout(.sizeThatFits)
    }
}



