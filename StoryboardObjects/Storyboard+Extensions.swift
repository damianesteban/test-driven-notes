//
//  Storyboard+Extensions.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/27/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import Foundation

import UIKit

// Extensions which I normally add to a project when using storyboards.
enum SegueIdentifier: String {
    case showBalls
}

enum StoryboardNames: String {
    case Main = "Main"
}

struct StoryBoard {
    static let main = UIStoryboard(name: StoryboardNames.Main.rawValue, bundle: nil)
}

extension UIViewController {
    class var storyboardID: String {
        return String(describing: self)
    }
}

extension UIStoryboard {
    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = instantiateViewController(withIdentifier: T.storyboardID) as? T else {
            fatalError("Error when casting to \(T.self)")
        }
        return viewController
    }
}

extension UIStoryboardSegue {
}

func ==(lhs: UIStoryboardSegue, rhs: SegueIdentifier) -> Bool {
    return lhs.identifier == rhs.rawValue
}

extension UIViewController {
    func performSegue(identifier:SegueIdentifier) {
        performSegue(withIdentifier: identifier.rawValue, sender: self)
    }
}
