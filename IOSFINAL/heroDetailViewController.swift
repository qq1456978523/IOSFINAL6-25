//
//  heroViewController.swift
//  IOSFINAL
//
//  Created by User16 on 2019/6/23.
//  Copyright © 2019 User16. All rights reserved.
//

import UIKit

class heroDetailViewController: UIViewController {
    
    var hero2 : Hero?

    @IBOutlet weak var info: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let hero = hero2{
            info.text = hero.info
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
