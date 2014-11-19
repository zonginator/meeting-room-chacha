//
//  HelloScene.swift
//  MeetingRoomChaCha
//
//  Created by Alex Ong on 12/11/2014.
//  Copyright (c) 2014 Alex Ong. All rights reserved.
//

import SpriteKit

class HelloScene : SKScene {
    var contentCreated:Bool = false

    let office = SKSpriteNode(imageNamed: "office")
    var scale = CGFloat(0.5)

    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor.blueColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        office.position = CGPoint(x: size.width * 0.5, y: size.height * 0.7)
        office.setScale(scale)

        addChild(office)
        createSceneContents()
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var touch = touches.anyObject() as UITouch
        var yDelta = touch.locationInView(self.view).y - touch.previousLocationInView(self.view).y
        
        scale += (yDelta/100)
        office.setScale(scale)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("touch me!")
    }
    
    func createSceneContents() {
        self.backgroundColor = SKColor.whiteColor()
        self.scaleMode = SKSceneScaleMode.AspectFit
    }
}
