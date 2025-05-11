//
//  TextFormatter.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import SwiftUI

class TextFormatter {
    func cleanText(_ text: String) -> String {
        var cleaned = text.replacingOccurrences(of: "\n\n", with: "\n")
        cleaned = cleaned.replacingOccurrences(of: "[^\\w\\s]", with: "", options: .regularExpression)
        return cleaned
    }
}
