return {
    descriptions = {
        Back = {
            b_mxfj_unicorn = {
                name = "Колода Единорога",
                text = {
                    "Джокеры из {C:attention}MmmmmJokers{}",
                    "появляются в {C:attention}3 раза{} чаще",
                    "Начните забег с",
                    "копией {C:attention}Где Джамбо?{}"
                }
            },
            b_mxfj_domino = {
                name = "Колода Домино",
                text = {
                    "Удваивает все {C:attention}указанные",
                    "{C:green,E:1,S:1.1}вероятности{}",
                    "{C:inactive}(пр.: {C:green}1 из 3{C:inactive} -> {C:green}2 из 3{C:inactive})",
                    "{C:attention}-#1#{} размер руки"
                }
            },
            b_mxfj_wee = {
                name = "Крошечная колода",
                text = {
                    "Начинате с картами только с",
                    "{C:attention}Двоек{}по{C:attention}Шестерок{} в колоде"
                }
            }
        },
        Joker = {
            j_mxfj_medusa = {
                name = "Медуза",
                text = {
                    "Все сыгранные карты с {C:attention}лицом{}",
                    "становятся {C:attention}Каменными{}",
                    "после подсчета очков",
                }
            },
            j_mxfj_grave_robber = {
                name = "Расхититель гробниц",
                text = {
                    "Дает {C:money}$#1#{} за каждую",
                    "уничтоженную карту,",
                    "делится пополам на следующем {C:attention}Анте{}",
                    "{C:inactive}(Сейчас {C:money}$#2#{C:inactive})"
                }
            },
            j_mxfj_dungeon_jester = {
                name = "Подземельный шут",
                text = {
                    "Все активированные {C:attention}выпуски{}",
                    "в {C:attention}два раза{} эффективнее",
                }
            },
            j_mxfj_crusader = {
                name = "Крестоносец",
                text = {
                    "Все сыгранные карты становятся",
                    "{C:attention}Стальными{}, если покерная рука",
                    "содержит {C:attention}#1#{}",
                    "с {C:attention}1{} лицевой картой",
                }
            },
            j_mxfj_zombie_clown = {
                name = "Клоун-зомби",
                text = {
                    "Шанс {C:green}#1# к #2#{}",
                    "создать карту {C:tarot}Смерть{}",
                    "при {C:green}перебросе{}"
                }
            },
            j_mxfj_dweller = {
                name = "Джокер-Обитатель",
                text = { "" }
            },
            j_mxfj_patchwork = {
                name = "Лоскутный джокер",
                text = {
                    "«Латает» сыгранные карты и",
                    "дает половину их ранга",
                    "в виде {C:chips}Фишек{}, если они не {C:attention}латаные{}",
                    "{C:inactive}(Сейчас {C:chips}+#1# {C:inactive}Фишек)"
                }
            },
            j_mxfj_cryptozoologist = {
                name = "Криптозоолог",
                text = {
                    "Каждый {C:red}Редкий{} Джокер",
                    "дает {X:mult,C:white}X#1#{} Множителя,",
                    "каждый {C:tarot}Легендарный{} Джокер",
                    "дает {X:mult,C:white}X#2#{} Множителя",
                    "{C:inactive}(Криптозоологи не считаются)"
                }
            },
            j_mxfj_cyclops = {
                name = "Циклоп",
                text = {
                    "Если сыгранная рука — это",
                    "{C:attention}Старшая карта{} с {C:attention}Тузом{},",
                    "уничтожает её и",
                    "дает {C:mult}+#1#{} Множителя",
                    "{C:inactive}(Сейчас {C:mult}+#2#{C:inactive} Множителя)"
                }
            },
            j_mxfj_skibidi = {
                name = "Скибиди-джокер",
                text = {
                    "Дает {C:chips}+#1#{} Фишек и {C:mult}+#2#{} Множителя",
                    "за каждую {C:attention}последовательную{} сыгранную руку",
                    "содержащую {C:attention}Флеш{}",
                    "{C:inactive}(Сейчас {C:chips}+#3#{C:inactive} Фишек, {C:mult}+#4#{C:inactive} Множителя)"
                }
            },
            j_mxfj_waxwork = {
                name = "Восковая фигура",
                text = {
                    "Повторно активирует эффекты",
                    "{C:attention}печатей{} на сыгранных и",
                    "держащихся в руке картах"
                }
            },
            j_mxfj_wheres_jimbo = {
                name = "Где Джамбо?",
                text = {
                    "{C:attention}+#1#{} вариантов в",
                    "{C:attention}шута-наборах{}"
                }
            },
            j_mxfj_banned_card = {
                name = "Запрещенная карта",
                text = {
                    "Берет {C:attention}#1#{} доп. карту",
                    "после каждой сыгранной руки"
                }
            },
            j_mxfj_virtual = {
                name = "Виртуальный джокер",
                text = {
                    "Дает {C:chips}+#1#{} Фишку за каждую",
                    "добавленную карту {C:spades}пиковой масти{},",
                    "дает {C:mult}+#2#{} Множитель за каждую",
                    "добавленную карту {C:hearts}червовой масти{}",
                    "{C:inactive}(Сейчас {C:chips}+#3#{C:inactive} Фишек, {C:mult}+#4#{C:inactive} Множителя)"
                }
            },
            j_mxfj_witch = {
                name = "Ведьма",
                text = {
                    "Карты {C:tarot}Таро{} могут",
                    "появляться в любых",
                    "других {C:attention}наборах{}"
                },
            },
            j_mxfj_transmodifly = {
                name = "Трансмодификатор",
                text = {
                    "{C:attention}Множ.-карты{} и {C:attention}Дикие карты{}",
                    "делят одни и те же способности"
                },
            },
            j_mxfj_eldritch_totem = {
                name = "Элдритч-тотем",
                text = {
                    "При выборе {C:attention}Блайнда{},",
                    "создает {C:attention}#1#{} карты {C:attention}Культиста{}",
                    "{C:inactive}(Должно быть место)"
                }
            },
            j_mxfj_cultist = {
                name = "Культист",
                text = {
                    "{X:mult,C:white}X#1#{} Множитель за каждого",
                    "другого {C:attention}Культиста{},",
                    "{S:1.1,C:red,E:2}самоуничтожается{}, если",
                    "нет {C:attention}Элдритч-тотема{}",
                    "{C:inactive}(Сейчас {X:mult,C:white}X#2#{C:inactive} Множитель)"
                }
            },
            j_mxfj_joker_by_default = {
                name = "Джокер по умолчанию",
                text = {
                    "Дает {C:chips}+#1#{} Фишки за каждую",
                    "{C:attention}Синюю печать{} в вашей {C:attention}полной колоде",
                    "{C:inactive}(Сейчас {C:chips}+#2#{C:inactive} Фишек)",
                }
            },
            j_mxfj_headless_horseman = {
                name = "Всадник без головы",
                text = {
                    "Уничтожает последнюю сыгранную",
                    "{C:attention}лицевую{} карту и дает {X:mult,C:white}X#1#{} Множитель",
                    "{C:inactive}(Сейчас {X:mult,C:white}X#2#{C:inactive} Множитель)"
                }
            },
            j_mxfj_prepper = {
                name = "Выживальщик",
                text = {
                    "{C:mult}+#1#{} к множителю за руку,",
                    "сыгранную в этом раунде",
                    "{C:inactive}(Сейчас {C:mult}+#2#{C:inactive} Множителя)"
                }
            },
            j_mxfj_odontophobia = {
                name = "Одонтофобия",
                text = {
                    "Сыгранные {C:attention}карты{} с лицом",
                    "дают {X:mult,C:white}X#1#{} Множитель",
                    "при подсчете"
                }
            },
            j_mxfj_pod = {
                name = "Джокер-кокон",
                text = {
                    "Превращается в случайного",
                    "имеющегося {C:attention}Джокера{} во время",
                    "каждой сыгранной руки",
                    "{C:inactive}(Кроме самого Джокера-кокона)"
                }
            },
            j_mxfj_twins = {
                name = "Близнецы",
                text = {
                    "Когда {C:attention}Блайнд{} пропускается,",
                    "создает {C:attention}Двойной тег{}",
                    "перед наградой {C:attention}Тега{}"
                }
            },
            j_mxfj_manphibian = {
                name = "Человек-амфибия",
                text = {
                    "Каждая {C:attention}улучшенная карта{},",
                    "удерживаемая в руке,",
                    "дает {C:mult}+#1#{} Множитель",
                },
            },
            j_mxfj_delivery = {
                name = "Доставщик",
                text = {
                    "После победы над",
                    "{C:attention}Блайнд-боссом{}, создает",
                    "случайного {C:attention}Пищевого джокера{}",
                    "{C:inactive}(Должно быть место)"
                },
            },
            j_mxfj_guitar_pick = {
                name = "Медиатор",
                text = {
                    "Если {C:attention}Покерная рука{} — это",
                    "{C:attention}#1#{},",
                    "повторно активирует все сыгранные карты",
                    "{s:0.8}покерная рука меняется",
                    "{s:0.8}в конце раунда",
                },
            },
            j_mxfj_jokers96 = {
                name = "Джокеры96",
                text = {
                    "Сыгранные карты с",
                    "{C:attention}Красными печатями{} становятся",
                    "{C:dark_edition}Полихромными{} при подсчете"
                },
            },
            j_mxfj_mariachi = {
                name = "Мариачи",
                text = {
                    "{C:chips}+#1#{} Фишек за каждую",
                    "повторно активированную {C:attention}карту подсчета{}",
                    "за руку"
                },
            },
            j_mxfj_match_box = {
                name = "Коробок спичек",
                text = {
                    "При наборе {C:attention}более 100%{} счета,",
                    "дает {C:money}$#1#{}",
                    "Теряет {C:money}$#2#{} каждый раз,",
                    "когда эффект срабатывает"
                },
            },
            j_mxfj_record_shop = {
                name = "Магазин пластинок",
                text = {
                    "Этот Джокер получает {X:mult,C:white}X#1# {} Множитель за",
                    "каждый уникальный {C:attention}расходник{}",
                    "{C:inactive}(Сейчас {X:mult,C:white} X#2# {C:inactive} Множитель)",
                },
            },
            j_mxfj_strongman = {
                name = "Силач",
                text = {
                    "Если сыгранная рука содержит",
                    "{C:attention}#1#{}, увеличьте ранг",
                    "карт с наименьшим",
                    "рангом на {C:attention}1{}"
                },
            },
            j_mxfj_timbo_jruise = {
                name = "Тимбо-круиз",
                text = {
                    "Все карты с {C:attention}печатями{}",
                    "дают {C:money}$#1#{} при подсчете"
                },
            },
            j_mxfj_key_card = {
                name = "Ключ-карта",
                text = {
                    "При выборе {C:attention}Блайнда{},",
                    "Джокеры {C:attention}справа{} от этого",
                    "становятся {C:eternal}Вечными{}, Джокеры",
                    "{C:attention}слева{} теряют {C:eternal}Вечность{}"
                },
            },
            j_mxfj_flesh_golem = {
                name = "Голем из плоти",
                text = {
                    "Сыгранные карты дают",
                    "{C:mult}+#1#{} Множитель за каждую",
                    "{C:attention}масть{}, к которой они относятся",
                    "при подсчете"
                },
            },
            j_mxfj_pinup_joker = {
                name = "Джокер-пинап",
                text = {
                    "Сыгранные {C:attention}Дикие Валеты{} повторно",
                    "активируются {C:attention}#1#{} раз",
                    "и дают {C:white,X:mult}X#2#{} Множитель",
                    "при подсчете"
                },
            },
            j_mxfj_cheerleader = {
                name = "Чирлидерша",
                text = {
                    "{C:mult}+#1#{} Множитель за каждую карту",
                    "в вашей {C:attention}полной колоде{} наиболее",
                    "{C:attention}популярной{} масти",
                    "{C:inactive}(Сейчас {C:attention}#2#{C:inactive}, {C:mult}+#3#{C:inactive} Множитель){}",
                },
            },
            j_mxfj_cyberpunk_joker = {
                name = "Киберпанк-джокер",
                text = {
                    "{C:attention}Стальные{} карты дают",
                    "{C:money}$#1#{}, если они",
                    "удерживаются в руке",
                    "в конце раунда",
                },
            },
            j_mxfj_this_isnt_balatro_jazz = {
                name = "Это не джаз Balatro",
                text = {
                    "{C:attention}Фиолетовые печати{} всегда",
                    "создают {C:tarot}Дурака{}"
                },
            },
            j_mxfj_detour = {
                name = "Объезд",
                text = {
                    "Позволяет {C:attention}Стритам{}",
                    "замыкаться по кругу",
                    "{C:inactive}(пр.: {C:attention}Q K A 2 3{C:inactive}){}",
                },
            },
            j_mxfj_reststop = {
                name = "Остановка",
                text = {
                    "Получает {C:white,X:mult}X#1#{} Множитель при",
                    "выходе из {C:attention}магазина",
                    "без траты {C:money}денег{}",
                    "{C:inactive}(Сейчас {C:white,X:mult}X#2#{C:inactive} Множитель){}"
                },
            },
            j_mxfj_lotteryticket = {
                name = "Лотерейный билет",
                text = {
                    "Если сыгранная рука содержит",
                    "{C:attention}3 Счастливые Семерки{}, утраивает",
                    "все {C:attention}указанные{} {C:green,E:1}вероятности{}",
                    "{C:inactive}(пр.: {C:green}1 из 4{C:inactive} -> {C:green}3 из 4{C:inactive}){}"
                },
            },
            j_mxfj_tipthescales = {
                name = "Чаша весов",
                text = {
                    "Балансирует {C:chips}Фишки{} и",
                    "{C:mult}Множитель{} на {C:attention}#1#%{}, если",
                    "{C:chips}Фишки{} превышают {C:mult}Множитель{}"
                },
            },
            j_mxfj_billiardball = {
                name = "Бильярдный шар",
                text = {
                    "Получает {C:chips}+#1#{} Фишек за",
                    "каждую сыгранную и подсчитанную",
                    "карту без {C:attention}ранга{} или {C:attention}масти{}",
                    "{C:inactive}(Сейчас {C:chips}+#2#{C:inactive} Фишек){}",
                },
            },
            j_mxfj_prospector = {
                name = "Золотоискатель",
                text = {
                    "Сыгранные {C:attention}Каменные{} карты",
                    "дают {C:money}$#1#{} и имеют",
                    "{C:green}#2# в #3#{} шанс быть",
                    "{C:red}уничтоженными{} при подсчете"
                },
            }
        },
        Partner = {
            pnr_mxfj_prepper = {
                name = "Выжить",
                text = {
                    "{C:mult}+#1#{} Множителя за руку,",
                    "сыгранную в этом раунде",
                    "{C:inactive}(Сейчас {C:mult}+#2#{C:inactive} Множитель)"
                },
                unlock = {
                    "Используйте {C:attention}Выживальщика{}",
                    "для победы на {C:attention}Золотом",
                    "{C:attention}Коле{} сложности",
                },
            },
            pnr_mxfj_grave_robber = {
                name = "Копать",
                text = {
                    "Заработайте {C:money}$#1#{} когда",
                    "карта уничтожена",
                },
                unlock = {
                    "Используйте {C:attention}Расхитителя гробниц{}",
                    "для победы на {C:attention}Золотом",
                    "{C:attention}Коле{} сложности",
                },
            },
            pnr_mxfj_waxwork = {
                name = "Статуя",
                text = {
                    "Повторно активируйте последнюю",
                    "сыгранную карту с",
                    "печатью {C:attention}#1#{} дополнительное время#2#"
                },
                unlock = {
                    "Используйте {C:attention}Восковую фигуру{}",
                    "для победы на {C:attention}Золотом",
                    "{C:attention}Коле{} сложности",
                },
            }
        },
        Other = {
            undefined_buffoon_pack = {
                name = "Бустерный-набор",
                text = {
                    "Выберите {C:attention}X{} из до",
                    "{C:attention}Y{C:joker} карт Джокеров{}"
                }
            },
        },
    },
    misc = {
        dictionary = {
            k_mxfj_brains = "Мозги!",
            k_mxfj_chips = "Фишки!",
            k_mxfj_halved = "Пополам!",
            k_mxfj_steel = "Сталь!",
            k_mxfj_stone = "Камень!",
            k_mxfj_patched = "Латаная!",
            k_mxfj_aesthetic = "Эстетика!",
            k_mxfk_delivery = "Доставка!",
            k_mxfk_match_box = "Закончились!"
        },
        v_dictionary = {
            a_mxfj_plus_joker = "+#1# Джокер",
            a_mxfj_plus_jokers = "+#1# Джокера",
            a_mxfj_dollars_minus = "-$#1#"
        }
    }
}
