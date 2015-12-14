//
//  BaseTabBarController.swift
//  tigerGuide
//
//  Created by admin on 15/12/14.
//  Copyright © 2015年 com.tigeryou.com. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        // Do any additional setup after loading the view.
    }
    func setUp(){
        //判断有没有登录过 如果登录过则登录云旺IM
//        if XDUserDefaults.isLogin() {
//            XDYWIM.loginYWIM()
//        }
        //首先找到对应的storyboard
        self.navigationController?.navigationBarHidden = true
        let sb1 = UIStoryboard(name: "Chat", bundle: NSBundle.mainBundle())
        let sb2 = UIStoryboard(name: "Order", bundle: NSBundle.mainBundle())
        let sb3 = UIStoryboard(name: "Invite", bundle: NSBundle.mainBundle())
        let sb4 = UIStoryboard(name: "My", bundle: NSBundle.mainBundle())
        //根据storyboard和controller的storeId找到导航控制器
        let vc1:UINavigationController = sb1.instantiateViewControllerWithIdentifier("nv1") as! UINavigationController
        let vc2:UINavigationController = sb2.instantiateViewControllerWithIdentifier("nv2") as! UINavigationController
        let vc3:UINavigationController = sb3.instantiateViewControllerWithIdentifier("nv3") as! UINavigationController
        let vc4:UINavigationController = sb4.instantiateViewControllerWithIdentifier("nv4") as! UINavigationController
        self.tabBar.tintColor = kGlobalColor
//        let conversationListController = SPKitExample.sharedInstance().exampleMakeConversationListControllerWithSelectItemBlock { (aConversation:YWConversation!) -> Void in
//            if aConversation.isKindOfClass(YWCustomConversation){
//                let customConversation = aConversation as! YWCustomConversation
//                customConversation.markConversationAsRead()
//                if customConversation.conversationId == "ywcustomSPTribeInvitation" {
//                    
//                }
//            }else{
//                SPKitExample.sharedInstance().exampleOpenConversationViewControllerWithConversation(aConversation, fromNavigationController: vc2)
//            }
//        }
        
        
        
//        let frame = CGRectMake(0, 0, 100, 100)
//        let viewForNoData = UIView(frame: frame)
//        let  imageView = UIImageView(image: UIImage(named: "tiger"))
//        imageView.center = CGPointMake(viewForNoData.frame.size.width/2, viewForNoData.frame.size.height/2);
//        
//        imageView.autoresizingMask = [UIViewAutoresizing.FlexibleTopMargin,UIViewAutoresizing.FlexibleRightMargin,UIViewAutoresizing.FlexibleLeftMargin,UIViewAutoresizing.FlexibleBottomMargin]
//        
//        viewForNoData.addSubview(imageView)
//        conversationListController.viewForNoData = viewForNoData
        
        //创建一个数组来保存controller对象
        let arr:[UIViewController] = [vc1,vc2,vc3,vc4]
        //用当前的viewControllers数组替换原本的tabbarController的viewControllers数组
        //设置tabBar 文字
        vc1.tabBarItem.title = "聊天"
        vc2.tabBarItem.title = "订单"
        vc3.tabBarItem.title = "邀约"
        vc4.tabBarItem.title = "我的"
        //设置tabBar 图片
        vc1.tabBarItem.image = UIImage(named: "dingdan")
        vc2.tabBarItem.image = UIImage(named: "liaotian")
        vc3.tabBarItem.image = UIImage(named: "yaoyue")
        vc4.tabBarItem.image = UIImage(named: "wode")
        
        self.setViewControllers(arr, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
