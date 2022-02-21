//
//  exchangedTypes_1.swift
//  tst_UDP
//
//  Created by the Dragon on 31.01.2022.
//

import Foundation
import CoreGraphics

//	//	//	//	//	//	//	//


public struct RequestA0: Codable {
	public let tagID: String?
	public let request: RequestType?
	public let data: Data?
	
	public init(tagID: String?, request: RequestType?, data: Data?) {
		self.tagID = tagID
		self.request = request
		self.data = data
	}
}


public enum RequestType: String, Codable {
	case joystickPosition// = "joystickPosition"
	case debugIformation// = "debugIformation"
	case others
}

public struct JoyStatus: Codable {
	public let timeStamp:Double
	public let leftStickPosition: CGPoint
	public let rightButton: Bool
	
	public init(timeStamp:Double, leftStickPosition: CGPoint, rightButton: Bool) {
		self.timeStamp = timeStamp
		self.leftStickPosition = leftStickPosition
		self.rightButton = rightButton
	}
}
