# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Delete everything to clear it all out
Tag.delete_all
Comment.delete_all
Post.delete_all
Category.delete_all

#Set the English lorem ipsum
post_body_html_ipsum = '<h1>HTML Ipsum Presents</h1>

<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

<h2>Header Level 2</h2>

<ol>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ol>

<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

<h3>Header Level 3</h3>

<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ul>

<h4>Header Level 4</h4>

<ol>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ol>

<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

<h5>Header Level 5</h5>

<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ul>

<h2>Header Level 2</h2>

<ol>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ol>

<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

<h3>Header Level 3</h3>

<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ul>

<h4>Header Level 4</h4>

<ol>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ol>

<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

<h5>Header Level 5</h5>

<ul>
   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
   <li>Aliquam tincidunt mauris eu risus.</li>
</ul>'

# Set the Japanese lorem ipsum
post_body_japanese_ipsum = '<h1>口ロ員問よ横読イシタ達鮮じべづイ</h1>

<p><strong>感到ミヤヨキ日未つせでみ</strong>市自のぎ全吉がう就経ヱホ月題マルウメ働強フの社自ず浴布び拝映点修げんまる。関ニメヱワ大庭め藤座ノ否独ルろひ司以ヤ向立義90負てせ誌聞み緒月ち決4盤イミケ主経ウ合野リエシレ差江るーえ児相付ス聞道ひッごる張拳津装乾どぼふ。空上9容オ公講なしそ心出ぞンはク世栃医読98調スヘケ買経セネシイ人晴セレテオ乗港恋朗レほえ。</p>

<h2>則ょぽ六60償暴37接ーゃ首1長</h2>

<ol>
  <li>シ牛余ルタチヲ刷婚セス詭献レをづぜ石国囲カ</li>
  <li>ルユレ将蔵ロレセト芸港おへイ品継更しぞせぎ治一ラホヲミ</li>
  <li>掲米すへむ爆般連ばきれ。所よ変告ソ際面録むを厳経め</li>
  <li>まびぱ分報必請資ば</li>
  <li>ぞの東解止ーす長件転ひン回無クい樫準ち</li>
</ol>

<h3>95嶋イ北索キワユハ信低そ</h3>

<ul>
  <li>ふ見息定症ア業7説リよろじ談壮か</li>
  <li>リみひ質18放ヘユホエ発映並こが。検をこふや真覚効リラケ</li>
  <li>覚掲昨カネレ光総レトサカ務球ネホ助新び分連ほ岩隔けれ</li>
</ul>

<blockquote><p>軍葛ルぜえれ蛇引ナユ全1内つめとら開条っちし額売輔みぼド成体ょるお夏子モキホヒ背他コシフ持方劇ウチ一部ば山門込ヌ外文ま著4人ムヤクエ多企幸績ち。就二身ぜちざ氏内ノヱソフ原世しびめン終8電ざべ気社イひげず鈴宮嫌コフネヌ応約ぜそ迫材ほつやぎ経岡せイそ三章ゃおゅぼ治影世破集け。掲クホレ広季テネユ光48応の社問ルミ転神って願調クチエシ風球タムサツ業組ノスヌソ抑勢ょら社一中ソオレタ大鈴36切へう。</p></blockquote>

<h4>則ょぽ六60償暴37接ーゃ首1長</h4>

<ol>
  <li>シ牛余ルタチヲ刷婚セス詭献レをづぜ石国囲カ</li>
  <li>ルユレ将蔵ロレセト芸港おへイ品継更しぞせぎ治一ラホヲミ</li>
  <li>掲米すへむ爆般連ばきれ。所よ変告ソ際面録むを厳経め</li>
  <li>まびぱ分報必請資ば</li>
  <li>ぞの東解止ーす長件転ひン回無クい樫準ち</li>
</ol>

<h5>95嶋イ北索キワユハ信低そ</h5>

<ul>
  <li>ふ見息定症ア業7説リよろじ談壮か</li>
  <li>リみひ質18放ヘユホエ発映並こが。検をこふや真覚効リラケ</li>
  <li>覚掲昨カネレ光総レトサカ務球ネホ助新び分連ほ岩隔けれ</li>
