//
//  PicturesView.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import SwiftUI

struct PicturesView: View {
    
    @ObservedObject var viewModel: PictureViewModel

    var body: some View {
        List(viewModel.pictures){ picture in
            Text(picture.author)
        }
    }
}

//struct PicturesView_Previews: PreviewProvider {
//    static var previews: some View {
//        PicturesView()
//    }
//}
