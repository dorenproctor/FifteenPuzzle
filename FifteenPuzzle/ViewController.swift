//
//  ViewController.swift
//  FifteenPuzzle
//
//  Created by Doren Proctor on 2/18/18.
//  Copyright © 2018 Doren Proctor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var boardView: BoardView!
    @IBAction func tileSelected(_ sender: UIButton) {  }
    @IBAction func shuffleTiles(_ sender: AnyObject) {  }
}

