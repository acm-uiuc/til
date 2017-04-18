require 'spec_helper'
require 'mdspell'

module CheckSpelling
    def self.new(dict, dir)
        @checker = MdSpell::CLI.new
        @dict = dict
        @dir = dir
        @clean = true
        return self
    end

    def self.areCorrectlySpelled()
        @checker.run(["-c", @dict, @dir])
        @checker.files.each( & method(:check_file))
        return @clean
    end

    def self.check_file(filename)
        spell_checker = MdSpell::SpellChecker.new(filename)
        filename = spell_checker.filename

        spell_checker.typos.each do |typo |
            error "#{filename}:#{typo.line.location}: #{typo.word}"
        end
    end

    def self.error(str)
        @clean = false
        puts Rainbow(str).red
    end
end

describe 'TILs' do 
    it 'are all spelled correctly' do
        check = CheckSpelling.new("dictionary.yml" , "_til/")
        expect(check.areCorrectlySpelled()).to be true
    end
end
