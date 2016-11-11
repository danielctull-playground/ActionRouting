
import UIKit

extension UIViewController {

	func route(action: Action) {

		guard
			let vc = viewController(for: action),
			let performer = vc as? Performer
		else {
			print("CAN'T FIND VIEW CONTROLLER TO PERFORM ACTION:", action)
			return
		}

		var lineage = vc.lineage
		guard
			let first = lineage.first
		else {
			return
		}

		lineage.removeFirst()
		show(lineage: lineage)
		performer.perform(action)
	}

	private func viewController(for action: Action) -> UIViewController? {

		if let performer = self as? Performer, performer.canPerform(action) {
			return self
		}

		for viewController in childViewControllers {
			if let performer = viewController.viewController(for: action) {
				return performer
			}
		}

		return nil
	}

	func show(lineage viewControllers: [UIViewController]) {

		guard let child = viewControllers.first else {
			return
		}

		var vcs = viewControllers
		vcs.removeFirst()

		child.show(lineage: vcs)
	}

	// Array of view controllers from the root to the receiver
	var lineage: [UIViewController] {

		var viewControllers: [UIViewController] = []
		var viewController: UIViewController? = self

		repeat {

			if let viewController = viewController {
				viewControllers.append(viewController)
			}

			viewController = viewController?.parent

		} while viewController != nil

		return viewControllers.reversed()
	}
}
