//
//  ContentView.swift
//  Landmarks
//
//  Created by shibang on 2021/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tag = .featured
    
    enum Tag {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("精选", systemImage: "star")
                }
                .tag(Tag.featured)
            LandmarkList()
                .tabItem {
                    Label("列表", systemImage: "list.bullet")
                }
                .tag(Tag.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
