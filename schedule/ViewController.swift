//
//  ViewController.swift
//  drag and drop
//
//  Created by 윤승현 on 2020/07/27.
//  Copyright © 2020 윤승현. All rights reserved.
//

import UIKit
import CoreData
import Foundation
import UserNotifications
@objc class ViewController: UIViewController, UIScrollViewDelegate, UNUserNotificationCenterDelegate {
    var panGesture = UIPanGestureRecognizer()

    @IBOutlet weak var dragIn1: UIView!
    @IBOutlet weak var dragIn2: UIView!
    @IBOutlet weak var dragIn3: UIView!
    @IBOutlet weak var dragIn4: UIView!
    @IBOutlet weak var dragIn5: UIView!
    @IBOutlet weak var dragIn6: UIView!
    @IBOutlet weak var dragIn7: UIView!
    @IBOutlet weak var dragIn8: UIView!
    @IBOutlet weak var dragIn9: UIView!
    @IBOutlet weak var dragIn10: UIView!
    @IBOutlet weak var dragIn11: UIView!
    @IBOutlet weak var dragIn12: UIView!
    @IBOutlet weak var dragIn13: UIView!
    @IBOutlet weak var dragIn14: UIView!
    @IBOutlet weak var dragIn15: UIView!
    @IBOutlet weak var dragIn16: UIView!
    @IBOutlet weak var dragIn17: UIView!
    @IBOutlet weak var dragIn18: UIView!
    @IBOutlet weak var dragIn19: UIView!
    @IBOutlet weak var dragIn20: UIView!
    @IBOutlet weak var dragIn21: UIView!
    @IBOutlet weak var dragIn22: UIView!
    @IBOutlet weak var dragIn23: UIView!
    @IBOutlet weak var dragIn24: UIView!
    @IBOutlet weak var dragIn25: UIView!
    @IBOutlet weak var dragIn26: UIView!
    @IBOutlet weak var dragIn27: UIView!
    @IBOutlet weak var dragIn28: UIView!
    @IBOutlet weak var dragIn29: UIView!
    @IBOutlet weak var dragIn30: UIView!
    @IBOutlet weak var dragIn31: UIView!
    @IBOutlet weak var dragIn32: UIView!
    @IBOutlet weak var dragIn33: UIView!
    @IBOutlet weak var dragIn34: UIView!
    @IBOutlet weak var dragIn35: UIView!
    @IBOutlet weak var viewDrag: UIView!
    @IBOutlet weak var viewDrag2: UIView!
    @IBOutlet weak var viewDrag3: UIView!
    @IBOutlet weak var viewDrag4: UIView!
    @IBOutlet weak var viewDrag5: UIView!
    @IBOutlet weak var dragInText1: UILabel!
    @IBOutlet weak var dragInText2: UILabel!
    @IBOutlet weak var dragInText3: UILabel!
    @IBOutlet weak var dragInText4: UILabel!
    @IBOutlet weak var dragInText5: UILabel!
    @IBOutlet weak var dragInText6: UILabel!
    @IBOutlet weak var dragInText7: UILabel!
    @IBOutlet weak var dragInText8: UILabel!
    @IBOutlet weak var dragInText9: UILabel!
    @IBOutlet weak var dragInText10: UILabel!
    @IBOutlet weak var dragInText11: UILabel!
    @IBOutlet weak var dragInText12: UILabel!
    @IBOutlet weak var dragInText13: UILabel!
    @IBOutlet weak var dragInText14: UILabel!
    @IBOutlet weak var dragInText15: UILabel!
    @IBOutlet weak var dragInText16: UILabel!
    @IBOutlet weak var dragInText17: UILabel!
    @IBOutlet weak var dragInText18: UILabel!
    @IBOutlet weak var dragInText19: UILabel!
    @IBOutlet weak var dragInText20: UILabel!
    @IBOutlet weak var dragInText21: UILabel!
    @IBOutlet weak var dragInText22: UILabel!
    @IBOutlet weak var dragInText23: UILabel!
    @IBOutlet weak var dragInText24: UILabel!
    @IBOutlet weak var dragInText25: UILabel!
    @IBOutlet weak var dragInText26: UILabel!
    @IBOutlet weak var dragInText27: UILabel!
    @IBOutlet weak var dragInText28: UILabel!
    @IBOutlet weak var dragInText29: UILabel!
    @IBOutlet weak var dragInText30: UILabel!
    @IBOutlet weak var dragInText31: UILabel!
    @IBOutlet weak var dragInText32: UILabel!
    @IBOutlet weak var dragInText33: UILabel!
    @IBOutlet weak var dragInText34: UILabel!
    @IBOutlet weak var dragInText35: UILabel!
    @IBOutlet weak var editCondition: UIButton!
    @IBOutlet weak var dragInDelete1: UIButton!
    @IBOutlet weak var dragInDelete2: UIButton!
    @IBOutlet weak var dragInDelete3: UIButton!
    @IBOutlet weak var dragInDelete4: UIButton!
    @IBOutlet weak var dragInDelete5: UIButton!
    @IBOutlet weak var dragInDelete6: UIButton!
    @IBOutlet weak var dragInDelete7: UIButton!
    
