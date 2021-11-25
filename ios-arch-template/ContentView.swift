//
//  ContentView.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = DependencyProvider.shared.providePictureViewModel()
    
    var body: some View {
        PicturesView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
