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

    override init(size: CGSize) {
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.blueColor()
        
        // 2
        var message = "You Won!"
        
        // 3
//        let label = SKLabelNode(fontNamed: "Chalkduster")
//        label.text = message
//        label.fontSize = 40
//        label.fontColor = SKColor.blackColor()
//        label.position = CGPoint(x: size.width/2, y: size.height/2)
//        addChild(label)
        
        // 4
//        runAction(SKAction.sequence([
//            SKAction.waitForDuration(3.0),
//            SKAction.runBlock() {
//                // 5
//                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
//                let scene = HelloScene(size: size)
//                self.view?.presentScene(scene, transition:reveal)
//            }
//            ]))
        
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        office.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        // 4
        addChild(office)
        createSceneContents()
    }
    
    func createSceneContents() {
        self.backgroundColor = SKColor.whiteColor()
        self.scaleMode = SKSceneScaleMode.AspectFit
        self.addChild(newHelloNode())
    }
    
    func newHelloNode() -> SKLabelNode {
        var helloNode:SKLabelNode = SKLabelNode(fontNamed: "Chalkduster")
        helloNode.text = "안녕하세요, 소리!"
//        helloNode.text = "Hello, Sori!"
        helloNode.fontSize = 42
        helloNode.fontColor = SKColor.redColor()
        helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        return helloNode
    }
}