    @IBOutlet weak var dragInDelete8: UIButton!
    @IBOutlet weak var dragInDelete9: UIButton!
    @IBOutlet weak var dragInDelete10: UIButton!
    @IBOutlet weak var dragInDelete11: UIButton!
    @IBOutlet weak var dragInDelete12: UIButton!
    @IBOutlet weak var dragInDelete13: UIButton!
    @IBOutlet weak var dragInDelete14: UIButton!
    @IBOutlet weak var dragInDelete15: UIButton!
    @IBOutlet weak var dragInDelete16: UIButton!
    @IBOutlet weak var dragInDelete17: UIButton!
    @IBOutlet weak var dragInDelete18: UIButton!
    @IBOutlet weak var dragInDelete19: UIButton!
    @IBOutlet weak var dragInDelete20: UIButton!
    @IBOutlet weak var dragInDelete21: UIButton!
    @IBOutlet weak var dragInDelete22: UIButton!
    @IBOutlet weak var dragInDelete23: UIButton!
    @IBOutlet weak var dragInDelete24: UIButton!
    @IBOutlet weak var dragInDelete25: UIButton!
    @IBOutlet weak var dragInDelete26: UIButton!
    @IBOutlet weak var dragInDelete27: UIButton!
    @IBOutlet weak var dragInDelete28: UIButton!
    @IBOutlet weak var dragInDelete29: UIButton!
    @IBOutlet weak var dragInDelete30: UIButton!
    @IBOutlet weak var dragInDelete31: UIButton!
    @IBOutlet weak var dragInDelete32: UIButton!
    @IBOutlet weak var dragInDelete33: UIButton!
    @IBOutlet weak var dragInDelete34: UIButton!
    @IBOutlet weak var dragInDelete35: UIButton!
    
