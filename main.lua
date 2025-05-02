mxfj_mod = SMODS.current_mod
mxfj_config = mxfj_mod.config

--SMODS.Atlas{
--    key = "modicon",
--    path = "mxfj_modicon.png",
--    px = 34,
--    py = 34,
--}

--mxfj_mod.optional_features = {
--    retrigger_joker = true,
--    cardareas = {
--        unscored = true
--    }
--}

--mxfj_mod.config_tab = function()
--    return {n = G.UIT.ROOT, config = {align = "m", r = 0.1, padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6}, nodes = {
--        {n = G.UIT.R, config = {align = "cl", padding = 0, minh = 0.1}, nodes = {}},
--
--        {n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
--            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
--                create_toggle{ col = true, label = "", scale = 1, w = 0, shadow = true, ref_table = mxfj_config, ref_value = "test_value" },
--            }},
--            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
--                { n = G.UIT.T, config = { text = "Test", scale = 0.45, colour = G.C.UI.TEXT_LIGHT }},
--            }},
--        }},
--    }}
--end

SMODS.load_file("utils.lua")()

SMODS.Atlas {
    key = "mxfj_sprites",
    path = "mxfj_sprites.png",
    px = 71,
    py = 95
}

-- Medusa --

SMODS.Joker {
    key = "medusa",
    name = "Medusa",
    rarity = 2,
    pos = { x = 0, y = 0 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.after and no_bp_retrigger(context) then
            local faces = {}
            for _, v in ipairs(context.scoring_hand) do
                if v:is_face() then
                    faces[#faces + 1] = v
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:set_ability(G.P_CENTERS.m_stone)
                            v:juice_up()
                            return true
                        end
                    }))
                end
            end
            if #faces > 0 then
                return {
                    message = localize('k_mxfj_stone'),
                    colour = G.C.GREY,
                }
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Grave Robber --

