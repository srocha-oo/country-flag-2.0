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
        .padding()
        .frame (width: 300, alignment: .leading)
        .background (.white)
        .foregroundStyle(.black)
        .cornerRadius (10)
        .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
            
        }
    }
}


#Preview {
    AnswerRow(answer: Answer(text: "Test", isCorrect: true))
}
