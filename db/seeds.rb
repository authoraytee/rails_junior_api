# frozen_string_literal: true

# Diary initialization 
def diary_creator(time)
  Diary.create({
    title: Faker::Book.title,
    expiration: time,
    kind: Faker::Number.between(from: 1, to: 2)
  })
end

2.times do
  diary_creator(Time.now+600)
end
2.times do
  diary_creator(Faker::Date.forward(days: 3))
end


# Note initialization 
diaries = Diary.all
for diary in diaries
  3.times do
    Note.create({
                  text: Faker::Book.title,
                  diary_id: diary.id
                })
  end
end

