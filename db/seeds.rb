# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# config: utf-8

Community.create(:name => '松江')
Community.create(:name => '出雲')
Community.create(:name => '大社')

Tags.create(:name => '野球')
Tags.create(:name => 'バスケ')
Tags.create(:name => 'サッカー')

Events.create(:name => '学園祭')
Events.create(:name => '定期演奏会')
Events.create(:name => '盆踊り')

Skills.create(:name => '商業力')
Skills.create(:name => '演奏力')
Skills.create(:name => '体力')