# Setup: 8 Twists. Always include Kree Starforce and Skrull Villain Groups.
class TheKreeSkrullWar < Scheme
  def villains
    return 16 if @players == 1
    super
  end
end
