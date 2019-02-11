# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(:name => 'sample1',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'aa@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample2',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ii@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample3',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'uu@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample4',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ee@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample5',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'oo@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample6',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ka@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample7',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ki@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample8',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ku@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample9',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ke@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample10',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'ko@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample11',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'sa@aa.com',:password => 'sample',:age => '20代')
User.create(:name => 'sample12',:sex => '男性',:introduction => 'hello',:address => '関東',:job => '会社員',:email => 'si@aa.com',:password => 'sample',:age => '20代')
Category.create(:category => '学習・勉強')
Category.create(:category => 'スポーツ・健康')
Category.create(:category => 'ものづくり')
Category.create(:category => '音楽')
Category.create(:category => '旅行')
Category.create(:category => '芸術＿アート')
Category.create(:category => '料理・グルメ')
Category.create(:category => 'ビジネス')
Category.create(:category => 'ゲーム')
Category.create(:category => 'ダイエット')
Category.create(:category => '手品・マジック')
Category.create(:category => '写真・映像')
Category.create(:category => '執筆')
Category.create(:category => '観戦・鑑賞')
Category.create(:category => 'その他')
Hobby.create(:name => '野球',:category_id => '2',:introduction => '野球は１チーム9人で行う球技スポーツです。')
Hobby.create(:name => 'サッカー',:category_id => '2',:introduction => 'サッカーは１チーム11人で行う球技スポーツです。')
Hobby.create(:name => 'バスケットボール',:category_id => '2',:introduction => 'バスケットボールは１チーム5人で行う球技スポーツです。')
Hobby.create(:name => '卓球',:category_id => '2',:introduction => '卓球は1対1、もしくは2対2で行う球技スポーツです。')
Narrow.create(:hobby_id => '1',:active_point => '5',:major_point => '5',:gain_point => '5',:appeal_point => '5',:health_point => '5',:relax_point => '5',:concentration_point => '5',:cooperate_point => '5',:consider_point => '5',:cost_point => '5',:artistic_point => '5')
Narrow.create(:hobby_id => '2',:active_point => '5',:major_point => '5',:gain_point => '5',:appeal_point => '5',:health_point => '5',:relax_point => '5',:concentration_point => '5',:cooperate_point => '5',:consider_point => '5',:cost_point => '5',:artistic_point => '5')
Narrow.create(:hobby_id => '3',:active_point => '5',:major_point => '5',:gain_point => '5',:appeal_point => '5',:health_point => '5',:relax_point => '5',:concentration_point => '5',:cooperate_point => '5',:consider_point => '5',:cost_point => '5',:artistic_point => '5')
Narrow.create(:hobby_id => '4',:active_point => '5',:major_point => '5',:gain_point => '5',:appeal_point => '5',:health_point => '5',:relax_point => '5',:concentration_point => '5',:cooperate_point => '5',:consider_point => '5',:cost_point => '5',:artistic_point => '5')
UsersHobby.create(:user_id => '1',:hobby_id => '1')
UsersHobby.create(:user_id => '1',:hobby_id => '2')
UsersHobby.create(:user_id => '1',:hobby_id => '3')
UsersHobby.create(:user_id => '1',:hobby_id => '4')
Record.create(:user_id => '1',:hobby_id => '1',:time => '4',:date => '2017-09-07',:comment => 'yes')
Record.create(:user_id => '1',:hobby_id => '1',:time => '4',:date => '2017-09-08',:comment => 'yes')
Record.create(:user_id => '1',:hobby_id => '1',:time => '4',:date => '2017-09-09',:comment => 'yes')
Record.create(:user_id => '1',:hobby_id => '2',:time => '4',:date => '2017-09-07',:comment => 'yes')
Record.create(:user_id => '1',:hobby_id => '3',:time => '4',:date => '2017-09-07',:comment => 'yes')
Record.create(:user_id => '1',:hobby_id => '4',:time => '4',:date => '2017-09-07',:comment => 'yes')
UsersCommunity.create(:user_id => '1',:community_id => '1')
UsersCommunity.create(:user_id => '1',:community_id => '2')
UsersCommunity.create(:user_id => '1',:community_id => '3')
UsersCommunity.create(:user_id => '1',:community_id => '4')
Community.create(:hobby_id => '1',:name => '草野球',:introduction => 'playball',:is_active => 't')
Community.create(:hobby_id => '1',:name => '軟式野球',:introduction => 'playball',:is_active => 't')
Community.create(:hobby_id => '1',:name => '公式野球',:introduction => 'playball',:is_active => 't')
Community.create(:hobby_id => '1',:name => 'バッティングセンター',:introduction => 'playball',:is_active => 't')
BoardComment.create(:community_id => '1',:user_id => '1',:comment => 'hello1')
BoardComment.create(:community_id => '1',:user_id => '1',:comment => 'hello2')
BoardComment.create(:community_id => '1',:user_id => '1',:comment => 'hello3')
BoardComment.create(:community_id => '1',:user_id => '1',:comment => 'hello4')
FirstStep.create(:community_id => '1',:user_id => '1',:introduction => 'hello',:item => 'ball',:cost => '1000')
FirstStep.create(:community_id => '1',:user_id => '1',:introduction => 'hello',:item => 'ball',:cost => '1000')
FirstStep.create(:community_id => '1',:user_id => '1',:introduction => 'hello',:item => 'ball',:cost => '1000')
FirstStep.create(:community_id => '1',:user_id => '1',:introduction => 'hello',:item => 'ball',:cost => '1000')