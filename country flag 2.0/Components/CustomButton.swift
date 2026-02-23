//
//  CustomButton.swift
//  country flag 2.0
//
//  Created by stephanie rocha marquez on 2/20/26.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var background: Color = .yellow
    var body: some View {
        struct CustomButton: View {
            var text: String
            var background: Color = .yellow
            var body: some View {
                Text(text)
                    .foregroundStyle(.cyan)
                    .padding()
                    .padding(.horizontal)
                    .background (background)
                    .cornerRadius (25)
                    .shadow(radius: 10)
                
            }
        }
    }
}

#Preview {
    CustomButton(text: "Next")
}
