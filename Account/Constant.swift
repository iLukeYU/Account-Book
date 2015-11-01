//
//  Constant.swift
//  Account
//
//  Created by Luke YU on 15/11/1.
//  Copyright © 2015年 Zhang Chen. All rights reserved.
//

import Foundation
// 全局变量和函数
import UIKit

// #MARK:- 3rd part api key

// LeanCloud
let AVOSAppID = "OoMstwIhA2OTf5zQ3RsiVKuK"
let AVOSAppKey = "n5M6iTVQu2U6U3oqNKJb9cqs"

// #MARK:- Web

let KEY_USER = "user"
let KEY_IMAGE = "image"
let KEY_STATUS = "status"
let KEY_CREATEDAT = "createdAt"

// #MARK:- View

let MARGIN_LEFT: CGFloat = 16
let MARGIN_LINE: CGFloat = 16
let TEXT_RETURN = "返回"
let BUTTON_BODER_WIDTH: CGFloat = 1.0 / UIScreen.mainScreen().scale
let BUTTON_RADIUS: CGFloat = 20.0

// #MARK:- Color

func RGB(r:Int, g:Int, b:Int)->UIColor {
    return UIColor(red:(CGFloat(r) / 255.0), green:(CGFloat(g) / 255.0), blue:(CGFloat(b) / 255.0), alpha:1)
}

func RGBA(r:Int, g:Int, b:Int, a:CGFloat)->UIColor {
    return UIColor(red:(CGFloat(r) / 255.0), green:(CGFloat(g) / 255.0), blue:(CGFloat(b) / 255.0), alpha:a)
}

// MARK: coding

/**
利用闭包形成 scope 代码段

:param: closure 代码本身闭包
*/
func local(closure: ()->()) {
    closure()
}

/**
 打印日志，自带多种 swift 属性
 
 :param: message 输出信息
 :param: file    文件
 :param: method  方法
 :param: line    行数
 */
func printLog<T>(message: T,
    file: String = __FILE__,
    method: String = __FUNCTION__, line: Int = __LINE__){
        debugPrint("\(file)[\(line)], \(method): \(message)")
}