//
//  ViewController.swift
//  Facade
//
//  Created by Sergei Poluboiarinov on 2022-11-23.
//

import UIKit

enum ImageSaverError: Error {
    case couldntCreateDestinationPath
    case couldntCreateJpegDataFromImage
    case couldntCreatePngDataFromImage
    case couldntCreateImageDestinationPath
}

enum ImageType {
    case png
    case jpeg(compressionQuality: CGFloat)
}

class ViewController: UIViewController {
    let imageSaver = ImageSaverFacade()
    let image = UIImage(named: "image")!

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            try imageSaver.save(image: image, type: .png, fileName: "my_file_name", overwrite: true)
        } catch {
            print(error)
        }
    }
}

