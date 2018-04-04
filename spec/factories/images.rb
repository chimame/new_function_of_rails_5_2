FactoryBot.define do
  factory :image do
    #name "test.jpg"
    #size 123
    #file

    trait :with_file do
      after :build do |image|
        filepath = Rails.root.join('spec/fixtures/sample.png')
        image.file.attach io: File.open(filepath), filename: File.basename(filepath), content_type: 'image/png'
      end
    end
  end
 end