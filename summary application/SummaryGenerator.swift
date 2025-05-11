//
//  SummaryGenerator.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import SwiftUI


class SummaryGenerator {
    func summarize(text: String, completion: @escaping ([String]) -> Void) {
        Reductio.summarize(text: text, ratio: 0.3, completion: completion)
    }
}
