module GoStampRallyHelper

  require "rexml/document"
  #XMLをPerseするライブラリ
  PASSWORD = "cap143ecd74693"
  #取得先
  BASE_URL = "http://jws.jalan.net/APICommon/OnsenSearch/V1/"
  #取得件数
  LIMIT = 10;

  # APIからデータを取得する。
  def self.fetch(params)
    httpClient = HTTPClient.new
    begin
        # basic 認証
        #httpClient.set_auth(BASE_URL, USERNAME, PASSWORD)
        # get request
        data = httpClient.get_content(BASE_URL, params)
        puts BASE_URL,params
        return data
    rescue HTTPClient::BadResponseError => e
    rescue HTTPClient::TimeoutError => e
    end
  end

  def self.test_fetch
    httpClient = HTTPClient.new
    begin
      data = httpClient.get_content('https://dl.dropboxusercontent.com/u/16268979/json/rally_lists.json')
      return data
    rescue HTTPClient::BadResponseError => e
    rescue HTTPClient::TimeoutError => e
    end
  end

  #APIに送るパラメータをセットする。
  #http://jws.jalan.net/APICommon/OnsenSearch/V1/?key=cap143ecd74693&pref=260000&count=10&xml_ptn=1
  def self.set_parameter(offset = 0)
    params = {
      'key' => PASSWORD,
      'pref' => '260000',
      # 'l_area' => '010300',
      'count' => 10,
      'xml_ptn' => 1
    }
    return params
  end

  # xmlをjsonに変換する
  def self.xml_to_json(xmls)
    doc = REXML::Document.new(xmls)
    hash = Hash.from_xml(doc.to_s)
    return hash.to_json
  end

end
