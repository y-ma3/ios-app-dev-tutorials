import SwiftUI


struct CardView: View {
    
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: /*@START_MENU_TOKEN@*/"clock"/*@END_MENU_TOKEN@*/).padding(.trailing, 20)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            .foregroundColor(scrum.theme.accentColor)
        }
        .padding()
    }
}

#Preview {
    CardView(scrum: DailyScrum.sampleData[0])
        .background(DailyScrum.sampleData[0].theme.mainColor)
        .previewLayout(.fixed(width: 400, height: 60))
}
