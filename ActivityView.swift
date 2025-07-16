
import SwiftUI

struct ActivityView: View {
    var body: some View {
        List {
            Text("Paid $25 to Alex Johnson")
            Text("Requested $10 from Emily Smith")
            Text("Paid $60 to Michael Green")
        }
        .navigationTitle("Activity")
    }
}
