--[[
	Begotten 3
	Created by cash wednesday, gabs, DETrooper and alyousha35
--]]

local BLIND = Clockwork.trait:New()
	BLIND.uniqueID = "blind"
	BLIND.name = "Слепой"
	BLIND.description = "Ваш персонаж слеп, не имеет значения, как было получено это увечие. Вы не сможете видеть, за исключением использования «Чувств». Древо убеждений «Сообразительность» будет заблокировано и не сможет развиваться."
	BLIND.points = -10
	BLIND.disables = {"crosseyed", "literate", "scribe"}
	BLIND.excludedfactions = {"Children of Satan"}
Clockwork.trait:Register(BLIND)

local BRAWNY = Clockwork.trait:New()
	BRAWNY.uniqueID = "brawny"
	BRAWNY.name = "Мускулистый"
	BRAWNY.description = "Ваш персонаж силен достаточно крепкий, чтобы носить тяжелое оружие или заряжать арбалет. Эта черта автоматически разблокирует первые 3 убеждения в правой части древа «Мастерство»: «Муштра», «Сильный» и «Тяжелая Рука»."
	BRAWNY.points = 4
	BRAWNY.disables = {"weak", "winded"}
	BRAWNY.excludedsubfactions = {"Auxiliary", "Clan Crast"};
Clockwork.trait:Register(BRAWNY)

local DUELIST = Clockwork.trait:New()
	DUELIST.uniqueID = "duelist"
	DUELIST.name = "Дуэлянт"
	DUELIST.description = "Ваш персонаж славится своими навыками в бою, а именно способностью с легкостью отражать удары. Эта черта автоматически разблокирует следующие 3 убеждения в древе «Мастерство»: «Муштра», «Идеальный Блок» и «Парирование»."
	DUELIST.points = 4
	DUELIST.disables = {"clumsy", "weak"}
	DUELIST.excludedsubfactions = {"Auxiliary", "Clan Crast"};
Clockwork.trait:Register(DUELIST)

local CANNIBAL = Clockwork.trait:New()
	CANNIBAL.uniqueID = "cannibal"
	CANNIBAL.name = "Каннибал"
	CANNIBAL.description = "Ваш персонаж — ебучий каннибал, либо по нужде, либо из-за извращенной ебучей психопатии. Эта черта автоматически разблокирует первое убеждение древа «Жестокость», которое дает возможность пожирать трупы людей."
	CANNIBAL.points = 1
	CANNIBAL.excludedsubfactions = {"Varazdat"}
	CANNIBAL.disables = {"pacifist"}
Clockwork.trait:Register(CANNIBAL)

local CLUMSY = Clockwork.trait:New()
	CLUMSY.uniqueID = "clumsy"
	CLUMSY.name = "Неуклюжий"
	CLUMSY.description = "Ваш персонаж неуклюжий, болван, ебучий рассеянный дурак. Во время бега вы будете случайно спотыкаться и падать."
	CLUMSY.points = -6
	CLUMSY.excludedfactions = {"Children of Satan"}
	CLUMSY.disables = {"duelist"}
Clockwork.trait:Register(CLUMSY)

local CRIMINAL = Clockwork.trait:New()
	CRIMINAL.uniqueID = "criminal"
	CRIMINAL.name = "Преступник"
	CRIMINAL.description = "Ваш персонаж неплохо обращается с отмычками и способен взламывать замки. Эта черта автоматически разблокирует первые 3 убеждения в левой части древа «Ловкость»: «Ловкий», «Хитрый непоседа» и «Взломщик сейфов», а также дает две стартовые отмычки."
	CRIMINAL.points = 4
	CRIMINAL.excludedfactions = {"Holy Hierarchy"};
Clockwork.trait:Register(CRIMINAL)

local CROSSEYED = Clockwork.trait:New()
	CROSSEYED.uniqueID = "crosseyed"
	CROSSEYED.name = "Косоглазый"
	CROSSEYED.description = "Твой персонаж — косоглазый дебил. Ты выглядишь тупо, и все это видят."
	CROSSEYED.points = -8
	CROSSEYED.disables = {"blind"}
	CROSSEYED.excludedfactions = {"Children of Satan"};
Clockwork.trait:Register(CROSSEYED)

