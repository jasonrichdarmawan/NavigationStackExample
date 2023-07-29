# Feature1

Feature1 principle:
1. View initialize its own `@StateObject` ViewModel.
2. View pass ViewModel to child view. The child view set it as `@ObservedObject`.

Feature2 principle:
1. Parent view initialize child view's `@StateObject` ViewModels.
2. Parent view pass ViewModel to child view. Child view pass ViewModel to subchild view.

    Note: using `.environmentObject()` does not work unless we use it on `NavigationStack`, which can't be the case because:
    1. only 1 `NavigationStack` for the whole app. Therefore, Feature2 can't have its own `NavigationStack`.

Both Feature1 and Feature2 have problem:
1. ViewModels get initialized twice. But, deinit once. This cause memory leak.
