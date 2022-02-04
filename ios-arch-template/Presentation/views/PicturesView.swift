//
//  PicturesView.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import SwiftUI

struct PicturesView: View {

    @ObservedObject var viewModel: PictureViewModel
    @State private var selectedPicture: PictureUiModel?

    var body: some View {
        NavigationView {
            List(viewModel.pictures) { picture in
                PictureItemView(
                    picture: picture
                )
                .listRowSeparator(.hidden)
                .onTapGesture {
                    self.selectedPicture = picture
                }
            }
            .listStyle(PlainListStyle())
            .onAppear {
                viewModel.loadPictures()
            }
            .navigationTitle("iOS Arch Template")
            .sheet(item: self.$selectedPicture) { picture in
                SafariView(url: URL(string: picture.link)!)
            }
        }
    }
}
