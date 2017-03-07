String.class_eval do
  def namify
    return self if self.nil? || self.empty?
    capitalized = self.split.map(&:capitalize).join(' ')
    capitalized.gsub!(/'(?<str>[a-z]{2})/) do |str|
      "'#{str[1..-1].capitalize}"
    end
    capitalized
  end
end

module StringNamify
end
