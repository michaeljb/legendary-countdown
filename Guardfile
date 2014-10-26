guard :rubocop, cli: ['--auto-correct'] do
  watch(/(?:Gem|Guard|Rake)file/)
  watch(/.+\.rb$/)
  watch(/(?:.+\/)?\.rubocop\.yml$/) { |m| File.dirname(m[0]) }
end
