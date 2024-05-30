//
//  FullCoverView.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 30/05/24.
//

import SwiftUI

struct FullCoverView: View {
    
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            Color.yellow
            VStack {
                Text("FullCoverView")
                Button("Close", action: { dismiss() })
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    FullCoverView()
}