</ul>

<p><strong>感到ミヤヨキ日未つせでみ</strong>市自のぎ全吉がう就経ヱホ月題マルウメ働強フの社自ず浴布び拝映点修げんまる。関ニメヱワ大庭め藤座ノ否独ルろひ司以ヤ向立義90負てせ誌聞み緒月ち決4盤イミケ主経ウ合野リエシレ差江るーえ児相付ス聞道ひッごる張拳津装乾どぼふ。空上9容オ公講なしそ心出ぞンはク世栃医読98調スヘケ買経セネシイ人晴セレテオ乗港恋朗レほえ。</p>

<h2>則ょぽ六60償暴37接ーゃ首1長</h2>

<ol>
  <li>シ牛余ルタチヲ刷婚セス詭献レをづぜ石国囲カ</li>
  <li>ルユレ将蔵ロレセト芸港おへイ品継更しぞせぎ治一ラホヲミ</li>
  <li>掲米すへむ爆般連ばきれ。所よ変告ソ際面録むを厳経め</li>
  <li>まびぱ分報必請資ば</li>
  <li>ぞの東解止ーす長件転ひン回無クい樫準ち</li>
</ol>

<h3>95嶋イ北索キワユハ信低そ</h3>

<ul>
  <li>ふ見息定症ア業7説リよろじ談壮か</li>
  <li>リみひ質18放ヘユホエ発映並こが。検をこふや真覚効リラケ</li>
  <li>覚掲昨カネレ光総レトサカ務球ネホ助新び分連ほ岩隔けれ</li>
</ul>

<blockquote><p>軍葛ルぜえれ蛇引ナユ全1内つめとら開条っちし額売輔みぼド成体ょるお夏子モキホヒ背他コシフ持方劇ウチ一部ば山門込ヌ外文ま著4人ムヤクエ多企幸績ち。就二身ぜちざ氏内ノヱソフ原世しびめン終8電ざべ気社イひげず鈴宮嫌コフネヌ応約ぜそ迫材ほつやぎ経岡せイそ三章ゃおゅぼ治影世破集け。掲クホレ広季テネユ光48応の社問ルミ転神って願調クチエシ風球タムサツ業組ノスヌソ抑勢ょら社一中ソオレタ大鈴36切へう。</p></blockquote>

<h4>則ょぽ六60償暴37接ーゃ首1長</h4>

<ol>
  <li>シ牛余ルタチヲ刷婚セス詭献レをづぜ石国囲カ</li>
  <li>ルユレ将蔵ロレセト芸港おへイ品継更しぞせぎ治一ラホヲミ</li>
  <li>掲米すへむ爆般連ばきれ。所よ変告ソ際面録むを厳経め</li>
  <li>まびぱ分報必請資ば</li>
  <li>ぞの東解止ーす長件転ひン回無クい樫準ち</li>
</ol>

<h5>95嶋イ北索キワユハ信低そ</h5>

<ul>
  <li>ふ見息定症ア業7説リよろじ談壮か</li>
  <li>リみひ質18放ヘユホエ発映並こが。検をこふや真覚効リラケ</li>
  <li>覚掲昨カネレ光総レトサカ務球ネホ助新び分連ほ岩隔けれ</li>
</ul>'

# Create categories
c1 = Category.create(name: "Technology")
c2 = Category.create(name: "Japanese Culture")
c3 = Category.create(name: "Animals")

# Create tags
t1 = Tag.create(name: "dogs")
t2 = Tag.create(name: "cats")
t3 = Tag.create(name: "sad stories")
t4 = Tag.create(name: "funny stories")
t5 = Tag.create(name: "tech")
t6 = Tag.create(name: "recommendations")
t7 = Tag.create(name: "predictions")
t8 = Tag.create(name: "Japanese language")
t9 = Tag.create(name: "English language")

