class HomeController < ApplicationController
  def index

    @keyword = params[:fw]

    if @keyword.present?
    params = URI.encode_www_form({client_id:'fff', fw:"#{@keyword}"})
    uri = URI.parse("https://api?#{params}")
    # リクエストパラメタを、インスタンス変数に格納
    @query = uri.query
    # 新しくHTTPセッションを開始し、結果をresponseへ格納

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.start do |h|
      # 接続時に待つ最大秒数を設定
      h.open_timeout = 5
      # 読み込み一回でブロックして良い最大秒数を設定
      h.read_timeout = 10
      # ここでWebAPIを叩いている
      # Net::HTTPResponseのインスタンスが返ってくる
      h.get(uri.request_uri)
    end
    # 例外処理の開始
    begin
      # responseの値に応じて処理を分ける
      case response
      # 成功した場合
      when Net::HTTPSuccess
        # responseのbody要素をJSON形式で解釈し、hashに変換
        @result = JSON.parse(response.body)
        # 作業配列tagsにタグ一覧を格納
        @total_count = @result["total_count"]
        if @total_count > 50 then
          @total_count = 50
        end
        @image_url = []
        @product_name = []
        @brand_name = []
        for n in 0..49 do
          # @tmp_info = JSON.parse(@result["result"][n])
          @image_url.push(@result.dig("result",n ,"image_url"))
          @product_name.push(@result.dig("result",n ,"product_name"))
          @brand_name.push(@result.dig("result", n ,"brand_name"))
        end
      # 別のURLに飛ばされた場合
      when Net::HTTPRedirection
        @message = "Redirection: code=#{response.code} message=#{response.message}"
      # その他エラー
      else
        @message = "HTTP ERROR: code=#{response.code} message=#{response.message}"
      end
    # エラー時処理
    rescue IOError => e
      @message = "e.message"
    rescue TimeoutError => e
      @message = "e.message"
    rescue JSON::ParserError => e
      @message = "e.message"
    rescue => e
      @message = "e.message"
  end
end
  def search
    end
  end
end
