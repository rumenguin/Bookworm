//
//  RatingView.swift
//  Bookworm
//
//  Created by RUMEN GUIN on 05/02/23.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) {number in
                image(for: number)
                    .foregroundColor(number > rating ?  offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    //If the number that was passed in is greater than the current rating, return the off image if it was set, otherwise return the on image.
    //If the number that was passed in is equal to or less than the current rating, return the on image.
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        }else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
    }
}