    public var X = [Int]()
    public var Y = [Int]()
    public var Height = [Int]()
    public var Width = [Int]()
    public var viewpositionX = [Int]()
    public var viewpositionY = [Int]()
    public var firstpositionX = [Int]()
    public var firstpositionY = [Int]()
    public var arrColor = [UIColor]()
    public var color = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    public var subjectText = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    public let defaults = UserDefaults.standard
    @IBAction func Delete1(_ sender: Any) {
        if edit == true{
            dragIn1.backgroundColor = .systemGray6
            dragInText1.text = ""
            color[0] = 0
        }
    }
    @IBAction func Delete2(_ sender: Any) {
        if edit == true{
            dragIn2.backgroundColor = .systemGray6
            dragInText2.text = ""
            color[1] = 0
        }
    }
    @IBAction func Delete3(_ sender: UIButton) {
        if edit == true{
            dragIn3.backgroundColor = .systemGray6
            dragInText3.text = ""
            color[2] = 0
        }
    }
    @IBAction func Delete4(_ sender: Any) {
        if edit == true{
            dragIn4.backgroundColor = .systemGray6
            dragInText4.text = ""
            color[3] = 0
        }
    }
    @IBAction func Delete5(_ sender: Any) {
        if edit == true{
            dragIn5.backgroundColor = .systemGray6
            dragInText5.text = ""
            color[4] = 0
        }
    }
    @IBAction func Delete6(_ sender: Any) {
        if edit == true{
            dragIn6.backgroundColor = .systemGray6
            dragInText6.text = ""
            color[5] = 0
        }
    }
    @IBAction func Delete7(_ sender: Any) {
        if edit == true{
            dragIn7.backgroundColor = .systemGray6
            dragInText7.text = ""
            color[6] = 0
        }
    }
    @IBAction func Delete8(_ sender: Any) {
        if edit == true{
            dragIn8.backgroundColor = .systemGray6
            dragInText8.text = ""
            color[7] = 0
        }
    }
    @IBAction func Delete9(_ sender: Any) {
        if edit == true{
            dragIn9.backgroundColor = .systemGray6
            dragInText9.text = ""
            color[8] = 0
        }
    }
    @IBAction func Delete10(_ sender: Any) {
        if edit == true{
            dragIn10.backgroundColor = .systemGray6
            dragInText10.text = ""
            color[9] = 0
        }
    }
    @IBAction func Delete11(_ sender: Any) {
        if edit == true{
            dragIn11.backgroundColor = .systemGray6
            dragInText11.text = ""
            color[10] = 0
        }
    }
    @IBAction func Delete12(_ sender: Any) {
        if edit == true{
            dragIn12.backgroundColor = .systemGray6
            dragInText12.text = ""
            color[11] = 0
        }
    }
    @IBAction func Delete13(_ sender: Any) {
        if edit == true{
            dragIn13.backgroundColor = .systemGray6
            dragInText13.text = ""
            color[12] = 0
        }
    }
    @IBAction func Delete14(_ sender: Any) {
        if edit == true{
            dragIn14.backgroundColor = .systemGray6
            dragInText14.text = ""
            color[13] = 0
        }
    }
    @IBAction func Delete15(_ sender: Any) {
        if edit == true{
            dragIn15.backgroundColor = .systemGray6
            dragInText15.text = ""
            color[14] = 0
        }
    }
    @IBAction func Delete16(_ sender: Any) {
        if edit == true{
            dragIn16.backgroundColor = .systemGray6
            dragInText16.text = ""
            color[15] = 0
        }
    }
    @IBAction func Delete17(_ sender: Any) {
        if edit == true{
            dragIn17.backgroundColor = .systemGray6
            dragInText17.text = ""
            color[16] = 0
        }
    }
    @IBAction func Delete18(_ sender: Any) {
        if edit == true{
            dragIn18.backgroundColor = .systemGray6
            dragInText18.text = ""
            color[17] = 0
        }
    }
    @IBAction func Delete19(_ sender: Any) {
        if edit == true{
            dragIn19.backgroundColor = .systemGray6
            dragInText19.text = ""
            color[18] = 0
        }
    }
    @IBAction func Delete20(_ sender: Any) {
        if edit == true{
            dragIn20.backgroundColor = .systemGray6
            dragInText20.text = ""
            color[19] = 0
        }
    }
    @IBAction func Delete21(_ sender: Any) {
        if edit == true{
            dragIn21.backgroundColor = .systemGray6
            dragInText21.text = ""
            color[20] = 0
        }
    }
    @IBAction func Delete22(_ sender: Any) {
        if edit == true{
            dragIn22.backgroundColor = .systemGray6
            dragInText22.text = ""
            color[21] = 0
        }
    }
    @IBAction func Delete23(_ sender: Any) {
        if edit == true{
            dragIn23.backgroundColor = .systemGray6
            dragInText23.text = ""
            color[22] = 0
        }
    }
    @IBAction func Delete24(_ sender: Any) {
        if edit == true{
            dragIn24.backgroundColor = .systemGray6
            dragInText24.text = ""
            color[23] = 0
        }
    }
    @IBAction func Delete25(_ sender: Any) {
        if edit == true{
            dragIn25.backgroundColor = .systemGray6
            dragInText25.text = ""
            color[24] = 0
        }
    }
    @IBAction func Delete26(_ sender: Any) {
        if edit == true{
            dragIn26.backgroundColor = .systemGray6
            dragInText26.text = ""
            color[25] = 0
        }
    }
    @IBAction func Delete27(_ sender: Any) {
        if edit == true{
            dragIn27.backgroundColor = .systemGray6
            dragInText27.text = ""
            color[26] = 0
        }
    }
    @IBAction func Delete28(_ sender: Any) {
        if edit == true{
            dragIn28.backgroundColor = .systemGray6
            dragInText28.text = ""
            color[27] = 0
        }
    }
    @IBAction func Delete29(_ sender: Any) {
        if edit == true{
            dragIn29.backgroundColor = .systemGray6
            dragInText29.text = ""
            color[28] = 0
        }
    }
    @IBAction func Delete30(_ sender: Any) {
        if edit == true{
            dragIn30.backgroundColor = .systemGray6
            dragInText30.text = ""
            color[29] = 0
        }
    }
    @IBAction func Delete31(_ sender: Any) {
        if edit == true{
            dragIn31.backgroundColor = .systemGray6
            dragInText31.text = ""
            color[30] = 0
        }
    }
    @IBAction func Delete32(_ sender: Any) {
        if edit == true{
            dragIn32.backgroundColor = .systemGray6
            dragInText32.text = ""
            color[31] = 0
        }
    }
    @IBAction func Delete33(_ sender: Any) {
        if edit == true{
            dragIn33.backgroundColor = .systemGray6
            dragInText33.text = ""
            color[32] = 0
        }
    }
    @IBAction func Delete34(_ sender: Any) {
        if edit == true{
            dragIn34.backgroundColor = .systemGray6
            dragInText34.text = ""
            color[33] = 0
        }
    }
    @IBAction func Delete35(_ sender: Any) {
        if edit == true{
            dragIn35.backgroundColor = .systemGray6
            dragInText35.text = ""
            color[34] = 0
        }
    }
    
    
    /* @objc func draggedView(_ sender:UIPanGestureRecognizer){
        self.view.bringSubviewToFront(_: viewDrag)
        let translation = sender.translation(in: self.view)
        viewDrag.center = CGPoint(x: viewDrag.center.x + translation.x, y: viewDrag.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    } */
    
   
    
    @objc func draggingView(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        let draggedView = sender.view!
        draggedView.center = point
    }
    func isAppAlreadyLaunchedOnce() -> Bool {
        let defaults = UserDefaults.standard
        if let _ = defaults.string(forKey: "isAppAlreadyLaunchedOnce") {
            print("App already launched")
            return true
        } else {
            defaults.set(true, forKey: "isAppAlreadyLaunchedOnce")
            defaults.set(subjectText, forKey: "subject")
            //defaults.setColor(color: .systemRed, forKey: "backgroundColor")
            defaults.set(color, forKey: "backgroundColor")
            print("App launched first time")
            return false
        }
    }
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        if UIDevice.current.screenType == .iPhone_XR_11{
            self.view.transform = CGAffineTransform(scaleX: 1, y: 1);
        }else if UIDevice.current.screenType == .iPhone_XSMax_ProMax{
            self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
        else{
            self.view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9);
        }
        let modelName = UIDevice.modelName
        
