//
//  ContentView.swift
//  Voyajoint
//
//  Created by Heself on 2024/3/18.
//

import SwiftUI
import MapKit

struct ContentView: View {
    // 为地图设置一个初始区域
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            
            // 使用 Map 视图展示地图
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all) // 如果你想地图忽略安全区，可加此行
            
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
