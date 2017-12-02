//
//  endDayUI.swift
//  hotDog
//
//  Created by james luo on 12/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class endDayUI: UIViewController {

    @IBOutlet weak var profit: UILabel!
    @IBOutlet weak var cash: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        shop.money -= 5.0
        profit.text = String(shop.profit)
        cash.text = String(shop.money)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
