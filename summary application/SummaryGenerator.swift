//
//  SummaryGenerator.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import Reductio

Reductio.summarize(text: "要約したい文章", ratio: 0.3) { summary in
    print(summary)
}
