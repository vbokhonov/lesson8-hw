//
//  ViewController.swift
//  BlackSquare
//
//  Created by Valentyn Bokhonov on 06.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLable: UILabel!
    @IBOutlet weak var blackSquareView: UIView!
    @IBOutlet var mainView: UIView!
    
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLable.text = "0"
    }
    
    @IBAction func tapOnBlackAquareAction(_ sender: UITapGestureRecognizer) {
        counter += 1
        counterLable.text = "\(counter)"
        let minX = Double(blackSquareView.frame.width / 2)
        let minY = Double(blackSquareView.frame.height / 2)
        let maxX = Double(mainView.frame.maxX)
        let maxY = Double(mainView.frame.maxY)
        let randomX = Double.random(in: minX ... maxX - minX)
        let randomY = Double.random(in: minY ... maxY - minY)
        blackSquareView.layer.position = CGPoint(x: randomX, y: randomY)
    }
    

}

