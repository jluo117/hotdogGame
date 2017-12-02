//
//  game.swift
//  hotDogTests
//
//  Created by james luo on 12/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class myStand{
    var profit = 0.00
    var inLine = 0
    var money = 0.00
    var todayPrice = 0
    var order: [Int] = [0,0,0,0]
    var inHand: [Int] = [0,0,0,0]
    init() {
    }
    func customerOrder() {
        inHand = [0,0,0,0]
        for i in  0...(order.count-1){
            order[i] = Int( arc4random_uniform(3)) + 1
        }
    }
    func addItem(tag:Int)  {
        inHand[tag] += 1
    }
    func isCorrect() -> Bool{
        for (index, value) in order.enumerated(){
            if value != inHand[index]{
                return false
            }
        }
        return true
    }
    func advance()  {
        if (self.isCorrect()){
            money += Double(todayPrice)
            profit += Double(todayPrice)
        }
        inLine -= 1
        if inLine > 0{
            self.customerOrder()
        }
    }
    func trash() {
        inHand = [0,0,0,0]
        money -= 0.5
        profit -= 0.5
    }
    func startLevel(expected: Int,Price :Int)  {
        todayPrice = Price
        if todayPrice > expected{
            inLine = Int(arc4random_uniform(7))
        }
        else{
            inLine = 7
        }
    }
}
