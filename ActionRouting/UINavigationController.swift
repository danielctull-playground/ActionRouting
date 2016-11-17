
import UIKit

extension UINavigationController {

	override func show(lineage viewControllers: [UIViewController]) {

		if let child = viewControllers.first {

			popToViewController(child, animated: false)

			let semaphore = DispatchSemaphore.init(value: 1)
			DispatchQueue.main.async {
				semaphore.signal()
			}
			semaphore.wait()
		}

		super.show(lineage: viewControllers)
	}
}