SMODS.Joker {
    key = "grave_robber",
    name = "Grave Robber",
    rarity = 2,
    pos = { x = 1, y = 0 },
    cost = 6,
    config = {extra = {dollars = 0, dollar_mod = 2}},
    perishable_compat = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.dollar_mod, card.ability.extra.dollars}}
    end,
    calc_dollar_bonus = function(self, card)
        if card.ability.extra.dollars ~= 0 then
            return card.ability.extra.dollars
        end
    end,
    calculate = function(self, card, context)
        if (context.cards_destroyed and (context.glass_shattered and #context.glass_shattered > 0))
        or (context.remove_playing_cards and (context.removed and #context.removed > 0)) and no_bp_retrigger(context) then
            local _dollars = 0
            if context.removed then
                _dollars = _dollars + (card.ability.extra.dollar_mod * #context.removed)
            end
            if context.glass_shattered then
                _dollars = _dollars + (card.ability.extra.dollar_mod * #context.glass_shattered)
            end
            card.ability.extra.dollars = card.ability.extra.dollars + _dollars
            G.E_MANAGER:add_event(Event({
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {
                        message = "+$" .. _dollars,
                        colour = G.C.MONEY
                    })
                return true
            end}))
        end
        if context.end_of_round and not (context.individual or context.repetition) and no_bp_retrigger(context) then
            if G.GAME.blind and G.GAME.blind.boss and card.ability.extra.dollars > 0 then
                card.ability.extra.dollars = math.ceil(card.ability.extra.dollars / 2)
                card_eval_status_text(card, 'extra', nil, nil, nil, {
                    message = localize('k_mxfj_halved'),
                    colour = G.C.RED
                })
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Dungeon Jester --

-- SMODS.Joker {
--     key = "dungeon_jester",
--     name = "Dungeon Jester",
--     rarity = 3,
--     pos = { x = 2, y = 0 },
--     cost = 8,
--     config = {extra = 0.5},
--     loc_vars = function(self, info_queue, card)
--         return {vars = {card.ability.extra * 100}}
--     end,
--     atlas = "mxfj_sprites"
-- }

-- Crusader --

SMODS.Joker {
    key = "crusader",
    name = "Crusader",
    rarity = 2,
    pos = { x = 3, y = 0 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return {vars = {localize("Royal Flush", "poker_hands")}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and context.scoring_hand and no_bp_retrigger(context) then
            local _, _, _, _, disp_text = G.FUNCS.get_poker_hand_info(context.scoring_hand)
            if disp_text == "Royal Flush" then
                for _, v in ipairs(context.scoring_hand) do
                    v:set_ability(G.P_CENTERS.m_steel)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    }))
                end
                return {
                    message = localize('k_mxfj_steel'),
                    colour = G.C.UI.TEXT_INACTIVE,
                }
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Zombie Clown --

-- SMODS.Joker {
--     key = "zombie_clown",
--     name = "Zombie Clown",
--     rarity = 1,
--     pos = { x = 4, y = 0 },
--     cost = 4,
--     atlas = "mxfj_sprites"
-- }

-- Dweller Joker --

SMODS.Joker {
    key = "dweller",
    name = "Dweller Joker",
    rarity = 1,
    pos = { x = 5, y = 0 },
    cost = 4,
    config = {extra = {min = 0, max = 100}},
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        local r_chips = {}
        for i = card.ability.extra.min, card.ability.extra.max do
            r_chips[#r_chips+1] = tostring(i)
        end
        local loc_chips = ' '..(localize('k_mxfj_chips'))..' '
        local _main_start = {
            {n=G.UIT.T, config={text = '  +',colour = G.C.CHIPS, scale = 0.32}},
            {n=G.UIT.O, config={object = DynaText({string = r_chips, colours = {G.C.BLUE},pop_in_rate = 9999999, silent = true, random_element = true, pop_delay = 0.5, scale = 0.32, min_cycle_time = 0})}},
            {n=G.UIT.O, config={object = DynaText({string = {
                {string = 'rand()', colour = G.C.JOKER_GREY},{string = "#@"..(G.deck and G.deck.cards[1] and G.deck.cards[1].base.id or 2)..(G.deck and G.deck.cards[1] and G.deck.cards[1].base.suit:sub(1,1) or 'C'), colour = G.C.BLUE},
                loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips, loc_chips},
            colours = {G.C.UI.TEXT_DARK},pop_in_rate = 9999999, silent = true, random_element = true, pop_delay = 0.2011, scale = 0.32, min_cycle_time = 0})}},
        }
        return {vars = {card.ability.extra.min, card.ability.extra.max}, main_start = _main_start}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = pseudorandom(pseudoseed('dweller'), card.ability.extra.min, card.ability.extra.max)
            }
        end
    end,
    atlas = "mxfj_sprites"
}

-- Patchwork Joker --

SMODS.Atlas{
    key = "mxfj_patch",
    path = "mxfj_patch.png",
    px = 71,
    py = 95
}

SMODS.DrawStep{
    key = 'mxfj_patch',
    order = -1,
    func = function(self)
        if self.ability and self.ability.mxfj_patchwork_sprite then
            if not mxfj_mod.mxfj_patch then mxfj_mod.mxfj_patch = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["mxfj_patch"], {x = 0,y = 0}) end
            mxfj_mod.mxfj_patch.role.draw_major = self
            mxfj_mod.mxfj_patch:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = {vortex = false, facing = 'front'}
}

SMODS.Joker {
    key = "patchwork",
    name = "Patchwork Joker",
    rarity = 2,
    pos = { x = 6, y = 0 },
    cost = 6,
    config = { extra = 0 },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.end_of_round and no_bp_retrigger(context) then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED,
                }
            end
            if not context.other_card.ability.mxfj_patchwork then
                local _chips = math.ceil(context.other_card.base.nominal / 2)
                card.ability.extra = card.ability.extra + _chips
                local _card = context.other_card
                G.E_MANAGER:add_event(Event({
                    func = function()
                        _card.ability.mxfj_patchwork_sprite = true
                    return true
                end}))
                card_eval_status_text(context.other_card, 'extra', nil, nil, nil, { message = localize("k_mxfj_patched") })
                card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize { type = 'variable', key = 'a_chips', vars = { _chips } }, colour = G.C.CHIPS })
                context.other_card.ability.mxfj_patchwork = true
            end
        end
        if context.joker_main and card.ability.extra ~= 0 then
            return {
                chips = card.ability.extra
            }
        end
    end,
    atlas = "mxfj_sprites"
}

-- Cryptozoologist --

SMODS.Joker {
    key = "cryptozoologist",
    name = "Cryptozoologist",
    rarity = 3,
    pos = { x = 7, y = 0 },
    cost = 8,
    config = {extra = {rare = 1.75, legendary = 2}},
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.rare, card.ability.extra.legendary}}
    end,
    calculate = function(self, card, context)
        if context.other_joker and context.other_joker.config.center.key ~= "j_mxfj_cryptozoologist" then
            local _rarity = context.other_joker.config.center.rarity
            if _rarity == 3 or _rarity == 4 then
                return {
                    Xmult = (_rarity == 3 and card.ability.extra.rare) or card.ability.extra.legendary
                }
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Cyclops Joker --

