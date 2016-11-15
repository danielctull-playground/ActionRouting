
import UIKit

class PerformerViewController: UIViewController, Performer {

	func canPerform(action: Action) -> Bool {

		guard
			let screen = action as? Screen,
			screen == .content
		else {
			return false
		}

		return true
	}

	func perform(action: Action) -> Bool {

		guard canPerform(action: action) else {
			return false
		}

		performSegue(withIdentifier: "display", sender: self)
		return true
	}

	@IBAction func unwind(_ sender: UIStoryboardSegue) {}
}
