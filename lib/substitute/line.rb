module Substitute
  class Line
    def initialize(text, options = {})
      self.text = text
      @srt = options[:srt]
    end

    attr_accessor :text

    def to_s
      if line_with_identifier?
        "\n#{identifier}\n#{start} --> #{finish}\n#{remaining_text}"
      else
        text
      end
    end

    def parts
      @_parts ||= text.split(' ')
    end

    def identifier
      parts[0]
    end

    def start
      convert_timestamp(parts[1])
    end

    def finish
      convert_timestamp(parts[2])
    end

    def convert_timestamp(timestamp)
      times = timestamp.split(':')
      frames = times[3].to_i
      thous = (frames * 40).to_s.rjust(3, '0')
      "#{times[0..2].join(':')}#{sep}#{thous}"
    end

    def sep
      return "," if srt?
      "."
    end

    def remaining_text
      parts[3..-1].join(' ')
    end

    def line_with_identifier?
      return unless parts[0]
      parts[0].to_i.to_s == parts[0]
    end

    private

    def srt?
      @srt
    end
  end
end
