//
//  GetPictures.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 2/12/21.
//

import Foundation

final class GetPictures {

    private let repository: PicturesRepository

    init(repository: PicturesRepository) {
        self.repository = repository
    }

    func invoke() async -> [Picture] {
        return await repository.getPictures()
    }
}
