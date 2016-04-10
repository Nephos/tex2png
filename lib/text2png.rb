require "text2png/version"
require "text2png/errors"
require "text2png/result"
require "text2png/command"
require "text2png/converter"

module Text2png
  LATEX_PACKAGES = [
    "amssymb", "amsmath", "color", "amsfonts"
  ].freeze

  TEMP_DIR = "/tmp/text2png"

  class << self
    def latex
      @latex ||= Command.new(:latex)
    end

    def dvipng
      @dvipng ||= Command.new(:dvipng)
    end
  end

  def Convert(formula, density: 155)
    Converter.new(formula, density: density)
  end
end
