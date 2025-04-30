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

SMODS.Atlas{
    key = "mxfj_sprites",
    path = "mxfj_sprites.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = "test",
    name = "Test",
    rarity = 1,
    blueprint_compat = true,
    pos = {x = 1, y = 0},
    cost = 2,
    config = {extra = 4},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return card.ability.extra
        end
    end,
    atlas = "mxfj_sprites"
}