local ESCAPEE = Clockwork.trait:New()
	ESCAPEE.uniqueID = "escapee"
	ESCAPEE.name = "Сбежавший"
	ESCAPEE.description = "Ваш персонаж не только умудрился попасть в плен, он еще и умудрился сбежать. Все отлично, если не считать веревок на запястьях."
	ESCAPEE.points = -2
	ESCAPEE.disables = {"logger", "miner", "pilgrim", "scavenger", "survivalist", "veteran"}
	ESCAPEE.requiredfactions = {"Wanderer"}
Clockwork.trait:Register(ESCAPEE)

local EXHAUSTED = Clockwork.trait:New()
	EXHAUSTED.uniqueID = "exhausted"
	EXHAUSTED.name = "Истощенный"
	EXHAUSTED.description = "Ваш персонаж прошел долгий путь, чтобы прибыть в эти земли. Эта черта стартует вашего персонажа с высокими значениями голода, жажды и усталости."
	EXHAUSTED.points = -2
	EXHAUSTED.requiredfactions = {"Wanderer"}
Clockwork.trait:Register(EXHAUSTED)

local FAVORED = Clockwork.trait:New()
	FAVORED.uniqueID = "favored"
	FAVORED.name = "Избранный"
	FAVORED.description = "Благодаря добродетели или удаче ваш персонаж явно был благословлен некоей божественной силой. Эта черта автоматически разблокирует 3 убеждения в левом столбце древа «Фортуна»: «Удачливый», «Счастливчик» и «Избранный»."
	FAVORED.points = 4
	FAVORED.disables = {"marked", "possessed"}
Clockwork.trait:Register(FAVORED)

local FOLLOWED = Clockwork.trait:New()
	FOLLOWED.uniqueID = "followed"
	FOLLOWED.name = "Преследуемый"
	FOLLOWED.description = "Давным-давно ваш персонаж совершил ошибку, узнав то, что ему не следовало. Теперь вы прокляты и подвергнуты вечной охоте..."
	FOLLOWED.disables = {"pilgrim", "shrewd"}
	FOLLOWED.points = -7
	FOLLOWED.excludedfactions = {"Gatekeeper", "Pope Adyssa's Gatekeepers"};
Clockwork.trait:Register(FOLLOWED)

local GLUTTONY = Clockwork.trait:New()
	GLUTTONY.uniqueID = "gluttony"
	GLUTTONY.name = "Прожорливый"
	GLUTTONY.description = "Ваш персонаж любит излишества и никогда не может насытиться. Ваши голод и жажда будут убывать в два раза быстрее. Это также повлияет на усталость (энергию), если вы вольтист с убеждением «Желтое и черное»."
	GLUTTONY.points = -4
Clockwork.trait:Register(GLUTTONY)

local GUNSLINGER = Clockwork.trait:New()
	GUNSLINGER.uniqueID = "gunslinger"
	GUNSLINGER.name = "Оружейник"
	GUNSLINGER.description = "Что для вашего персонажа люди, как не движущиеся цели? Ваш персонаж начнет с Поджигой и случайным набором боеприпасов, а также двумя убеждениями из древа «Изобретательность»: «Смышленный» и «Порох и Сталь»."
	GUNSLINGER.disables = {"pilgrim"}
	GUNSLINGER.points = 7
	GUNSLINGER.excludedfactions = {"Children of Satan", "Gatekeeper", "Holy Hierarchy", "Pope Adyssa's Gatekeepers"}
	GUNSLINGER.excludedsubfactions = {"Clan Crast", "Clan Grock", "Clan Harald", "Clan Reaver", "Clan Gore"};
Clockwork.trait:Register(GUNSLINGER)

local IMBECILE = Clockwork.trait:New()
	IMBECILE.uniqueID = "imbecile"
	IMBECILE.name = "Имбецил"
	IMBECILE.description = "Ваш персонаж победил в генетической лотерее, но это принесло ему только страдания. О Нормальной речи можете больше не мечтать. Благословен разум, что слишком мал для сомнений."
	IMBECILE.points = -3
	IMBECILE.disables = {"literate", "scribe"}
	IMBECILE.excludedfactions = {"Children of Satan"}
Clockwork.trait:Register(IMBECILE)

