//
//  standUI.swift
//  hotDog
//
//  Created by james luo on 12/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class standUI: UIViewController {

    @IBOutlet weak var stat: UILabel!
    @IBOutlet weak var Line: UILabel!
    @IBOutlet weak var Money: UILabel!
    @IBOutlet weak var Sause: UILabel!
    @IBOutlet weak var Beef: UILabel!
    @IBOutlet weak var Bacon: UILabel!
    @IBOutlet weak var Cheese: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        shop.customerOrder()
        update()
        shop.profit = 0
        // Do any additional setup after loading the view.
    }
   
    @IBAction func addFood(_ sender: UIButton) {
        shop.addItem(tag: sender.tag)
    }
    @IBAction func check(_ sender: UIButton) {
        if(shop.isCorrect()){
            stat.text = "Correct"
        }
        else{
            stat.text = "Wrong"
        }
    }
    
    @IBAction func trash(_ sender: Any) {
        shop.trash()
        Money.text = String(shop.money)
    }
    
    
    @IBAction func done(_ sender: Any) {
        shop.advance()
        stat.text = ""
        if shop.inLine > 0{
            self.update()
        }
        else{
            performSegue(withIdentifier: "dayReport", sender: self)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func update()  {
        Money.text = String(shop.money)
        Line.text = String(shop.inLine)
        Beef.text = String(shop.order[0])
        Bacon.text = String(shop.order[1])
        Sause.text = String(shop.order[2])
        Cheese.text = String(shop.order[3])
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
