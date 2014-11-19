//
//  ViewController.swift
//  MeetingRoomChaCha
//
//  Created by Alex Ong on 5/11/2014.
//  Copyright (c) 2014 Alex Ong. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var spriteView = self.view as SKView
        
        spriteView.showsDrawCount = true
        spriteView.showsNodeCount = true
        spriteView.showsFPS = true
    }
    
    override func viewWillAppear(animated: Bool) {
        var hello:HelloScene = HelloScene(size: view.bounds.size)
        var spriteView:SKView = self.view as SKView
        
        spriteView.presentScene(hello)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