        if modelName.contains("12 mini") {
            self.view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9);
        }else if modelName.contains("12 Pro Max"){
            self.view.transform = CGAffineTransform(scaleX: 1.02, y: 1.02);
        }else if modelName.contains("12 Pro"){
            self.view.transform = CGAffineTransform(scaleX: 0.95, y: 0.95);
        }else if modelName.contains("12"){
            self.view.transform = CGAffineTransform(scaleX: 0.94, y: 0.94);
            print("12")
        }
        
        if UITraitCollection.current.userInterfaceStyle == .dark {
            overrideUserInterfaceStyle = .light
        }
        else {
            print("Light mode")
        }

        
        
        editCondition.isHidden = true
        self.view.backgroundColor = .white
        isAppAlreadyLaunchedOnce()
        let deleteViews = [dragInDelete1, dragInDelete2, dragInDelete3, dragInDelete4, dragInDelete5, dragInDelete6,dragInDelete7,dragInDelete8,dragInDelete9,dragInDelete10,dragInDelete11,dragInDelete12,dragInDelete13,dragInDelete14,dragInDelete15,dragInDelete16,dragInDelete17,dragInDelete18,dragInDelete19,dragInDelete20,dragInDelete21,dragInDelete22,dragInDelete23,dragInDelete24,dragInDelete25,dragInDelete26,dragInDelete27, dragInDelete28, dragInDelete29, dragInDelete30, dragInDelete31, dragInDelete32, dragInDelete33, dragInDelete34, dragInDelete35]
        let views = [viewDrag, viewDrag2, viewDrag3, viewDrag4, viewDrag5]
        let dragInViews = [dragIn1, dragIn2, dragIn3, dragIn4, dragIn5, dragIn6, dragIn7, dragIn8, dragIn9, dragIn10, dragIn11, dragIn12, dragIn13, dragIn14, dragIn15, dragIn16, dragIn17, dragIn18, dragIn19, dragIn20, dragIn21, dragIn22, dragIn23, dragIn24, dragIn25, dragIn26, dragIn27, dragIn28, dragIn29, dragIn30, dragIn31, dragIn32, dragIn33, dragIn34, dragIn35]
        let dragInText = [dragInText1, dragInText2, dragInText3, dragInText4, dragInText5, dragInText6, dragInText7, dragInText8, dragInText9, dragInText10, dragInText11, dragInText12, dragInText13, dragInText14, dragInText15, dragInText16, dragInText17, dragInText18, dragInText19, dragInText20, dragInText21, dragInText22, dragInText23, dragInText24, dragInText25, dragInText26, dragInText27, dragInText28, dragInText29, dragInText30, dragInText31, dragInText32, dragInText33, dragInText34, dragInText35]
        
        for view in views where view != nil {
            let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.draggingView(_:)))
            view?.addGestureRecognizer(gestureRecognizer)
        }
        for i in 0...4{
            firstpositionX.append(Int(views[i]!.frame.origin.x))
            firstpositionY.append(Int(views[i]!.frame.origin.y))
            views[i]!.layer.cornerRadius = 10
            
        }
        for _ in 0...3{
            //subjectText.append("")
            //self.arrColor.append(UIColor.systemGray6)
            
        }
        for i in 0...34{
            //subjectText.append("")
            //color.append(0)
            arrColor.append(.systemGray6)
            deleteViews[i]!.frame = CGRect(x:Int(dragInViews[i]!.frame.origin.x) + 56, y: Int(dragInViews[i]!.frame.origin.y) - 10, width: Int(deleteViews[i]!.frame.width), height: Int(deleteViews[i]!.frame.height))
            dragInViews[i]!.layer.cornerRadius = 10
            //dragInViews[i]?.backgroundColor = arrColor[i]
            //dragInText[i]!.text = subjectText[i]
            //subjectText[i] = myarray[i]
            // arrColor[i] = myarray2[i] as! UIColor

        }
        let array = defaults.array(forKey: "subject")!
        //let array2 = defaults.colorForKey(key: "backgroundColor")
        let array2 = defaults.array(forKey: "backgroundColor")!
        
        
        // panGesture = UIPanGestureRecognizer(target: self, action: #selector(self.draggedView(_:)))

        // viewDrag.isUserInteractionEnabled = true
        // viewDrag.addGestureRecognizer(panGesture)
        
        


        //print(array2)
        for i in 0...34{
            X.append(Int(dragInViews[i]!.frame.origin.x))
            Y.append(Int(dragInViews[i]!.frame.origin.y))
            Height.append(Int(dragInViews[i]!.frame.height))
            Width.append(Int(dragInViews[i]!.frame.width))
            deleteViews[i]!.isHidden = true
            deleteViews[i]!.tintColor = .systemGray4
            dragInText[i]!.frame = CGRect(x: Int(dragInText[i]!.frame.origin.x), y: Int(dragInText[i]!.frame.origin.y), width: Int(dragInViews[i]!.frame.width), height: Int(dragInViews[i]!.frame.height))
            dragInViews[i]?.backgroundColor = .systemGray6
            dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
            color[i] = array2[i] as! Int
            subjectText[i] = array[i] as! String
            dragInText[i]!.text = array[i] as? String
            if array2[i] as! Int == 1{
                dragInViews[i]?.backgroundColor = .systemGreen
            } else if array2[i] as! Int == 2{
                dragInViews[i]?.backgroundColor = .systemYellow
            } else if array2[i] as! Int == 3{
                dragInViews[i]?.backgroundColor = .systemTeal
            } else if array2[i] as! Int == 4{
                dragInViews[i]?.backgroundColor = .link
            } else if array2[i] as! Int == 5{
                dragInViews[i]?.backgroundColor = .systemRed
            }
            
            
        }
        for view in dragInViews where dragInViews != nil {
            let longpressing = UILongPressGestureRecognizer()
            longpressing.addTarget(self, action: #selector(clicklongpress))
            view?.addGestureRecognizer(longpressing)
        }
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.forever), userInfo: nil, repeats: true)
    }
    var edit = false
    @objc func clicklongpress(){
        edit = true
        let deleteViews = [dragInDelete1, dragInDelete2, dragInDelete3, dragInDelete4, dragInDelete5, dragInDelete6,dragInDelete7,dragInDelete8,dragInDelete9,dragInDelete10,dragInDelete11,dragInDelete12,dragInDelete13,dragInDelete14,dragInDelete15,dragInDelete16,dragInDelete17,dragInDelete18,dragInDelete19,dragInDelete20,dragInDelete21,dragInDelete22,dragInDelete23,dragInDelete24,dragInDelete25,dragInDelete26,dragInDelete27, dragInDelete28, dragInDelete29, dragInDelete30, dragInDelete31, dragInDelete32, dragInDelete33, dragInDelete34, dragInDelete35]
        let dragInViews = [dragIn1, dragIn2, dragIn3, dragIn4, dragIn5, dragIn6, dragIn7, dragIn8, dragIn9, dragIn10, dragIn11, dragIn12, dragIn13, dragIn14, dragIn15, dragIn16, dragIn17, dragIn18, dragIn19, dragIn20, dragIn21, dragIn22, dragIn23, dragIn24, dragIn25, dragIn26, dragIn27, dragIn28, dragIn29, dragIn30, dragIn31, dragIn32, dragIn33, dragIn34, dragIn35]

        if edit == true{
            editCondition.isHidden = false
            for i in 0...34{
                deleteViews[i]!.isHidden = false
            }
        }
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        for i in 0...34{
            animation.fromValue = NSValue(cgPoint: CGPoint(x: dragInViews[i]!.center.x - 10, y: dragInViews[i]!.center.y))
            animation.toValue = NSValue(cgPoint: CGPoint(x: dragInViews[i]!.center.x + 10, y: dragInViews[i]!.center.y))

            dragInViews[i]!.layer.add(animation, forKey: "position")
        }
    }
    
    
    @objc func forever(){
        
        
        let deleteViews = [dragInDelete1, dragInDelete2, dragInDelete3, dragInDelete4, dragInDelete5, dragInDelete6,dragInDelete7,dragInDelete8,dragInDelete9,dragInDelete10,dragInDelete11,dragInDelete12,dragInDelete13,dragInDelete14,dragInDelete15,dragInDelete16,dragInDelete17,dragInDelete18,dragInDelete19,dragInDelete20,dragInDelete21,dragInDelete22,dragInDelete23,dragInDelete24,dragInDelete25,dragInDelete26,dragInDelete27, dragInDelete28, dragInDelete29, dragInDelete30, dragInDelete31, dragInDelete32, dragInDelete33, dragInDelete34, dragInDelete35]
        if edit == false{
            for i in 0...34{
                deleteViews[i]!.isHidden = true
            }
        }
        
        
        let viewposition1X = viewDrag.frame.origin.x
        let viewposition1Y = viewDrag.frame.origin.y
        let viewposition2X = viewDrag2.frame.origin.x
        let viewposition2Y = viewDrag2.frame.origin.y
        let viewposition3X = viewDrag3.frame.origin.x
        let viewposition3Y = viewDrag3.frame.origin.y
        let viewposition4X = viewDrag4.frame.origin.x
        let viewposition4Y = viewDrag4.frame.origin.y
        let viewposition5X = viewDrag5.frame.origin.x
        let viewposition5Y = viewDrag5.frame.origin.y
        let dragInViews = [dragIn1, dragIn2, dragIn3, dragIn4, dragIn5, dragIn6, dragIn7, dragIn8, dragIn9, dragIn10, dragIn11, dragIn12, dragIn13, dragIn14, dragIn15, dragIn16, dragIn17, dragIn18, dragIn19, dragIn20, dragIn21, dragIn22, dragIn23, dragIn24, dragIn25, dragIn26, dragIn27, dragIn28, dragIn29, dragIn30, dragIn31, dragIn32, dragIn33, dragIn34, dragIn35]
        let viewpositionX = [viewposition1X, viewposition2X, viewposition3X, viewposition4X, viewposition5X]
        let viewpositionY = [viewposition1Y, viewposition2Y, viewposition3Y, viewposition4Y, viewposition5Y]
        let views = [viewDrag, viewDrag2, viewDrag3, viewDrag4, viewDrag5]
        let dragInText = [dragInText1, dragInText2, dragInText3, dragInText4, dragInText5, dragInText6, dragInText7, dragInText8, dragInText9, dragInText10, dragInText11, dragInText12, dragInText13, dragInText14, dragInText15, dragInText16, dragInText17, dragInText18, dragInText19, dragInText20, dragInText21, dragInText22, dragInText23, dragInText24, dragInText25, dragInText26, dragInText27, dragInText28, dragInText29, dragInText30, dragInText31, dragInText32, dragInText33, dragInText34, dragInText35]
        
        defaults.set(subjectText, forKey: "subject")
        //defaults.setColor(color: .systemRed, forKey: "backgroundColor")
        defaults.set(color, forKey: "backgroundColor")
        for i in 0...34{
            subjectText[i] = String(dragInText[i]!.text!)
            //arrColor[i] = dragInViews[i]!.backgroundColor!
            
            
        }
        
        
        
        //let dragview = [viewDrag, viewDrag2, viewDrag3, viewDrag4, viewDrag5]
        
        //let viewpositionX = [Int(viewposition1X), Int(viewposition2X), Int(viewposition3X), Int(viewposition4X), Int(viewposition5X)]
        
        //let viewpositionY = [Int(viewposition1Y), Int(viewposition2Y), Int(viewposition3Y), Int(viewposition3Y), Int(viewposition4Y), Int(viewposition5Y)]
        for j in 0...4{
            for i in 0...34{
                                 //dragInViews[i]?.backgroundColor = .systemGray6
                 if Int(viewpositionX[j]) - Int(X[i]) < 15, Int(viewpositionX[j]) - Int(X[i]) > -15{
                    if Int(viewpositionY[j]) - Int(Y[i]) < 20, Int(viewpositionY[j]) - Int(Y[i]) > -20 {
                        views[j]!.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])
                         if Int(viewpositionY[j]) - Int(Y[i]) == 0, Int(viewpositionX[j]) - Int(X[i]) == 0{
                            
                            if j == 0{
                                dragInViews[i]?.backgroundColor = .systemGreen
                                dragInViews[i]!.layer.cornerRadius = 10

                                dragInText[i]?.text = viewDragText.text
                                color[i] = 1
                                dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
                                views[0]!.frame = CGRect(x: firstpositionX[j], y: firstpositionY[j], width: Width[i], height: Height[i])

                            }
                            else if j == 1{
                                dragInViews[i]?.backgroundColor = .systemYellow
                                dragInViews[i]!.layer.cornerRadius = 10

                                dragInText[i]?.text = viewDragText2.text
                                color[i] = 2

                                dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
                                views[1]!.frame = CGRect(x: firstpositionX[j], y: firstpositionY[j], width: Width[i], height: Height[i])

                            }
                            else if j == 2{
                                dragInViews[i]?.backgroundColor = .systemTeal
                                dragInViews[i]!.layer.cornerRadius = 10

                                dragInText[i]?.text = viewDragText3.text
                                color[i] = 3

                                dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
                                views[2]!.frame = CGRect(x: firstpositionX[j], y: firstpositionY[j], width: Width[i], height: Height[i])

                            }
                            else if j == 3{
                                dragInViews[i]?.backgroundColor = .link
                                dragInViews[i]!.layer.cornerRadius = 10

                                dragInText[i]?.text = viewDragText4.text
                                color[i] = 4

                                dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
                                views[3]!.frame = CGRect(x: firstpositionX[j], y: firstpositionY[j], width: Width[i], height: Height[i])

                            }
                            else if j == 4{
                                dragInViews[i]?.backgroundColor = .systemRed
                                dragInViews[i]!.layer.cornerRadius = 10
                                dragInText[i]?.text = viewDragText5.text
                                color[i] = 5

                                dragInText[i]?.font = UIFont(name: "Helvetica Neue-Bold", size: 21)
                                views[4]!.frame = CGRect(x: firstpositionX[j], y: firstpositionY[j], width: Width[i], height: Height[i])
                                

                            }
                         }

                     }
                 }
            }
        }
    

        /*for i in 0...34{
            dragInViews[i]?.backgroundColor = .systemGray6
            if Int(viewposition1X) - Int(X[i]) < 15, Int(viewposition1X) - Int(X[i]) > -15{
                if Int(viewposition1Y) - Int(Y[i]) < 20, Int(viewposition1Y) - Int(Y[i]) > -20 {
                    viewDrag.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])
                    if Int(viewposition1Y) - Int(Y[i]) == 0, Int(viewposition1X) - Int(X[i]) == 0{
                        dragInViews[i]?.backgroundColor = .systemGreen

                    }

                }
            }
        }
        for i in 0...34{
            if Int(viewposition2X) - Int(X[i]) < 15, Int(viewposition2X) - Int(X[i]) > -15{
                if Int(viewposition2Y) - Int(Y[i]) < 20, Int(viewposition2Y) - Int(Y[i]) > -20 {
                    viewDrag2.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])

                }
            }
        }
        for i in 0...34{
            if Int(viewposition3X) - Int(X[i]) < 15, Int(viewposition3X) - Int(X[i]) > -15{
                if Int(viewposition3Y) - Int(Y[i]) < 20, Int(viewposition3Y) - Int(Y[i]) > -20 {
                    viewDrag3.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])

                }
            }
        }
        for i in 0...34{
            if Int(viewposition4X) - Int(X[i]) < 15, Int(viewposition4X) - Int(X[i]) > -15{
                if Int(viewposition4Y) - Int(Y[i]) < 20, Int(viewposition4Y) - Int(Y[i]) > -20 {
                    viewDrag4.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])
                    
                }
            }
        }
        for i in 0...34{
            if Int(viewposition5X) - Int(X[i]) < 15, Int(viewposition5X) - Int(X[i]) > -15{
                if Int(viewposition5Y) - Int(Y[i]) < 20, Int(viewposition5Y) - Int(Y[i]) > -20 {
                    viewDrag5.frame = CGRect(x: X[i], y: Y[i], width: Width[i], height: Height[i])
                    /*for x in 0...4 {
                        for y in 0...4{
                            if viewpositionX[x] == viewpositionX[y] && viewpositionY[x] == viewpositionY[y]{
                                dragview[x]!.frame = CGRect(x: Int(viewpositionX[x])-46, y:Int(viewpositionY[x])-46, width:Width[1], height: Height[1])
                            }
                        }
                    }*/

                }
            }
        }*/
        
        
        
        
    }
    
    @IBOutlet weak var viewDragText: UILabel!
    @IBOutlet weak var viewDragText2: UILabel!
    @IBOutlet weak var viewDragText3: UILabel!
    
    @IBOutlet weak var viewDragText5: UILabel!
    @IBOutlet weak var viewDragText4: UILabel!
    @IBAction func addAction(_ sender: Any) {
        let alert = UIAlertController(title: "과목명을 입력해주세요", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "여기에 입력해주세요."
        })

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

            if let name = alert.textFields?.first?.text {
                print("과목명: \(name)")
                self.viewDragText.text = name
                self.viewDragText2.text = name
                self.viewDragText3.text = name
                self.viewDragText4.text = name
                self.viewDragText5.text = name
            }
        }))

        self.present(alert, animated: true)
        
    }
    
    @IBAction func changeGrade(_ sender: Any) {
        let imageToShare = self.view.toImage()

        let activityItems : NSMutableArray = []
        activityItems.add(imageToShare)

        let activityVC = UIActivityViewController(activityItems:activityItems as [AnyObject] , applicationActivities: nil)
        self.present(activityVC, animated: true, completion: nil)
    }
    func showAlert() {
        let alertController = UIAlertController(title: "스크린샷", message:
            "사진이 저장되었습니다.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    open func takeScreenshot(_ shouldSave: Bool = true) -> UIImage? {
        let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
        keyWindow?.endEditing(true)

        var screenshotImage :UIImage?
        let layer = UIApplication.shared.keyWindow!.layer
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);
        guard let context = UIGraphicsGetCurrentContext() else {return nil}
        layer.render(in:context)
        screenshotImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        if let image = screenshotImage, shouldSave {
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
        showAlert()
        return screenshotImage
    }
   
    @IBAction func screenShot(_ sender: Any) {
        takeScreenshot()
    }

    
    @IBAction func editDone(_ sender: UIButton) {
        let deleteViews = [dragInDelete1, dragInDelete2, dragInDelete3, dragInDelete4, dragInDelete5, dragInDelete6,dragInDelete7,dragInDelete8,dragInDelete9,dragInDelete10,dragInDelete11,dragInDelete12,dragInDelete13,dragInDelete14,dragInDelete15,dragInDelete16,dragInDelete17,dragInDelete18,dragInDelete19,dragInDelete20,dragInDelete21,dragInDelete22,dragInDelete23,dragInDelete24,dragInDelete25,dragInDelete26,dragInDelete27, dragInDelete28, dragInDelete29, dragInDelete30, dragInDelete31, dragInDelete32, dragInDelete33, dragInDelete34, dragInDelete35]
        edit = false
        editCondition.isHidden = true
        for i in 0...34{
            deleteViews[i]!.isHidden = false
        }
    }
    
}