# Create posts
p1 = Post.create(title: "Flip Phones",
subtitle: "Why You Should Get a Flip Phone!",
imageurl:"phone_img.jpg",
post_body: post_body_html_ipsum,
category_id: c1.id)
p1.tags << t3
p1.tags << t5
p1.tags << t6
p1.tags << t7
p1.tags << t9

p2 = Post.create(title: "盗まれたはんこ",
subtitle: "盗まれたはんこの悲しい話です。",
imageurl:"hanko_img.jpg",
post_body: post_body_japanese_ipsum,
category_id: c2.id)
p2.tags << t3
p2.tags << t8

p3 = Post.create(title: "Dogs",
subtitle: "Dogs on the Bed!",
imageurl:"dog_img.jpg",
post_body: post_body_html_ipsum,
category_id: c3.id)
p3.tags << t1
p3.tags << t4
p3.tags << t9

p4 = Post.create(title: "Cats",
subtitle: "Cats in the Way!",
imageurl:"cat_img.jpg",
post_body: post_body_html_ipsum,
category_id: c3.id)
p4.tags << t2
p4.tags << t4
p4.tags << t6
p4.tags << t9

p5 = Post.create(title: "メードカフェ",
subtitle: "おかえりなさいませ",
imageurl:"cafe_img.jpg",
post_body: post_body_japanese_ipsum,
category_id: c2.id)
p5.tags << t3
p5.tags << t6
p5.tags << t8

p6 = Post.create(title: "Dangerous Dogs",
subtitle: "Cold-blooded Killers!",
imageurl:"chihuahua.jpg",
post_body: post_body_html_ipsum,
category_id: c3.id)
p6.tags << t1
p6.tags << t2
p6.tags << t3
p6.tags << t6
p6.tags << t9

p7 = Post.create(title: "Smart Cars",
subtitle: "Cars of the Future?",
imageurl:"car.jpg",
post_body: post_body_html_ipsum,
category_id: c1.id)
p7.tags << t4
p7.tags << t5
p7.tags << t6
p7.tags << t7
p7.tags << t9

p8 = Post.create(title: "リーマン",
subtitle: "髪型格好いいなあ",
imageurl:"game.jpg",
post_body: post_body_japanese_ipsum,
category_id: c2.id)
p8.tags << t3
p8.tags << t4
p8.tags << t5
p8.tags << t8

p9 = Post.create(title: "AI",
subtitle: "All About AI",
imageurl:"ai.jpg",
post_body: post_body_html_ipsum,
category_id: c1.id)
p9.tags << t4
p9.tags << t5
p9.tags << t7
p9.tags << t9

p10 = Post.create(title: "Pugs",
subtitle: "If You Don't Like Them, Go Pug Yourself",
imageurl:"pug.jpg",
post_body: post_body_html_ipsum,
category_id: c3.id)
p10.tags << t1
p10.tags << t4
p10.tags << t6
p10.tags << t9

# Create comments
Comment.create(
  [
    {
      body: 'Yeah! So true!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You\'re a terrible, terrible person',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Dude yuor grammr and speling is teh worstest',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'My friends, contact me for a free trial of the best pills.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Nice post, man!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You\'re so stupid, you don\'t know what you\'re talking about.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Not your best post, man.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Superbly written!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Good thing you know your stuff!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Fantastic!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You know that\s all BS, right?',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not a bad post.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Great! Very informative!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'NO!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Superb quality post.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Pretty good!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not bad',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Not great',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'So so post, man.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Good info!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'So so',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Yeah! So true!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You\'re a terrible, terrible person',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Dude yuor grammr and speling is teh worstest',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'My friends, contact me for a free trial of the best pills.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Nice post, man!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You\'re so stupid, you don\'t know what you\'re talking about.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Not your best post, man.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Superbly written!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Good thing you know your stuff!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Fantastic!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'You know that\s all BS, right?',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not a bad post.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Great! Very informative!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'NO!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Superb quality post.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Pretty good!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not bad',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Not great',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'So so post, man.',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Good info!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'So so',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    },
    {
      body: 'Yeah! So true!',
      user_id: User.where(admin: false).order('RANDOM()').first.id,
      post_id: Post.order('RANDOM()').first.id
    }
  ]
)
