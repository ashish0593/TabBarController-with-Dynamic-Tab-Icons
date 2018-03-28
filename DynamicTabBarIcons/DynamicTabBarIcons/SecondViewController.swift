//
//  SecondViewController.swift
//  DynamicTabBarIcons
//
//  Created by Ashish Verma on 3/28/18.
//  Copyright © 2018 EatSleepRide. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func viewWillAppear(_ animated: Bool) {
		let iconImage = UIImage(named: "recordButton")
		self.tabBarController?.tabBar.items![1].selectedImage = iconImage?.scaleToSize(aSize: CGSize(width: 70, height: 70))
		self.tabBarController?.tabBar.items![1].title = ""
	}

	override func viewWillDisappear(_ animated: Bool) {
		self.tabBarController?.tabBar.items![1].selectedImage = UIImage(named: "")
		self.tabBarController?.tabBar.items![1].title = "Second"
	}
}

extension UIImage {
	func scaleToSize(aSize :CGSize) -> UIImage {
		if (self.size.equalTo(aSize)) {
			return self
		}

		UIGraphicsBeginImageContextWithOptions(aSize, false, 0.0)
		self.draw(in: CGRect(x:0.0, y: 0.0, width: aSize.width, height: aSize.height))
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return image!
	}
}
