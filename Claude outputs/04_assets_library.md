# «Штольня» — библиотека бесплатных ассетов с проверенной лицензией

Дата проверки: 2026-09-18. Каждая ссылка ниже была открыта, лицензия снята со страницы конкретного ассета (или, где сайт держит лицензию на одной общей странице, — с этой страницы, что явно указано). Ничего не добавлено «по памяти».

Игра: хоррор от первого лица, Godot 4 (Compatibility), PSX-look, текстуры 256–512 px, `filter_nearest`, квантование цвета. Зоны: **Штрек**, **Затопленный ярус**, **Провал**, **Ствол**.

---

## 0. Как пользоваться этой библиотекой

**Текстуры.** Все наборы отдают 1K–8K. Для PSX-look качайте **1K** (иногда 2K, если фактура крупная), даунскейлите до 256/512 в Krita/GIMP/ImageMagick с фильтром `box`/`nearest`, затем квантуйте палитру. Normal-карты: у Poly Haven есть обе версии (GL/DX) — Godot использует **OpenGL (nor_gl)**. У cgbookcase normal только **DirectX** — инвертируйте зелёный канал. У 3dtextures.me — формат Normal OpenGL. Roughness везде обычная (white = rough).

**Звуки.** Freesound отдаёт исходники в WAV 24/32-бит, 48/96 кГц. Перед импортом в Godot приводите к 44.1/48 кГц 16-бит WAV (для коротких one-shot) или OGG q5–6 (для лупов и длинных ambience). Стереофайлы для 3D-позиционируемых источников (капель, лампа, скрип) лучше свести в моно.

**Лицензии, дословно как на страницах:**
- Poly Haven — на странице ассета: **«CC0 License»**; на странице polyhaven.com/license: *«All assets … on this site are … licensed as CC0. You do not need to give credit or attribution when using them (although it is appreciated).»*
- cgbookcase — на странице ассета: **«license: cc0»**; на странице cgbookcase.com/textures/: *«The textures are published under the CC0 1.0 license, which means you can use them for free without giving credit.»* Автор сайта — Dorian Zgraggen.
- 3dtextures.me — на страницах текстур лицензии **нет**; на странице 3dtextures.me/about/: *«All textures on this site are licensed as CC0. You can use the textures for any purpose, including commercial. You do not need to give credit or attribution when using them (although it is appreciated). You can redistribute them.»* Автор — Eren Katsukagi (на страницах подписан как Katsukagi). Бесплатная версия — 1024×1024, скачивание через Google Drive; 4K — только патронам.
- Kenney — на странице пака: **«Creative Commons CC0»** (ссылка на CC0 1.0 Universal).
- Freesound — на странице звука: **«Creative Commons 0»**. Проверено по каждому звуку, не по автору. Всё, что оказалось «Attribution 4.0/3.0» или «Attribution NonCommercial», в таблицы не попало (список отказов — в разделе 3).
- OpenGameArt — на странице ассета: **«CC0»**.
- Pixabay — на странице звука: **«Free for use under the Pixabay Content License»**. Это **не CC0**: запрещена перепродажа/раздача «as standalone», всё остальное (игра, коммерция, без атрибуции) можно. Помечено отдельно.
- Sonniss GDC — sonniss.com/gameaudiogdc: *«All of the sounds are royalty free and commercially usable … No attribution is required … Not as standalone files or in sound effect libraries. But you can absolutely sell them as part of your finished game … AI/ML training is strictly prohibited under our license.»* Своя лицензия, помечено отдельно.

---

## 1. ТЕКСТУРЫ (49 наборов + 1 бонус-пак)

