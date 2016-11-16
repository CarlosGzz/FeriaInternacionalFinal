//
//  EventosViewController.swift
//  NavigationController
//
//  Created by Laboratorio on 11/15/16.
//  Copyright © 2016 CosmicMind. All rights reserved.
//

import UIKit
import Material

class EventosViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepareTabBarItem()
    }
    
    /// NavigationBar buttons.
    private var menuButton: IconButton!
    private var searchButton: IconButton!
    
    /// Trigger to go to the next view controller.
    private var nextButton: FlatButton!
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.yellow.base
        
        prepareMenuButton()
        prepareSearchButton()
        prepareNavigationItem()
        prepareNextButton()
    }
    
    internal func handleNextButton() {
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
    
    private func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.menu)
    }

    private func prepareSearchButton() {
        searchButton = IconButton(image: Icon.cm.search)
    }
    
    private func prepareNavigationItem() {
        navigationItem.title = "Material"
        navigationItem.detail = "Build Beautiful Software"
        
        navigationItem.leftViews = [menuButton]
        navigationItem.rightViews = [searchButton]
    }
    
    private func prepareNextButton() {
        nextButton = FlatButton()
        nextButton.pulseAnimation = .none
        nextButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
        view.layout(nextButton).edges()
    }
    
    private func prepareTabBarItem() {
        tabBarItem.title = nil
        tabBarItem.image = Icon.cm.audioLibrary?.tint(with: Color.blueGrey.base)
        tabBarItem.selectedImage = Icon.cm.audioLibrary?.tint(with: Color.yellow.base)
    }


}
