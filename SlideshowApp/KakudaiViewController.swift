//
//  KakudaiViewController.swift
//  SlideshowApp
//
//  Created by 恵美　響詩郎 on 2020/11/21.
//  Copyright © 2020 kyoushirou.emi. All rights reserved.
//

import UIKit



class KakudaiViewController: UIViewController {
    
    var imagename = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tamu1 = UIImage(named: imagename)
        
        kakudaiImage.image = tamu1
        
    }
    
    @IBOutlet weak var kakudaiImage: UIImageView!
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
