//
//  person.swift
//  Perfect-JSON-API
//
//  Created by Jonathan Guthrie on 2016-09-26.
//
//
import PerfectLib

class Person : JSONConvertibleObject {

	static let registerName = "person"

	var firstName: String = ""
	var lastName: String = ""
	var email: String = ""

	var fullName: String {
		return "\(firstName) \(lastName)"
	}

	init(firstName: String, lastName: String, email: String) {
		self.firstName	= firstName
		self.lastName	= lastName
		self.email		= email
	}

	override public func setJSONValues(_ values: [String : Any]) {
		self.firstName		= getJSONValue(named: "firstName", from: values, defaultValue: "")
		self.lastName		= getJSONValue(named: "lastName", from: values, defaultValue: "")
		self.email			= getJSONValue(named: "email", from: values, defaultValue: "")
	}
	override public func getJSONValues() -> [String : Any] {
		return [
			"firstName":firstName,
			"lastName":lastName,
			"email":email
		]
	}

}
