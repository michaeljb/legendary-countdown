import {List} from "immutable";

const defaultScheme = {
  name: "AnyScheme",
  updateMastermindCount: (count) => count,
  updateVillainGroupCount: (count) => count,
  updateHenchmenGroupCount: (count) => count
}

const Scheme = (obj) => {
  return Object.assign({}, defaultScheme, obj)
};

export const schemes = List.of(...[
  Scheme({
    name: "Bathe the Earth in Cosmic Rays"
  }),

  Scheme({
    name: "Brainwash the Military"
  }),

  Scheme({
    name: "Build an Army of Annihilation"
  }),

  Scheme({
    name: "Build an Underground MegaVault Prison"
  }),

  Scheme({
    name: "Cage Villains in Power-Supressing Cells"
  }),

  Scheme({
    name: "Capture Baby Hope"
  }),

  Scheme({
    name: "Change the Outcome of WWII"
  }),

  Scheme({
    name: "Corrupt the Next Generation of Heroes"
  }),

  Scheme({
    name: "Crown Thor King of Asgard"
  }),

  Scheme({
    name: "Crush HYDRA"
  }),

  Scheme({
    name: "Crush Them With My Bare Hands"
  }),

  Scheme({
    name: "Dark Alliance"
  }),

  Scheme({
    name: "Deadlands Hordes Charge the Wall"
  }),

  Scheme({
    name: "Detonate the Helicarrier"
  }),

  Scheme({
    name: "Enthrone the Barons of Battleworld"
  }),

  Scheme({
    name: "Fear Itself"
  }),

  Scheme({
    name: "Flood the Planet with Melted Glaciers"
  }),

  Scheme({
    name: "Forge the Infinity Gauntlet"
  }),

  Scheme({
    name: "Fragmented Realities"
  }),

  Scheme({
    name: "Go Back in Time to Slay Heroes' Ancestors"
  }),

  Scheme({
    name: "Graduation at Xavier's X-Academy"
  }),

  Scheme({
    name: "Infiltrate the Lair With Spies"
  }),

  Scheme({
    name: "Intergalactic Kree Nega-Bomb"
  }),

  Scheme({
    name: "Invade the Daily Bugle News HQ"
  }),

  Scheme({
    name: "Invincible Force Field"
  }),

  Scheme({
    name: "Last Stand at Avengers Tower"
  }),

  Scheme({
    name: "Mass Produce War Machine Armor"
  }),

  Scheme({
    name: "Massive Earthquake Generator"
  }),

  Scheme({
    name: "Master of Tyrants"
  }),

  Scheme({
    name: "Master the Mysteries of Kung-Fu"
  }),

  Scheme({
    name: "Midtown Bank Robbery"
  }),

  Scheme({
    name: "Negative Zone Prison Breakout",
    updateHenchmenGroupCount: (count) => count + 1
  }),

  Scheme({
    name: "Organized Crime Wave"
  }),

  Scheme({
    name: "Pan-Dimensional Plague"
  }),

  Scheme({
    name: "Portals to Dark Dimension"
  }),

  Scheme({
    name: "Pull Reality Into the Negative Zone"
  }),

  Scheme({
    name: "Replace Earth's Leaders with Killbots"
  }),

  Scheme({
    name: "Resurrect Heroes With Norn Stones"
  }),

  Scheme({
    name: "Save Humanity"
  }),

  Scheme({
    name: "Secret Invasion of the Skrull Shapeshifters"
  }),

  Scheme({
    name: "Secret Wars"
  }),

  Scheme({
    name: "Sinister Ambitions"
  }),

  Scheme({
    name: "Smash Two Dimensions Together"
  }),

  Scheme({
    name: "Splice Humans with Spider DNA"
  }),

  Scheme({
    name: "Steal the Weaponized Plutonium"
  }),

  Scheme({
    name: "Super Hero Civil War"
  }),

  Scheme({
    name: "The Clone Saga"
  }),

  Scheme({
    name: "The Fountain of Eternal Life"
  }),

  Scheme({
    name: "The God-Emperor of Battleworld"
  }),

  Scheme({
    name: "The Kree-Skrull War"
  }),

  Scheme({
    name: "The Legacy Virus"
  }),

  Scheme({
    name: "The Mark of Khonshu"
  }),

  Scheme({
    name: "The Traitor"
  }),

  Scheme({
    name: "The Unbreakable Enigma Code"
  }),

  Scheme({
    name: "Transform Citizens Into Demons"
  }),

  Scheme({
    name: "Unite the Shards"
  }),

  Scheme({
    name: "Unleash the Power of the Cosmic Cube"
  }),

  Scheme({
    name: "Weave a Web of Lies"
  }),

  Scheme({
    name: "X-Cutioner's Song"
  })
]);

export const schemeNames = schemes.map(s => s.name);

export const schemeByName = (name) => schemes.find(s => s.name === name);