SMODS.Joker {
    key = "cyclops",
    name = "Cyclops Joker",
    rarity = 1,
    pos = { x = 8, y = 0 },
    cost = 4,
    config = {extra = {mult = 0, mult_mod = 7}},
    blueprint_compat = true,
    perishable_compat = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult_mod, card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.destroy_card ~= card and context.scoring_hand then
            local aces = {}
            for i = 1 , #context.scoring_hand do
                if context.scoring_hand[i]:get_id() == 14 then aces[#aces+1] = context.scoring_hand[i] end
            end
            if aces[1] and #aces == 1 then
                if context.destroy_card == aces[1] then
                    card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                    card_eval_status_text(card, 'extra', nil, nil, nil, {
                        message = localize('k_upgrade_ex'),
                    })
                    return true
                end
            end
        end
        if context.joker_main and card.ability.extra.mult ~= 0 then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
    atlas = "mxfj_sprites"
}

-- Skibidi Jonkler --

SMODS.Joker {
    key = "skibidi",
    name = "Skibidi Jonkler",
    rarity = 2,
    pos = { x = 9, y = 0 },
    cost = 6,
    config = {extra = {chips = 0, mult = 0, chips_mod = 6, mult_mod = 9}},
    blueprint_compat = true,
    perishable_compat = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips_mod, card.ability.extra.mult_mod, card.ability.extra.chips, card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and context.poker_hands and no_bp_retrigger(context) then
            if next(context.poker_hands["Flush"]) then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_mod
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                card_eval_status_text(card, 'extra', nil, nil, nil, {
                    message = localize('k_upgrade_ex'),
                })
            else
                card.ability.extra.chips = 0
                card.ability.extra.mult = 0
                card_eval_status_text(card, 'extra', nil, nil, nil, {
                    message = localize('k_reset'),
                    colour = G.C.RED
                })
            end
        end
        if context.joker_main then
            if card.ability.extra.chips ~= 0 and card.ability.extra.mult ~= 0 then
                return {
                    chips = card.ability.extra.chips,
                    mult = card.ability.extra.mult
                }
            elseif card.ability.extra.chips ~= 0 then
                return {
                    chips = card.ability.extra.chips,
                }
            elseif card.ability.extra.mult ~= 0 then
                return {
                    mult = card.ability.extra.mult,
                }
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Waxwork Joker --

SMODS.Joker {
    key = "waxwork",
    name = "Waxwork Joker",
    rarity = 3,
    pos = { x = 0, y = 1 },
    cost = 8,
    blueprint_compat = true,
    calculate = function(self, card, context)
        if (context.cardarea == G.play or context.cardarea == G.hand) and context.repetition then
            if context.other_card and context.other_card.seal then
                return {
                    repetitions = 1
                }
            end
        end
    end,
    in_pool = function()
        for _, v in pairs(G.playing_cards) do
            if v.seal then return true end
        end
        return false
    end,
    atlas = "mxfj_sprites"
}

-- Where's Jimbo --

-- SMODS.Joker {
--     key = "wheres_jimbo",
--     name = "Where's Jimbo",
--     rarity = 1,
--     pos = { x = 1, y = 1 },
--     cost = 4,
--     atlas = "mxfj_sprites"
-- }

-- Banned Card --

SMODS.Joker {
    key = "banned_card",
    name = "Banned Card",
    rarity = 2,
    pos = { x = 2, y = 1 },
    cost = 6,
    config = {extra = 2},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra}}
    end,
    calculate = function(self, card, context)
        if not context.first_hand_drawn and context.hand_drawn and card.ability.mxfj_hand_played and card.ability.mxfj_drew == nil then
            card.ability.mxfj_hand_played = nil
            card.ability.mxfj_drew = true
            local hand_space = math.min(#G.deck.cards, card.ability.extra)
            if hand_space > 0 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:juice_up(0.3, 0.5)
                        G.FUNCS.draw_from_deck_to_hand(hand_space)
                    return true
                end}))
            end
        end
        if context.joker_main then
            card.ability.mxfj_hand_played = true
            card.ability.mxfj_drew = nil
        end
    end,
    atlas = "mxfj_sprites"
}

