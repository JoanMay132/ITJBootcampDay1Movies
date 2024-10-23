//
//  ContentView.swift
//  ITJBootcamp
//
//  Created by Joan May on 22/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
        }
        HStack {
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
                .foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
