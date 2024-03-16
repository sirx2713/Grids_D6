//
//  ContentView.swift
//  Grids_D6
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct GalleryView: View {
    
    @State var sheetVisible = false
    @State var selectedImage = ""
    
    var galleryImages = [
    
        "gallery1", "gallery2", "gallery3", "gallery4",
        "gallery5", "gallery6", "gallery7", "gallery8",
        "gallery9", "gallery10", "gallery11"
    
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(), GridItem()]){
                
                ForEach(galleryImages, id: \.self){pic in
                    
                    Image(pic)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .padding(5)
                        .onTapGesture {
                            selectedImage = pic
                            sheetVisible = true
                        }
                    
                }
            }
            .sheet(isPresented: $sheetVisible, content: {
                ImageView(sheetVisible: $sheetVisible, selectedImage: $selectedImage)
            })
        }
    }
}

#Preview {
    GalleryView()
}
