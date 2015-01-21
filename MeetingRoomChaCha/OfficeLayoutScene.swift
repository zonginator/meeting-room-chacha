//
//  OfficeLayoutScene.swift
//  MeetingRoomChaCha
//
//  Created by Alex Ong on 12/11/2014.
//  Copyright (c) 2014 Alex Ong. All rights reserved.
//

import SpriteKit

class OfficeLayoutScene: SKScene {
    var contentCreated:Bool = false

    let office = SKSpriteNode(imageNamed: "office")
    var scale = CGFloat(1.0)

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
        
        self.view?.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: Selector("zoom:")))
        var panGestureRecognizer = UIPanGestureRecognizer(target: self, action: Selector("pan:"))
        panGestureRecognizer.minimumNumberOfTouches = 1
        self.view?.addGestureRecognizer(panGestureRecognizer)
    }
    
    func pan(gesture: UIPanGestureRecognizer) {
        println("Moving!")

        var velocity = gesture.velocityInView(gesture.view)
        println("x: \(velocity.x) y:\(velocity.y)")

        var newX = (0.03 * velocity.x)
        var newY = (-0.03 * velocity.y)
        
        var vector = CGVector(dx: newX, dy: newY)
        var movementAction = SKAction.moveBy(vector, duration: 0.001)
        
        office.runAction(movementAction)
    }
    
    func zoom(gesture: UIPinchGestureRecognizer) {
        println((gesture.scale))
        println((gesture.velocity))

        scale += gesture.velocity/40
        
        office.setScale(scale)
    }
    
    func createSceneContents() {
        self.backgroundColor = SKColor.whiteColor()
        self.scaleMode = SKSceneScaleMode.AspectFit
    }
}
