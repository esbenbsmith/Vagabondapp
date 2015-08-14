City.create(name: 'San Francisco', state: 'CA', country: 'USA', lat: '37.774929', long: '-122.419416', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/sanfrancisco.jpg')
City.create(name: 'New York', state: 'NY', country: 'USA', lat: '43.299428', long: '-74.217933', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/newyork.jpg')
City.create(name: 'Los Angeles', state: 'CA', country: 'USA', lat: '34.052234', long: '118.243685', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/losangeles.jpg')
City.create(name: 'Miami', state: 'FL', country: 'USA', lat: '49.369597', long: '-98.239013', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/miami2.jpg')
City.create(name: 'Seattle', state: 'WA', country: 'USA', lat: '47.606209', long: '-122.332071', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/seattle.jpg')
City.create(name: 'Las Vegas', state: 'NV', country: 'USA', lat: '36.169941', long: '-115.139830', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/lasvegas.jpg')
City.create(name: 'Berlin', state: '', country: 'Germany', lat: '52.520007', long: '13.404954', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/berlin.jpg')
City.create(name: 'Hong Kong', state: '', country: 'China', lat: '22.396428', long: '114.109497', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/hongkong.jpg')
City.create(name: 'Tokyo', state: '', country: 'Japan', lat: '35.709026', long: '139.731992', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/tokyo.jpg')
City.create(name: 'Sydney', state: 'NSW', country: 'Australia', lat: '-33.917410', long: '151.231307', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/sydney.jpg')
City.create(name: 'Ho Chi Minh City', state: '', country: 'Vietnam', lat: '10.818463', long: '106.658825', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/hochiminhcity.jpg')
City.create(name: 'Seoul', state: '', country: 'South Korea', lat: '37.566535', long: '126.977969', img_url: 'https://s3-us-west-1.amazonaws.com/vacationbond/seoul.jpg')

User.create(name: 'Alesben Esbenanda', email: 'alesben@gmail.com', password: 'password', password_confirmation: 'password', created_at: '2015-08-13 00:30:40.053344', updated_at: '', city_id: 1, avatar_file_name: 'Boo-the-dog-Hungry-150x150.jpg', avatar_content_type: 'image/jpeg', avatar_file_size: 6236, avatar_updated_at: '2015-08-14 00:42:37')

User.create(name: 'John Smith', email: 'john@gmail.com', password: 'password', password_confirmation: 'password', created_at: '2015-08-13 00:30:40.053344', updated_at: '', city_id: 2, avatar_file_name: 'Clean-dog-150x150.jpg', avatar_content_type: 'image/jpeg', avatar_file_size: 6147, avatar_updated_at: '2015-08-14 00:42:37')

5.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(50).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 1
)
end

4.times do
  Post.create(
  title: FFaker::BaconIpsum.words(3).join(' '),
  body: FFaker::BaconIpsum.words(60).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 2
)
end

6.times do
  Post.create(
  title: FFaker::HipsterIpsum.words(3).join(' '),
  body: FFaker::HipsterIpsum.words(58).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 3
)
end

3.times do
  Post.create(
  title: FFaker::DizzleIpsum.words(3).join(' '),
  body: FFaker::DizzleIpsum.words(49).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 4
)
end

5.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(32).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 5
)
end

5.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(75).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 6
)
end

6.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(76).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 7
)
end

5.times do
  Post.create(
  title: FFaker::HipsterIpsum.words(3).join(' '),
  body: FFaker::HipsterIpsum.words(64).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 8
)
end

4.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(50).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 9
)
end

4.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(43).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 10
)
end

5.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(53).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 11
)
end

6.times do
  Post.create(
  title: FFaker::Lorem.words(3).join(' '),
  body: FFaker::Lorem.words(40).join(' '),
  created_at: FFaker::Time.date,
  updated_at: '',
  user_id: rand(1..2),
  city_id: 12
)
end