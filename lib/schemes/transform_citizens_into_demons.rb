# Setup: 8 Twists. Villain Deck includes 14 extra Jean Grey cards and no
# Bystanders.
class TransformCitizensIntoDemons < Scheme
  def bystanders
    0
  end

  def other
    {
      'Jean Greys' => 14
    }
  end
end
