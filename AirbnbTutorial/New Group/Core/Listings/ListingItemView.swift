//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by Taha Obed on 23.10.23.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // MARK: Image
            ListingImageCarouselView()
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Mark: listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Floria")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("4.98")
                        .foregroundStyle(.gray)
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
