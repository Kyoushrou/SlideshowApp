//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 恵美　響詩郎 on 2020/11/20.
//  Copyright © 2020 kyoushirou.emi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func returnBotton(_ sender: Any) {
        
        nowIndex -= 1
        
        displayImage()
        
    }
    
    @IBAction func startBotton(_ sender: Any) {
        
        if (timer == nil) {
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
        }else{
            
            timer.invalidate()
            timer = nil
        }
        
    }
    
    @IBAction func moveBotton(_ sender: Any) {
        
        nowIndex += 1
        displayImage()
        
    }
    
    @IBOutlet weak var image: UIImageView!
    
//    var tamu1 = UIImage(named:"tamura1")
//    var tamu2 = UIImage(named:"tamura2")
//    var tamu3 = UIImage(named:"tamura3")
//    var pho1 = UIImage(named:"photo1")
//    var pho2 = UIImage(named:"photo2")
//    var pho3 = UIImage(named:"photo3")
//    var pho4 = UIImage(named:"photo4")
    
    let imageNameArray = [
        "tamura1",
        "tamura2",
        "tamura3",
        "photo1",
        "photo2",
        "photo3",
        "photo4"
    ]
    
    
    
    var nowIndex:Int = 0
    
    @objc func changeImage(){
        
    
        nowIndex += 1
        
        if (nowIndex > 6) {
            
            nowIndex = 0
        }
        
        let tamu1 = UIImage(named: imageNameArray[nowIndex])
        
        image.image = tamu1
        
        
        
        if (nowIndex == imageNameArray.count) {
            
            nowIndex = 0
        }
        
    }
    
    func displayImage() {
        
        ///_ = imageNameArray[nowIndex]
        
        if (nowIndex < 0) {
            
            nowIndex = 6
        
        }
        if (nowIndex > 6) {
            
            nowIndex = 0
        
        }
        
        let tamu1 = UIImage(named: imageNameArray[nowIndex])
        
        image.image = tamu1
        
        
        
    }
    
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tamu1 = UIImage(named: imageNameArray[nowIndex])
        
        image.image = tamu1
        
       
        
    }
    
    @IBAction func onTapImage(_ sender: Any) {
        
        performSegue(withIdentifier: "kakudai", sender: nil)
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // segueから遷移先のResultViewControllerを取得する
           let resultViewController:KakudaiViewController = segue.destination as! KakudaiViewController
           // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        
        resultViewController.imagename = imageNameArray[nowIndex]
//           resultViewController.x = 1
//           resultViewController.y = 1
        
       }
    
    


}

