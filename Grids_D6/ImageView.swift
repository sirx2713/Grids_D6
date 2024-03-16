//
//  ImageView.swift
//  Grids_D6
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var sheetVisible: Bool
    @Binding var selectedImage: String
    
    var body: some View {
        ZStack{
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "arrow.down.backward.toptrailing.rectangle.fill")
                            .padding()
                            .scaleEffect(2)
                            .foregroundColor(.brown)
                    })
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    ImageView(sheetVisible: Binding.constant(true), selectedImage: Binding.constant("gallery1"))
}
