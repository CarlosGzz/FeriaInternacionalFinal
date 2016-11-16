//
//  PerfilViewController.swift
//  NavigationController
//
//  Created by Laboratorio on 11/15/16.
//  Copyright © 2016 CosmicMind. All rights reserved.
//

import UIKit
import Material

class PerfilViewController: UIViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepareTabBarItem()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.green.base
    }
    
    private func prepareTabBarItem() {
        tabBarItem.title = nil
        tabBarItem.image = Icon.cm.videocam?.tint(with: Color.blueGrey.base)
        tabBarItem.selectedImage = Icon.cm.videocam?.tint(with: Color.blue.base)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
