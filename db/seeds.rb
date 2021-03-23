5.times do
    Diary.create({
        title: Faker::Book.title,
        expiration: Faker::Date.between(from: 2.days.ago, to: Date.today),
        kind: Faker::Number.between(from: 0, to: 1)
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


#INSERT INTO diaries (title, expiration, kind, created_at, updated_at) VALUES ('ddd', '2015-08-16', 1, '2015-08-16', '2015-08-16');