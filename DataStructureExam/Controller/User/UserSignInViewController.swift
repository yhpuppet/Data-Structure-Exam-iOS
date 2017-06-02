//
//  UserSignInViewController.swift
//  DataStructureExam
//
//  Created by Vincent Yang on 2017/6/2.
//  Copyright © 2017年 Vincent Yang. All rights reserved.
//

import UIKit
import Alamofire

class UserSignInViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var studentNumberTextField: VYBottomLineTextField!
    @IBOutlet weak var passwordTextField: VYBottomLineTextField!
    @IBOutlet weak var studentNumberErrorMessageLabel: UILabel!
    @IBOutlet weak var passwordErrorMessageLabel: UILabel!
    
    
    
    convenience init() {
        self.init(nibName: "UserSignInViewController", bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var studentNumber: Int? {
        if let studentNumberString = studentNumberTextField.text {
            return Int(studentNumberString)
        }
        return nil
    }
    
    private var password: String? {
        if let password = passwordTextField.text {
            return password
        }
        return nil
    }
    
    @objc func cancelKeyboard() {
        view.endEditing(true)
    }
    
    // MARK: - UIView Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        studentNumberTextField.text = "2012122715"
        passwordTextField.text = "123456"
        
        studentNumberErrorMessageLabel.text = ""
        passwordErrorMessageLabel.text = ""
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // User sign in
    @IBAction func userSignIn(_ sender: UIButton) {
        if let studentNumber = studentNumber {
            if let password = password {
                let parameters: Parameters = [
                    "studentNumber" : studentNumber,
                    "password" : password
                ]
                Alamofire.request(DataStructureExamAppURL.userSignIn, method: .post, parameters: parameters).responseJSON { response in
                    print("\(response)")
                    let result = String(data: response.data!, encoding: .utf8)
                    print("\(result)")
                }
            }
        }
        if studentNumber == nil {
            studentNumberErrorMessageLabel.text = "学生号不能为空！"
        }
        if password == nil {
            passwordErrorMessageLabel.text = "密码不能为空！"
        }
    }
    
    // User sign up
    @IBAction func userSignUp(_ sender: UIButton) {
        let userSignUpViewController = UserSignUpViewController()
        navigationController?.pushViewController(userSignUpViewController, animated: true)
    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        cancelKeyboard()
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
