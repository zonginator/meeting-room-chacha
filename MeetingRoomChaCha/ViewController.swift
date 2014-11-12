//
//  ViewController.swift
//  MeetingRoomChaCha
//
//  Created by Alex Ong on 5/11/2014.
//  Copyright (c) 2014 Alex Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AlexLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        AlexLabel.text = "Hello Alex!"
        AlexLabel.textColor = UIColor.redColor()
        AlexLabel.textAlignment = NSTextAlignment.Center
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