local INSANE = Clockwork.trait:New()
	INSANE.uniqueID = "insane"
	INSANE.name = "Безумный"
	INSANE.description = "Ваш персонаж ебанутый. Максимальный рассудок навсегда ограничен 40%."
	INSANE.points = -7
	INSANE.disables = {"pacifist"}
	INSANE.excludedsubfactions = {"Rekh-khet-sa"}
Clockwork.trait:Register(INSANE)

local LEPER = Clockwork.trait:New()
	LEPER.uniqueID = "leper"
	LEPER.name = "Прокаженный"
	LEPER.description = "Каждый момент жизни вашего персонажа — это ад, потому что он был проклят ходить по Земле с самым нечестивым недугом: проказой. Его изуродованное и деформированное тело делает его изгоем общества и объектом преследований. Ваш персонаж будет терять на 50% больше крови при кровотечении, и его отвратительный недуг будет известен всем, кто на него посмотрит."
	LEPER.points = -5
	LEPER.disables = {"pilgrim"}
	LEPER.disablesSkins = true;
	LEPER.excludedfactions = {"Gatekeeper", "Goreic Warrior", "Holy Hierarchy", "Pope Adyssa's Gatekeepers"};
Clockwork.trait:Register(LEPER)

local LITERATE = Clockwork.trait:New()
	LITERATE.uniqueID = "literate"
	LITERATE.name = "Грамотный"
	LITERATE.description = "Ваш персонаж — один из немногих, кто научился читать в эти нецивилизованные времена. Эта черта автоматически разблокирует первое убеждение древа «Сообразительность»: «Грамотность»."
	LITERATE.points = 1
	LITERATE.disables = {"blind", "imbecile", "scribe"}
	LITERATE.excludedfactions = {"Pope Adyssa's Gatekeepers"}
Clockwork.trait:Register(LITERATE)

local LOGGER = Clockwork.trait:New()
	LOGGER.uniqueID = "logger"
	LOGGER.name = "Дровосек"
	LOGGER.description = "Ваш персонаж — дровосек, рубящий как деревья, так и конечности. Эта черта дает стартовый топор."
	LOGGER.points = 4
	LOGGER.disables = {"escapee", "weak"}
	LOGGER.requiredfactions = {"Wanderer"}
	LOGGER.eventlocked = false;
Clockwork.trait:Register(LOGGER)

local MARKED = Clockwork.trait:New()
	MARKED.uniqueID = "marked"
	MARKED.name = "Помеченный"
	MARKED.description = "Либо разозлив какую-то темную силу, либо слишком глубоко погрузившись в оккультизм, ваш персонаж стал «помеченным на смерть». Последствия этого могут быть серьезными, а древо убеждений «Фортуна» будет заблокировано и не сможет быть использовано."
	MARKED.points = -4
	MARKED.disables = {"favored"}
Clockwork.trait:Register(MARKED)

local MINER = Clockwork.trait:New()
	MINER.uniqueID = "miner"
	MINER.name = "Шахтер"
	MINER.description = "Ваш персонаж — шахтер, проводящий большую часть времени глубоко под землей. Эта черта дает стартовую кирку для добычи руды и фонарь, который поможет вам ориентироваться в недрах земных."
	MINER.points = 7
	MINER.disables = {"escapee", "weak"}
	MINER.requiredfactions = {"Wanderer"}
	MINER.eventlocked = false;
Clockwork.trait:Register(MINER)

local NIMBLE = Clockwork.trait:New()
	NIMBLE.uniqueID = "nimble"
	NIMBLE.name = "Проворный"
	NIMBLE.description = "Ваш персонаж быстр на ногах, он способен с относительной легкостью избегать опасных ситуаций. Эта черта автоматически разблокирует первые 3 убеждения в правой части древа «Ловкость»: «Проворный», «Сноровка» и «Стремительный»."
	NIMBLE.points = 4
	NIMBLE.disables = {"winded"}
Clockwork.trait:Register(NIMBLE)

local PACIFIST = Clockwork.trait:New()
	PACIFIST.uniqueID = "pacifist"
	PACIFIST.name = "Пацифист"
	PACIFIST.description = "Ваш персонаж — пацифист и ненавидит любое причинение насилия. Нанесение вреда или убийство других персонажей негативно повлияет на ваш рассудок. Древо убеждений «Жестокость» также будет заблокировано и не сможет быть использовано."
	PACIFIST.points = -4
	PACIFIST.disables = {"cannibal", "insane"}
	PACIFIST.excludedsubfactions = {"Legionary", "Clan Reaver", "Clan Gore"}
	PACIFIST.excludedfactions = {"Children of Satan", "Pope Adyssa's Gatekeepers"}
