2.times do
    Diary.create({
        title: Faker::Book.title,
        expiration: Faker::Date.forward(days: 10),
        kind: Faker::Number.between(from: 1, to: 2)
    })
end

2.times do
    Diary.create({
        title: Faker::Book.title,
        expiration: Time.now + 600,
        kind: Faker::Number.between(from: 1, to: 2)
    })
end

Note.create({
    text: Faker::Book.title,
    diary_id: 1
})

Note.create({
    text: Faker::Book.title,
    diary_id: 2
})

Note.create({
    text: Faker::Book.title,
    diary_id: 3
})
    