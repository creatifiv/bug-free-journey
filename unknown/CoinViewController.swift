//
//  ViewController.swift
//  unknown
//
//  Created by m1 on 17/09/2022.
//

import UIKit

class CoinViewController: UIViewController, CoinDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.image = UIImage(named: "img2.png")
        coinSide.text = " "
        flag.image = UIImage(named: "")
        //flag.image = UIImage(named: "us.png")
    }
    
    var images = ["us_front.png", "us_back.png"]
    
    var i = 0
    var obverseCount = 0
    var reverseCount = 0
    var coinFlipped = false
    var setFlag = false
    var flipCoinCount = 0
    

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var coinSide: UILabel!
    @IBOutlet weak var flag: UIImageView!
    
    //MARK: Select new coin view controller
    @IBAction func changeCoin(_ sender: UIButton) {
        let coinVC = storyboard?.instantiateViewController(withIdentifier: "selectCoin") as! SelectCoinViewController
        coinVC.coinDelegate = self
        present(coinVC, animated: true, completion: nil)
        
        image.image = UIImage(named: "img2.png")
        coinSide.text = " "
    }
    
    func setFlagImage(country:String){
        if setFlag == false{
            flag.image = UIImage(named: country)
        }
    }
    
    
    func changeImage(){
        image.image = UIImage(named: images[i])
        coinFlipped = true
        
    }
    
    @IBAction func flipCoin(_ sender: Any) {
        i = Int.random(in: 0...1)
        changeImage()
        if flipCoinCount == 0{
            setFlagImage(country: "us.png")
            flipCoinCount = 1
        }
        
        
        if i == 0{
            coinSide.text = "Heads"
            obverseCount += 1
            if obverseCount > 1{
                coinSide.text! += " " + "x" + String(obverseCount)
            }
        }
        else{
            obverseCount = 0
        }
        if i == 1{
            coinSide.text = "Tails"
            reverseCount += 1
            if reverseCount > 1{
                coinSide.text! +=  " " + "x" + String(reverseCount)
            }
        }
        else{
            reverseCount = 0
        }
    }
    
    func getCoin(coin: Coin) {
        images[0] = coin.heads
        images[1] = coin.tails
        flag.image = UIImage(named: coin.country)
    }
    
    
    @IBAction func unwindToCoinFlip(unwindSegue: UIStoryboardSegue) {
    }
    
    
    
}


