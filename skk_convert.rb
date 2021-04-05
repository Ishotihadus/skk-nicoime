# frozen_string_literal: true

File.open('nicoime/nicoime_skk.txt', 'w') do |fpw|
  File.open('nicoime/nicoime_msime.txt', encoding: 'UTF-16LE:UTF-8') do |fpr|
    fpr.each do |line|
      line.strip!
      next if line.empty? || line.start_with?('!')
      s = line.split("\t")
      next unless s.size >= 3
      fpw.puts("#{s[0].gsub(/[ゔヴ]/, 'う゛')} /#{s[1]}/")
    end
  end
end
