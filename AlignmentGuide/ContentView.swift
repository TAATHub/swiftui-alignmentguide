//
//  ContentView.swift
//  AlignmentGuide
//
//  Created by 董 亜飛 on 2023/01/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Basic Sample", destination: { BasicSampleView() })
                NavigationLink("Alignment Guide vs. Offset", destination: { AlignmentGuideVsOffsetView() })
                NavigationLink("Tag Break", destination: { TagBreakView() })
            }
            .navigationTitle("AlignmentGuide")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
