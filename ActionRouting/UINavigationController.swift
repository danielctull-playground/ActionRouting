
import UIKit

extension UINavigationController {

	override open func show(child viewController: UIViewController) {
		super.show(child: viewController)

		CATransaction.begin()
		popToViewController(viewController, animated: false)
		CATransaction.commit()
		CATransaction.flush()
	}
}