Clockwork.trait:Register(PACIFIST)

local PILGRIM = Clockwork.trait:New()
	PILGRIM.uniqueID = "pilgrim"
	PILGRIM.name = "Паломник"
	PILGRIM.description = "Наш персонаж отважился пройти долгий путь, чтобы достичь Башню Света в погоне за святой целью. Вы появитесь внутри безопасной зоны Башни Света."
	PILGRIM.points = 2
	PILGRIM.disables = {"escapee", "leper"}
	PILGRIM.requiredfactions = {"Wanderer"}
Clockwork.trait:Register(PILGRIM)

local PIOUS = Clockwork.trait:New()
	PIOUS.uniqueID = "pious"
	PIOUS.name = "Благочестивый"
	PIOUS.description = "Ваш персонаж набожен и твердо верит в свою веру. Эта черта дает одно бесплатное таинство с прозрением для использования в древе верований."
	PIOUS.points = 1
	PIOUS.disables = {"escapee"}
	PIOUS.excludedsubfactions = {"Clan Grock"};
Clockwork.trait:Register(PIOUS)

local PLACEBO = Clockwork.trait:New()
	PLACEBO.uniqueID = "placebo"
	PLACEBO.name = "Плацебо"
	PLACEBO.description = "Я верю...Не знаю во что, но верю."
	PLACEBO.points = 1
Clockwork.trait:Register(PLACEBO)

local POSSESSED = Clockwork.trait:New()
	POSSESSED.uniqueID = "possessed"
	POSSESSED.name = "Одержимый"
	POSSESSED.description = "Ваш персонаж склонен к одержимости какой-то демонической силой и часто говорит на странных языках и невольно совершающий экстремальное насилие. Из-за этого зловредного присутствия ваш персонаж будет пассивно подвергаться порче до 50%, после чего он сможет быть одержимым."
	POSSESSED.points = -6
	POSSESSED.disables = {"favored", "zealous"}
Clockwork.trait:Register(POSSESSED)

local SCAVENGER = Clockwork.trait:New()
	SCAVENGER.uniqueID = "scavenger"
	SCAVENGER.name = "Мусорщик"
	SCAVENGER.description = "Ваш персонаж — опытный мусорщик и знает, на что смотреть при поиске. Эта черта немного повышает ваши шансы получить более качественную добычу при поиске контейнеров, а также предоставляет стартовый набор для разборки предметов на составные части."
	SCAVENGER.points = 3
	SCAVENGER.disables = {"escapee"}
Clockwork.trait:Register(SCAVENGER)

local SCRIBE = Clockwork.trait:New()
	SCRIBE.uniqueID = "scribe"
	SCRIBE.name = "Писарь"
	SCRIBE.description = "Ваш персонаж не только один из немногих, кто умеет читать, но и обученный писарь, что является действительно ценным качеством. Эта черта автоматически разблокирует первые 2 убеждения в средней колонке древа «Сообразительность»: «Грамотность» и «Писарь»."
	SCRIBE.points = 3
	SCRIBE.disables = {"blind", "literate", "imbecile"}
Clockwork.trait:Register(SCRIBE)

local SHREWD = Clockwork.trait:New()
	SHREWD.uniqueID = "shrewd"
	SHREWD.name = "Проницательный"
	SHREWD.description = "Ваш персонаж очень умен, использует свой ум, чтобы выжить в смертельных ситуациях. Эта черта автоматически разблокирует первые 3 убеждения в середине древа «Изобретательность»: «Смекалистый», «Ремесленник» и «Механик»."
	SHREWD.points = 4
	SHREWD.disables = {"followed"};
	SHREWD.excludedsubfactions = {"Clan Shagalax"};
Clockwork.trait:Register(SHREWD)

