//
//  ContentView.swift
//  ScrollPagerDemo
//
//  Created by shiyanjun on 2024/10/22.
//

import SwiftUI
import ScrollPager

struct ContentView: View {
    private let images: [String] = (0...7).map { "m\($0)" }
    @State private var currentIndex = 0
    
    var body: some View {
        NavigationStack {
            PagingScrollView(items: images, selection: $currentIndex) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .padding(.horizontal, 5)
            }
            .navigationTitle("ScrollPager")
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
