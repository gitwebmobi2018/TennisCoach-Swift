//
//  Navigator.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    enum Identifier: String {
        case CoachView
        case ContainerView
        case PlayerProfile
        case Level
        case Goal
    }
    
    convenience init(storyboard: UIStoryboard.Identifier, bundle: Bundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }
}

protocol StoryboardIdentifiable { }

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController: StoryboardIdentifiable {
    
    enum Identifier: String {
        case CoachViewController
        
        var storyboard: UIStoryboard.Identifier {
            switch self {
            case .CoachViewController:
                return .CoachView
            }
        }
    }
    
    class func instantiate(_ viewController: UIViewController.Identifier) -> UIViewController {
        return UIStoryboard(storyboard: viewController.storyboard).instantiateViewController(withIdentifier: viewController.rawValue)
    }
    
    class func instantiate<T: UIViewController>() -> T where T: StoryboardIdentifiable{
        guard let identifier = Identifier(rawValue:T.storyboardIdentifier),
            let viewController = UIStoryboard(storyboard: identifier.storyboard).instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
                fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        return viewController
    }
}
