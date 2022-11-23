//
//  Provider.swift
//  Facade
//
//  Created by Sergei Poluboiarinov on 2022-11-23.
//

import Foundation

class PathProvider {
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldntCreateDestinationPath
        }
        let destinationPath = path.appendingPathComponent("\(fileName)")
        print(destinationPath)
        return destinationPath
    }
}
// получаем url и кладем туда фото
