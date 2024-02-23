//
//  FabDetailView.swift
//  Circuit Assistant a
//
//  Created by 박재우 on 2/21/24.
//

import SwiftUI

struct FabDetailView: View {
    var fabrication: Fabrication
        
    var body: some View {
        ScrollView {
            Image(fabrication.image)
            
            VStack(spacing: 10) {
                
                Text(fabrication.name)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(fabrication.engName)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(fabrication.desc)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            .padding(.horizontal, 16)
            
            
        }
        .navigationTitle(fabrication.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FabDetailView(fabrication: fabrications[0])
}
