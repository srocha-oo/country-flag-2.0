//
//  Question.swift
//  country flag 2.0
//
//  Created by stephanie rocha marquez on 2/20/26.
//

import Foundation
struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}
