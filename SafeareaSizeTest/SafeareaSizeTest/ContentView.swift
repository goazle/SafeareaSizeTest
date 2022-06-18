//
//  ContentView.swift
//  SafeareaSizeTest
//
//  Created by goazle on 2022/06/17.
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct ContentView: View {

    // SafeareaInsets
    private var safeareaInsets: UIEdgeInsets? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        return windowScene?.windows.first?.safeAreaInsets
    }

    var body: some View {
        GeometryReader { geometry in
            Color.yellow
            VStack(alignment: .leading) {
                Spacer()
                // Device Size (Heighe, Width)
                Text("デバイス：高さ=\(UIScreen.main.bounds.height)、幅=\(UIScreen.main.bounds.width)")
                    .font(.title2)
                // Top of SafeArea
                Text("SafeAreaの上部：高さ=\(safeareaInsets?.top.description ?? "-")")
                    .font(.title2)
                // Bottom of SafeArea
                Text("SafeAreaの下部：高さ=\(safeareaInsets?.bottom.description ?? "-")")
                    .font(.title2)
                // Left side of SafeArea
                Text("SafeAreaの左側：幅=\(safeareaInsets?.left.description ?? "-")")
                    .font(.title2)
                // Right side of SafeArea
                Text("SafeAreaの右側：幅=\(safeareaInsets?.right.description ?? "-")")
                    .font(.title2)
                // SafeArea Size (Height, Width)
                Text("SafeArea(背景色黄色)：高さ=\(geometry.size.height)、幅=\(geometry.size.width)")
                    .font(.title2)
                Spacer()
            }.padding()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad mini (6th generation)")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
