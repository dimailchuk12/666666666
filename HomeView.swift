
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Text("$1,250.00")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)

                HStack(spacing: 40) {
                    NavigationLink(destination: SendView()) {
                        VStack {
                            Image(systemName: "arrow.up.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Pay")
                        }
                    }

                    NavigationLink(destination: RequestView()) {
                        VStack {
                            Image(systemName: "arrow.down.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Request")
                        }
                    }
                }

                NavigationLink(destination: ActivityView()) {
                    Text("View Activity")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}
