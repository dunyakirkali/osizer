FactoryGirl.define do
  factory :image do
    file { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'rails.png'), 'image/png') }
  end
end