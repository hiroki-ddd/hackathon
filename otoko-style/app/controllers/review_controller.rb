class ReviewController < ApplicationController

  def index

    require 'net/http'
    require 'uri'
    require 'json'

    @reviews_id = [505230946,505231027,505231049,308145432,505232333,505234603,504834981,505235855,505236269,505236376]


    @review_id_1 = @reviews_id[0]
    uri = URI.parse("https://api#{@review_id_1}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @brand_name_1 = @review["review"]["brand_name"]
    @product_name_1 = @review["review"]["product_name"]
    @description_1 = @review["review"]["description"]

    @review_id_2 = @reviews_id[1]
    uri = URI.parse("https://api#{@review_id_2}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @brand_name_2 = @review["review"]["brand_name"]
    @product_name_2 = @review["review"]["product_name"]
    @description_2 = @review["review"]["description"]

    @review_id_3 = @reviews_id[4]
    uri = URI.parse("https://api#{@review_id_3}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @brand_name_3 = @review["review"]["brand_name"]
    @product_name_3 = @review["review"]["product_name"]
    @description_3 = @review["review"]["description"]

    @review_id_4 = @reviews_id[5]
    uri = URI.parse("https://api#{@review_id_4}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @brand_name_4 = @review["review"]["brand_name"]
    @product_name_4 = @review["review"]["product_name"]
    @description_4 = @review["review"]["description"]

    @review_id_5 = @reviews_id[7]
    uri = URI.parse("https://api#{@review_id_5}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @brand_name_5 = @review["review"]["brand_name"]
    @product_name_5 = @review["review"]["product_name"]
    @description_5 = @review["review"]["description"]

  end

  def show
    require 'net/http'
    require 'uri'
    require 'json'
    @review_id = params[:id]
    uri = URI.parse("https://api#{@review_id}?client_id=fff")
    json = Net::HTTP.get(uri)
    @review = JSON.parse(json)
    @nickname = @review["review"]["nickname"]
    @brand_name = @review["review"]["brand_name"]
    @product_name = @review["review"]["product_name"]
    @description = @review["review"]["description"]
    @product_id = @review["review"]["product_id"]


  end

  def post
  end
end
