//
//  ContentView.swift
//  BetterRest
//
//  Created by drewdev on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    
    var body: some View {
        Text(Date.now.formatted(date: .long, time: .omitted))
    }
    
    func trivialExample() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
