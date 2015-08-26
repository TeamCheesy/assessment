# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Learning Materials seed with hashes:
#
# learning_materials = LearningMaterial.create([
#                                               { topic: "Bintje Spiers", source: "hitmebabyonemoretime.com", description: FFaker::BaconIpsum.sentence, level: "Basic" }, 
#                                               { topic: "Brigitte Barduck", source: "imonaboat.com", description: FFaker::BaconIpsum.sentence, level: "Advanced" }, 
#                                               { topic: "Frank Zumatra", source: "comeflywithme.com", description: FFaker::BaconIpsum.sentence, level: "Advanced"}, 
#                                               { topic: "Bill Gaatjes", source: "moneymoneymoney.com", description: FFaker::BaconIpsum.sentence, level: "Basic" },
#                                               { topic: "Katja Schuurspons", source: "goedeeierenslechteeieren.nl", description: FFaker::BaconIpsum.sentence, level: "Advanced" }
#                                                ])

# Practicing seeding with arrays
# topic_list = [
#               "Bintje Spiers",
#               "Brigitte Barduck",
#               "Frank Zumatra",
#               "Bill Gaatjes",
#               "Katja Schuurspons",
#               ]

# source_list = [
#               "hitmebabyonemoretime.com",
#               "imonaboat.com",
#               "comeflywithme.com",
#               "moneymoneymoney.com",
#               "goedeeierenslechteeieren.nl",
#               ]

# level_list = [
#               "Basic",
#               "Advanced",
#               ]

# topic_list.length.times do |index|
#   topic  = topic_list[index]
#   source = source_list[index]
#   level  = level_list.sample

#   LearningMaterial.create(topic: topic, source: source, description: FFaker::BaconIpsum.sentence, level: level)
# end


# Practicing with looping through arrays with each.do
# topic_list.zip(source_list).each do |topic, source|
#   LearningMaterial.create(topic: topic, source: source, description: FFaker::BaconIpsum.sentence, level: level_list.sample)
# end

lessons     = [
               "MVC",
               "Methods",
               "CRUD",
               "Routes",
               "Testing",
              ]

chapters    = [
               "Chapter 1",
               "Chapter 2",
               "Chapter 3",
               "Chapter 4",
               "Chapter 5",
              ]

categories  = [
               "Tutorial",
               "Reading",
               "Exercise",
              ]

goals       = [
               "Understanding",
               "Practicing",
              ]

sources     = [
              "www.source.com",
              "www.anothersource.com",
              "www.sourcalicious.io",
              ]

levels       = [
               "Basic",
               "Advanced",
              ]

lesson_ids  = [
               1, 2, 3, 4, 5,
              ]


lessons.each do |lesson|
  Lesson.create(title: lesson, chapter: chapters.sample, category: categories.sample, goal: goals.sample)
  5.times do
    LearningMaterial.create(topic: lessons.sample, source: sources.sample, description: FFaker::BaconIpsum.sentence, level: levels.sample, lesson_id: Lesson.last.id)
  end
end