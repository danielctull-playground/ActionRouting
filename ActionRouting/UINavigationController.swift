
import UIKit

extension UINavigationController {

	override func show(lineage viewControllers: [UIViewController]) {

		if let child = viewControllers.first {
			popToViewController(child, animated: false)
		}

		super.show(lineage: viewControllers)
	}
}
