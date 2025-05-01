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
        if context.cardarea == G.jokers and context.before and no_bp_retrigger(context) then
            local faces = {}
            for _, v in ipairs(context.scoring_hand) do
                if v:is_face() then
                    faces[#faces + 1] = v
                    v:set_ability(G.P_CENTERS.m_stone, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    }))
                end
            end
            if #faces > 0 then
                return {
                    message = localize('k_stone'),
                    colour = G.C.GREY,
                }
            end
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
        if self.ability and self.ability.mxfj_patchwork then
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
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.end_of_round and no_bp_retrigger(context) then
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
                        _card.ability.mxfj_patchwork = true
                    return true
                end}))
                card_eval_status_text(context.other_card, 'extra', nil, nil, nil, { message = localize("k_patched") })
                card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize { type = 'variable', key = 'a_chips', vars = { _chips } }, colour = G.C.CHIPS })
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