Сокращения карт: **D** — diffuse/albedo, **N** — normal, **R** — roughness, **AO**, **H** — height/displacement, **M** — metallic, **ARM** — упакованная AO/Rough/Metal (Poly Haven), **Spec**/**Bump** — старые доп. карты у некоторых ассетов Poly Haven.

### 1.1 Камень сухой: тёмный, слоистый, угольный пласт (Штрек, Провал) — 11

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T01 | Dark Rock | https://polyhaven.com/a/dark_rock | Poly Haven (автор Amal Kumar) | CC0 License | 1K/2K/4K/8K | D, N(GL/DX), R, AO, H, ARM | Штрек, Провал | **Главный кандидат на угольный пласт.** Тёмная, слоистая, с прожилками и трещинами; 2.4 м высоты — крупная фактура, на 512 будет читаться как пласт. Опубликована 27.05.2026. |
| T02 | Dark Rock 02 | https://polyhaven.com/a/dark_rock_02 | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Штрек, Провал | Второй вариант того же семейства: стратифицированные плиты, матовая, тёмно-бурый подтон. Чередовать с T01, чтобы не было повторов. |
| T03 | Quarry Wall | https://polyhaven.com/a/quarry_wall | Poly Haven (Dimitrios Savva) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Штрек | Стена каменоломни, следы кайла/долбления, серо-бурая. Тег «mining». Идеальна для рукотворной стены выработки; тон светловат — затемнить в квантовании. |
| T04 | Quarry Wall 02 | https://polyhaven.com/a/quarry_wall_02 | Poly Haven (Dimitrios Savva) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Штрек | Горизонтальные слои, «roughhewn». Вариант для стен с другим направлением слоёв (переход между забоями). |
| T05 | Rock Wall 10 | https://polyhaven.com/a/rock_wall_10 | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Штрек | Землистый камень с глубокими трещинами, забитыми грунтом; «earthy, hard». Для потолка штрека. |
| T06 | Rock Face 03 | https://polyhaven.com/a/rock_face_03 | Poly Haven (фото Dario Barresi, обработка Rico Cilliers) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Провал | Крупная скальная плоскость 2.7 м, сколы, эрозия. Для больших стен Провала, где тайлинг заметнее — брать 2K и делить на 2 тайла. |
| T07 | Rock 06 | https://polyhaven.com/a/rock_06 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Bump, Spec | Провал | Жёлто-бурая слоистая скала с линейными штрихами. Тёплый тон — под свет керосинки ложится хорошо. |
| T08 | Rock Wall 08 | https://polyhaven.com/a/rock_wall_08 | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Ствол | Серая тесаная кладка с глубокими швами — обкладка устья ствола, опоры лебёдки. |
| T09 | Rock Wall 14 | https://polyhaven.com/a/rock_wall_14 | Poly Haven (Dimitrios Savva) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Ствол, Штрек | Тёмно-серые камни в светлом растворе (бутовая кладка). Для крепления входа/ствола 1900-х. |
| T10 | Rock Face 01 | https://www.cgbookcase.com/textures/rock-face-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/4K/6K | Base Color, N(DX), R, AO, H, M | Провал | Скан, нейтральный серый. Normal — DirectX, инвертировать G. |
| T11 | Grey Rock 01 | https://www.cgbookcase.com/textures/grey-rock-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, AO, H, M | Провал | Серый скан «pbr-scanned», хорош как нейтральная база для сталактитовой зоны; в 512 швы почти не видны. |

### 1.2 Камень мокрый / пещерный (Затопленный ярус, Провал) — 8

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T12 | Ground Wet Rocks 001 | https://3dtextures.me/2020/08/07/ground-wet-rocks-001/ | 3dtextures.me (Katsukagi) | (сайт: All textures on this site are licensed as CC0) | 1024×1024 (4K — патронам) | D, N, H, R, AO | Затопленный ярус | **Единственный честно «мокрый» набор камня в подборке.** Лужи между камнями, низкий roughness в воде. 1024 — ровно то, что нужно для PSX. |
| T13 | Ground Wet 003 | https://3dtextures.me/2020/06/01/ground-wet-003/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO | Затопленный ярус | Мокрая грязь с водой — дно у кромки воды, «берег» перед затопленной частью. |
| T14 | Ground Wet Pebbles 001 | https://3dtextures.me/2020/05/11/ground-wet-pebbles-001/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO | Затопленный ярус | Мокрая галька — дно под водой по колено (видно сквозь воду). |
| T15 | Aerial Rocks 02 | https://polyhaven.com/a/aerial_rocks_02 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Rough AO | Провал | Тег «cave». Аэросъёмка 50 м — на 512 читается как крупная пещерная стена без деталей; мох — убрать оттенком/квантованием. |
| T16 | Rock Wall 02 | https://polyhaven.com/a/rock_wall_02 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Rough AO | Провал | Эродированный прибрежный камень с потёками и пятнами — выглядит влажным при низком roughness. |
| T17 | Rock Boulder Cracked | https://polyhaven.com/a/rock_boulder_cracked | Poly Haven (обработка Dario Barresi, фото Dimitrios Savva) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Провал | Тег «cave». Оранжевая трещиноватая глыба, минеральные потёки. Оранжевый — сильно, но под тёплой лампой уместен. |
| T18 | Coast Land Rocks 01 | https://polyhaven.com/a/coast_land_rocks_01 | Poly Haven (Rob Tuytel; тайлинг Rico Cilliers) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Провал | 20 м высоты, потрескавшийся бурый камень с грунтом в трещинах — для террейна-пола Провала. |
| T19 | Seaside Rocks 01 | https://www.cgbookcase.com/textures/seaside-rocks-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, AO, H (+ channel-packed) | Провал | Прибрежная выветренная порода, серо-песочная. Normal — DirectX. |

### 1.3 Дерево старое: балки, доски, крепь (Штрек, Ствол) — 8

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T20 | Rough Wood | https://polyhaven.com/a/rough_wood | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Bump, Spec | Штрек | **Основной набор для крепи.** Тёмно-бурая выветренная древесина с глубокими трещинами, 0.5 м — мелкая фактура, хорошо ложится на балки-стойки. |
| T21 | Beam Wall 01 | https://polyhaven.com/a/beam_wall_01 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Rough AO | Штрек | Стена из уложенных брёвен/брусьев — готовая «затяжка» между стойками крепи. |
| T22 | Raw Plank Wall | https://polyhaven.com/a/raw_plank_wall | Poly Haven (Dimitrios Savva) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | Штрек, Ствол | Необработанные сосновые доски с сучками, гвоздями, сколами. Обшивка, ящики, настил. |
| T23 | Old Planks 02 | https://polyhaven.com/a/old_planks_02 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Spec | Штрек | Вертикальные бурые доски, царапины, гвоздевые отверстия. Двери, перегородки. |
| T24 | Dark Planks | https://polyhaven.com/a/dark_planks | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Bump, Spec | Ствол | Тёмные доски внахлёст — обшивка клети, будки лебёдки. |
| T25 | Medieval Wood | https://polyhaven.com/a/medieval_wood | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Bump, Spec | Ствол | Доски с ржавыми клёпками — ворота клети, крышка люка. Единственный набор «дерево + железо» в одном. |
| T26 | Wooden Planks 05 | https://www.cgbookcase.com/textures/wooden-planks-05 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, AO, H | Штрек | Средне-тёмные доски с натуральной текстурой. Normal — DirectX. |
| T27 | Old Wood 002 | https://3dtextures.me/2021/04/28/old-wood-002/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO, M | Штрек | Старое дерево с металлическими элементами, тёплые истёртые тона. 1024 — сразу в дело. |

### 1.4 Металл: ржавый, листовой, клёпаный; рельсы (Штрек, Ствол) — 11

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T28 | Rust Coarse 01 | https://polyhaven.com/a/rust_coarse_01 | Poly Haven (фото Dimitrios Savva, обработка Rico Cilliers) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Штрек, Ствол | **Чистая ржавчина без краски** — рельсы, вагонетка, цепи, крюки. Красно-бурая, пористая. |
| T29 | Rusty Metal 03 | https://polyhaven.com/a/rusty_metal_03 | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Ствол | Жёлтая краска под тяжёлой ржавчиной — корпус лебёдки, кожух барабана. |
| T30 | Rusty Metal 04 | https://polyhaven.com/a/rusty_metal_04 | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, M, ARM | Ствол | Листовая сталь, облезающая краска, синий грунт. Стены клети. Есть отдельная metallic-карта. |
| T31 | Rusty Metal Sheet | https://polyhaven.com/a/rusty_metal_sheet | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Ствол | Серо-синий лист с оранжевыми потёками ржавчины — обшивка, ворота. |
| T32 | Metal Plate 02 | https://polyhaven.com/a/metal_plate_02 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, M, ARM | Штрек | Корродированная стальная плита, соскобленная краска — борта вагонетки. |
| T33 | Metal Plate | https://polyhaven.com/a/metal_plate | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, M, ARM, Bump, Spec | Ствол | Рифлёный лист («diamond plate») с облупленной зелёной краской — пол клети. Рифление в 512 читается. |
| T34 | Metal Grate Rusty | https://polyhaven.com/a/metal_grate_rusty | Poly Haven (фото Dimitrios Savva, обработка Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, M, ARM | Ствол | Ржавая решётка с выступающим протектором — крышка ствола, решётчатый настил. |
| T35 | Rusty Corrugated Iron | https://polyhaven.com/a/rusty_corrugated_iron | Poly Haven (Charlotte Baglioni) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Ствол | Гофрированное ржавое железо — навес над копром, будка. |
| T36 | Old Iron 01 | https://www.cgbookcase.com/textures/old-iron-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, H, M | Штрек | Тёмное окисленное железо, матовое — **самый подходящий вариант для рельсов и колёс вагонетки** (тёмный, без ярко-оранжевой ржавчины). Normal — DirectX. |
| T37 | Rusty Metal Panel 01 | https://www.cgbookcase.com/textures/rusty-metal-panel-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, AO, H, M (+ ORM) | Ствол | Серо-бурая панель с оранжевыми пятнами. Есть готовый ORM-пак. |
| T38 | Battered Metal 01 | https://www.cgbookcase.com/textures/battered-metal-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K/3K/4K | Base Color, N(DX), R, AO, H, M (+ ORM) | Штрек | Побитый, грязный, тёмный металл — кузов вагонетки, лопаты, ковши. |

Примечание: отдельной текстуры «рельс» с проверенной CC0 не нашёл ни на одном из источников — рельс моделируется, на него кладётся T28/T36 с вытянутым UV.

### 1.5 Грунт, угольная пыль, щебень для пола (Штрек) — 5

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T39 | Burned Ground 01 | https://polyhaven.com/a/burned_ground_01 | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Bump, Spec | Штрек | **Лучшая база под угольную пыль:** обугленная чёрная почва, зола, гравий. Убрать листья через квантование/затемнение — останется чёрный шлак. |
| T40 | Gravel Road | https://polyhaven.com/a/gravel_road | Poly Haven (Amal Kumar) | CC0 License | 1K/2K/4K/8K/16K | D, N, R, AO, H, ARM | Штрек | Утрамбованный щебень с грунтом — межрельсовое полотно. |
| T41 | Ground Grey | https://polyhaven.com/a/ground_grey | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Rough AO | Ствол | Серая гравийно-бетонная поверхность — площадка у ствола. |
| T42 | Rock Ground | https://polyhaven.com/a/rock_ground | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM, Rough AO | Провал | Крупные обломки камня на грунте — осыпь после обрушения. |
| T43 | Gravel 01 | https://www.cgbookcase.com/textures/gravel-01 | cgbookcase (Dorian Zgraggen) | license: cc0 | 1K/2K | Base Color, N(DX), R, AO, H | Штрек | Мелкий серо-бурый гравий; максимум 2K, для PSX хватает. |

### 1.6 Вода (нормали для поверхности) — 2

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T44 | Water 001 | https://3dtextures.me/2017/12/28/water-001/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO | Затопленный ярус | Бесшовная рябь. Нужна только **Normal** (и Height для второго слоя) — панорамировать два экземпляра в разные стороны в шейдере. |
| T45 | Water 002 | https://3dtextures.me/2018/11/29/water-002/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO | Затопленный ярус | Второй паттерн ряби — смешивать с T44 для «нерегулярной» воды. Прямая ссылка на Drive указана на странице. |

Poly Haven, cgbookcase и Kenney наборов «вода» не имеют (cgbookcase — только «Water Droplets» и мокрый асфальт). ambientCG проверить не удалось (см. раздел 3).

### 1.7 Ткань / мешковина, кожа, старая бумага для записок — 4

| # | Название | Ссылка | Источник | Лицензия (дословно) | Разрешения | Карты | Зона | Комментарий |
|---|---|---|---|---|---|---|---|---|
| T46 | Hessian 230 | https://polyhaven.com/a/hessian_230 | Poly Haven (обработка Rico Cilliers, фото colormass) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, M, ARM, Mask, Anisotropy, Spec IOR | Штрек | Грубая джутовая мешковина, 0.3 м — мешки, обмотки, ветошь. Есть Hessian 380 (тоньше) рядом. |
| T47 | Brown Leather | https://polyhaven.com/a/brown_leather | Poly Haven (Rob Tuytel) | CC0 License | 1K/2K/4K/8K | D, N, R, AO, H, ARM | все | Винтажная матовая коричневая кожа со складками — ремни лампы, сумка, обложка журнала. |
| T48 | Paper Wrinkled 001 | https://3dtextures.me/2021/03/22/paper-wrinkled-001/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 | D, N, H, R, AO | все (записки) | Мятая светлая бумага — основа для записок; тонировать в жёлто-бурый, текст накладывать поверх. |
| T49 | Paper Recycled 001 | https://3dtextures.me/2019/01/07/paper-recycled-001/ | 3dtextures.me (Katsukagi) | (сайт: CC0) | 1024×1024 (2K — патронам) | D, N, H, R, AO | все (записки) | Бежевая волокнистая бумага — «старая» без дополнительной тонировки. |

### 1.8 Бонус: готовые PSX-стилизованные текстуры

| # | Название | Ссылка | Источник | Лицензия (дословно) | Что внутри | Комментарий |
|---|---|---|---|---|---|
| T50 | Retro Textures Fantasy | https://kenney.nl/assets/retro-textures-fantasy | Kenney | Creative Commons CC0 | 115 файлов, стилизованные низкорезные текстуры | Не PBR (только цвет), но уже в нужной эстетике. Полезно как референс палитры и для мелочей (ящики, бочки), которые не хочется печь из PBR. Разрешение на странице не указано. |

---

## 2. ЗВУКИ (83 позиции: 61 файл Freesound CC0 + 8 OGA CC0 + 3 пака Kenney CC0 + 11 Pixabay + Sonniss как источник)

Формат Freesound везде указан как на странице: тип, частота, битность, каналы. **Loop** = автор явно называет файл лупом; иначе — нужно резать самому.

### 2.1 Ambience: гул шахты, дрон, ветер в вентиляции, эхо большого объёма — 12

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Зона / назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S01 | Cave Ambience Loop | https://freesound.org/s/770379/ | hushless | Creative Commons 0 | 1:16.8 | WAV 44.1k 32-bit стерео | Провал, базовый фон | **Loop.** Составной саундскейп «огромной тёмной пещеры», сделан под игровой фон. 32-bit float — переконвертировать в 16-bit. |
| S02 | Ambiance_Atmosphere_Cave_Loop_Stereo.ogg | https://freesound.org/s/553080/ | Nox_Sound | Creative Commons 0 | 0:57 | OGG 44.1k 340 kbps стерео | Затопленный ярус | **Loop.** Ветер + капли + ручеёк + большой реверб, уже сжат до 2.3 МБ — можно класть как есть. |
| S03 | ambience cave5.ogg | https://freesound.org/s/636110/ | fonografico | Creative Commons 0 | 5:00 | OGG 44.1k 355 kbps стерео | Штрек, длинный фон | Пятиминутная пещерная подложка с капелью; не луп, но 5 мин хватит с кроссфейдом. |
| S04 | Dark ambient drone sound | https://freesound.org/s/244196/ | martinbeltov | Creative Commons 0 | 0:48.8 | WAV 44.1k 24-bit стерео | Провал, ритуальная зона | Синтетический тёмный пад; резать под луп самому (нет явного лупа). |
| S05 | Low Rumble - loopable ambiance | https://freesound.org/s/638914/ | lennartgreen | Creative Commons 0 | 0:59.75 | WAV 44.1k 16-bit стерео | Штрек, низкочастотный гул | **Loop.** Низкий гул, годится как подложка под всё; чистый. |
| S06 | Low Frequency Vibrating Drone with Heart Pressure Rumbles and Booms | https://freesound.org/s/860781/ | bassimat | Creative Commons 0 | 7:03 | WAV 48k 24-bit стерео | Провал, кульминация | Саб-дрон с редкими ударами, «subterranean». 7 минут — резать нужные куски. |
| S07 | Wind whooshing through vent | https://freesound.org/s/719561/ | giddster | Creative Commons 0 | 1:39 | WAV 44.1k 32-bit стерео | Штрек, вентиляция | Реальный ветер в вентканале квартиры — ровно то, что нужно для вентиляционной сбойки. Не луп, но однородный — резать легко. |
| S08 | Wind Tunnel | https://freesound.org/s/234537/ | Electroviolence | Creative Commons 0 | 0:45 | WAV 44.1k 16-bit стерео | Ствол, тяга воздуха в стволе | «Много ветров в туннеле» — саундскейп, не запись; хорошо для ствола. |
| S09 | Artificial Cave Impulse Response | https://freesound.org/s/455295/ | Fission9 | Creative Commons 0 | 0:07.9 | WAV 48k 24-bit стерео | Провал — **эхо большого объёма** | Импульсный отклик «пещера/туннель» для реверб-шины Провала (Godot: AudioEffectReverb не принимает IR, но IR можно прогнать офлайн через convolve в Audacity/Reaper на все one-shot звуки Провала). |
| S10 | 0.70s Underpass Tunnel Combo IR | https://freesound.org/s/724866/ | djericmark | Creative Commons 0 | 0:00.7 | WAV 48k 16-bit стерео | Штрек — эхо узкого туннеля | Настоящий IR из подземного перехода, 30 Гц–10 кГц. Для коротких выработок. |
| S11 | Loopable Dungeon Ambience | https://opengameart.org/content/loopable-dungeon-ambience | JaggedStone | CC0 | не указана | OGG (1.6 МБ) | Штрек | **Loop.** Низкочастотный ветер + капли, по описанию «dungeon/cave». |
| S12 | 4 Atmospheric ghostly loops | https://opengameart.org/content/4-atmospheric-ghostly-loops | Independent.nu (загрузил qubodup) | CC0 | не указана | 7z-архив 3.4 МБ | Провал | **Loop ×4.** «Atmospheric scary dark loops» — для ритуальной зоны. |

### 2.2 Вода: капель одиночная, капель фон, шаги по воде, плеск — 9

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Зона / назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S13 | Cave Water Droplet 1.WAV | https://freesound.org/s/395258/ | Selulance | Creative Commons 0 | 0:04.6 | WAV 44.1k 16-bit стерео | Одиночная капля с эхом | Обработанная, с ревербом — для рандомных капель по таймеру. Свести в моно. |
| S14 | 37 - 2 Water drop - stone.WAV | https://freesound.org/s/420227/ | 14FPanska_Nemec_Petr | Creative Commons 0 | 0:01.5 | WAV 48k 24-bit стерео | Одиночный «плюх» (камешек в воду) | Сухой, без реверба — идеален для 3D-позиционирования; реверб дадут шины зон. |
| S15 | water drops in cave.wav | https://freesound.org/s/583804/ | banasz | Creative Commons 0 | 0:23 | WAV 44.1k 16-bit стерео | Капель фон | Несколько капель с ревербом — фоновый слой. |
| S16 | Water Dripping in Cave.wav | https://freesound.org/s/177958/ | Sclolex | Creative Commons 0 | 1:29.8 | WAV 48k 16-bit стерео | Капель фон (длинный) | Сильно обработан (dark, dungeon). Полторы минуты — режется в луп. |
| S17 | Dripping water loop | https://opengameart.org/content/dripping-water-loop | Independent.nu (загрузил qubodup) | CC0 | не указана | FLAC (1.3 МБ) | Капель фон | **Loop.** «Drip drip» — простой, чистый луп для подвала/пещеры. |
| S18 | deep water footsteps.wav | https://freesound.org/s/553863/ | bruno.auzet | Creative Commons 0 | 3:58.8 | WAV 48k 16-bit моно | **Шаги по воде (по колено)** | **Лучшая находка для Затопленного яруса:** резиновые сапоги в глубокой воде, потом в мелкой, потом по песку. Профессиональная запись (Schoeps/Fostex), моно, 4 минуты — нарезать 8–10 шагов. |
| S19 | footsteps in a water puddle | https://freesound.org/s/249911/ | launemax | Creative Commons 0 | 0:09.6 | WAV 48k 24-bit стерео | Шаги по луже + плеск | Один средний плеск, потом шаги. Для входа в воду. |
| S20 | FOLEY_Footsteps_Wet_Gravel_001.wav | https://freesound.org/s/149245/ | conleec | Creative Commons 0 | 0:31.9 | WAV 48k 24-bit моно | Шаги по мокрому гравию | «Squishy, sloshing» — переход между сухим штреком и водой. Чистая фоли-запись. |
| S21 | Water Puddle Splash | https://freesound.org/s/563021/ | cookies+policy | Creative Commons 0 | 0:08.5 | WAV 96k 24-bit стерео | Плеск (что-то упало в воду) | Синтезированный композит, чистый; для скриптовых событий (обрушение в воду). |

### 2.3 Шаги: камень, дерево, гравий, металл — 12

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Поверхность | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S22 | Footsteps - Stone, Rock, Concrete, Cement | https://freesound.org/s/813622/ | SecureSubset | Creative Commons 0 | 0:06.7 | WAV 48k 24-bit моно | Камень | Фоли на бетонной плите, MKH416, чистая. Нарезать на шаги. |
| S23 | Hiking Boot Footsteps on Stone | https://freesound.org/s/521590/ | Fission9 | Creative Commons 0 | 0:03.5 | WAV 48k 24-bit моно | Камень | 6 шагов в ботинках, ~250 мс тишины между — режется автоматически. |
| S24 | Footstep on Stone | https://freesound.org/s/197778/ | sgossner | Creative Commons 0 | 0:00.5 | WAV 44.1k 16-bit стерео | Камень (один шаг) | Одиночный мягкий шаг, уже с шумоподавлением. |
| S25 | Fantozzi's Footsteps (Grass/Sand & Stone) | https://opengameart.org/content/fantozzis-footsteps-grasssand-stone | Fantozzi (загрузил qubodup) | CC0 | — | FLAC + OGG 44.1k 16-bit | Камень | 12 нарезанных шагов, из них набор «stone» — готово к игре. |
| S26 | Hiking Boot Footsteps on Wooden Planks | https://freesound.org/s/521589/ | Fission9 | Creative Commons 0 | 0:02.5 | WAV 48k 24-bit моно | Дерево (настил) | 6 шагов по доске, «hollow» — настил над водой, мостки. |
| S27 | Creaking Wood 4 Steps | https://freesound.org/s/502507/ | Rudmer_Rotteveel | Creative Commons 0 | 0:05.8 | WAV 44.1k 16-bit стерео | Дерево (скрипучие доски) | 4 шага со скрипом половиц — для старых мостков; горрор-теги. |
| S28 | Footsteps Dirt Gravel | https://freesound.org/s/352870/ | PotatokingXII | Creative Commons 0 | 0:35 | WAV 48k 24-bit моно | Гравий/грунт | Zoom H6 + NTG-2, чистая, 35 с — основной набор для штрека. |
| S29 | Footsteps in Gravel | https://freesound.org/s/273354/ | petebuchwald | Creative Commons 0 | 0:16.6 | WAV 44.1k 16-bit стерео | Гравий | Полевая запись Zoom H4; второй вариант для разнообразия. |
| S30 | 42 Snow and Gravel Footsteps | https://opengameart.org/content/42-snow-and-gravel-footsteps | Corsica_S (загрузил qubodup) | CC0 | — | FLAC, 7z 4 МБ | Гравий | 42 нарезанных шага — берите гравийную часть. |
| S31 | FOLEY_Footsteps_Metal_001.wav | https://freesound.org/s/148462/ | conleec | Creative Commons 0 | 1:00.6 | WAV 48k 24-bit моно | Металл (лестница/клеть) | Шаги по металлической лестнице в бетонной клетке — с естественным ревербом. Для клети и ствола. |
| S32 | footsteps boots metal 2.wav | https://freesound.org/s/463666/ | alec_mackay | Creative Commons 0 | 2:07.5 | WAV 44.1k 24-bit моно | Металл | Сапоги по металлу, 2 мин; комментаторы отмечают лёгкий шум — прогнать через шумодав. |
| S33 | Metal Grate Running | https://freesound.org/s/786977/ | Oilcan03 | Creative Commons 0 | 0:08.7 | MP3 320 kbps стерео | Металл (бег) | Бег по металлической плите. **MP3** — качество ниже, брать только как запасной. |

### 2.4 Дерево: скрип крепи, треск, обрушение — 5

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S34 | R28-03-Large Wood Ship Creaking.wav | https://freesound.org/s/483355/ | craigsmith | Creative Commons 0 | 1:12.6 | WAV 48k 24-bit моно | **Скрип крепи** | Оцифрованная голливудская библиотека 1930–60-х: огромные деревянные стоны «как такелаж в шторм». Реставрация неполная — возможен шум плёнки, для 1902 года это только плюс. |
| S35 | Wood Creak Single V5 | https://freesound.org/s/506660/ | Rudmer_Rotteveel | Creative Commons 0 | 0:01.7 | WAV 44.1k 16-bit стерео | Одиночный скрип | Короткий изолированный скрип половицы — рандомные «оживания» крепи. В паке автора ещё 7 вариантов. |
| S36 | Creaking Wood 1.wav | https://freesound.org/s/590150/ | Greg_Surr | Creative Commons 0 | 0:01.9 | WAV 44.1k 24-bit стерео | Одиночный скрип | Второй одиночный скрип (кресло-качалка/половица); в серии автора 12 файлов. |
| S37 | R29-04-Crashing Collapse of Wood Building.wav | https://freesound.org/s/487142/ | craigsmith | Creative Commons 0 | 0:08.1 | WAV 48k 24-bit моно | **Обрушение крепи** | Винтажный «падает груда деревянных обломков». Скриптовое событие. |
| S38 | Bricks/Stones/Rocks/Gravel Falling | https://freesound.org/s/567249/ | iwanPlays | Creative Commons 0 | 0:04.2 | WAV 44.1k 16-bit стерео | Осыпь камня после обрушения | Микс из трёх CC0-источников; слоить поверх S37. |

### 2.5 Металл: рычаг, ворота, цепь, лебёдка, клеть, вагонетка — 12

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S39 | Heavy metal light switch, flipping.wav | https://freesound.org/s/188194/ | SpliceSound | Creative Commons 0 | 0:22.7 | WAV 48k 24-bit моно | **Рубильник** | Тяжёлый металлический тумблер, несколько щелчков — нарезать. Чистая студийная запись. |
| S40 | Kill Switch (Large Breaker Switch) | https://freesound.org/s/131599/ | EchoCinematics | Creative Commons 0 | 0:02.3 | WAV 48k 16-bit **6 каналов** | Рубильник (большой, с ревербом) | Синтезированный, с большим ревербом. Свести 6 каналов в моно. |
| S41 | lever.wav | https://freesound.org/s/828131/ | Mihacappy | Creative Commons 0 | 0:00.7 | WAV 48k 16-bit стерео | Рычаг (короткий) | Записан на телефон — качество низкое; запасной вариант. |
| S42 | Epic Metal Gate.flac | https://freesound.org/s/184935/ | qubodup | Creative Commons 0 | 0:11.6 | FLAC 96k 16-bit стерео | **Ворота клети (закрыть + запереть)** | Ржавые ворота, ключ, замок; в начале посторонний звук велосипеда — вырезать первые секунды. |
| S43 | metal gate - rattle handle, swing, clang.wav | https://freesound.org/s/330522/ | Widds | Creative Commons 0 | 0:30.5 | WAV 48k 16-bit стерео | Ворота: ручка, распах, лязг | Полный цикл ворот. Звук извлечён из видео iPhone — шумноват, но пригоден после фильтра. |
| S44 | door metal big heavy close kinda slam thud echo offmic.wav | https://freesound.org/s/406197/ | kyles | Creative Commons 0 | 0:03 | WAV 48k 24-bit моно | Удар двери клети / ворот с эхом | Чистый тяжёлый хлопок «off-mic» с эхом — то, что нужно для ствола. |
| S45 | Metallic Groan | https://freesound.org/s/496836/ | hinchinbrook | Creative Commons 0 | 0:09.4 | WAV 44.1k 16-bit стерео | Скрежет ворот / стон металла | «Тяжёлая бункерная дверь на ржавых петлях, низкий металлический стон». Двойное назначение — см. также хоррор. |
| S46 | metal-gate-slam | https://freesound.org/s/335976/ | newagesoup | Creative Commons 0 | 0:06.4 | WAV 48k 24-bit стерео | Лязг решётки | Удар по металлическому столбу с калиткой в 10-этажной лестничной клетке (естественный реверб). Записано на iPhone 6. |
| S47 | Chains.wav | https://freesound.org/s/500558/ | agaudiodesigns | Creative Commons 0 | 1:16.7 | WAV 96k 24-bit моно | **Цепь** | Скрежет, дребезг и тряска цепи на металлической ноге стола, Zoom H4n; 76 с — нарезать на движения цепи клети. |
| S48 | Hand-crank Generator (slow) | https://freesound.org/s/155390/ | epichero | Creative Commons 0 | 0:22.1 | MP3 44.1k 293 kbps стерео | **Лебёдка (ручной привод)** | Ручной генератор на медленных оборотах — шестерни, вращение. **MP3.** Единственный CC0-«ворот» с шестернями, что удалось подтвердить. |
| S49 | Rope under tension.WAV | https://freesound.org/s/547862/ | gear_clinkz | Creative Commons 0 | 0:58.7 | WAV 32k 16-bit стерео | Трос/канат под нагрузкой (клеть) | Синтезирован (бумага по бутылке), 32 кГц — низкая полоса, но для «напряжённого троса» под слоем S47 сгодится. |
| S50 | Squeaky Wheels.wav | https://freesound.org/s/389687/ | Shamewap | Creative Commons 0 | 0:04.8 | WAV 48k 24-bit моно | **Вагонетка** (визг колёс) | Короткий визг колёс. Для вагонетки нужен ещё слой качения по рельсам — см. Pixabay ниже. |

### 2.6 Огонь: горение лампы (loop), зажигание — 6

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S51 | Candle wood wick flame mono 01.wav | https://freesound.org/s/680476/ | roisin.gleeson | Creative Commons 0 | 1:04.4 | WAV 48k 24-bit моно | **Горение лампы в руке** | Пламя свечи с деревянным фитилём, Rode NTG4, моно — ближайшее по характеру к фитильной масляной лампе (тихое потрескивание без «костра»). Резать луп 5–10 с. |
| S52 | torch ambience loop | https://freesound.org/s/483692/ | LordStirling | Creative Commons 0 | 13:36 | WAV 48k 24-bit моно | Настенные керосинки (loop) | **Loop**, 13 минут — брать первые 10–15 с. Автор указывает, что файл производный от «Fire Crackle and Flame 002» (FractalStudios); на странице лицензия CC0. |
| S53 | fire crackling loop.wav | https://freesound.org/s/650574/ | soundofsong | Creative Commons 0 | 0:05 | WAV 44.1k 16-bit стерео | Огонь (короткий loop) | **Loop** 5 с; записан на смартфон ночью — есть характер, но и шум. |
| S54 | fire-crackling.wav | https://freesound.org/s/370938/ | jmehlferber | Creative Commons 0 | 0:24.5 | WAV 44.1k 16-bit стерео | Костёр/печь (если будет) | Камин, треск и хлопки — для ламп слишком «большой». |
| S55 | Match strike | https://freesound.org/s/524306/ | Bertsz | Creative Commons 0 | 0:02.1 | WAV 48k 24-bit стерео | **Зажигание спичкой** | Слоёный дизайн «чирк + вспышка». |
| S56 | Match Sizzle 03 | https://freesound.org/s/237406/ | squareal | Creative Commons 0 | 0:08.7 | WAV 48k 24-bit моно | Шипение фитиля / спичка в воду | Спичка в воду — шипение при тушении лампы или при падении в воду. |

### 2.7 Хоррор: стук из-под земли, удар по камню, дыхание, неопределимый звук — 9

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S57 | Gathering Stone Resources.flac | https://freesound.org/s/184383/ | qubodup | Creative Commons 0 | 0:10.7 | FLAC 48k 16-bit стерео | **Стук кайла из-под земли** | Копание твёрдого грунта (источник — видео госагентства США, public domain). Прогнать через S09 (IR пещеры) + low-pass — получится «кто-то долбит за стеной». |
| S58 | Single Rock hit Dirt.wav | https://freesound.org/s/319222/ | worthahep88 | Creative Commons 0 | 0:02.2 | WAV 48k 16-bit стерео | Удар камня о грунт | Сухой одиночный «плок» — для далёких ударов через IR. |
| S59 | Dramatic Hit | https://freesound.org/s/222517/ | qubodup | Creative Commons 0 | 0:07 | FLAC 48k 16-bit моно | Стингер (далёкий удар/акцент) | Тарелка + бас, из CC0-источников; для скриптовых скримеров мягкого типа. |
| S60 | Horror Hit Soundpack 1 | https://opengameart.org/content/horror-hit-soundpack-1 | psychhead_ | CC0 | — | ZIP 25 МБ, 55 WAV | Стингеры | 55 хитов разной высоты/громкости, сделаны в BandLab, без ИИ. |
| S61 | Cave In | https://opengameart.org/content/cave-in | StarNinjas | CC0 | не указана | OGG | Обвал (далёкий гул) | Чечевица в кастрюле, замедлено — по описанию «cave in, mine, mineshaft». Автор просит кредит (необязателен, но включён в CREDITS). |
| S62 | Heavy Breathing Man/Boy.WAV | https://freesound.org/s/321669/ | darranambler | Creative Commons 0 | 0:11.6 | WAV 48k 16-bit стерео | **Дыхание игрока** (усталое) | Тяжёлое дыхание после бега — для состояния паники/бега. |
| S63 | slow deep breath and sharp intake of breath (breathing).wav | https://freesound.org/s/511256/ | Tac_333 | Creative Commons 0 | 0:57.4 | WAV 48k 16-bit стерео | Дыхание игрока (спокойное + вдох-испуг) | Медленные вдохи и резкие «gasp» — нарезать по событиям. |
| S64 | Creepy_Breathing.wav | https://freesound.org/s/369294/ | georgisound | Creative Commons 0 | 0:23.5 | WAV 44.1k 16-bit моно | **Дыхание «кого-то ещё»** | Тяжёлое, надрывное — за спиной, из темноты. Моно. |
| S65 | Metallic Groan (см. S45) | https://freesound.org/s/496836/ | hinchinbrook | Creative Commons 0 | 0:09.4 | WAV 44.1k 16-bit стерео | **Неопределимый звук** | Замедлить на 30–50 % + IR — металлический стон из глубины ствола, не опознаётся как дверь. |

### 2.8 UI / интеракции: подбор предмета, шелест бумаги — 5

| # | Название | Ссылка | Автор | Лицензия (дословно) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|---|
| S66 | Paper Unfolding Quickly | https://freesound.org/s/547980/ | coolernow123 | Creative Commons 0 | 0:06.2 | FLAC 44.1k 16-bit моно | **Развернуть записку** | Быстрое разворачивание листа, USB-микрофон; чистый. |
| S67 | Rustling Paper | https://freesound.org/s/503033/ | samarobryn | Creative Commons 0 | 0:13 | WAV 44.1k 16-bit стерео | Шелест бумаги | Мятие/перемещение листа. |
| S68 | Paper Rustling 01.wav | https://freesound.org/s/171320/ | swidmark | Creative Commons 0 | 0:46.4 | WAV 44.1k 16-bit стерео | Листание страниц | KSM9, 46 с — перелистывание журнала/дневника. |
| S69 | Foley pick up gun on wood 02.wav | https://freesound.org/s/19289/ | martian | Creative Commons 0 | 0:09 | WAV 44.1k 16-bit моно | Подбор металлического предмета со стола | Взять предмет с дерева — «ключ», «лампа», «кайло». |
| S70 | RPG Audio (пак) | https://kenney.nl/assets/rpg-audio | Kenney | Creative Commons CC0 | — | 50 файлов OGG | Подбор предметов, ткань, ручки | Страница описывает пак как foley/footsteps/weapon; универсальный набор коротких «взял/положил». |

### 2.9 Пакеты и не-CC0 источники

**Kenney (Creative Commons CC0):**

| # | Пак | Ссылка | Что внутри | Назначение |
|---|---|---|---|---|
| S71 | Impact Sounds | https://kenney.nl/assets/impact-sounds | 130 файлов OGG, foley/impact | Удары дерево/металл/камень для физики и падения предметов. |
| S72 | UI Audio | https://kenney.nl/assets/ui-audio | 50 файлов, клики/переключатели | Меню, паузa. |

**Pixabay — «Free for use under the Pixabay Content License» (НЕ CC0, отдельная секция в CREDITS):**

| # | Название | Ссылка | Автор (как на странице) | Длит. | Формат | Назначение | Комментарий |
|---|---|---|---|---|---|---|---|
| P01 | Old Mine Ambience | https://pixabay.com/sound-effects/film-special-effects-old-mine-ambience-200677/ | JoelFazhari | 10:03 | MP3 | Штрек, фон | Тег «Loop», 10 минут «старой шахты» с ветром. Готовый фон, если хватит MP3. |
| P02 | Cavewind Ambience | https://pixabay.com/sound-effects/nature-cavewind-ambience-271124/ | Alex_Jauk | 0:28 | MP3 | Ветер в пещере | Короткий вой ветра. |
| P03 | Underground Waterflow Ambience 2 | https://pixabay.com/sound-effects/nature-underground-waterflow-ambience-2-201613/ | Alex_Jauk | 0:52 | MP3 | Затопленный ярус | Подземный поток воды, теги «sewer, tunnel, cave». |
| P04 | minecart | https://pixabay.com/sound-effects/film-special-effects-minecart-72127/ | wmquincy101 (Freesound) / freesound_community | 0:17 | MP3 | **Вагонетка по рельсам** | Единственная найденная запись именно вагонетки; теги «rail, wheels, loop». Импорт из Freesound-сообщества. |
| P05 | 002549_Dangerous mine shaft.mp3 | https://pixabay.com/sound-effects/film-special-effects-002549-dangerous-mine-shaftmp3-52820/ | Freesound Community | 7:10 | MP3 | Ствол, фон | 7 минут атмосферы «опасного ствола». |
| P06 | Steel Cage Opening | https://pixabay.com/sound-effects/film-special-effects-steel-cage-opening-83440/ | BuddyGuyTrask (Freesound) | 0:12 | MP3 | **Клеть: открыть решётку** | «Metal cage, mellow, soft». |
| P07 | Freight Elevator | https://pixabay.com/sound-effects/film-special-effects-freight-elevator-33694/ | zaphod1984 (Freesound) | 0:35 | MP3 | **Клеть: подъём** | Грузовой лифт/hoist — самое близкое к подъёмной машине. |
| P08 | Large Lever Pushed & Pulled | https://pixabay.com/sound-effects/film-special-effects-large-lever-pushed-amp-pulled-moving-the-lever-386435/ | Lesiakower | 0:08 | MP3 | **Большой рычаг** | Механический рычаг туда-обратно; качественнее S41. |
| P09 | Poltergeist Knocking | https://pixabay.com/sound-effects/horror-poltergeist-knocking-227003/ | Alex_Jauk | 0:14 | MP3 | **Стук из стены** | Готовый «полтергейст». |
| P10 | Knocking Knock Big Reverb | https://pixabay.com/sound-effects/film-special-effects-knocking-knock-big-reverb-101984/ | deleted_user_7146007 (Freesound) | 0:05 | MP3 | Далёкий стук с ревербом | Импорт из Freesound. |
| P11 | Mining with Pick Axe in a group | https://pixabay.com/sound-effects/film-special-effects-mining-with-pick-axe-in-a-group-29590/ | MiraclesHappen (Freesound) | 0:25 | MP3 | Кайла вдалеке (призрачная смена) | Несколько кайл одновременно — «мёртвая бригада продолжает работать». |

**Sonniss GDC Game Audio Bundles** — https://sonniss.com/gameaudiogdc — 8 архивов (GDC 2015–2024, десятки ГБ), лицензия своя (цитата в разделе 0). Отдельные файлы здесь не перечислены: чтобы честно указать имя файла и автора, архив нужно скачать целиком; внутри есть библиотеки с шахтными/индустриальными эмбиентами. Если возьмёте что-то оттуда — добавьте в CREDITS секцию «Sonniss GDC (royalty-free, no attribution required, no standalone redistribution)».

---

## 3. Честный отчёт: что пусто, слабо и что не удалось подтвердить

### Слабые категории
- **Вагонетка (качение по рельсам).** На Freesound CC0 подтверждён только визг колёс (S50). Единственная запись именно вагонетки — Pixabay P04 (MP3). Рекомендую собрать звук слоями: S50 + низкочастотное качение из Kenney Impact/собственная запись тележки + S47 цепь.
- **Лебёдка/подъёмная машина.** Настоящей паровой/ручной шахтной лебёдки с CC0 нет. Есть ручной генератор с шестернями (S48, MP3), грузовой лифт (P07, Pixabay), трос (S49, синтетика). Это компромисс.
- **Горение именно масляной/керосиновой лампы.** Единственная найденная запись керосиновой лампы (Tilley, Freesound 275999) — Attribution 4.0, не подошла. Взяты свеча с деревянным фитилём (S51) и лупы огня (S52–S53).
- **Рельсы (текстура).** Отдельного набора нет нигде; предложены T28/T36.
- **Вода (текстуры).** Только 3dtextures.me (T44, T45), 1024 px. Для PSX этого достаточно, но выбора нет.
- **Мокрый камень.** Настоящих «wet» сканов стены мало — T12–T14 это пол/грунт, а стены (T15–T19) «мокрые» только за счёт низкого roughness.
- **Kenney-паки** описаны по странице (количество файлов, лицензия); полный список файлов внутри страницы не показывают, поэтому назначение указано обобщённо.

### Источники, которые не удалось открыть из этой среды (ничего оттуда НЕ включено)
- **ambientCG** (ambientcg.com) — сайт не отвечал ни через прокси, ни через fetch (таймаут robots.txt / 403 CONNECT). Лицензия там сайтовая CC0, и наверняка есть отличные наборы камня/угля/бумаги (серии Rock, Ground, Paper, Rust), но ни один ID я не открыл — поэтому не привожу. Проверьте сами: https://ambientcg.com/list?type=Material&q=rock
- **Freesound: поиск** (/search/) закрыт для роботов, поэтому кандидаты искались через внешний поиск, а каждая страница звука затем открывалась напрямую. Из-за этого выборка Freesound ограничена тем, что индексируется поисковиком.
- **3dtextures.me** во время проверки дважды ответил 429 (лимит запросов) — поиск «cave» и «burlap» не открылся; конкретные страницы, что включены, открыты и прочитаны.

### Отклонено после проверки страницы (лицензия оказалась не CC0)
Freesound, «Attribution 4.0/3.0»: 270387 Ambience_Cave_00 (LittleRobotSoundFactory); 232685 Atmosphere Cave (Loop) (julius_galla); 546359 Water drips in the cave HQ (tosha73); 240607 Water dripping in cave (lebaston100); 464610 Water_Footsteps (D001447733, 3.0); 623581 footsteps in the water (phantastonia); 221764 Water Wading (Motion_S); 531952 Footsteps on gravel (Joozz); 539178 Rock/stone falling debris (bolkmar); 68666 ChainRattle (mikaelfernstrom); 490069 190155_ChainRattle (GaelanW, 3.0); 329495 rusty iron gate (YleArkisto); 40555 pulley 2 (FreqMan); 130973 Large, Low Boom (duckduckpony); 275999 Tilley kerosene lamp hiss (odilonmarcenaro); 411177 Pick up Item 1 (SilverIllusionist).
Freesound, «Attribution NonCommercial»: 326940 Old Metal Sliding Door (GlenCurtisAdams); 392256 Gate Creak (paulw2k); 407652 Metal Chain Movements (NebbiaOne); 232609 Cave Loop (mensageirocs).
Freesound, CC0, но бесполезно: 269595 Cave Ambience (IanStarGem) — 1.8 с, пользователи жалуются на щелчок при зацикливании.

---

## 4. Quixel / Fab / Epic
Quixel Megascans (теперь на Fab) намеренно не включены: там своя лицензия Fab Standard/EULA с ограничениями по использованию вне Unreal и по перераспределению — не CC0.
