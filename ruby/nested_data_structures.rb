# design and build a nested data structure to represent a real-world construct. Build something that will use a mix of hashes and arrays.
harry_potter = {
    first_book: {
        title: "Harry Potter and the Sorcerer's Stone",
        plot_points: {
            villain: "Professor Quirrell",
            important_object: "Mirror of Erised"
        },
        key_characters: [
            "Hagrid",
            "Ron Weasley",
            "Hermione Granger"
        ]
    },
    second_book: {
        title: "Harry Potter and the Chamber of Secrets",
        plot_points: {
            villain: "The Basilisk",
            important_object: "Tom Riddle's Diary"
        },
        key_characters: [
            "Ginny Weasley",
            "Draco Malfoy",
            "Gilderoy Lockhart"
        ]
    },
    third_book: {
        title: "Harry Potter and the Prisoner of Azkaban",
        plot_points: {
            villain: "Petter Pettigrew",
            important_object: "The Marauder's Map"
        },
        key_characters: [
          "Sirius Black",
          "Remus Lupin"
          ]
    }
}

p harry_potter[:first_book][:plot_points][:villain]
p harry_potter[:second_book][:key_characters][2]
p harry_potter[:second_book][:plot_points][:important_object]
p harry_potter[:first_book][:title]
p harry_potter[:third_book][:key_characters].push "Severus Snape"