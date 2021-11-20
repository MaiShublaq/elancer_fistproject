import 'package:elancer_fistproject/models/blogs.dart';
import 'package:elancer_fistproject/models/cosmetics.dart';
import 'package:elancer_fistproject/models/exercises.dart';

const EXERCISES_DATA = [
  Exercises(
      id: 1,
      name: 'Facial Yoga For Eyes: The V',
      benefits: "Drooping eyelids, crow’s feet, eye bags and puffiness.",
      alternative: " Botox and eye surgery.",
      firstStep:
          "Press both middle fingers together at the inner corner of the eyebrows, then with the index fingers, apply pressure to the outer corners of the eyebrows.",
      secondStep:
          "Look to the ceiling, and lift the skin below the eyes upwards into a strong squint, and then relax.",
      thirdStep:
          "Repeat six more times and finish by squeezing eyes shut tightly for 10 seconds.",
      img: 'images/9.jpg'),
  Exercises(
      id: 2,
      name: 'Facial Yoga For Cheeks: The Smile Smoother',
      benefits: "Cheek lines and sagging skin.",
      alternative: " Lower face lift and fillers.",
      firstStep:
          "Make an ‘O’ shape with the mouth, hiding your teeth with your lips.",
      secondStep:
          "Smile widely while keeping the teeth hidden and repeat six times.",
      thirdStep:
          "Next, hold the smile shape while placing one index finger on the chin. Then start to move the jaw up and down as the head tilts gently back. Relax and repeat twice more.",
      img: 'images/10.jpg'),
  Exercises(
      id: 3,
      name: 'Facial Yoga For Forehead: Smooth The Brow',
      benefits: "Horizontal forehead lines.",
      alternative: "Botox.",
      firstStep:
          "Place both hands on the forehead facing inwards and spread all of the fingers out between the eyebrows and hairline.",
      secondStep:
          "Gently sweep the fingers outwards across the forehead, applying light pressure to tighten the skin.",
      thirdStep: "Relax and repeat 10 times.",
      img: 'images/11.jpg'),
  Exercises(
      id: 4,
      name: 'Facial Yoga For Brows: The Flirty Eyes',
      benefits: "Deep eye hollows and drooping eyebrows.",
      alternative: " Eyebrow lift.",
      firstStep:
          " Place an index finger under each eye, pointing towards the nose.",
      secondStep: "Hide the teeth and form an ‘o’ with your mouth.",
      thirdStep:
          "Flutter the upper eyelids while gazing at the ceiling for 30 seconds.",
      img: 'images/12.jpg'),
  Exercises(
      id: 5,
      name: 'Facial Yoga For Chin And Neck: The Giraffe',
      benefits: "Lines and loose skin on the neck.",
      alternative: "Neck or jowl lift.",
      firstStep:
          "Looking straight ahead, place the finger tips at the bottom of the neck and lightly stroke the skin downwards with the head tilted back.",
      secondStep:
          "Bring the head back down to the chest and repeat twice more.",
      thirdStep:
          "Finally, jut the lower lip out as far as possible to pull the corners of the mouth down. Place your fingertips on the collarbone with the chin pointed upwards. Hold for four deep breaths.",
      img: 'images/13.jpg'),
];

