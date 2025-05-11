//
//  VisionTextRecognizer.swift
//  summary application
//
//  Created by 鈴木廉太郎 on 2025/05/11.
//

import Vision
import UIKit

class VisionTextRecognizer {
    func recognizeText(from image: UIImage, completion: @escaping (String) -> Void) {
        guard let cgImage = image.cgImage else {
            completion("")
            return
        }

        let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        let request = VNRecognizeTextRequest { request, error in
            guard let observations = request.results as? [VNRecognizedTextObservation] else {
                completion("")
                return
            }

            let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
            completion(recognizedStrings.joined(separator: "\n"))
        }

        try? requestHandler.perform([request])
    }
}
