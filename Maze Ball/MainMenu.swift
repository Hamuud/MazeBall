import SpriteKit

class MainMenu: SKScene {
    var NewGameBtnNode: SKSpriteNode!
    var ChangeLvlBtnNode: SKSpriteNode!
    
    
    override func didMove(to view: SKView) {
        NewGameBtnNode = (self.childNode(withName: "newGameBtn") as! SKSpriteNode)
        ChangeLvlBtnNode = (self.childNode(withName: "ChangeLvlBtn") as! SKSpriteNode)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "newGameBtn" {
                let scene = SKScene(fileNamed: "GameScene")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
                
            }
            else if nodesArray.first?.name == "ChangeLvlBtn"{
                let scene = SKScene(fileNamed: "Level")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
}
