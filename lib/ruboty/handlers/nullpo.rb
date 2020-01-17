# coding: utf-8

module Ruboty
  module Handlers
    class Nullpo < Base
      env :NULLPO_RESPONSE_STYLE, "rich: Use rich style ｶﾞｯ", optional: true

      on(
        %r{ぬるぽ|ヌルポ|nullpo},
        name: "nullpo",
        description: "Request ｶﾞｯ",
        all: true
      )

      def nullpo(message)
        message.reply(body)
      end

      private

      def body
        if rich?
          ga_aa
        else
          ga_text
        end
      end

      def ga_aa
          <<-GA
　 Λ＿Λ　　　　＼＼
 （　・∀・）　　　|　|　ｶﾞｯ
と　　　　）　　　|　|
　 Ｙ　/ノ　　　 人
　　 /　）　 　 < 　>_Λ∩
 ＿/し´　／／. Ｖ｀Д´）/
（＿フ彡　　　　　　 /　>>@#{message.from}
GA
      end

      def ga_text
        'ｶﾞｯ'
      end

      def rich?
        ENV['NULLPO_RESPONSE_STYLE'] == 'rich'
      end
    end
  end
end
