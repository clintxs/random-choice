keyword = ARGV[0]
query = ARGV[1] || ""

`./SetupIconsForTheme`

class RandomChoice
  class << self
    def choose(query)
      arr = query.split(",")
      value = arr[(rand * arr.length).floor].strip.capitalize
      exit if value == ""
      print "#{value}!"
    end

    def roll(query)
      num = query.to_i
      num = 6 if num == 0
      print (rand * num + 1).floor
    end

    def random(query)
      max = 0
      min = 1
      delimiter = nil

      delimiter = '-' if query =~ /\d\s*\-\s*\d/
      delimiter = ',' if query =~ /\d\s*,\s*\d/
      delimiter = '..' if query =~ /\d\s*\.\.\s*\d/
      delimiter = ' ' if query =~ /\d\s+\d/

      if delimiter
        parts = query.split(delimiter).map(&:to_i)
      else
        parts = [query.to_i]
      end

      if parts.length == 1
        max = parts[0]
      elsif parts.length == 2
        min, max = parts
      else
        puts "Invalid input!"
        exit
      end

      print (rand * (max - min) + min).round
    end

    def should(query)
      puts (rand >= 0.5) ? "Yes!" : "No!"
    end

    def flip(query)
      puts (rand >= 0.5) ? "Heads!" : "Tails!"
    end
  end
end

RandomChoice.send(keyword.to_sym, query)