const BLOGS_DATA = const [
  Blogs(
      id: 1,
      title: 'How to Care for Your Skin After Botox and Peels',
      autherName: 'Elise Minton Tabin',
      autherTitle: 'beauty journalist',
      autherImg: 'images/43.jpg',
      content1:
          'A quick zap, a prick of a needle, and a zhush here can create the '
          'difference between good skin and great skin. But,'
          ' for as much good as professional procedures offer, '
          'you can’t discount the aftercare they require.Procedures stimulate the body’s '
          'repair system through a controlled injury process,'
          ' so the skin needs extra TLC to recover,”'
          ' says Dr. Ava Shamban, MD, a board-certified dermatologist in Santa Monica,CA',
      content2:
          'BOTOX What it is: An injectable neurotoxin that temporarily reduces the look'
          ' of wrinkles and expression lines. In addition to Botox, other FDA-approved neurotoxins'
          ' include Dysport, Xeomin, and Jeuveau.How it works: The toxin blocks nerve activity and paralyzes'
          ' the muscle. Once the muscle can no longer contract, wrinkles and lines in a localized area relax.'
          'Post-treatment care: You can resume your routine pretty quickly, but there are'
          ' tricks to reducing redness and bruising. Dr. Shamban recommends icing the area, using arnica '
          'to counteract bruising and swelling, and avoiding applying makeup for a few hours. Also, '
          'botanical-based masks and gels can help minimize post-Botox redness.'
          'FILLER What it is: Fillers, which restore volume, fall into two categories: '
          'hyaluronic acid ones that provide immediate results or longer-lasting bio-stimulatory fillers,'
          ' which encourage new collagen. Both work towards the same goal, and choosing the right product '
          'comes down to the degree of deflation.How it works: Injecting filler into the lips, cheeks,'
          ' temples, and jawline helps restore fullness while adding structure.',
      img: 'images/44.jpg'),
  Blogs(
      id: 2,
      title: 'How to Transition Your Skin Care Routine from Summer to Fall',
      autherName: 'Elise Minton Tabin',
      autherTitle: 'beauty journalist',
      autherImg: 'images/43.jpg',
      content1:
          'Summer is synonymous with beach days, sun-kissed skin (hopefully sans the burn), naturally lightened hair, and, of course, a pared-down skin care routine consisting of lightweight products. But as the temperatures start to dip, it’s time to swap out your summer staples for richer options. Come fall, it’s not just your wardrobe that needs updating—your skin care requires a mini makeover, too.',
      content2:
          'What Happens to Your Skin in the FallThe skin recognizes climate changes and reacts to them to regulate its needs,” says Dr. Jordana Herschthal, a board-certified dermatologist in Boca Raton, FL. “Cooler, drier air generally leads to drier skin because of limited humidity, so use products that maintain moisture and protect the skin’s lipid barrier to decrease irritations,” Dr. Herschthal adds. Unfortunately, dry skin isn’t the only by-product of cold weather—flakiness, breakouts, redness, and dullness often ensue, too.Follow these expert tips to'
          ' transition your skin care routine from summer to fall without causing'
          ' a skin freak out.Opt for Gentle Cleansers ummer calls for gel-based or foaming cleansers '
          'that decrease oil production while encouraging cell turnover. But a summer approach to cleansing is not necessarily best for fall. Dr. Angela Lamb, a board-certified dermatologist in New York City, explains that because the skin produces less oil during the winter, “it’s best to use cream-based cleansers or those with moisturizers.” Nevertheless, failing to switch up your cleanser, especially if it contains salicylic or glycolic acids, can lead to unnecessary dryness.',
      img: 'images/45.jpg'),
  Blogs(
      id: 3,
      title: 'What Is My Skin Type? Here’s How to Tell and Care for It',
      autherName: 'Jessica Griffiths',
      autherTitle: 'BEAUTY WRITER',
      autherImg: 'images/46.jpg',
      content1:
          'Skin care is an art and a science, but don’t be intimidated: this is something we can all learn. The trick to caring for your skin is knowing your skin, because understanding means you can find the right products that work for you and combat potential issues without causing more problems.There are seven basic skin types: normal, oily, dry/dehydrated, combination, acne-prone, sensitive and mature. Learn how to identify and care for yours below.',
      content2:
          'Normal SkinHow to Tell if You Have Normal SkinYou don’t experience many breakouts. Your skin doesn’t tend to react negatively to new products or weather changes. You don’t feel like you need to constantly moisturize or blot oil from your face all day long. Your skin is firm, with minimal fine lines and wrinkles.Skin Care TipsLucky you! With normal skin, you experience almost no sensitivity, dryness or oiliness. Your skin can tolerate most ingredients, meaning you can play hard with beauty products and have tons of fun experimenting with cleansers, moisturizers and masks until you find exactly what works for you.Learn more: In What Order Do I Apply My Skin Care Products?Shop products for normal skin types.Oily SkinHow to Tell if You Have Oily SkinYour skin always seems to be glowing. You’re likely no stranger to blotting sheets or mattifying powders. You might find that makeup and skin care products don’t always stay put like you’d want them to.Skin Care TipsWith oily skin, shine control is a top concern. Although there are benefits to having oily skin (like fewer wrinkles!), you should avoid ingredients like mineral oil, petrolatum and alcohol. Products labeled “non-comedogenic” work great for oily skin as these won’t clog up your pores. Oil-free moisturizers are your best friends (yes, you still need to moisturize!), as are chemical exfoliants and clay masks. Be sure not to over-wash your face, as drying out your pores can cause them to produce even more oil to compensate.Learn more: Got Oily Skin? Don’t Fall for These 4 Biggest MythsShop products for oily skin types.Dry/Dehydrated SkinHow to Tell if You Have Dry SkinDryness and dehydration are actually two separate concerns, but they have very similar symptoms. Here’s how to identify them in your skin:•	Dryness is caused by a lack of oil in the skin. Symptoms include flakiness, sensitivity, itchiness and cracks. It may be caused by lifestyle and environmental factors or a chronic condition (in case of eczema or related conditions).•	Dehydration is the result of your skin not retaining enough moisture. Your skin may be feel tight, have a papery appearance or show small, fine lines when your skin is pinched together.Skin Care TipsTo care for dry skin, you’ll want to seal in moisture by applying a rich moisturizer several times each day—especially after washing your hands or bathing. Try to keep the air in your home warm and moist to help heal. Avoid using harsh soaps or products containing citrus oils or lots of fragrance.If your skin is dehydrated, on the other hand, be sure to look for water-based products, as oil-based products can actually make your skin condition worse. Most important, be sure you’re drinking enough water each day!Learn more: The Best Moisturizers to Nourish and Restore Dry SkinShop products for dry/dehydrated skin types.Combination SkinHow to Tell if You Have Combination SkinIf you’re having trouble figuring out what type of skin you have, it’s likely combination. Is your skin dry in certain areas, while oily in others? Combination skin is most easily defined by an oily T-zone (the strip across the forehead and the line down the nose) and dry or normal skin on the rest of the face.Skin Care TipsYou’ll want to stay away from the same ingredients as oily and dry skin, such as alcohol-based products. The name of the game with combination skin is balance. Isolate problem areas with spot treatments and use toners or balancing cream to even out the skin.Learn more: How to Customize a Routine for Combination SkinShop products for combination skin.Acne-Prone SkinHow to Tell if You Have Acne-Prone SkinIf you get frequent breakouts (or ones that just never seem to go away), you likely have acne-prone skin. This means that your pores tend to clog easily, making you more susceptible to whiteheads, blackheads or pustules than other skin types. You can have oily or dry skin and be prone to acne.Important Note: Blemishes on your skin might not necessarily be acne. In fact, a common skin concern called rosacea is often known as “adult acne” because it can cause acne-like symptoms. Other symptoms of this condition include flushing, prominent blood vessels, thickened skin and stinging or burning. (If this sounds more like your skin, skip down to the “Sensitive” section instead.)Skin Care TipsUse cleansers specifically formulated to treat acne, as well as exfoliants and moisturizers that will help minimize breakouts. Gently cleanse your face to avoid trauma to existing breakouts, and use topical gel to treat and lighten acne scarring. Look for acne-fighting ingredients like salicylic acid, clay, benzoyl peroxide or retinol.Learn more: 7 Things You Didn’t Know (But Absolutely Should) About Your BreakoutsShop products for acne-prone skin.Sensitive SkinHow to Tell if You Have Sensitive SkinSensitive skin might be caused by genetics, allergies or environmental factors. Signs of this skin type include:•	Skin that flushes easily•	Frequent rashes and bumps•	Stinging or burning after using a skin care product•	Negative reaction to fragrance•	Patches of dry, flaky, irritated skinSkin Care TipsYou need to be careful when choosing cosmetics, as you’re more prone to irritation, redness, stinging, burning or acne breakouts. Avoid fragrances and irritants like alcohol or antibacterial ingredients. Look for products with fewer additives, and seek out those with calming, healing or anti-inflammatory properties. Sometimes, using the wrong products can cause your skin to become sensitized, even if your skin type isn’t truly sensitive.Learn more: Is Your Skin Sensitive or Sensitized? Here’s How to Know and How to DealShop products for sensitive skin types.Mature SkinHow to Tell if You Have Mature SkinWhile not everyone’s skin ages at the same pace, the signs are fairly universal. You might notice a wrinkle here and there or more dryness than in your younger years. For more mature skin, you may notice sagging, dark spots, dullness and dehydration.Skin Care TipsMature skin requires enhanced skin care to tackle past and future damage. There’s no wrong time to create an anti-aging routine with restorative treatments, which can boost collagen, as well as protect against environmental aggressors and cell turnover.Learn more: 10 Face Serums That Will Banish Fine Lines and WrinklesShop products for mature skin concerns.',
      img: 'images/47.jpg'),
  Blogs(
      id: 4,
      title: 'What Is Glass Skin and How to Achieve It',
      autherName: 'Janeca Racho',
      autherTitle: 'BEAUTY REPORTER',
      autherImg: 'images/48.jpg',
      content1:
          'It’s been a few years since Korean skin care first landed on our radars (also known as our Twitter and Instagram feeds), but the beauty world’s collective fascination for all things K-beauty shows no signs of slowing down. Korean skin care is known for its groundbreaking formulations, surprising ingredients and flatlay-ready packaging. It got us obsessed with sheet masks, introduced us to bee venom and snail mucin and even prompted us to google words like “chok-chok,” “ampoule” and “essence.”',
      content2:
          'What Is Glass Skin?“Glass skin is a term for exceptionally smooth, even-toned and lustrous skin that’s so flawless it has the appearance of glass,” says skin care blogger and K-beauty expert Jude Chao. “It’s simply a clear and elegant way of describing a certain type of enviable complexion,” she adds. Like its predecessors “honey” and “dewy” skin, glass skin aims for an intensely moisturized skin that gives off an almost transparent complexion and a “very youthful, lit-from-within glow,” adds K-beauty and skin care blogger Sheryll Donerson.Is Glass Skin Easy to Achieve?Those #glassskin photos on your feed may be all the motivation you need to hop on this K-beauty trend, but it’s important to remember that there is no shortcut to achieving flawless, ethereal-looking skin. And if there’s one thing that Korean skin care has taught us, it’s that great skin goes beyond cult products or buzzworthy trends: It requires consistency and commitment to your skin care regimen. “So many times, we want to rush from product to product, but I really think the skin benefits [more] from longer-term use of a few items like a hydrating toner or essence and a really good moisturizer,” says Donerson, adding that sleep, diet and exercise also play a huge role in your skin’s health.And while there is definitely no harm in trying out trends and discovering what works, Chao says keeping achievable goals and realistic expectations are just as important. “Skin condition isn’t the same thing as clothing silhouettes or makeup colors. It isn’t easy to change one’s skin type in the first place,” says Chao. Her advice? Focus on building a solid skin care routine that will help you “feel more comfortable and happy in your own skin” instead of fixating on fads or getting caught up in unattainable goals.After all, when it comes down to it, the quest for a glass-like complexion is really just another way of striving for clear, healthy and youthful-looking skin.',
      img: 'images/49.jpg'),
  Blogs(
      id: 5,
      title: 'Here’s Exactly What Happens to Your Face When You’re Stressed',
      autherName: 'Dr. Anna Sabsbekne',
      autherTitle: 'Doctor Dermatologies',
      autherImg: 'images/52.jpg',
      content1:
          'Unless you were born yesterday, you—and your skin—have probably seen some better days. But unlike the immediate consequences that, say, a Saturday night out can have on your face by morning, the effects of prolonged stress can often be sneaky, slowly messing with your skin barrier until it’s angry, irritated and leaving you to deal with one of these four issues:',
      content2:
          'BreakoutsIt’s not necessarily the copious amounts of pasta, wine and baked goods we tend to consume when we’re emotional (all of which, sorry, can trigger pore-clogging inflammation in your system), but also a very real systemic effect: “When your emotions are high, your cortisol levels spike and trigger your oil glands to produce more oil,” says Mona Gohara, M.D., a board-certified dermatologist and associate clinical professor of dermatology at Yale School of Medicine. “That oil then feeds acne-causing bacteria in your skin, leading to, yes, acne.”Though you can’t magically change the way your system operates, you can help decrease your cortisol levels with a quick meditation or workout session. And if you know you’re heading into a few days of stress, try pre-loading your skin care routine with gentle actives, like adding in a sulfur-based face mask or switching to a salicylic acid-spiked cleanser that’ll help keep your pores clear while your sebum cranks up.Face pickingThe sudden urge to attack your face immediately after (or, ahem, during) a crying jag? That’s not completely on you. “There’s a major brain-body connection, and I think picking can be a manifestation of anxiety,” says Dr. Gohara. “It gives your brain a fake sense of control over whatever’s stressing you out, but in reality, the compulsion stems from anxiety.” Research also shows that stress can increase nerve signaling that triggers itching in your skin, so even low-grade yet chronic stress can make you extra susceptible to pressing your face up against a mirror and searching for bumps.If you find yourself obsessing over a bump—or, let’s be real, picking at a dozen spots until they’re inflamed—Dr. Gohara suggests sticking on some pimple patches, like the COSRX Acne Pimple Master Patch, to keep the area clean and your fingers from doing more damage. “Even if it takes 12 pimple patches to keep your skin safe, so be it,” she says. And then tuck your magnifying mirrors in a drawer until your bout of stress subsides.Dryness“Back in the caveman days when a lion was chasing you, your adrenaline was part of your survival instinct,” says Dr. Gohara. “It spiked your cortisol levels and sent blood to your vital organs so you could run away.” Very useful back then, but now? Those innate hormones just mess with your face. “Your skin isn’t a vital organ during fight or flight, so the cortisol spike can lead to dehydration and a compromised skin barrier,” she says.You can’t magically turn off your emotions, but you can make sure you’re layering on more moisturizer than usual during bouts of stress, like Neocutis Hyalis+ Intensive Hydrating Serum every morning and night, followed by EltaMD Barrier Renewal Complex.Redness“When your heart is pumping fast from stress, your blood vessels are more likely to be full and your capillaries dilated, which can cause immediate facial flushing and a flare in rosacea,” says Dr. Gohara. Because cortisol happens to be pro-inflammatory, the surge of hormones can cause a swell of acne, eczema and irritation, too. “You can decrease inflammation and redness with topical and oral medications, but you can’t necessarily restrict those blood vessels with anything over the counter,” she says.Still, that doesn’t mean you’re stuck with prolonged redness, just because your emotions are running high. “There’s some data that shows niacinamide can help calm inflammation and redness over time,” says Dr. Gohara, adding that centella asiatica, a soothing, damage-repairing herb, may also help.',
      img: 'images/50.jpg'),
  Blogs(
      id: 6,
      title: '"How to save your skin in winter?"',
      autherName: 'Dr. Anna Sabsbekne',
      autherTitle: 'Doctor Dermatologies',
      autherImg: 'images/52.jpg',
      content1: 'Cold weather and low humidity levels conspire to leave'
          ' skin feeling tight and dehydrated as the dry air'
          ' saps moisture from it. If left untreated, this causes'
          ' the skin to crack and bleed ever had a case of ‘'
          'split knuckles’ come winter? That’s why'
          '. If you’re prone to eczema or any other dry skin conditions, it’ll '
          'tend to flare up around this time of year as a result.',
      content2: 'Okay, so judging from the above you’re probably'
          ' feeling like you’ll be fighting a losing'
          ' battle against the elements this season,'
          ' right? Thankfully, there are a few ways'
          ' that you – and your skin – can survive and'
          ' thrive over winter. Reduce dryness, breakouts,'
          ' chapping and redness, and achieve healthy,'
          ' glowing skin all year round with these top tips.'
          'Stay hydrated This may seem obvious,'
          ' but when it’s not blazing hot outside,'
          ' many of us don’t drink enough water.'
          ' Yes, it’s hugely important to moisturise'
          ' the skin with creams, oils or serums,'
          ' but water – which makes up 64% of our skin'
          ' – is the key to proper hydration.'
          ' Water plumps the skin, encourages collagen'
          ' production and flushes toxins (including acne-causing ones) '
          'from our bodies. If you’re not drinking the'
          ' recommended 2 litres of water (or 6-8 glasses) every day,'
          ' your skin will appear dull. You’re also likely to '
          'increase the look of fine lines and wrinkles.',
      img: 'images/51.jpg'),
];

