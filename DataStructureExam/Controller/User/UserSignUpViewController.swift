//
//  UserSignUpViewController.swift
//  DataStructureExam
//
//  Created by Vincent Yang on 2017/6/2.
//  Copyright © 2017年 Vincent Yang. All rights reserved.
//

import UIKit
import TTSegmentedControl

class UserSignUpViewController: UIViewController {
    @IBOutlet weak var sexSegmentedControl: TTSegmentedControl!
    
    convenience init() {
        self.init(nibName: "UserSignUpViewController", bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        sexSegmentedControl.itemTitles = ["男","女"]
        sexSegmentedControl.allowChangeThumbWidth = false
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
