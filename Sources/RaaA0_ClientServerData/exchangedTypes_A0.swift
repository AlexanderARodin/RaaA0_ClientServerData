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
	let tagID: String?
	let request: RequestType?
	let data: Data?
}


public enum RequestType: String, Codable {
	case joystickPosition// = "joystickPosition"
	case debugIformation// = "debugIformation"
	case others
}

public struct JoyStatus: Codable {
	let timeStamp:Double
	let leftStickPosition: CGPoint
	let rightButton: Bool
}