const COSMETICS_DATA = const [
  Cosmetics(
      id: 1,
      name: 'Confidence in a Cleanser',
      brief: 'GREAT SKIN STARTS WITH CONFIDENCE!',
      info:
          'Developed with plastic surgeons, Confidence in a Cleanser™ is your skin-loving cleanser and serum in one game-changing product! This breakthrough one-step skincare solution gently cleanses and moisturizes while leaving your skin feeling soft, refreshed and perfectly balanced. Ideal for all skin types and ophthalmologist-tested for your sensitive eye area, this sulfate-free and soap-free facial cleanser instantly removes all traces of makeup—even waterproof eye makeup—and improves your skin\'s vitality',
      mainImg: 'images/15.jpg',
      idCategory: 'cleanser',
      img: 'images/14.jpg'),
  Cosmetics(
      id: 2,
      name: 'Bye Bye Makeup Cleansing Balm',
      brief: 'IT MAKES YOUR MAKEUP DISAPPEAR!',
      info:
          'Bye Bye Makeup is your 3-in-1 sulfate-free cleansing balm, instant makeup remover and skin-softening anti-aging serum—all in one step! Developed with plastic surgeons, this gentle face cleanser completely melts away all traces of makeup—even waterproof eye makeup—and impurities without drying or irritating your skin. Proprietary Skin-Softening Serum Concentrate™ is activated on contact, providing a soft barrier of moisture that helps ward off free-radicals and pollutants for healthier, younger-looking skin.',
      mainImg: 'images/17.jpg',
      idCategory: 'cleanser',
      img: 'images/16.jpg'),
  Cosmetics(
      id: 3,
      name: 'Miracle Water 3-in-1 Micellar Cleanser',
      brief: 'IT BRINGS YOUR SKIN TO LIFE!',
      info:
          'Developed with plastic surgeons, Miracle Water 3-in-1 Tonic instantly transforms your skin and maximizes the benefits of your skincare routine! This lightweight no-rinse product combines your Skin-Brightening Radiance Booster to help purify, balance and brighten the look of your skin, your potent Anti-Aging Treatment Essence to diffuse the look of lines and wrinkles, and your Skin-Softening Micellar Cleanser to gently attract, trap and remove dirt, oil, impurities and makeup—all in one simple step.',
      mainImg: 'images/19.jpg',
      idCategory: 'cleanser',
      img: 'images/18.jpg'),
  Cosmetics(
      id: 4,
      name: 'Bye Bye Pores Leave-On Solution Pore-Refining Toner',
      brief: 'REVEAL BETTER-LOOKING SKIN WITH IT!',
      info:
          '  Bye Bye Pores Leave-On Solution is a skin-improving daily toning treatment that works to mattify and smooth skin while minimizing the look of pores. The lightweight, leave-on solution features a unique Skin-Mattifying Complex formulated with kaolin clay that works to absorb excess oil and control shine for a balanced complexion. Non-comedogenic and infused with silk, coconut water and rice protein, it leaves your skin feeling smooth and refreshed!',
      mainImg: 'images/21.jpg',
      idCategory: 'cleanser',
      img: 'images/20.jpg'),
  Cosmetics(
      id: 5,
      name: 'Microglow Cleanser',
      brief: 'Your first step to brighten and refresh skin',
      info:
          'Glow over everything starts with this micro-exfoliating cleanser that gently buffs away dead skin cells for your most radiant complexion ever. Made with Polylactic Acid to smooth, use MicroGlow daily to remove skin impurities and build up from the day, encouraging cell turnover that brightens dark spots and heals the skin.',
      mainImg: 'images/23.jpg',
      idCategory: 'cleanser',
      img: 'images/22.jpg'),
  Cosmetics(
      id: 1,
      name: 'Hello Results Wrinkle-Reducing Daily Retinol Serum-in-Cream',
      brief: 'GOODBYE WRINKLES + HELLO RESULTS!',
      info:
          'Say hello to younger-looking skin! Hello Results Daily Retinol Cream combines the power of an anti-aging serum with the soothing care of a cream in just one step. Featuring dual retinol—a blend of free and encapsulated retinol, the formula is suitable for daily use on all skin types. You\'ll see dramatic clinical results on more than just wrinkles! See an improvement in skin firmness and a reduction in fine lines and dark spots.',
      mainImg: 'images/25.jpg',
      idCategory: 'moisturizer',
      img: 'images/24.jpg'),
  Cosmetics(
      id: 1,
      name: 'Confidence in a Neck Cream Moisturizer',
      brief: 'IT’S SHAPEWEAR FOR YOUR NECK!',
      info:
          'Confidence in a Neck Cream is your groundbreaking moisturizer that transforms the appearance of your neck, décolleté and chest! Perfect for all skin types, this quick-absorbing super cream is clinically tested to reduce the look of horizontal neck lines and improve firmness, smoothness and elasticity.',
      mainImg: 'images/27.jpg',
      idCategory: 'moisturizer',
      img: 'images/26.jpg'),
  Cosmetics(
      id: 1,
      name: 'Secret Sauce™ Moisturizer',
      brief: 'EXPERIENCE IT!',
      info:
          'Developed with plastic surgeons, Secret Sauce™ Moisturizer immediately hydrates and plumps your skin! The skin-loving secret lies in the Secret Sauce™ Fermented Complex: 7 clinically advanced, penetration-enhancing fermented ingredients that help to increase absorbency and maximize the ultra-hydrating benefits of this moisturizer that’s perfect for all skin types, especially dry skin.',
      mainImg: 'images/29.jpg',
      idCategory: 'moisturizer',
      img: 'images/28.jpg'),
  Cosmetics(
      id: 1,
      name: 'Confidence in a Gel Lotion Moisturizer',
      brief: 'IT’S 3 DAYS OF HYDRATION IN ONE STEP!',
      info:
          'Confidence in a Gel Lotion Moisturizer is your oil-free, quick-break gel moisturizer that delivers 72 hours of hydration for a supple, healthy-looking appearance. The quick-break innovation breaks into a water-light liquid upon application for easy absorption and a weightless feel. Allergy tested, clinically tested and perfect for all skin types, this lightweight gel moisturizer is infused with ceramides, glycerin and cactus flower extract to help smooth the appearance of fine lines and leave your skin looking radiant.',
      mainImg: 'images/31.jpg',
      idCategory: 'moisturizer',
      img: 'images/30.jpg'),
  Cosmetics(
      id: 1,
      name: 'Bye Bye Foundation Full Coverage Moisturizer™ with SPF 50+',
      brief: 'NEVER WEAR FOUNDATION AGAIN',
      info:
          'Bye Bye Foundation is your first-ever full-coverage moisturizer from IT Cosmetics that gives you the power to say “bye bye” to traditional foundation—and hello to your most beautiful skin! Developed with plastic surgeons, your innovative problem solver is designed to help cover and improve the look of skin concerns including redness, pores, dark spots, breakouts, lines and wrinkles',
      mainImg: 'images/33.jpg',
      idCategory: 'moisturizer',
      img: 'images/32.jpg'),
  Cosmetics(
      id: 1,
      name: 'Bye Bye Under Eye Anti-Aging Concealer',
      brief: 'IT’S TIME TO BE YOUNGER!',
      info:
          'Instantly brighten the look of your entire eye area with CC+ Eye™—your full-coverage color-correcting eye cream, anti-aging skincare and SPF 50+ UVA/UVB broad-spectrum physical sunscreen all in one! Developed with plastic surgeons, this game-changer combines optical-blurring pigments with skin-loving hyaluronic acid, hydrolyzed collagen, colloidal oatmeal, aloe, silk, peptides and antioxidants, completely erasing the look of dark circles and discolorations around your delicate eye-area skin.',
      mainImg: 'images/32.jpg',
      idCategory: 'eyeCream',
      img: 'images/32.jpg'),
  Cosmetics(
      id: 1,
      name: 'Bye Bye Baggage™ ',
      brief: 'IT’S YOUR ULTIMATE EYE DUO!',
      info:
          'Say Bye Bye Baggage™ with this online exclusive skincare set for eyes that includes your best-selling Bye Bye Under Eye Eye Cream and Heavenly Skin Tap & Smooth Eye Cream Brush #706. Your intensely hydrating, anti-aging eye cream is designed to smooth the look of lines and wrinkles, brighten the appearance of dark circles and soothe puffy eyes. You’ll experience even more skincare benefits when you apply your eye cream with this dual-ended brush, which works perfectly to deliver a smooth, gentle and even application while providing a cooling effect.',
      mainImg: 'images/35.jpg',
      idCategory: 'eyeCream',
      img: 'images/35.jpg'),
  Cosmetics(
      id: 1,
      name: 'Superhero No-Tug Cream Eyeshadow Stick Trio ',
      brief: 'IT\'S YOUR SINGLE SWIPE SUPER SHADOW!',
      info:
          'Superhero No-Tug Shadow Sticks are everything you love about eyeshadow, in an easy-to-use, longwear cream shadow stick. Using our exclusive No-Tug Technology, this blendable eyeshadow stick glides onto your lids without tugging on your delicate eye area. Featuring both matte and pearl finishes, it’s completely buildable for your perfect eye look! Plus, it’s formulated with a built-in eyeshadow primer for a completely creaseless finish. Convenient and so easy to use, it\'s truly your single swipe super shadow!',
      mainImg: 'images/37.jpg',
      idCategory: 'eyeCream',
      img: 'images/36.jpg'),
  Cosmetics(
      id: 1,
      name: 'Bye Bye Foundation Full Coverage Moisturizer™ with SPF 50+',
      brief: 'NEVER WEAR FOUNDATION AGAIN!',
      info:
          'Bye Bye Foundation is your first-ever full-coverage moisturizer from IT Cosmetics that gives you the power to say “bye bye” to traditional foundation—and hello to your most beautiful skin! Developed with plastic surgeons, your innovative problem solver is designed to help cover and improve the look of skin concerns including redness, pores, dark spots, breakouts, lines and wrinkles—all while protecting your skin with SPF 50+ broad-spectrum physical sunscreen. ',
      mainImg: 'images/39.jpg',
      idCategory: 'sunScreen',
      img: 'images/38.jpg'),
  Cosmetics(
      id: 1,
      name: 'Bye Bye Foundation Oil-Free ',
      brief: 'IT’S YOUR FULL COVERAGE MOISTURIZER—NOW IN HYDRATING MATTE!',
      info:
          'Bye Bye Foundation Oil-Free Matte is your life-changing full coverage moisturizer that gives you the power to say “bye bye” to traditional foundation and hello to your most beautiful skin—now in a matte finish! Perfect for all skin types and ideal for oily skin, your innovative problem solver is designed to help cover and improve the look of skin concerns including redness, pores, dark spots, breakouts, lines and wrinkles—all while protecting your skin with SPF 50+ broad-spectrum physical sunscreen. You won’t have to wear matte foundation again!',
      mainImg: 'images/41.jpg',
      idCategory: 'sunScreen',
      img: 'images/40.jpg'),
  Cosmetics(
      id: 1,
      name: 'Anti-Aging Armour Tinted Sunscreen SPF 50+',
      brief: 'IT STOPS TIME AND TRANSFORMS YOUR SKIN’S FUTURE!',
      info:
          ' Developed with leading plastic surgeons, this innovative formula is your complexion perfection and sun protection in just one step! The proprietary Anti-Aging Armour Rejuvenating Concentrate™ instantly gives your skin a boost of clinically tested hydration, while SPF 50+ broad-spectrum physical sunscreen protects against UVA and UVB rays, helping to prevent collagen damage and hyperpigmentation.',
      mainImg: 'images/42.jpg',
      idCategory: 'sunScreen',
      img: 'images/42.jpg'),
];
