# -*- coding: utf-8 -*-
require 'jumanpp_ruby'

class JumanppParser
  def exec(type = "normals")
    data = if type == "spams"
             spams
           else
             normals
           end
    juman = JumanppRuby::Juman.new(force_single_path: :true)

    count = Hash.new(0)
    data.each do |text|
      ary = juman.parse(text.gsub(/\r|\n|\r\n/, ""))
      ary.each do |elem|
        count[elem] += 1
      end
    end
    p count.sort_by { |_, v| v }.reverse.to_h
  end

  def spams
    [
      "経営者様\r\n\r\n突然のご連絡を失礼いたします。\r\nファイティングロードの高橋と申します。\r\n\r\nここ最近、オフィス内に運動スペースを作ることで\r\n従業員の生産性を増やすというのが話題になっていますが\r\n貴社では既に導入されてましたでしょうか？\r\n\r\nオフィス内に運動スペースを作ることで\r\n\r\n・従業員のストレス発散→仕事のパフォーマンス向上\r\n・従業員の心身の健康維持につながる\r\n・福利厚生の充実\r\n・採用面のアピールになる\r\n\r\nなどと今非常に注目されています。\r\n\r\n弊社は30年以上前から、官公庁などで強靭な肉体を作る\r\nアスリート向けのトレーニング器具の開発と販売をしており\r\n企業様の運動スペースやリハビリ介護施設への提供も行っております。\r\n\r\n運動スペースと言っても畳1枚分のスペースがあれば問題ございません。\r\n\r\n健康経営の必要性が注目されている昨今\r\nどんなものかご興味がございましたらご案内をさせていただきます。\r\n\r\n下記よりご都合よろしい日時をお送りください。\r\nhttp://ct-sports.net/l/dnTBgp\r\n\r\n参考製品の詳細はこちらになりますのでご覧くださいませ。\r\nhttp://ct-sports.net/l/WymrJT\r\n\r\n\r\nその他、多数の運動器具もお取り扱いしており\r\n現在は導入の方限定の割引キャンペーンも実施しております。\r\nキャンペーンコード：fr444868\r\n\r\nそれではご連絡をお待ちしております。\r\n\r\n\r\n\r\n\r\n【配信停止はこちら】\r\n\r\n今後のご案内が不要の場合は、お手数ですが下記よりお願いいたします。\r\nhttp://ct-sports.net/l/7m32QC\r\n\r\nもしくはこちらのメールの件名に「不要」または「停止」と記載しそのままお送りください。\r\n\r\n申し訳ございませんが誤った注文・申し込み等はキャンセルとしていただきますようお願いいたします。",
      "突然のご連絡大変失礼いたします。\r\n公認会計士事務所ユニヴィスの濱田でございます。\r\n\r\nユニヴィスグループは完全成功報酬制を採ったM&A仲介業を行っております。他の仲介事業者のような最低成功報酬制度は設けておらず、グループ内の公認会計士、弁護士といった専門家との連携を行いながら、M&Aを進行するうえで欠かせない財務・税務・法務の知見を提供し、一気通貫のサポートを行えることが強みです。\r\n\r\n会社を譲渡したい、一部事業を譲渡したいといったご相談がございましたら是非お気軽にご連絡ください。\r\n\r\nどうぞよろしくお願い申し上げます。",
      "\r\nお世話になります\r\n文書作成サービスのご案内です\r\n\r\n\r\nご要望に応じて、\r\n\r\n「あらゆる文章」を作成します\r\n\r\n月額 980円～（作り放題プランあり\r\n\r\n※先着20社 限定\r\n\r\n\r\n\r\n◆作成できる文章\r\n\r\n・集客文\r\n・キャッチコピー\r\n・案内文\r\n・メール文\r\n・求人\r\n・アイデア出し\r\n・マニュアル\r\n・資料\r\n・問題集\r\n\r\n※その他\r\n\r\n\r\n◆サービス内容（1分で読めます\r\n\r\nhttps://cutt.ly/SwPir7SZ\r\n\r\n\r\n\r\n◆　資料請求方法　◆\r\n\r\n料金プラン・サービス詳細の資料をご希望の方は、\r\n\r\n\r\nメールの　本文　に　\r\n\r\n「　詳細希望　」　と書いて\r\n\r\nご返信頂けますでしょうか？\r\n\r\n\r\n\r\nご検討お願い致します\r\n\r\n",
      "経営者様 \r\n \r\n突然のご連絡失礼いたします。\r\nこの度ホームページを拝見しご連絡をさせていただきました\r\nBCパートナーズ株式会社の川村と申します。\r\n \r\n弊社では、中小企業様向け節税対策や資産運用について\r\n経営者様が知っておくべき有益な情報を提供しております。\r\n \r\n全額損金として計上しながら資産運用して資産を増やしていく\r\n経費で株を買うといったイメージのものになります。\r\n \r\n経営者様の中には「株は買っているけど個人資産で買っている」という方や\r\n「節税は日頃から意識していたけれど、同時に資産を増やすことまでは考えてなかった」\r\nという方が非常に多いです。\r\n\r\nそのため、節税＋資産運用、経費で資産運用というモデルがあるということを\r\n皆様の経営知識の一端としてお耳に入れさせていただいております。\r\nご案内コード：b5cp2434\r\n \r\nまずは、情報収集として簡単に15分ほどでご案内させていただければと思いますので、\r\nもしご興味がございましたら、下記URLよりご案内の予約をお願いいたします。\r\n \r\nhttp://bc-p.net/l/08zE4r\r\n \r\nサービスの詳細はこちらになりますのでご覧くださいませ。\r\nhttp://bc-p.net/l/b7vOw0\r\n\r\n\r\nそれではご連絡をお待ちしております。\r\n\r\n\r\n\r\n\r\n【配信停止はこちら】\r\n今後のご案内が不要の場合は、お手数ですが下記よりお願いいたします。\r\nhttp://bc-p.net/l/HyO3qY\r\n\r\nもしくはこちらのメールの件名に「不要」または「停止」と記載しそのままお送りください。\r\n\r\n申し訳ございませんが誤った注文・申し込み等はキャンセルとしていただきますようお願いいたします。",
      "突然のご連絡失礼いたします。\r\nアントレの濱田と申します。\r\n\r\n当社の事業承継実践プログラムは、独立・開業を考えている方に、予算200万円から事業を買収し新規事業展開を支援する実践型ビジネススクールです。一般的に、小規模なM&Aターゲットは年間売上1億円未満の会社・事業とされており、アントレはこの領域でのM&Aを支援しています。\r\n\r\nプログラムの受講者は、福岡の酒造メーカー支店長から神奈川の不動産業者まで多岐にわたり、彼らはプログラムを通じて新しい事業を譲受し、それらの事業を成功に導いています。\r\n\r\n新規事業の立ち上げを実現するサポートをさせていただきたく、是非、事業承継実践プログラムへの参加をご検討ください。当プログラムでは大手M&A仲介出身者による支援を提供しており、3か月の伴奏支援が45万円（税抜）にて受けることが可能でございます。その他法人様向けのプランもご用意させていただいております。\r\n\r\nぜひ一度本プログラムに関しまして詳細のご説明を行わせていただけますと幸いです。\r\n下記URLより個別説明会を受付させていただいております。\r\nhttps://timerex.net/s/entre/c51f61e3\r\n\r\nプログラム参考URL:\r\nhttps://entrenet.jp/jigyosyokei/index3.htm?gn=engnjigyosyokei\r\nプログラム参考資料URL:\r\nhttps://drive.google.com/file/d/1j8b6f9lc8YLaBO2phibp4nx5pSm4Gpqj/view?usp=drive_link\r\n\r\nご多用の中お手数をおかけいたしますが、ご検討何卒宜しくお願い申し上げます。\r\n--------------------------------\r\n配信停止\r\nhttps://chusho-hojo.com/mailstop_entre/\r\n--------------------------------",
      "広告ご担当者様\r\n突然のご連絡を申し訳ございません。\r\n\r\nBranding Plusの松嶋と申します。\r\n\r\n動画SEO集客の実践モニター募集の件でご連絡いたしました。\r\n今なら対策用の動画を無料で制作しますのでぜひご確認ください。\r\n無料制作クーポンNo.al5l548161\r\n\r\n今まで広告で効果がなかったことや\r\n効果の無い広告に毎月予算を使っていませんか？\r\nそんなお悩みを解決します。\r\n\r\nどんな方法かと言いますと、このように検索結果でテキストだけではなく\r\n動画のサムネイル画像を上位表示させるよう対策します。\r\nhttps://service-link.app/n/43/12161782\r\n\r\n一般ユーザーはGoogleなどで「自分の求めるもの」を検索します\r\n　　↓\r\n検索結果の上位に「自分の求めるもの」が動画つきで表示していたら？\r\n　　↓\r\n9割以上のユーザーが気になって動画を見ます。\r\nさらに、魅力的な動画を見ることでより購買意欲が高まります。\r\n\r\n\r\nもちろん貴社希望の検索キーワードで対策をさせていただきます。\r\nご興味あれば下記よりご案内予約をお願いいたします。\r\nhttps://service-link.app/n/43/12161797\r\n\r\nサービス内容の詳細はこちらです。\r\nhttps://service-link.app/n/43/12161807\r\n\r\n\r\nただ、申し訳ございませんが\r\n実践モニターは各業種1社のみになりますので\r\n終了の際はご容赦ください。\r\n\r\nそれではご連絡をお待ちしております。\r\n\r\n\r\n\r\n\r\n━━━━━━━━━━━━━━━━\r\n\r\n[お手数ですが今後のご案内が不要の場合は下記をクリックしてください]\r\n\r\n※クリックするとすぐに案内停止になりますのでご注意ください。\r\nhttps://service-link.app/n/43/12161814\r\n\r\n停止タイミングによって数通ご案内が届く場合がございますがその後は一切届かなくなります。\r\n\r\n━━━━━━━━━━━━━━━━",
      "突然のご連絡失礼いたします。\r\n集客支援サービス「コスパ広告くん」の鶴(つる)と申します。\r\n\r\n貴社において以下のようなお悩みを抱えていませんか？\r\n・もっと問い合わせが欲しい\r\n・WEB集客に力を入れたい\r\n\r\nそんな集客のお困りを、Google広告やInstagram広告などで解決しませんか？\r\n\r\n━━初月0円キャンペーンのお知らせ━━\r\n弊社は『低価格で定額のWEB広告運用代行』を行なっております。\r\n期間限定で「初月0円」キャンペーンを行っております！\r\n\r\n・対応媒体：[Google][YouTube][Instagram][Facebook][X Twitter][TikTok]\r\n・契約期間の縛り：なし\r\n・キャンペーン期間：2月29日(木)23:59までにお問い合わせいただいた方限定\r\n・詳細ページ：https://boboconsulting.com\r\n━━━━━━━━━━━━━━━━━━\r\n\r\n集客にお悩みでしたらお気軽にご相談くださいませ。\r\nお忙しいところ大変恐れ入りますが、何卒よろしくお願い致します。",
      "49,800円で超オシャレなホームページでブランディングをし、信用を得て受注アップに繋げませんか？\r\n\r\n株式会社アレグレットの大塚と申します。\r\n\r\n下記が弊社の実績です。\r\n\r\n●オペラ指揮者\r\nhttps://www.hirofumiyoshida.com/\r\n\r\n●フィットネスクラブ\r\nhttps://www.drive-fitness.com/\r\n\r\n●ハイヤー\r\nhttps://www.nissyo-hire.com/\r\n\r\n●コスメ\r\nhttps://www.stellalux.jp/\r\n\r\nいかがでしょうか？\r\n\r\nこれで49,800円～なのであり得ないクオリティです。\r\n\r\n\r\n弊社はホームページのお悩みがある会社の役員が選ぶ、ホームページ制作サービスにおいて、人気・支持率・おすすめで2023年、三冠No.1を獲得しております。\r\n\r\n\r\n是非、下記からチェックをしてみてください。\r\n\r\nhttps://service-link.app/n/44/12230391\r\n\r\n尚、consulting@allegretto.co.jpに問い合わせをされても上記HPから以外の返信はしておりませんので、ご注意願います。",
      "全国の不動産オーナー様だけに営業が可能です.\r\n\r\n突然のご連絡にて、失礼いたします。\r\nまずはメールを開いて頂けたことに、大変感謝いたします。\r\n\r\n弊社は”不動産会社様に特化”した【売上UPに繋がる集客の仕組みづくり】を経営目標にしています。\r\n\r\nこの度、貴社のウェブサイトを拝見し、弊社の提供するサービスが適しているのではないかと思い、連絡させていただきました。\r\n\r\nもし売上アップに興味がなければ、メールを破棄していただいても差し支えございません。\r\n\r\nそれでは本題に移らさせていただきます。最後までお読みいただけると幸いです。\r\n\r\n弊社の提案するサービスは『アパート・マンションオーナー様に貴社の営業資料を直接 届ける郵送代行サービス』です。\r\n\r\n弊社は、AIを活用しており法務局から不動産オーナー様がどこに住んでいるかを自動化する事ができます。\r\nそのオーナー様に直接営業資料をお届けでき、不動産売買等の営業をかけることが出来ます。\r\n\r\nもしよろしければ、初回ヒアリングも兼ねたお打ち合わせはいかがでしょうか?\r\n\r\nもしニーズに合わなければその場でお断りいただいても差し支えございません。\r\n\r\n貴社にとってメリットのあるご提案をさせていただきますので、どうぞよろしくお願いいたします。\r\n\r\nお問い合わせ、詳しくは以下のURLよりご確認下さい。 https://chokutel.com/",
      "経営者様 エンジニア採用ご担当者様\r\n\r\n突然のご連絡失礼いたします。\r\n\r\nグローバルギークス代表の明石と申します。\r\n\r\n貴社をバングラデシュIT人材活用のWEBセミナーにご招待したく、\r\n\r\nもしご興味がございましたら、ご参加登録をお願い致します。\r\n\r\n【ご招待・参加無料・2/8(木)、2/27(火)開催・バングラデシュIT人材活用セミナー】\r\nhttps://seminar.globalgeeks.co.jp/?utm_source=DM&utm_medium=email&utm_campaign=20240201b\r\n\r\n私は、バングラデシュ初の日系IT企業として、\r\n\r\n2001年から累計2400名のバングラデシュITエンジニアを採用し活用してきました。\r\n\r\nそのため、慢性的な国内ITエンジニア不足の悩みを解決できるのではないかと思い、\r\n\r\n今月2/8(木)、2/27(火)に無料のWEBセミナーを開催いたします。\r\n\r\n2024年の新常識として、外国人のIT人材活用に取り組むメリットは計り知りません。\r\n\r\nお気軽にご参加いただければと思います。お待ちしております。\r\n\r\n【ご招待・参加無料・2/8(木)、2/27(火)開催・バングラデシュIT人材活用セミナー】\r\nhttps://seminar.globalgeeks.co.jp/?utm_source=DM&utm_medium=email&utm_campaign=20240201b\r\n\r\n\r\n明石康弘（グローバルギークス代表）\r\nmk@seminar.globalgeeks.co.jp"
    ]
  end

  def normals
    [
      "無料で登録して感触を確かめています。\r\n確認したい点がありますのでご教示ください。\r\nメタデータの変更が反映されない。\r\n　メタデータのタイトル、説明文、ファビコンを変更したのですが\r\n　変更が反映されません。変更できないことはないと思うのですが設定かなにか必要でしょうか。\r\nスライダー\r\n　スライダーをの○○はクリックで画像が切り替わないのですが仕様でしょうか？\r\nすみませんが　よろしくお願いします。\r\n　",
      "ご担当者様\r\n\r\n使い方に関するヘルプページなどはありますか？\r\n今利用しているテンプレートのスマホ版でフッターに出てくるお問合せの電話アイコンに電話番号を紐づけたいときはどこを触ればいいでしょうか？\r\n\r\nお手数ですがご教示お願い致します。",
      "質問が２点あります。\r\n\r\n①サイト上にＰＤＦのファイルを閲覧、ダウンロードできるように埋め込んだりはできますか？\r\n\r\n②お名前.comで独自ドメインを購入しました。そして、こちらのサイトで独自ドメイン設定を行いました。その時に出ていたアラートで、ＣＮＡＭＥレコードを作成してください。と出ていたのですが、これは何のことでしょうか？",
      "新規登録をしました。\r\n今現在、使っているホームページ、メールアドレスはそのまま乗り換えることはできないのでしょうか？？\r\n有料のページで使いたいと考えております。\r\n",
      "弊社サービス紹介サイトの改修を検討しております。現在は主にリスティング広告のLPとしてのみ活用されておりますが、KWに合わせてコンテンツを変更したり、あるいはメルマガの受け皿としての活用などを考えています。しかしながら、社内にサイト構築の経験者がおらずリソースが限られること、また大規模な改修には時間と予算がかかるためすぐに動くのは難しい状況のため、まずは現在手元にある情報を元にいくつかコンテンツを作成し運用できないかと考えております。\r\nそこで貴社ツールが活用できないかと考え、ご連絡いたしました。\r\nお手数ですが、サービス資料の送付を希望いたします。\r\nどうぞよろしくお願い申し上げます。",
      "自社採用サイト作成を有料プランで検討していますが、法人契約のため、\r\nクレジット決済ではなく請求書対応を頂くことはできますか？\r\n同時に社内稟議上、見積もりが必要となるんですが発行は可能でしょうか？\r\n\r\nお試しで操作してみましたが、サイト編集でテンプレート表示されますが\r\n選択ができませんでした。\r\n操作マニュアル等はありますでしょうか？\r\n\r\n宜しくお願い致します。",
      "お世話になります。弊社の人材ビジネス事業部門が新規のウェブサイト立ち上げを検討しており、これに向けたサービス製品の調査を進めております。当方所属は営業企画部門にあり、全社各事業部門でのIT製品サービス導入に関する企画支援を担います。御社提供サービスを採用候補として提案いたしたく、資料ご提供を希望いたしました。",
      "ご担当者様\r\n\r\n決済機能オプションはありますでしょうか？\r\n宜しくお願いします。\r\n\r\nレブランクかおり"
    ]
  end
end

JumanppParser.new.exec