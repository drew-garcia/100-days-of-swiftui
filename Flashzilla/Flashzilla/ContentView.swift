//
//  ContentView.swift
//  Flashzilla
//
//  Created by drewdev on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

#Preview {
    ContentView()
}
