return {
    descriptions = {
        Back = {
            b_mxfj_unicorn = {
                name = "Unicorn Deck",
                text = {
                    "Jokers from {C:attention}MmmmmJokers{}",
                    "appear {C:attention}3X{} as often",
                    "Start run with a",
                    "copy of {C:attention}Where's Jimbo{}"
                }
            },
            b_mxfj_domino = {
                name = "Domino Deck",
                text = {
                    "Doubles all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                    "{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}2 in 3{C:inactive})",
                    "{C:attention}-#1#{} hand size"
                }
            },
            b_mxfj_wee = {
                name = "Wee Deck",
                text = {
                    "Start with only",
                    "{C:attention}2s{}-{C:attention}6s{} in deck"
                }
            }
        },
        Enhanced = {
            m_mxfj_wood = {
                name = "Wood Card",
                text = {
                    "{C:white,X:chips}X#1#{} Chips",
                    "no rank or suit"
                }
            }
        },
        Joker = {
            j_mxfj_medusa = {
                name = "Medusa",
                text = {
                    "All played {C:attention}face{} cards",
                    "become {C:attention}Stone{} cards",
                    "after scoring",
                }
            },
            j_mxfj_grave_robber = {
                name = "Grave Robber",
                text = {
                    "Gains {C:money}$#1#{} for each",
                    "destroyed card,",
                    "halved on next {C:attention}Ante{}",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive})"
                }
            },
            j_mxfj_dungeon_jester = {
                name = "Dungeon Jester",
                text = {
                    "All triggered {C:attention}editions{}",
                    "are {C:attention}twice{} as effective",
                }
            },
            j_mxfj_crusader = {
                name = "Crusader",
                text = {
                    "All played cards become",
                    "{C:attention}Steel{} cards if poker hand",
                    "contains a {C:attention}#1#{}",
                    "with {C:attention}1{} face card",
                }
            },
            j_mxfj_zombie_clown = {
                name = "Zombie Clown",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:tarot}Death{}",
                    "card on {C:green}reroll{}"
                }
            },
            j_mxfj_dweller = {
                name = "Dweller Joker",
                text = {
                    "",
                }
            },
            j_mxfj_patchwork = {
                name = "Patchwork Joker",
                text = {
                    "{C:attention}Patch{} played cards and",
                    "gains half of the rank",
                    "as {C:chips}Chips{} if not {C:attention}patched{}",
                    "{C:inactive}(Currently {C:chips}+#1# {C:inactive}Chips)"
                }
            },
            j_mxfj_cryptozoologist = {
                name = "Cryptozoologist",
                text = {
                    "{C:red}Rare{} Jokers each",
                    "give {X:mult,C:white}X#1#{} Mult,",
                    "{C:tarot}Legendary{} Jokers each",
                    "give {X:mult,C:white}X#2#{} Mult",
                    "{C:inactive}(Cryptozoologists excluded)"
                }
            },
            j_mxfj_cyclops = {
                name = "Cyclops Joker",
                text = {
                    "If played hand is a",
                    "{C:attention}High Card{} with an {C:attention}Ace{},",
                    "destroys it and",
                    "gains {C:mult}+#1#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            j_mxfj_skibidi = {
                name = "Skibidi Jonkler",
                text = {
                    "Gains {C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "per {C:attention}consecutive{} played hand",
                    "containing a {C:attention}Flush{}",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips, {C:mult}+#4#{C:inactive} Mult)"
                }
            },
            j_mxfj_waxwork = {
                name = "Waxwork Joker",
                text = {
                    "Retrigger played and",
                    "held in hand {C:attention}seal{} effects"
                }
            },
            j_mxfj_wheres_jimbo = {
                name = "Where's Jimbo",
                text = {
                    "{C:attention}+#1#{} options in",
                    "{C:attention}Buffoon Packs{}"
                }
            },
            j_mxfj_banned_card = {
                name = "Banned Card",
                text = {
                    "Draw {C:attention}#1#{} extra cards",
                    "after each played hand"
                }
            },
            j_mxfj_virtual = {
                name = "Virtual Joker",
                text = {
                    "Gains {C:chips}+#1#{} Chips for every",
                    "added {C:spades}dark suit{} card,",
                    "gains {C:mult}+#2# Mult{} for every",
                    "added {C:hearts}light suit{} card",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips, {C:mult}+#4#{C:inactive} Mult)"
                }
            },
            j_mxfj_witch = {
                name = "Witch",
                text = {
                    "{C:tarot}Tarot{} cards may",
                    "appear in any of",
                    "the other {C:attention}packs{}"
                },
            },
            j_mxfj_transmodifly = {
                name = "Transmodifly",
                text = {
                    "{C:attention}Mult Cards{} and {C:attention}Wild Cards{}",
                    "share the same abilities"
                },
            },
            j_mxfj_eldritch_totem = {
                name = "Eldritch Totem",
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "create {C:attention}#1# {C:attention}Cultist{} cards",
                    "{C:inactive}(Must have room)"
                }
            },
            j_mxfj_cultist = {
                name = "Cultist",
                text = {
                    "{X:mult,C:white}X#1#{} Mult for every",
                    "other {C:attention}Cultist{},",
                    "{S:1.1,C:red,E:2}self destructs{} if no",
                    "{C:attention}Eldritch Totem{} is present",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
                }
            },
            j_mxfj_joker_by_default = {
                name = "Joker By Default",
                text = {
                    "Gives {C:chips}+#1#{} Chips for each",
                    "{C:attention}Blue Seal{} in your {C:attention}full deck",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                }
            },
            j_mxfj_headless_horseman = {
                name = "Headless Horseman",
                text = {
                    "Destroys the last scored",
                    "{C:attention}face{} card and gains {X:mult,C:white}X#1#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"

                }
            },
            j_mxfj_prepper = {
                name = "Prepper",
                text = {
                    "{C:mult}+#1#{} Mult per hand",
                    "played this round",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            j_mxfj_odontophobia = {
                name = "Odontophobia",
                text = {
                    "Played {C:attention}face{} cards",
                    "give {X:mult,C:white}X#1#{} Mult",
                    "when scored"
                }
            },
            j_mxfj_pod = {
                name = "Pod Joker",
                text = {
                    "Turns into a random",
                    "owned {C:attention}Joker{} during",
                    "each played hand",
                    "{C:inactive}(Except Pod Joker)"
                }
            },
            j_mxfj_twins = {
                name = "The Twins",
                text = {
                    "When {C:attention}Blind{} is skipped,",
                    "create a {C:attention}Double Tag{}",
                    "before {C:attention}Tag{} reward"
                }
            },
            j_mxfj_manphibian = {
                name = "Man-phibian",
                text = {
                    "Each {C:attention}enhanced card{}",
                    "held in hand",
                    "gives {C:mult}+#1#{} Mult",
                }
            },
            j_mxfj_delivery = {
                name = "Delivery Guy",
                text = {
                    "After defeating a",
                    "{C:attention}Boss Blind{}, create a",
                    "random {C:attention}Food Joker{}",
                    "{C:inactive}(Must have room)"
                }
            },
            j_mxfj_guitar_pick = {
                name = "Guitar Pick",
                text = {
                    "If {C:attention}Poker Hand{} is",
                    "a {C:attention}#1#{}",
                    "retrigger all played cards",
                    "{s:0.8}poker hand changes",
                    "{s:0.8}at end of round",
                }
            },
            j_mxfj_jokers96 = {
                name = "Jokers96",
                text = {
                    "Played cards with",
                    "{C:attention}Red Seals{} become",
                    "{C:dark_edition}Polychrome{} when scored"
                }
            },
            j_mxfj_mariachi = {
                name = "Mariachi",
                text = {
                    "{C:chips}+#1#{} Chips for each",
                    "retriggered {C:attention}scoring card{}",
                    "per hand"
                }
            },
            j_mxfj_match_box = {
                name = "Match Box",
                text = {
                    "When you {C:attention}set the score",
                    "{C:attention}on fire{}, give {C:money}$#1#{}",
                    "Loses {C:money}$#2#{} every time you",
                    "{C:attention}set the score on fire"
                }
            },
            j_mxfj_record_shop = {
                name = "Record Shop",
                text = {
                    "This Joker gains {X:mult,C:white}X#1# {} Mult for",
                    "every unique {C:attention}consumable{} used",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_mxfj_strongman = {
                name = "Strongman",
                text = {
                    "If played hand contains a",
                    "{C:attention}#1#{}, increase the rank",
                    "of cards with the",
                    "lowest rank by {C:attention}1{}"
                }
            },
            j_mxfj_timbo_jruise = {
                name = "Timbo Jruise",
                text = {
                    "All cards with {C:attention}seals{}",
                    "give {C:money}$#1#{} when scored"
                }
            },
            j_mxfj_key_card = {
                name = "Key Card",
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "Jokers to the {C:attention}right{} of this",
                    "one become {C:eternal}Eternal{}, Jokers",
                    "to the {C:attention}left{} lose {C:eternal}Eternal{}"
                }
            },
            j_mxfj_flesh_golem = {
                name = "Flesh Golem",
                text = {
                    "Played cards give",
                    "{C:mult}+#1#{} Mult for each",
                    "{C:attention}suit{} they count",
                    "as when scored"
                }
            },
            j_mxfj_pinup_joker = {
                name = "Pinup Joker",
                text = {
                    "Played {C:attention}Wild Jacks{} are",
                    "retriggered {C:attention}#1#{} time",
                    "and give {C:white,X:mult}X#2#{} Mult",
                    "when scored"
                }
            },
            j_mxfj_cheerleader = {
                name = "Cheerleader",
                text = {
                    "{C:mult}+#1#{} Mult for each card",
                    "in your {C:attention}full deck{} of",
                    "the most {C:attention}popular{} suit",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}, {C:mult}+#3#{C:inactive} Mult){}",
                }
            },
            j_mxfj_broadcaster = {
                name = "Broadcaster",
                text = {
                    "Retrigger each played",
                    "card with {V:1}#1#{} suit,",
                    "{s:0.8}suit changes at end of round{}"
                }
            },
            j_mxfj_cyberpunk_joker = {
                name = "Cyberpunk Joker",
                text = {
                    "{C:attention}Steel{} cards give",
                    "{C:money}$#1#{} if they are",
                    "held in hand at",
                    "end of round",
                }
            },
            j_mxfj_runitback = {
                name = "Run It Back",
                text = {
                    "Prevents Death if chips",
                    "scored are at least",
                    "{C:attention}60%{} of required chips",
                    "Permanent {C:attention}-#1#{} Ante, {C:blue}-#2#{} hand",
                    "{S:1.1,C:red,E:2}self destructs{}"
                }
            },
            j_mxfj_this_isnt_balatro_jazz = {
                name = "This Isn't Balatro Jazz",
                text = {
                    "{C:attention}Purple Seals{} always",
                    "create {C:tarot}The Fool{}"
                }
            },
            j_mxfj_detour = {
                name = "Detour",
                text = {
                    "Allows {C:attention}Straights{}",
                    "to wrap around",
                    "{C:inactive}(ex: {C:attention}Q K A 2 3{C:inactive}){}",
                }
            },
            j_mxfj_reststop = {
                name = "Rest Stop",
                text = {
                    "Gains {C:white,X:mult}X#1#{} Mult when",
                    "leaving the {C:attention}shop",
                    "without spending {C:money}money{}",
                    "{C:inactive}(Currently {C:white,X:mult}X#2#{C:inactive} Mult){}"
                }
            },
            j_mxfj_lotteryticket = {
                name = "Lottery Ticket",
                text = {
                    "If played hand contains",
                    "{C:attention}3 Lucky 7s{}, triples",
                    "all {C:attention}listed{} {C:green,E:1}probabilities{}",
                    "{C:inactive}(ex: {C:green}1 in 4{C:inactive} -> {C:green}3 in 4{C:inactive}){}"
                }
            },
            j_mxfj_tipthescales = {
                name = "Tip the Scales",
                text = {
                    "Balances {C:chips}Chips{} and",
                    "{C:mult}Mult{} by {C:attention}#1#%{} if",
                    "{C:chips}Chips{} exceed {C:mult}Mult{}"
                }
            },
            j_mxfj_billiardball = {
                name = "Billiard Ball",
                text = {
                    "Gains {C:chips}+#1#{} Chips for",
                    "each played and scored",
                    "card without {C:attention}rank{} or {C:attention}suit{}",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}",
                }
            },
            j_mxfj_prospector = {
                name = "Prospector",
                text = {
                    "Played {C:attention}Stone{} cards",
                    "give {C:money}$#1#{} and have a",
                    "{C:green}#2# in #3#{} chance to be",
                    "{C:red}destroyed{} when scored"
                }
            },
            j_mxfj_animatronicjoker = {
                name = "Animatronic Joker",
                text = {
                    "Played {C:attention}Steel{} cards give",
                    "{C:white,X:mult}X#1#{} Mult when scored"
                }
            },
            j_mxfj_ghosthunter = {
                name = "Ghost Hunter",
                text = {
                    "{C:white,X:mult}X#1#{} Mult per {C:attention}skipped{}",
                    "{C:spectral}Spectral Pack{} this run",
                    "{C:inactive}(Currently {C:white,X:mult}X#2#{C:inactive} Mult){}"
                }
            },
            j_mxfj_woodjoker = {
                name = "Wood Joker",
                text = {
                    "Gives {C:white,X:chips}X#1#{} Chips",
                    "for each {C:attention}Wood{} card",
                    "in your {C:attention}full deck{}",
                    "{C:inactive}(Currently {C:white,X:chips}X#2#{C:inactive} Chips){}",
                }
            },
            j_mxfj_lumberjack = {
                name = "Lumberjack",
                text = {
                    "Destroy {C:attention}#1#{} {C:inactive}[#2#]{} cards",
                    "to create a copy",
                    "of {C:spectral}Sasquatch{}",
                    "{C:inactive}(Must have room){}"
                }
            },
            j_mxfj_sculptor = {
                name = "Sculptor",
                text = {
                    "{C:attention}Stone{} cards and",
                    "{C:attention}Wood{} cards also",
                    "have the abilities",
                    "of {C:attention}Wild{} cards",
                }
            },
            j_mxfj_builder = {
                name = "Builder",
                text = {
                    "Retriggers all",
                    "{C:attention}Stone{} cards and",
                    "{C:attention}Wood{} cards",
                }
            },
            j_mxfj_climber = {
                name = "Climber",
                text = {
                    "Every played {C:attention}card{}",
                    "permanently gains",
                    "{C:mult}+#1#{} Mult when scored"
                }
            },
            j_mxfj_goth = {
                name = "Goth",
                text = {
                    "Gains {C:mult}+#1#{} Mult for each",
                    "distinct {C:attention}enhancement{}",
                    "in played hand",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}"
                }
            },
            j_mxfj_chickennoodlesoup = {
                name = "Chicken Noodle Soup",
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "reduces requirement by {C:attention}#1#%{}",
                    "Loses {C:red}#2#%{} every round"
                }
            },
            j_mxfj_ectocola = {
                name = "Ecto Cola",
                text = {
                    "After {C:attention}#1#{} rounds,",
                    "sell this card to",
                    "add {C:dark_edition}Negative{} to",
                    "a random Joker",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)"
                }
            },
            j_mxfj_jawbreaker = {
                name = "Jawbreaker",
                text = {
                    "Played {C:attention}Stone{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:green}#2# in #3#{} chance this",
                    "card is destroyed",
                    "at end of round",
                }
            },
            j_mxfj_puzzlejoker = {
                name = "Puzzle Joker",
                text = {
                    "Gains {C:chips}+#1#{} Chips for",
                    "each Joker {C:attention}purchased{}",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}"
                }
            },
            j_mxfj_skater = {
                name = "Skater",
                text = {
                    "Gains {C:mult}+#1#{} Mult",
                    "if played hand",
                    "contains a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            j_mxfj_biker = {
                name = "Biker",
                text = {
                    "{C:mult}+#1#{} Mult,",
                    "{C:red}-#2#{} discards"
                }
            },
            j_mxfj_greatdealswaitingforyou = {
                name = "{s:0.9}[GREAT DEALS WAITING FOR YOU]{}",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:attention}Coupon Tag{} at",
                    "the end of the round"
                }
            },
            j_mxfj_blacklisted = {
                name = "Blacklisted",
                text = {
                    "{C:blue}Common{} {C:attention}Jokers{} and",
                    "{C:attention}Jokers{} {C:money}sold{} do not",
                    "reappear in the {C:money}shop{}"
                }
            },
            j_mxfj_cherries = {
                name = "Cherries",
                text = {
                    "{C:attention}+1{} card selection",
                    "when using {C:tarot}Tarot{}",
                    "and {C:spectral}Spectral{} cards",
                    "{C:inactive}(Uses remaining: {C:attention}#1#{C:inactive}){}"
                }
            },
            j_mxfj_vandalizedjoker = {
                name = "Vandalized Joker",
                text = {
                    "When a playing card is {C:red}destroyed{},",
                    "{C:green}#1# in #2#{} chance for this Joker",
                    "to gain its {C:chips}Chips{} value",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips){}"
                }
            },
            j_mxfj_revolt = {
                name = "Revolt",
                text = {
                    "Retriggers all",
                    "played {C:attention}number{}",
                    "cards, {C:red}debuffs{}",
                    "all {C:attention}face{} cards"
                }
            },
            j_mxfj_flame = {
                name = "FlameThrowerFIM",
                text = {
                    "Retriggers all played cards",
                    "{C:attention}#1#{} additional times",
                },
                unlock = {
                    "{E:1,s:1.3}?????{}",
                }
            }
        },
        Partner = {
            pnr_mxfj_prepper = {
                name = "Survive",
                text = {
                    "{C:mult}+#1#{} Mult per hand",
                    "played this round",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                },
                unlock = {
                    "Used{C:attention} Prepper{}",
                    "to win on {C:attention}Gold",
                    "{C:attention}Stake{} difficulty",
                }
            },
            pnr_mxfj_grave_robber = {
                name = "Dig",
                text = {
                    "Earn {C:money}$#1#{} when a",
                    "card is destroyed",
                },
                unlock = {
                    "Used{C:attention} Grave Robber{}",
                    "to win on {C:attention}Gold",
                    "{C:attention}Stake{} difficulty",
                }
            },
            pnr_mxfj_waxwork = {
                name = "Statue",
                text = {
                    "Retrigger the last",
                    "played card with a",
                    "seal {C:attention}#1#{} additional time#2#"
                },
                unlock = {
                    "Used{C:attention} Waxwork Joker{}",
                    "to win on {C:attention}Gold",
                    "{C:attention}Stake{} difficulty",
                }
            }
        },
        Spectral = {
            c_mxfj_sasquatch = {
                name = "Sasquatch",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards into",
                    "{C:attention}Wood Cards{}"
                }
            }
        },
        Other = {
            undefined_buffoon_pack = {
                name = "Buffoon Pack",
                text = {
                    "Choose {C:attention}X{} of up to",
                    "{C:attention}Y{C:joker} Joker{} cards"
                }
            },
        },
    },
    misc = {
        dictionary = {
            k_mxfj_brains = "Brains!",
            k_mxfj_chips = "Chips!",
            k_mxfj_halved = "Halved!",
            k_mxfj_steel = "Steel!",
            k_mxfj_stone = "Stone!",
            k_mxfj_patched = "Patched!",
            k_mxfj_aesthetic = "Aesthetic!",
            k_mxfk_delivery = "Delivery!",
            k_mxfk_match_box = "Ran Out!",

            ph_mxfj_runitback           = "Run It Back!!!",

        },
        v_dictionary = {
            a_mxfj_plus_joker = "+#1# Joker",
            a_mxfj_plus_jokers = "+#1# Jokers",
            a_mxfj_dollars_minus = "-$#1#",
            v_upgrade_ex = "Upgrade! X#1#"
        }
    }
}
