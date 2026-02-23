//
//  ProgressBar.swift
//  country flag 2.0
//
//  Created by stephanie rocha marquez on 2/23/26.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle ()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundStyle(.gray)
                .cornerRadius (10)
            Rectangle()
                .frame(maxWidth: progress, maxHeight: 4)
                .foregroundStyle(.yellow)
                .cornerRadius(10)
            
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}
