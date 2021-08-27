//
//  ContentView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 09.08.2021.
//

import SwiftUI

struct ContentView: View {

    @State private var selection = 0
    @State private var listItem = 0

    var body: some View {
        
        TabView(selection: $selection) {
            ButtonView() {
                selection = 1
            }
                .tabItem {
                    Image(systemName: "1.circle")
                    
                }.tag(0)
            ListView(listItem: $listItem)
                .tabItem {
                    Image(systemName: "2.circle")

                }.tag(1)

            ModalWindowView()
                .tabItem {
                    Image(systemName: "3.circle")

                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
