//
//  ContentView.swift
//  ColorsTwo
//
//  Created by scholar on 4/13/23.
//

import SwiftUI

struct ContentView: View {
    private var colorsArray: [Color] = [ .yellow, .green, .orange, .indigo, .teal, .pink]
    
//private var systemImages: [String] = [ "trash", "cloud", "bolt" ]
    
    var body: some View {
//        NavigationStack {
//            List(colorsArray, id: \.self) { individualColor in
//
//                NavigationLink(value: individualColor) {
//                    Text(individualColor.description)
//                }
//
//            }
//            .listStyle(.plain)
//
//            List (systemImages, id: \.self) { systemImage in
//                NavigationLink(value: systemImage) {
//                    Text(systemImage.description)
//                }
//
//            }
//            .listStyle(.plain)
//
//            .navigationDestination(for: Color.self) { color in
//                color
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//            }
//            .navigationDestination(for: String.self) { systemImage in
//                Image(systemName: systemImage)
//                    .font(.system(size: 100.0))
//            }
//
//            .navigationTitle("Color")
//        }
        
        NavigationStack {
            //change
//            List (colorsArray, id: \.self) { indColor in
//                NavigationLink(destination: indColor
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)) {
//                    Text(indColor.description)
//                }
//            }
            List (colorsArray, id: \.self) {
                individualColor in
                NavigationLink(destination: individualColor) {
                    Text(individualColor.description)
                }

            }
            .listStyle(.plain)

            .navigationTitle("Cool Colors")

        }.accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
