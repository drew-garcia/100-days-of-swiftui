//
//  ContentView.swift
//  ViewAndModifiers
//
//  Created by drewdev on 6/7/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .title()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
