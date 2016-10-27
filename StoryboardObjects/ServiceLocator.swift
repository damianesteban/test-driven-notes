//
//  ServiceLocator.swift
//  StoryboardObjects
//
//  Created by Damian Esteban on 10/27/16.
//  Copyright © 2016 Damian Esteban. All rights reserved.
//

import Foundation
import UIKit

class ServiceLocator {
    
    // Convenience function for Storyboard
    private static var storyBoard: UIStoryboard = {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }()
    
    // Convenience function for rootviewcontroller
    private static func provideUIViewControllerWithName(name: String) -> UIViewController {
        return storyBoard.instantiateViewController(withIdentifier: name)
    }
    
    static func provideNotesListViewController() -> NotesListViewController {
        let viewController = provideUIViewControllerWithName(name: "NotesListViewController") as! NotesListViewController
        return viewController
    }
    static func provideRootViewController() -> UIViewController {
        let viewController = provideUIViewControllerWithName(name: "NotesListViewController") as! NotesListViewController
        return UINavigationController(rootViewController: viewController)
    }
}
