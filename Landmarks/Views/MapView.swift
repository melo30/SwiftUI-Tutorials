//
//  MapView.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate : CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

#Preview {
    MapView(coordinate: landmarks[0].locationCoordinate)
}
