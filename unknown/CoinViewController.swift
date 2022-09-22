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
    }
    
    var images = ["head2.png", "tails2.png"]
    
    var i = 0
    var coinFlipped = false
    

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var coinButton: UIButton!
    
    @IBAction func changeCoin(_ sender: UIButton) {
        let coinVC = storyboard?.instantiateViewController(withIdentifier: "selectCoin") as! SelectCoinViewController
        coinVC.coinDelegate = self
        present(coinVC, animated: true, completion: nil)
    }
    
    func changeImage(){
        image.image = UIImage(named: images[i])
        coinFlipped = true
    }
    
    @IBAction func flipCoin(_ sender: Any) {
        i = Int.random(in: 0...1)
        changeImage()
    }
    
    func getCoin(coin: Coin) {
        images[0] = coin.heads
        images[1] = coin.tails
    }
    
    
    @IBAction func unwindToCoinFlip(unwindSegue: UIStoryboardSegue) {
    }
    
    
    
}


