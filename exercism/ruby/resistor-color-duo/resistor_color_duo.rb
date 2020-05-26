
class ResistorColorDuo
    COLORS = %w(
        black
        brown
        red
        orange
        yellow
        green
        blue
        violet
        grey
        white
      )

    def self.value(colors)
        colors.map{|color| self::COLORS.index color.downcase }.first(2).join("").to_i
    end
end