local SURVIVALIST = Clockwork.trait:New()
	SURVIVALIST.uniqueID = "survivalist"
	SURVIVALIST.name = "Выживший"
	SURVIVALIST.description = "Ваш персонаж — одинокий волк, заботящийся только о себе за счет других. Эта черта дает стартовое случайное оружие ближнего боя, случайный набор расходных предметов и пять таинств с соответствующими им прозрениями для использования в древе убеждений."
	SURVIVALIST.points = 10
	SURVIVALIST.eventlocked = false;
	SURVIVALIST.disables = {"escapee"}
	SURVIVALIST.excludedfactions = {"Children of Satan", "Gatekeeper", "Holy Hierarchy", "Pope Adyssa's Gatekeepers"}
	SURVIVALIST.excludedsubfactions = {"Clan Crast", "Clan Grock"};
Clockwork.trait:Register(SURVIVALIST)

local VETERAN = Clockwork.trait:New()
	VETERAN.uniqueID = "veteran"
	VETERAN.name = "Ветеран"
	VETERAN.description = "Ваш персонаж — солдат, переживший нескольких сражений, накопивший некоторый боевой опыт и базовое снаряжение. Эта черта дает стартовое случайное оружие ближнего боя и щит, а также автоматически разблокирует 4 убеждения в левой части древа «Мастерство»: «Ополченец», «Используя по Назначению», «Заточенное Лезвие» и «Надёжный Хват»."
	VETERAN.points = 16
	VETERAN.eventlocked = false;
	VETERAN.disables = {"escapee"}
	VETERAN.excludedfactions = {"Children of Satan", "Gatekeeper", "Holy Hierarchy", "Pope Adyssa's Gatekeepers"}
	VETERAN.excludedsubfactions = {"Clan Crast", "Clan Grock"};
Clockwork.trait:Register(VETERAN)

local VIGOROUS = Clockwork.trait:New()
	VIGOROUS.uniqueID = "vigorous"
	VIGOROUS.name = "Стойкий"
	VIGOROUS.description = "Ваш персонаж вынослив и может выдержать несколько ударов. Эта черта автоматически разблокирует 3 убеждения в средней правой части древа «Стойкость»: «Упорство верующего», «Есть что пролить» и «Непреклонный»."
	VIGOROUS.points = 4
	VIGOROUS.disables = {"weak", "winded"}
Clockwork.trait:Register(VIGOROUS)

local WEAK = Clockwork.trait:New()
	WEAK.uniqueID = "weak"
	WEAK.name = "Слабый"
	WEAK.description = "Ваш персонаж имеет хрупкое телосложение и не способен выносить боль. Дерево убеждений «Мастерство» будет заблокировано и не сможет развиваться."
	WEAK.points = -5
	WEAK.disables = {"brawny", "duelist", "miner", "logger", "vigorous"}
Clockwork.trait:Register(WEAK)

local WINDED = Clockwork.trait:New()
	WINDED.uniqueID = "winded"
	WINDED.name = "Задыхающийся"
	WINDED.description = "Ваш персонаж — плохой бегун и быстро устает. Эта черта снижает максимальную выносливость на 25 очков и блокирует убеждение «Выносливость» в дереве убеждений «Стойкость»."
	WINDED.points = -4
	WINDED.disables = {"brawny", "nimble", "vigorous"}
Clockwork.trait:Register(WINDED)

local WOUNDED = Clockwork.trait:New()
	WOUNDED.uniqueID = "wounded"
	WOUNDED.name = "Раненный"
	WOUNDED.description = "Ваш персонаж был ранен во время своего трудного путешествия к месту назначения. Эта черта стартует вашего персонажа со случайным набором ран и недостающим здоровьем."
	WOUNDED.points = -2
	WOUNDED.requiredfactions = {"Wanderer"}
Clockwork.trait:Register(WOUNDED)

local ZEALOUS = Clockwork.trait:New()
	ZEALOUS.uniqueID = "zealous"
	ZEALOUS.name = "Ревностный"
	ZEALOUS.description = "Благодаря чистой силе своей веры ваш персонаж способен противостоять нечестивым искушениям и выдерживать события, которые в противном случае могли бы поколебать его рассудок. Эта черта автоматически разблокирует первые 2 убеждения во втором столбце древа «Стойкость»: «Благоразумие» и «Святое самообладание». Эта черта также предоставляет три таинства с соответствующими им прозрениями для использования в меню убеждений."
	ZEALOUS.points = 7
	ZEALOUS.disables = {"possessed"}
	ZEALOUS.excludedsubfactions = {"Clan Grock"}
Clockwork.trait:Register(ZEALOUS)