//
//  EarthquakeList.swift
//  EarthQuakes App
//
//  Created by Navid Rouzroch on 1/13/23.
//

import SwiftUI

struct EarthquakeList: View {
    @State var earthquakeData:Earthquakes?
    var body: some View {
        if let earthquakeData = earthquakeData {
            NavigationView {
                List(earthquakeData.features, id: \.id) { earthquake in
                    NavigationLink{
                        MapView(earthquake: earthquake)
                    } label: {
                        Text(earthquake.properties.title)
                    }
                }
                .navigationTitle("Recent Earthquakes")
            }
        }
        else{
            Text("Loading . . . ")
                .onAppear(perform: {
                    loadEarthquakes { (earthquakes) in
                        self.earthquakeData = earthquakes
                    }
                })
        }
    }
}

struct EarthquakeList_Previews: PreviewProvider {
    static var previews: some View {
        EarthquakeList()
    }
}
