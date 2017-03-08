String.class_eval do
  def namify
    return self if self.empty?
    capitalized = self.split.map(&:capitalize).join(' ')
    capitalized.gsub!(/['-](?<str>[a-z]{2})/) do |str|
      pivot = str[0]
      str.slice!(0)
      "#{pivot}#{str.capitalize}"
    end
    capitalized
  end
end

module StringNamify
end