-- Virtual Joker --

mxfj_mod.light_suits = {'Diamonds', 'Hearts'}
mxfj_mod.dark_suits = {'Spades', 'Clubs'}

if PB_UTIL and PB_UTIL.config.suits_enabled then
    table.insert(mxfj_mod.light_suits, 'paperback_Stars')
    table.insert(mxfj_mod.dark_suits, 'paperback_Crowns')
end

if (SMODS.Mods["Bunco"] or {}).can_load then
    local prefix = SMODS.Mods["Bunco"].prefix

    table.insert(mxfj_mod.light_suits, prefix .. '_Fleurons')
    table.insert(mxfj_mod.dark_suits, prefix .. '_Halberds')
end

SMODS.Joker {
    key = "virtual",
    name = "Virtual Joker",
    rarity = 2,
    pos = { x = 3, y = 1 },
    soul_pos = { x = 4, y = 1 },
    cost = 6,
    config = {extra = {chips = 0, mult = 0, chips_mod = 31, mult_mod = 4}},
    blueprint_compat = true,
    perishable_compat = false,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips_mod, card.ability.extra.mult_mod, card.ability.extra.chips, card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.playing_card_added and no_bp_retrigger(context) then
            local light = 0
            local dark = 0
            for i = 1, #context.cards do
                if SMODS.has_no_suit(context.cards[i]) then
                elseif SMODS.has_any_suit(context.cards[i]) then
                    light = light + 1
                    dark = dark + 1
                else
                    local card_is_light = false
                    for j = 1, #mxfj_mod.light_suits do
                        if context.cards[i]:is_suit(mxfj_mod.light_suits[j]) then
                            light = light + 1
                            card_is_light = true
                        end
                    end
                    if not card_is_light then
                        for j = 1, #mxfj_mod.dark_suits do
                            if context.cards[i]:is_suit(mxfj_mod.dark_suits[j]) then
                                dark = dark + 1
                            end
                        end
                    end
                end
            end
            if light or dark > 0 then
                if light > 0 then
                    card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chips_mod * light)
                else
                    card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_mod * dark)
                end
                card_eval_status_text(card, 'extra', nil, nil, nil, {
                    message = localize('k_upgrade_ex'),
                })
            end
        end
        if context.joker_main then
            if card.ability.extra.chips ~= 0 and card.ability.extra.mult ~= 0 then
                return {
                    chips = card.ability.extra.chips,
                    mult = card.ability.extra.mult
                }
            elseif card.ability.extra.chips ~= 0 then
                return {
                    chips = card.ability.extra.chips,
                }
            elseif card.ability.extra.mult ~= 0 then
                return {
                    mult = card.ability.extra.mult,
                }
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Witch --

SMODS.Joker {
    key = "witch",
    name = "Witch",
    rarity = 2,
    pos = { x = 5, y = 1 },
    cost = 6,
    -- Witch effect in "lovely.toml"
    atlas = "mxfj_sprites"
}

--Code from Betmma's Vouchers
G.FUNCS.can_pick_card = function(e)
    if #G.consumeables.cards < G.consumeables.config.card_limit then
        e.config.colour = G.C.GREEN
        e.config.button = 'pick_card'
    else
      e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      e.config.button = nil
    end
