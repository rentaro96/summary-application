//
//  ScanView.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import SwiftUI

struct ScanView: View {
    @State private var image: UIImage?
    @State private var showPicker = false

    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
            }

            Button("画像を選ぶ") {
                showPicker = true
            }
        }
        .sheet(isPresented: $showPicker) {
            ImagePicker(image: $image, sourceType: .photoLibrary)
        }
    }
}
