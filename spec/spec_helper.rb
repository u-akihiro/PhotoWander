# カバレッジファイル
# http://qiita.com/moriokumura@github/items/36aa573891a6ab17b26d
require 'simplecov'
require 'simplecov-rcov'
SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/.bundle/'
end
