class ProductController < ApplicationController
  def index
  end

  def show_an_item
    # hash形式でパラメタ文字列を指定し、URL形式にエンコード
    item_id = params[:search_id]
    params = URI.encode_www_form({client_id:'fff'})
    # URIを解析し、hostやportをバラバラに取得できるようにする
    uri = URI.parse("https://api#{item_id}?#{params}")
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
        # 表示用の変数に結果を格納
        @product_id = @result["product_id"]
        @product_name = @result["product_name"]
        @maker_name = @result["maker_name"]
        @brand_name = @result["brand_name"]
        @review_count = @result["review_count"]
        @recommend_avg = @result["recommend_avg"]
        @url = @result["images"][0]["url"]
        @description = @result["description"]

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

    params = URI.encode_www_form({client_id:'fff',count:"50",profile_img_size:"m"})
    # URIを解析し、hostやportをバラバラに取得できるようにする
    uri = URI.parse("https://api/#{item_id}/reviews?#{params}")
    # リクエストパラメタを、インスタンス変数に格納
    @query = uri

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
        # 表示用の変数に結果を格納
        @total_count = @result["total_count"]
        if @total_count > 50 then
          @total_count = 50
        end
        @id = []
        @nickname = []
        @skin_type_name = []
        @recommend = []
        @description = []
        @display_date = []

        for n in 0..49 do
          # @tmp_info = JSON.parse(@result["result"][n])
          @id.push(@result.dig("reviews",n ,"id"))
          @nickname.push(@result.dig("reviews",n ,"nickname"))
          @skin_type_name.push(@result.dig("reviews",n ,"skin_type_name"))
          @recommend.push(@result.dig("reviews",n ,"recommend"))
          @description.push(@result.dig("reviews",n ,"description"))
          @display_date.push(@result.dig("reviews",n ,"display_date"))
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



  def select_tag
    # hash形式でパラメタ文字列を指定し、URL形式にエンコード
    keyword = "メンズ"
    params = URI.encode_www_form({client_id:'fff', fw:"#{keyword}"})
    # URIを解析し、hostやportをバラバラに取得できるようにする
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
        @tags = @result["result"]
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


  def show_list_item
    #取得したタグから商品IDを検索する．
    an_tag = '5576';
    params = URI.encode_www_form({client_id:'fff', tg:"#{an_tag}",count:"50"})
    # URIを解析し、hostやportをバラバラに取得できるようにする
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
        @total_count = @result["total_count"]
        if @total_count > 50 then
          @total_count = 50
        end
        @product_id = []
        @product_name = []
        @imageurl = []
        for n in 0..49 do
          # @tmp_info = JSON.parse(@result["result"][n])
          @product_name.push(@result.dig("result",n ,"product_name"))
          @product_id.push(@result.dig("result",n ,"product_id"))
          @imageurl.push(@result.dig("result", n ,"image_url_fitter"))
        end
      # 別のURLに飛ばされた場合
      when Net::HTTPRedirection
        @message = "Redirection: code=#{response.code} message=#{response.message}"
      # その他エラー
      else
        @message = "HTTP ERROR: code=#{response.code} message=#{response.message}"
      end
    end
  end
end
