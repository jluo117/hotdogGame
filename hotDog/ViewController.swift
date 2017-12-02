//
//  ViewController.swift
//  hotDog
//
//  Created by james luo on 12/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit
var shop = myStand()
class ViewController: UIViewController {
    @IBOutlet weak var peopleDay: UILabel!
    var day = 0
    @IBOutlet weak var price: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        day = Int(arc4random_uniform(3))
        if (day == 0){
            peopleDay.text = "People feel like garbage"
            day =  Int(arc4random_uniform(3)) + 1
        }
        else if (day == 1){
            peopleDay.text = "People feel ok"
            day = Int(arc4random_uniform(3)) + 3
        }
        else{
            peopleDay.text = "People feel great"
            day = Int(arc4random_uniform(3)) + 6
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func priceChanger(_ sender: UISlider) {
        shop.startLevel(expected: day, Price: Int(sender.value))
        price.text = String(shop.todayPrice)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