end
G.FUNCS.pick_card = function(e)
    local c1 = e.config.ref_table
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
          c1.area:remove_card(c1)
          c1:add_to_deck()
          if c1.children.price then c1.children.price:remove() end
          c1.children.price = nil
          if c1.children.buy_button then c1.children.buy_button:remove() end
          c1.children.buy_button = nil
          remove_nils(c1.children)
          G.consumeables:emplace(c1)
          G.GAME.pack_choices = G.GAME.pack_choices - 1
          if G.GAME.pack_choices <= 0 then
            G.FUNCS.end_consumeable(nil, delay_fac)
          end
          return true
        end
    }))
end

-- Transmodifly --

SMODS.Joker {
    key = "transmodifly",
    name = "Transmodifly",
    rarity = 2,
    pos = { x = 6, y = 1 },
    cost = 6,
    calculate = function(self, card, context)
        if not context.end_of_round and context.individual and context.cardarea == G.play then
            if context.other_card.ability.effect == "Wild Card" then
                return {
                    mult = G.P_CENTERS.m_mult.config.mult,
                }
            end
        end
    end,
    in_pool = function()
        for _, v in pairs(G.playing_cards) do
            if v.config.center == G.P_CENTERS.m_mult or v.config.center == G.P_CENTERS.m_wild then return true end
        end
        return false
    end,
    atlas = "mxfj_sprites"
}

local is = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
    if next(SMODS.find_card('j_mxfj_transmodifly')) and self.ability.effect == 'Mult Card' then
        if not flush_calc or (flush_calc and not self.debuff) then
            return true
        end
    end
    return is(self, suit, bypass_debuff, flush_calc)
end

-- Eldritch Totem --

SMODS.Joker {
    key = "eldritch_totem",
    name = "Eldritch Totem",
    rarity = 2,
    pos = { x = 7, y = 1 },
    cost = 6,
    config = {extra = 2},
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_mxfj_cultist
        return {vars = {card.ability.extra}}
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
            if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                local jokers_to_create = math.min(card.ability.extra, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
                G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
                G.E_MANAGER:add_event(Event({
                    func = function()
                        for i = 1, jokers_to_create do
                            SMODS.add_card({key = 'j_mxfj_cultist'})
                            G.GAME.joker_buffer = 0
                        end
                        return true
                    end
                }))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize{type='variable',key=(jokers_to_create == 1 and 'a_mxfj_plus_joker') or 'a_mxfj_plus_jokers',vars={jokers_to_create}}, colour = G.C.BLUE})
            end
        end
    end,
    atlas = "mxfj_sprites"
}

-- Cultist --

SMODS.Joker {
    key = "cultist",
    name = "Cultist",
    rarity = 1,
    pos = { x = 8, y = 1 },
    cost = 4,
    config = {extra = 1},
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        local Xmlt = math.max(1, 1 + (card.ability.extra * (get_cultist_count() - 1)))
        return {vars = {card.ability.extra, Xmlt}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local Xmlt = math.max(1, 1 + (card.ability.extra * (get_cultist_count() - 1)))
            if Xmlt ~= 1 then
                return {
                    Xmult = Xmlt
                }
            end
        end
    end,
    in_pool = function()
        return false
    end,
    atlas = "mxfj_sprites"
}

-- Joker By Default --

SMODS.Joker {
    key = "joker_by_default",
    name = "Joker By Default",
    rarity = 1,
    pos = { x = 9, y = 1 },
    cost = 4,
    config = {extra = 54},
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = 'blue_seal', set = 'Other'}
        local chps = 0
        for _, v in ipairs(G.playing_cards) do
            if v.seal and v.seal == 'Blue' then
                chps = chps + card.ability.extra
            end
        end
        return {vars = {card.ability.extra, chps}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local chps = 0
            for _, v in ipairs(G.playing_cards) do
                if v.seal and v.seal == 'Blue' then
                    chps = chps + card.ability.extra
                end
            end
            if chps ~= 0 then
                return {
                    chips = chps
                }
            end
        end
    end,
    in_pool = function()
        for _, v in pairs(G.playing_cards) do
            if v.seal and v.seal == 'Blue' then return true end
        end
        return false
    end,
    atlas = "mxfj_sprites"
}