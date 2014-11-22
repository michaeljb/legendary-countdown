# Setup: 8 Include 10 S.H.I.E.L.D. Assault Squads as one of the Backup Adversary
# groups.
class MassProduceWarMachineArmor < Scheme
  def henchmen
    return 10 if @players == 1
    super
  end
end
