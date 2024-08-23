struct RootView: View {
    @State private var safeAreaInsets: EdgeInsets = EdgeInsets()

    var body: some View {
        ContentView()
            .safeAreaInsets(safeAreaInsets)
            .onAppear {
                updateSafeAreaInsets()
            }
    }

    private func updateSafeAreaInsets() {
        if let window = UIApplication.shared.windows.first {
            let insets = window.safeAreaInsets
            safeAreaInsets = EdgeInsets(
                top: insets.top,
                leading: insets.left,
                bottom: insets.bottom,
                trailing: insets.right
            )
        }
    }
}
