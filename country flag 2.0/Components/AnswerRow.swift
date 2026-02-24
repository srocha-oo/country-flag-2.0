//
//  AnswerRow.swift
//  country flag 2.0
//
//  Created by stephanie rocha marquez on 2/23/26.
//

import SwiftUI

struct AnswerRow: View {
    @State private var isSelected = false
    var answer: Answer
    var body: some View {
        HStack (spacing: 20) {
            Image (systemName:
                    "circle.fill")
            . font(.caption)
            Text(answer.text)
                .font(.title)
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundStyle(answer.isCorrect ? .green : .red)
            }
        }
    }
}

#Preview {
    AnswerRow(answer: Answer(text: "Test", isCorrect: true))
}
