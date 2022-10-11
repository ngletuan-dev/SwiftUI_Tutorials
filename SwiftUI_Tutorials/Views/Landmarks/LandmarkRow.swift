//
//  LandmarkRow.swift
//  SwiftUI_Tutorials
//
//  Created by Tuấn Nguyễn on 09/10/2022.
//

import SwiftUI

struct LandmarkRow: View {
    static var landmarks = ModelData().landmarks
    
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[0])
            LandmarkRow(landmark: ModelData().landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
