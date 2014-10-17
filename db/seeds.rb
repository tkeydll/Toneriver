#encoding: utf-8
User.create(
	login: "kx1@example.com",
	name: "ナレッジ太郎",
	password: "kx1",
	zip: "104-0032",
	address: "東京都中央区八丁堀2-8-1 牧野ビル4F")
User.create(
	login: "kx2@example.com",
	name: "エックス花子",
	password: "kx2",
	zip: "104-0032",
	address: "東京都中央区八丁堀2-8-1 牧野ビル4F")
User.create(
	login: "kx3@example.com",
	name: "レイルズ三郎",
	password: "kx3",
	zip: "104-0032",
	address: "東京都中央区八丁堀2-8-1 牧野ビル4F")

Item.create(
	no: 10000,
	name: "スイスイわかるRuby",
	image: "img_10000.png",
	unit_price: 3500,
	description: "Rubyを勉強するならまずはこの本！超定番書がついに登場！", 
	quantity: 99)
 Item.create(
 	no: 10001,
 	name: "絶対に脱線しないRails超入門",
 	image: "img_10001.png",
 	unit_price: 4200,
 	description: "これを読めば、決してRuby on Railsのレールから「脱線しない！」と評判の連載記事が待望の書籍化！",
 	quantity: 100)
 Item.create(
 	no: 10002,
 	name: "あるあるRSpec 実践編",
 	image: "img_10002.png",
 	unit_price: 3980,
 	description: "TDD/BDDフレームワークのRSpecを実践的に使いこなす上で「あるある」と思わず膝を打ってしまうお役立ちノウハウをあますところなく紹介。TDD/BDDフリーク必携の書！",
 	quantity: 50)
Item.create(
	no: 10003,
	name: "これで完璧！Railsシルバー資格試験対策教科書",
	image: "img_10003.png",
	unit_price: 3200,
	description: "待望のRuby on Rails認定資格シルバー試験の試験対策はこの１冊で完璧！試験対策だけでなくRailsを使いこなすためのノウハウも丁寧にわかり易く説明された一石二鳥の実用書です。",
	quantity: 300)
Item.create(
	no: 10004,
	name: "パッと早わかりApache＋PassengerによるRailsサーバ構築術",
	image: "img_10004.png",
	unit_price: 1890,
	description: "RailsでパッとPassengerでサーバを構築するための解説書。スクリーンショットも充実、ワンクリックで仮想化環境をそのままインストールできるインストーラが収録されたDVD付きで驚きのプライス！",
	quantity: 40)
Item.create(
	no: 10005,
	name: "４時間でわかるRuby on Rails4実践入門",
	image: "img_10005.png",
	unit_price: 5800,
	description: "大好評の「４時間でわかる」シリーズに、待望のRails4対応版が早くも登場しました。１時間毎にテーマを理解しながら進めることで、たったの４時間でRails4を使いこなせる魔法の書！売り切れ御免！お求めはお早めに。",
	quantity: 25)
