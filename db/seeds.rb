# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# config: utf-8

Community.create(name: '松江')
Community.create(name: '出雲')
Community.create(name: '安来')
User.create(name: '松江太郎', age: 20, sex: 'man', area: '松江', email: 'matsue@taro.jp', 
            freetext: '島根大学生だよ', password: 'matsutaro', password_confirmation: 'matsutaro')
User.create(name: '出雲花子', age: 18, sex: 'woman', area: '出雲', email: 'izumo@hana.jp',
            freetext: '出雲出身ではないよ', password: 'izumohana', password_confirmation: 'izumohana')

Tag.create(name: '野球')
Tag.create(name: 'バスケ')
Tag.create(name: 'サッカー')

Event.create(name: '学園祭', community_id: 1)
Event.create(name: '定期演奏会', community_id: 2)
Event.create(name: '盆踊り', community_id: 3)

Skill.create(name: '商業力', user_id: 1)
Skill.create(name: '演奏力', user_id: 2)
Skill.create(name: '体力', user_id: 1)
