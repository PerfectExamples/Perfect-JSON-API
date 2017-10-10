//
//  people.swift
//  Perfect-JSON-API
//
//  Created by Jonathan Guthrie on 2016-09-26.
//
//

import PerfectHTTP

public class People {
	// Container for array of type Person
	var data = [Person]()

	// Populating with a mock data object
	init(){
		data = [
			Person(firstName: "Sarah", lastName: "Conner", email: "sarah.conner@mailinator.com"),
			Person(firstName: "John", lastName: "Conner", email: "jane.smith@mailinator.com"),
			Person(firstName: "Kyle", lastName: "Reese", email: "kyle.reese@mailinator.com"),
			Person(firstName: "Marcus", lastName: "Wright", email: "marcus.wright@mailinator.com")
		]
	}

	// A simple JSON encoding function for listing data members.
	// Ordinarily in an API list directive, cursor commands would be included.
	public func list() -> String {
		return toString()
	}

	// Accepts the HTTPRequest object and adds a new Person from post params.
	public func add(_ request: HTTPRequest) -> String {
		let new = Person(
			firstName: request.param(name: "firstName") ?? "",
			lastName: request.param(name: "lastName") ?? "",
			email: request.param(name: "email") ?? ""
		)
		data.append(new)
		return toString()
	}

	// Accepts raw JSON string, to be converted to JSON and consumed.
	public func add(_ json: String) -> String {
		do {
			let incoming = try json.jsonDecode() as! [String: String]
			let new = Person(
				firstName: incoming["firstName"] ?? "",
				lastName: incoming["lastName"] ?? "",
				email: incoming["email"] ?? ""
			)
			data.append(new)
		} catch {
			return "ERROR"
		}
		return toString()
	}


	// Convenient encoding method that returns a string from JSON objects.
	private func toString() -> String {
		var out = [String]()

		for m in self.data {
			do {
				out.append(try m.jsonEncodedString())
			} catch {
				print(error)
			}
		}
		return "[\(out.joined(separator: ","))]"
	}

}

