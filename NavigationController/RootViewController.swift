/*
 * Copyright (C) 2015 - 2016, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *	*	Redistributions of source code must retain the above copyright notice, this
 *		list of conditions and the following disclaimer.
 *
 *	*	Redistributions in binary form must reproduce the above copyright notice,
 *		this list of conditions and the following disclaimer in the documentation
 *		and/or other materials provided with the distribution.
 *
 *	*	Neither the name of CosmicMind nor the names of its
 *		contributors may be used to endorse or promote products derived from
 *		this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import UIKit
import Material
import Font_Awesome_Swift


class RootViewController: UIViewController {
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
        view.backgroundColor = Color.blue.base
        
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
        navigationItem.title = "Feria Internacional UDEM"
        navigationItem.detail = "Corea"
        
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
        let selectedColor   = UIColor(red: 246.0/255.0, green: 155.0/255.0, blue: 13.0/255.0, alpha: 1.0)
        let unselectedColor = UIColor(red: 16.0/255.0, green: 224.0/255.0, blue: 223.0/255.0, alpha: 1.0)
        tabBarItem.setFAIcon(icon: .FAHome)
        tabBarItem.title = "Home"
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: unselectedColor], for: .normal)
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: selectedColor], for: .selected)
        //tabBarItem.image = Icon.cm.audioLibrary?.tint(with: Color.blueGrey.base)
        //tabBarItem.selectedImage = Icon.cm.audioLibrary?.tint(with: Color.blue.base)
    }
}

