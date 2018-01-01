//
//  StoryboardsFactory.swift
//  Portable
//

import UIKit

protocol StoryboardsFactory {
    func getStoryboard(with name: StoryboardName) -> UIStoryboard
}

enum StoryboardName: String {
    case main                       = "Main"
}

enum ModuleName: String {
    case main                       = "Main"
}

extension UIStoryboard {
    
    func instantiateViewController(with moduleName: ModuleName) -> UIViewController {
        return instantiateViewController(withIdentifier: moduleName.rawValue)
    }
}
