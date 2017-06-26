# -*- coding: utf-8 -*-

Plugin.create(:burontsan) do
  command(:burontsan,
          name: 'ブロントさん',
          condition: lambda { |opt| true },
          visible: true,
          role: :timeline
         ) do |opt|
      
    msg = [ "ほう、経験が生きたなジュースを奢ってやろう",
            "汚いなさすが忍者きたない",
            "俺を強いと感じてしまってるやつは本能的に長寿タイプ",
            "破壊力ばつ牛ﾝ",
            "9枚でよい",
            "おれの怒りが有頂天になった",
            "おれパンチングマシンで100とか普通に出すし",
            "見事な仕事だと感心はするがどこもおかしくはない",
            "「もうついたのか！」「はやい！」「きた！盾きた！」「メイン盾きた！」「これで勝つる！」",
            "もう勝負ついてるから",
            "まれによくある",
            "バックステッポ",
            "確定的に明らか",
            "それほどでもない",
            "おいィ？",
            "ｶｶッ",
            "時既に時間切れ",
            "どちらかというと大反対",
            "このままでは俺の寿命がストレスでﾏｯﾊなんだが・・",
            "見ろ致命的な致命傷を負わせた",
            "仏の顔を三度までという名セリフを知らないのかよ",
          ]
    
    message = opt.messages.first
    screen_name = message.user[:idname]
    message.post(:message => "@#{screen_name} " + "#{msg.sample}")
  end 
end
