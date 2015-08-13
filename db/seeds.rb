# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

learning_materials = LearningMaterial.create([
                                              { topic: "Bintje Spiers", source: "hitmebabyonemoretime.com", description: FFaker::BaconIpsum.sentence, level: "Basic" }, 
                                              { topic: "Brigitte Barduck", source: "imonaboat.com", description: FFaker::BaconIpsum.sentence, level: "Advanced" }, 
                                              { topic: "Frank Zumatra", source: "comeflywithme.com", description: FFaker::BaconIpsum.sentence, level: "Advanced"}, 
                                              { topic: "Bill Gaatjes", source: "moneymoneymoney.com", description: FFaker::BaconIpsum.sentence, level: "Basic" },
                                              { topic: "Katja Schuurspons", source: "goedeeierenslechteeieren.nl", description: FFaker::BaconIpsum.sentence, level: "Advanced" }
                                               ])

#
# How to do this? -->
#
# LearningMaterial.all do |lm|
#   lm.description: "blabla"
# end