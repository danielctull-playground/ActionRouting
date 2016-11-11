
import UIKit

extension UITabBarController {

	override func show(lineage viewControllers: [UIViewController]) {
		self.selectedViewController = viewControllers.first
		super.show(lineage: viewControllers)
	}
}
