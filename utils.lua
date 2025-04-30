--- Quicker way to print elements
function mxfj_debug(elem)
    if not elem then return sendDebugMessage("[MmmmmJokers] DEBUG: This element doesn't exist") end
    if type(elem) == "boolean" then
        return (elem and sendDebugMessage("[MmmmmJokers] DEBUG: true")) or sendDebugMessage("[MmmmmJokers] DEBUG: false")
    end
    if type(elem) == "table" then
        return sendDebugMessage("[MmmmmJokers] DEBUG: " .. inspect(elem))
    else
        return sendDebugMessage("[MmmmmJokers] DEBUG: " .. elem)
    end
end

-- Faster way to write non-BP/retrigger check
function no_bp_retrigger(context)
    if not context then return false end
    return not (context.blueprint or context.retrigger_joker or context.retrigger_joker_check)
end

--- Talisman compat
to_big = to_big or function(num)
    return num
end

to_number = to_number or function(num)
    return num
end