//
//  MapView.swift
//  eden
//
//  Created by Christine Yang on 8/29/21.
//

import SwiftUI
import MapKit


struct MapView: View {
    @State private var goBack = false
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    
        var body: some View {
            if goBack {
                ContentView()
            } else {
                VStack {
                    Button("Home", action: {
                      goBackButton()
                    })
                
                    Map(coordinateRegion: $region)
                }
            }
        }
    
    func goBackButton() {
        goBack = true
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