extension UserDefaults {
 func colorForKey(key: String) -> UIColor? {
  var color: UIColor?
  if let colorData = data(forKey: key) {
   color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
  }
  return color
 }

 func setColor(color: UIColor?, forKey key: String) {
  var colorData: NSData?
   if let color = color {
    colorData = NSKeyedArchiver.archivedData(withRootObject: color) as NSData?
  }
  set(colorData, forKey: key)
 }

}
public extension UIDevice {

    static let modelName: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }

        func mapToDevice(identifier: String) -> String { // swiftlint:disable:this cyclomatic_complexity
            #if os(iOS)
            switch identifier {
            case "iPod5,1":                                 return "iPod touch (5th generation)"
            case "iPod7,1":                                 return "iPod touch (6th generation)"
            case "iPod9,1":                                 return "iPod touch (7th generation)"
            case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
            case "iPhone4,1":                               return "iPhone 4s"
            case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
            case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
            case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
            case "iPhone7,2":                               return "iPhone 6"
            case "iPhone7,1":                               return "iPhone 6 Plus"
            case "iPhone8,1":                               return "iPhone 6s"
            case "iPhone8,2":                               return "iPhone 6s Plus"
            case "iPhone8,4":                               return "iPhone SE"
            case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
            case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
            case "iPhone10,1", "iPhone10,4":                return "iPhone 8"
            case "iPhone10,2", "iPhone10,5":                return "iPhone 8 Plus"
            case "iPhone10,3", "iPhone10,6":                return "iPhone X"
            case "iPhone11,2":                              return "iPhone XS"
            case "iPhone11,4", "iPhone11,6":                return "iPhone XS Max"
            case "iPhone11,8":                              return "iPhone XR"
            case "iPhone12,1":                              return "iPhone 11"
            case "iPhone12,3":                              return "iPhone 11 Pro"
            case "iPhone12,5":                              return "iPhone 11 Pro Max"
            case "iPhone12,8":                              return "iPhone SE (2nd generation)"
            case "iPhone13,1":                              return "iPhone 12 mini"
            case "iPhone13,2":                              return "iPhone 12"
            case "iPhone13,3":                              return "iPhone 12 Pro"
            case "iPhone13,4":                              return "iPhone 12 Pro Max"
            case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
            case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad (3rd generation)"
            case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad (4th generation)"
            case "iPad6,11", "iPad6,12":                    return "iPad (5th generation)"
            case "iPad7,5", "iPad7,6":                      return "iPad (6th generation)"
            case "iPad7,11", "iPad7,12":                    return "iPad (7th generation)"
            case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
            case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
            case "iPad11,3", "iPad11,4":                    return "iPad Air (3rd generation)"
            case "iPad13,1", "iPad13,2":                    return "iPad Air (4th generation)"
            case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad mini"
            case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad mini 2"
            case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad mini 3"
            case "iPad5,1", "iPad5,2":                      return "iPad mini 4"
            case "iPad11,1", "iPad11,2":                    return "iPad mini (5th generation)"
            case "iPad6,3", "iPad6,4":                      return "iPad Pro (9.7-inch)"
            case "iPad7,3", "iPad7,4":                      return "iPad Pro (10.5-inch)"
            case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":return "iPad Pro (11-inch) (1st generation)"
            case "iPad8,9", "iPad8,10":                     return "iPad Pro (11-inch) (2nd generation)"
            case "iPad6,7", "iPad6,8":                      return "iPad Pro (12.9-inch) (1st generation)"
            case "iPad7,1", "iPad7,2":                      return "iPad Pro (12.9-inch) (2nd generation)"
            case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":return "iPad Pro (12.9-inch) (3rd generation)"
            case "iPad8,11", "iPad8,12":                    return "iPad Pro (12.9-inch) (4th generation)"
            case "AppleTV5,3":                              return "Apple TV"
            case "AppleTV6,2":                              return "Apple TV 4K"
            case "AudioAccessory1,1":                       return "HomePod"
            case "i386", "x86_64":                          return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))"
            default:                                        return identifier
            }
            #elseif os(tvOS)
            switch identifier {
            case "AppleTV5,3": return "Apple TV 4"
            case "AppleTV6,2": return "Apple TV 4K"
            case "i386", "x86_64": return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))"
            default: return identifier
            }
            #endif
        }

        return mapToDevice(identifier: identifier)
    }()

}
extension UIDevice {
    var iPhoneX: Bool { UIScreen.main.nativeBounds.height == 2436 }
    var iPhone: Bool { UIDevice.current.userInterfaceIdiom == .phone }
    var iPad: Bool { UIDevice().userInterfaceIdiom == .pad }
    enum ScreenType: String {
        case iPhones_4_4S = "iPhone 4 or iPhone 4S"
        case iPhones_5_5s_5c_SE = "iPhone 5, iPhone 5s, iPhone 5c or iPhone SE"
        case iPhones_6_6s_7_8 = "iPhone 6, iPhone 6S, iPhone 7 or iPhone 8"
        case iPhones_6Plus_6sPlus_7Plus_8Plus = "iPhone 6 Plus, iPhone 6S Plus, iPhone 7 Plus or iPhone 8 Plus"
        case iPhones_X_XS = "iPhone X or iPhone XS"
        case iPhone_XR_11 = "iPhone XR or iPhone 11"
        case iPhone_XSMax_ProMax = "iPhone XS Max or iPhone Pro Max"
        case iPhone_11Pro = "iPhone 11 Pro"
        case unknown
    }
    var screenType: ScreenType {
        switch UIScreen.main.nativeBounds.height {
        case 1136:
            return .iPhones_5_5s_5c_SE
        case 1334:
            return .iPhones_6_6s_7_8
        case 1792:
            return .iPhone_XR_11
        case 1920, 2208:
            return .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2426:
            return .iPhone_11Pro
        case 2436:
            return .iPhones_X_XS
        case 2688:
            return .iPhone_XSMax_ProMax
        default:
            return .unknown
        }
    }

}
extension UIView {
    func toImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)

        drawHierarchy(in: self.bounds, afterScreenUpdates: true)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
