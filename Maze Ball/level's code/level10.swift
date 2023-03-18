import SpriteKit
import GameplayKit
import CoreMotion
import GameKit

class level10: SKScene, SKPhysicsContactDelegate {
    
    var backgroundNode: SKNode!
    var finishNode: SKNode!
    var playerNode: SKSpriteNode!
    var finishLabelNode: SKLabelNode!
    var startLabelNode: SKLabelNode!
    var angl: Double = 0.0
    var count_tap : Int = 0;
    var touch = 0;
    let levelCategory:UInt32 = 0x1 << 0
    let finishCategory:UInt32 = 0x1 << 1
    let playerCategory:UInt32 = 0x1 << 1
    
    let MotionManager =  CMMotionManager()
    var xAccelerate:CGFloat = 0
    var yAccelerate:CGFloat = 0
    
    override func didMove(to view: SKView) {
        
        backgroundNode = self.childNode(withName: "level10")
        backgroundNode.physicsBody?.categoryBitMask = levelCategory
        backgroundNode.physicsBody?.contactTestBitMask = playerCategory
        
        
        playerNode = self.childNode(withName: "Pack") as? SKSpriteNode
        playerNode.physicsBody?.isDynamic = true;
        playerNode.physicsBody!.pinned = true;
        playerNode.physicsBody?.affectedByGravity = false;
        playerNode.physicsBody?.friction = 0;
        playerNode.physicsBody?.categoryBitMask = playerCategory
        playerNode.physicsBody?.contactTestBitMask = finishCategory
        playerNode.physicsBody?.contactTestBitMask = levelCategory
        
        finishNode = self.childNode(withName: "finishlvl")
        finishNode.physicsBody?.categoryBitMask = finishCategory
        finishNode.physicsBody?.contactTestBitMask = playerCategory
        self.physicsWorld.contactDelegate = self;
        
        startLabelNode = (self.childNode(withName: "StartLbl") as! SKLabelNode)
        startLabelNode.isHidden = false;
        
                MotionManager.accelerometerUpdateInterval = 0.2
                MotionManager.startAccelerometerUpdates(to: OperationQueue.current! ) { (data:CMAccelerometerData?, error: Error?) in
                    if let accelerometerData = data {
                        let acceleration = accelerometerData.acceleration
                        self.xAccelerate = CGFloat(acceleration.x) * 0.75 + self.xAccelerate * 0.25
                        self.yAccelerate = CGFloat(acceleration.y) * 0.75 + self.yAccelerate * 0.25
                    }
                    
                }
                
                
                
    }
    
    override func didSimulatePhysics()
        {
            playerNode.position.x += xAccelerate * 10
            playerNode.position.y += yAccelerate * 10
        }




    
    func stopGame() {
        let scene = SKScene(fileNamed: "EndGameLvl10")
        scene!.scaleMode = .aspectFill
        view?.presentScene(scene)
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
         var playerBody:SKPhysicsBody
         var levelBody:SKPhysicsBody
         var finishBody:SKPhysicsBody
         
         if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask
         {
             levelBody = contact.bodyA
             playerBody = contact.bodyB
         }
         else {
             levelBody = contact.bodyB
             playerBody = contact.bodyA
         }
         
         if (playerBody.categoryBitMask & playerCategory) != 0 && (levelBody.categoryBitMask & levelCategory ) != 0
         {
             stopGame()
         }
         
         if contact.bodyA.categoryBitMask > contact.bodyB.categoryBitMask
         {
             finishBody = contact.bodyA
             playerBody = contact.bodyB
         }
         else {
             finishBody = contact.bodyB
             playerBody = contact.bodyA
         }
         
         if (playerBody.categoryBitMask & playerCategory) != 0 && (finishBody.categoryBitMask & finishCategory ) != 0
         {
             let scene = SKScene(fileNamed: "LevelComplete")
             scene!.scaleMode = .aspectFill
             view?.presentScene(scene)
         }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "MainMenuBtn" {
                let scene = SKScene(fileNamed: "MainMenu")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
                
            }
            if nodesArray.first?.name == "LevelChangeBtn" {
                let scene = SKScene(fileNamed: "Level")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touch == 0
        {
            startLabelNode.isHidden = true;
            playerNode.physicsBody?.pinned = false;
            touch += 1;
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
}
