import SpriteKit

class Level: SKScene {
    var level1Node: SKSpriteNode!
    var level2Node: SKSpriteNode!
    
    
    override func didMove(to view: SKView) {
        level1Node = (self.childNode(withName: "level1Btn") as! SKSpriteNode)
        level2Node = (self.childNode(withName: "level2Btn") as! SKSpriteNode)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "level1Btn" {
                let scene = SKScene(fileNamed: "GameScene")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
                else if nodesArray.first?.name == "level2Btn"{
                let scene = SKScene(fileNamed: "level2New")
                    scene!.scaleMode = .aspectFill
                    view?.presentScene(scene)
                }
            else if nodesArray.first?.name == "level10Btn"{
                let scene = SKScene(fileNamed: "level10")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level3Btn"{
                let scene = SKScene(fileNamed: "level3")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level4Btn"{
                let scene = SKScene(fileNamed: "level11")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level5Btn"{
                let scene = SKScene(fileNamed: "level5")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level6Btn"{
                let scene = SKScene(fileNamed: "level6")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            
            else if nodesArray.first?.name == "level7Btn"{
                let scene = SKScene(fileNamed: "level7")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level8Btn"{
                let scene = SKScene(fileNamed: "level8")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level9Btn"{
                let scene = SKScene(fileNamed: "level9")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level11Btn"{
                let scene = SKScene(fileNamed: "level12")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level12Btn"{
                let scene = SKScene(fileNamed: "level13")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level13Btn"{
                let scene = SKScene(fileNamed: "level14")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level14Btn"{
                let scene = SKScene(fileNamed: "level15")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level15Btn"{
                let scene = SKScene(fileNamed: "level16")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level16Btn"{
                let scene = SKScene(fileNamed: "level17")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level17Btn"{
                let scene = SKScene(fileNamed: "level18")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level18Btn"{
                let scene = SKScene(fileNamed: "level19")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level19Btn"{
                let scene = SKScene(fileNamed: "level20")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level20Btn"{
                let scene = SKScene(fileNamed: "level21")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level21Btn"{
                let scene = SKScene(fileNamed: "level22")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level22Btn"{
                let scene = SKScene(fileNamed: "level23")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level23Btn"{
                let scene = SKScene(fileNamed: "level24")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level24Btn"{
                let scene = SKScene(fileNamed: "level25")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            else if nodesArray.first?.name == "level25Btn"{
                let scene = SKScene(fileNamed: "level26")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
            if nodesArray.first?.name == "MainMenuBtn" {
                let scene = SKScene(fileNamed: "MainMenu")
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
}
