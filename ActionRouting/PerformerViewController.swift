
import UIKit

class PerformerViewController: UIViewController, Performer {

	func canPerform(_ action: Action) -> Bool {

		guard
			let screen = action as? Screen,
			screen == .content
		else {
			return false
		}

		return true
	}

	func perform(_ action: Action) {
		performSegue(withIdentifier: "display", sender: self)
	}

	@IBAction func unwind(_ sender: UIStoryboardSegue) {}
}
