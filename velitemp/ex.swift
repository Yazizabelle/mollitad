struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue.ignoresSafeArea())
    }
}
