
import SwiftUI

struct SendView: View {
    @State private var amount: String = ""
    @State private var selectedName: String?

    let suggested = ["Alex Johnson", "Emily Smith", "Michael Green", "Jessica Adams"]

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter Amount", text: $amount)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)

            Text("Suggested People")
                .font(.headline)
                .padding(.top)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(suggested, id: \.self) { name in
                        Button(action: {
                            selectedName = name
                        }) {
                            VStack {
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 50, height: 50)
                                Text(name)
                                    .font(.caption)
                            }
                            .padding(5)
                            .background(selectedName == name ? Color.green.opacity(0.3) : Color.clear)
                            .cornerRadius(10)
                        }
                    }
                }
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Send Money")
    }
}
