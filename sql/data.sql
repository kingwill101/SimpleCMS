USE
SimpleCMS;
GO


BEGIN TRAN
EXEC dbo.create_option @Name = ''admin.email'', @Value = ''glenfordwilliams@gmail.com'';
EXEC dbo.create_option ''site.title'', ''Blog made Simple'';
EXEC dbo.create_option ''site.copyright'', N''kingtech
👌 Media 2022
'';

EXEC dbo.create_category ''Uncategorized'', ''Post without a category'';
EXEC dbo.create_category ''Climate Change'', ''Lets talk about climate change'';
EXEC dbo.create_category ''Editorial'', ''From our readers'';
EXEC dbo.create_category ''Technology'', ''From our readers'';
EXEC dbo.create_category ''Microsoft'', ''All about Microsoft'';
EXEC dbo.create_category ''Google'', ''All about Google'';

EXEC dbo.create_user ''Glenford'', ''Williams'', ''glen@kingtechmedia.com'', ''supersecret'', ''kingtech'', 1;
EXEC dbo.create_user ''Michael'', ''Bay'', ''michaelbay@kingtechmedia.com'', ''supersecret'', ''michael'', 2;
EXEC dbo.create_user ''Romaine'', ''Ward'', ''ward@kingtechmedia.com'', ''supersecret'', ''rward'', 3;
EXEC dbo.create_user ''Everod'', ''Chung'', ''echung@kingtechmedia.com'', ''supersecret'', ''echung'', 4;

EXEC dbo.create_post 1,
     "Clean energy firm Husk signs UN energy compact as it begins solar mini-grid expansion in Nigeria, rest of Africa", N''"<div class=""content-wrap"">
    <div class=""content"">
    <div class=""feature-island"">&nbsp;</div>
    </div>
    </div>
    <div class=""content-wrap "">
    <div class=""content"">
    <div class=""river river--homepage "">
    <article class=""article-container article--post article--completing"">
    <div>
    <div class=""article__content-wrap""><header class=""article__header"">
    <div class=""article__byline-wrapper"">
    <div class=""container__access-control"">
    <div class=""article__action-links"">
    <div class=""article__action-links__comments""><img class=""article__featured-image article__featured-image--block"" src=""https://techcrunch.com/wp-content/uploads/2021/10/GettyImages-1316382951.jpg?w=730&amp;crop=1"" sizes=""(max-width: 730px) 100vw, (max-width: 1600px) 75vw, 1390px"" srcset=""https://techcrunch.com/wp-content/uploads/2021/10/GettyImages-1316382951.jpg?w=400&amp;crop=1 400w, https://techcrunch.com/wp-content/uploads/2021/10/GettyImages-1316382951.jpg?w=730&amp;crop=1 730w, https://techcrunch.com/wp-content/uploads/2021/10/GettyImages-1316382951.jpg?w=990&amp;crop=1 990w, https://techcrunch.com/wp-content/uploads/2021/10/GettyImages-1316382951.jpg?w=1390&amp;crop=1 1390w"" alt=""engineer working on checking equipment in solar power plant on the roof, Solar energy technology concept  and The energy concept of the universe and galaxies"" /></div>
    </div>
    </div>
    </div>
    </header></div>
    <div class=""article__content-wrap"">
    <div class=""image-credits"">
    <p><strong>Image Credits:&nbsp;</strong><a href=""https://www.gettyimages.com/search/photographer?family=creative&amp;photographer=Pramote+Polyamate"" target=""_blank"" rel=""noopener"">Pramote Polyamate&nbsp;<span class=""screen-reader-text"">(opens in a new window)</span></a>/&nbsp;Getty Images</p>
    </div>
    <div class=""article-content"">
    <p id=""speakable-summary""><a href=""https://huskpowersystems.com/"">Husk Power Systems</a>, a clean energy company that has been at the forefront of fueling rural electrification since 2008, is planning to launch 500 solar mini-grids in Nigeria over the next five years.</p>
    <p>The renewable energy firm revealed the plans today when it announced the signing of a voluntary commitment with the United Nations to grow its energy market in sub-Saharan Africa and South Asia. The commitment is contained under the 24/7 Carbon-free Energy Compact, by leading energy buyers, suppliers, equipment manufacturers and governments. The compact represents a global effort to accelerate the uptake of carbon-free electricity as a way of averting the perilous effects of climate change.</p>
    <p>The startup currently has operations in Nigeria, Tanzania and India (Uttar Pradesh and Bihar), where it has the ambitious goal of installing at least 5,000 mini-grids by 2030 and in the process make 1 million connections &ndash; half of which will be micro, small and medium-sized enterprises. Husk launched its first six mini-grids in Nigeria November last year, and it&rsquo;s looking to have 100 mini-grids operational in the country within two years.</p>
    <div id=""tc-target-mid-article-2262386"" class=""tc-target-mid-article ad-unit--size-auto""></div>
    <p>&ldquo;Husk is committed to powering households, but our focus is first and foremost on micro, small and medium enterprises (MSMEs), and public institutions like health clinics and schools. MSMEs are the engine of economies in Africa, and powering existing small businesses and encouraging the formation of new MSMEs helps create the type of economic growth and social benefit that carries over to households by creating more opportunity and more jobs,&rdquo; the company&rsquo;s CEO and co-founder Manoj Sinha, told TechCrunch.</p>
    <div id=""attachment_2262389"" class=""wp-caption alignnone""><img class=""size-full wp-image-2262389"" src=""https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg"" sizes=""(max-width: 1024px) 100vw, 1024px"" srcset=""https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg 3992w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=150,84 150w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=300,168 300w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=768,431 768w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=680,382 680w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=1536,863 1536w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=2048,1150 2048w, https://techcrunch.com/wp-content/uploads/2022/01/Rukubi-aerial.jpg?resize=50,28 50w"" alt="""" width=""1024"" height=""575"" loading=""lazy"" aria-describedby=""caption-attachment-2262389"" />
    <p id=""caption-attachment-2262389"" class=""wp-caption-text"">The renewable energy firm is planning to launch 500 mini-grids in Nigeria in a period of five years, and is eyeing the rest of Africa for expansion.<strong>&nbsp;Image Credits:</strong>&nbsp;Husk Power Systems</p>
    </div>
    <p>The firm is now exploring growth opportunities in the western, southern and eastern regions of Africa, while prioritizing the countries that have a &ldquo;supportive regulatory environment&rdquo; like its current markets. In Nigeria, for example, mini-grid operators are &ldquo;largely free of permit requirements for either standalone off-grid mini-grids or interconnected mini-grids.&rdquo;</p>
    <p>The Nigerian Electricity Regulatory Commission Mini-Grid Regulation (2016) stipulates the transfer of assets and financial compensation for mini-grid operators in cases where the national grid finally connects the regions where private mini-grids are operational.</p>
    <div class=""piano-inline-promo"">&nbsp;</div>
    <p>Husk is one of the companies participating in the Nigeria Electrification Project, which provides performance-based grants, a sort of capital subsidy, to mini-grid developers &mdash; part of the national effort to solve the&nbsp;<a href=""https://theconversation.com/what-nigerias-poor-power-supply-really-costs-and-how-a-hybrid-system-could-work-for-business-144609"">country&rsquo;s chronic power supply issues</a>.</p>
    <p>&ldquo;In terms of policy frameworks and regulation, the states where Husk works in India (Uttar Pradesh and Bihar) have supportive policies. And the Nigerian mini-grid policy is actually based on those policies, with additional improvements. As a result, Nigeria is seen to have the most conducive policy in sub-Saharan Africa at the moment, which also includes their Nigeria Electrification Project (NEP), a program administered by the Rural Electrification Agency and funded by the World Bank to provide a capital subsidy to mini-grid developers and accelerate market development,&rdquo; said Sinha.</p>
    <div id=""attachment_2262387"" class=""wp-caption alignnone""><img class=""size-full wp-image-2262387"" src=""https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg"" sizes=""(max-width: 1024px) 100vw, 1024px"" srcset=""https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg 5184w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=150,100 150w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=300,200 300w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=768,512 768w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=680,453 680w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=1536,1024 1536w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=2048,1365 2048w, https://techcrunch.com/wp-content/uploads/2022/01/Field-engineer.jpg?resize=50,33 50w"" alt="""" width=""1024"" height=""683"" loading=""lazy"" aria-describedby=""caption-attachment-2262387"" />
    <p id=""caption-attachment-2262387"" class=""wp-caption-text"">The company plans to have additional technological and business model innovations, and the use of AI and IoT to remotely manage its fleet.<strong>&nbsp;Image Credits:</strong>&nbsp;Husk Power Systems</p>
    </div>
    <p>Nigeria and India are the company&rsquo;s biggest markets at the moment. A supportive environment encourages investments from private players like Husk, and bridges the energy needs of households and small businesses, especially in rural areas.</p>
    <p>Potential markets for Husk include Kenya, which at the start of this month, recognized mini-grid power systems granting them 50% tax allowance and other tax incentives enjoyed by large-scale generators.</p>
    <p>&ldquo;We welcome the Energy Compact commitments made by Husk Power and appreciate their leadership. It showcases the business opportunity presented by the global energy transition, and how private enterprises can drive accelerated action on ending energy poverty, expand renewable energy solutions for consumptive and productive load, and improve the adoption of energy efficiency solutions by end consumers,&rdquo; said UN Energy programme manager, Kanika Chawla.</p>
    <p>According to the&nbsp;<a href=""https://www.worldbank.org/en/topic/energy/publication/mini-grids-for-half-a-billion-people"">World Bank</a>, mini-grids have the potential to provide half a billion people with clean energy by the end of this decade (including those using overburdened grids) with the right policies in place. They also provide cleaner and cheaper alternatives of energy, which could transform the lives of millions of people living in darkness.</p>
    <p><a href=""https://www.brookings.edu/blog/africa-in-focus/2021/06/18/figure-of-the-week-increasing-access-to-electricity-in-sub-saharan-africa/"">Sub-Saharan Africa accounts for 75% of the world&rsquo;s population</a>&nbsp;with no access to renewable energy solutions and electricity. Countries like South Sudan, Burundi, Chad, Malawi, Burkina Faso, Madagascar, Tanzania are among some of the least electrified countries in the world, and could benefit from clean energy from solar or wind.</p>
    <p>&ldquo;For off-grid communities, where diesel generation is the default source of electricity, the savings to our customers are significant. Businesses can expect about a 30% reduction in their monthly energy costs by switching from diesel to solar mini-grid electricity.&rdquo;</p>
    <p>Husk has to date raised $40 million from investors, including the&nbsp;<a href=""https://techcrunch.com/2022/01/14/shell-founded-startup-fund-receives-13-million-from-canadian-dfi-to-accelerate-clean-energy-access-in-africa/"">Shell</a>&nbsp;energy company and the Dutch Development bank FMO. The startup, which also provides financing for household and commercial appliances, was recognized last year&nbsp;<a href=""https://www.ren21.net/wp-content/uploads/2019/05/GSR2021_Full_Report.pdf"">by the 2021 Renewables Global Status Report</a>&nbsp;as the only mini-grid developer with over 100 community sites in operation.<a href=""https://www.linkedin.com/shareArticle?mini=true&amp;url=https://tcrn.ch/3IFdifa&amp;title=Clean%20energy%20firm%20Husk%20signs%20UN%20energy%20compact%20as%20it%20begins%20solar%20mini-grid%20expansion%20in%20Nigeria%2C%20rest%20of%20Africa&amp;summary=Husk%20Power%20Systems%2C%20a%20clean%20energy%20company%20that%20has%20been%20at%20the%20forefront%20of%20fueling%20rural%20electrification%20since%202008%2C%20is%20planning%20to%20launch%20500%20solar%20mini-grids%20in%20Nigeria%20over%20the%20next%20five%20years.%20The%20renewable%20energy%20firm%20revealed%20the%20plans%20today%20when%20it%20announced%20the%20signing%20of%20a%20voluntary%20commitment%20with%20the%20United%20Nations%20to%20%5B%26hellip%3B%5D%0A&amp;source=TechCrunch"" target=""_blank"" rel=""noopener"" aria-label=""Share on LinkedIn""><span class=""screen-reader-text""><br /></span></a></p>
    </div>
    </div>
    </div>
    </article>
    </div>
    </div>
    </div>";
''

EXEC dbo.create_post 1, N''Baidu
’s electric car brand Jidu closes $400M Series A round'', N''<p><img class=""article__featured-image article__featured-image--block"" src=""https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=730&amp;crop=1"" sizes=""(max-width: 730px) 100vw, (max-width: 1600px) 75vw, 1390px"" srcset=""https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=400&amp;crop=1 400w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=730&amp;crop=1 730w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=990&amp;crop=1 990w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=1390&amp;crop=1 1390w"" alt=""jidu baidu"" /></p>
    <div class=""image-credits"">
    <p><strong>Image Credits:&nbsp;
</strong>Teaser of Jidu/s concept robocar</p>
    </div>
    <div class=""article-content"">
    <p id=""speakable-summary"">Once an industry with long development cycles, the automotive space is being upended by China&rsquo;s
tech giants. One can hardly keep up with all the new electric vehicle brands that come out of the country nowadays. Jidu, an electric carmaking company founded by Baidu and its Chinese auto partner Geely&nbsp;
<a href=""https://techcrunch.com/2021/01/10/baidu-electric-car-making/"" target=""_blank"" rel=""noopener"">only a year ago</a>,&nbsp;
<a href=""https://mp.weixin.qq.com/s/vKWptyDilbcNO46bu6AQfA"" target=""_blank"" rel=""noopener"">said</a>&nbsp;Wednesday
it has banked nearly $400 million in a Series A funding round.</p>
    <p>The new injection, bankrolled by Baidu and Geely, which owns Volvo, is a boost to the $300 million initiation capital that Jidu closed last March. The proceeds will speed up Jidu&rsquo;s
R&amp;D
and mass production process and allow it to showcase its first concept &ldquo;robocar
&rdquo;
&mdash; which
it classifies as an automotive robot rather than a car &mdash;
at the Beijing auto show in April. The mass-produced version of the robocar will launch in 2023.</p>
    <p>Jidu&rsquo;s
chief executive<a href=""https://www.britishcouncil.cn/en/alumni/alumniawards2019/xyp"" target=""_blank"" rel=""noopener"">&nbsp;Xia
Yiping</a>&nbsp;previously
headed the connected car unit of Fiat Chrysler in the APAC region and co-founded Mobike, the Chinese bike-sharing pioneer&nbsp;
<a href=""https://techcrunch.com/2018/04/03/chinese-bike-sharing-pioneer-mobike-sold-to-ambitious-meituan-dianping-for-2-7b/"" target=""_blank"" rel=""noopener"">acquired by Meituan</a>&nbsp;
in 2018.</p>
    <div id=""tc-target-mid-article-2262365
"" class=""tc-target-mid-article ad-unit--size-auto""></div>
    <p>The rate at which Jidu has moved forward is remarkable but could easily attract skeptics who question its tech&rsquo;s
viability. The speedy cycle, the carmaker&nbsp;
<a href=""https://mp.weixin.qq.com/s/3RuGFwiNEwoL2N-oJtDJEg"" target=""_blank"" rel=""noopener"">explained</a>, is thanks to its strategy of using a simulated prototype car to develop its smart cockpit and autonomous driving systems, rather than testing individual hardware parts in a mass-produced vehicle.</p>
    <p>The carmaker said in as short as nine months, it has &ldquo;tested
and proven&rdquo; the
safety and reliability of its Level 4 (autonomous driving without human interaction in most circumstances) capabilities for urban and highway roads.</p>
    <p>The EV startup is also putting a big emphasis on branding and fan community, something&nbsp;
<a href=""https://techcrunch.com/2021/11/09/nio-global-expansion/"" target=""_blank"" rel=""noopener"">its competitor Nio is known for.</a>&nbsp;
In December, it&nbsp;
<a href=""https://mp.weixin.qq.com/s/vKWptyDilbcNO46bu6AQfA"" target=""_blank"" rel=""noopener"">started recruiting</a>&nbsp;car
lovers to join its &ldquo;Jidu Union
&rdquo;
to geek out about cars at online and offline events.</p>
    <p>Moving forward, Jidu will be hiring and training talent specializing in autonomous driving, smart cockpits, smart manufacturing and other related technologies.</p>
    </div>, '';

EXEC dbo.create_post 1, ''Resilience raises $45 million for its cancer care startup'', N''"<p><img class=""article__featured-image article__featured-image--block"" src=""https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=730&amp;crop=1"" sizes=""(max-width: 730px) 100vw, (max-width: 1600px) 75vw, 1390px"" srcset=""https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=400&amp;crop=1 400w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=730&amp;crop=1 730w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=990&amp;crop=1 990w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=1390&amp;crop=1 1390w"" alt=""Resilience &amp;#8211; Team"" /></p>
<div class=""image-credits"">
<p><strong>Image Credits:&nbsp;
</strong>Resilience</p>
</div>
<div class=""article-content"">
<p id=""speakable-summary"">French startup&nbsp;<a href=""https://www.resilience.care/"">Resilience</a>&nbsp;
announced yesterday that it has raised a $45 million (&euro;40 million) Series A round led by Cathay Innovation. The startup wants to improve the treatment journey when you&rsquo;
re diagnosed with cancer so that you live a healthier and longer life.</p>
    <p> In addition to Cathay Innovation, existing investor Singular is also participating.Other funds are joining the round, such as Exor Seeds, Picus Capital and Seaya Ventures.Finally some healthcare investors are rounding up the round &mdash;
Fondation Sant&eacute;
Service, MACSF, Ramsay Sant&eacute;
and Vivalto Ventures.</p>
<p>I already profiled Resilience in March 2021 so I encourage you to&nbsp;
<a href=""
https://techcrunch.com/2021/03/16/resilience-is-an-ambitious-bet-to-improve-cancer-treatment/"">read my previous article</a>&nbsp;
to learn more about the company. Co-founded by two serial entrepreneurs, C&eacute;
line Lazorthes and Jonathan Benhamou, the company wants to help both patients and caregivers when it comes to cancer care.</p>
<div id=""tc-target-mid-article-2262124"" class=""tc-target-mid-article ad-unit--size-auto""></div>
<div class=""embed breakout"">
<p>&nbsp;
</p>
</div>
<p>On the patient side, Resilience helps you measure, understand and deal
with the effects and side effects of cancer and cancer treatments. Users can track various data points in the app and find content and information about their illness.</p>
<p>But Resilience isn&rsquo;
t just an app that you
use at home. It is also a software-as-a-service solution for hospitals so that they can better personalize their treatments. Resilience has been founded in partnership
with Gustave Roussy, one of the leading cancer research institutes in the world.</p>
<p>Practitioners will be able to take advantage of all the data that patients have gathered from the app. This way, cancer treatment facilities understand the patient better and can adapt their care more quickly. Resilience has acquired&nbsp;
<a href=""
https://en.betterise-healthtech.com/"">Betterise</a>&nbsp;
to gain a head start when it comes to data-driven cancer care.</p>
<p>The long-term vision is even more ambitious than that. If you talk
with a caregiver working for a cancer treatment facility, they&rsquo;
ll tell you they never have enough time.</p>
<p>And it&rsquo;
s even more difficult to keep track of new treatments that are becoming more and more specialized. Resilience doesn&rsquo;
t want to replace doctors. But it wants to help them overcome blindspots.</p>
<p>The result should be better care for patients, as well as more support through the Resilience app. Cancer care is a long and painful process, so anything that can improve this process is a good thing.</p>
</div>",1,draft,2022-01-26 11:06:03.243,2022-01-26 11:06:03.243
5,1,"Google abandons FLoC, introduces Topics API to replace tracking cookies","
Illustration by Alex Castro / The Verge
Google is walking back plans to replace third-party cookies
with FLoC by instead proposing the Topics API, a new system for interest-based advertising. Topics works by pinpointing five of your interests, such as
          “Fitness
          ” or
          “Travel & Transportation,
          ” based on your web activity, as measured by participating sites, for one week.


Your browser will store these topics for three weeks before deleting them. Google says that these categories
          “are selected entirely on your device
          ” and don
          ’t involve
          “any external servers, including Google servers.
          ” When you visit a website, Topics will show the site and its advertising partners just three of your interests, consisting of
          “one topic from each of the past three weeks.
          ”

As noted on the Topics API GitHub page, there are currently about 350 available topics in its advertising taxonomy (although Google plans on adding anywhere from
          “a few hundred
          ” to
          “a few thousand
          ” eventually). Google says Topics won
          ’t include any
          “sensitive categories
          ” like race or gender. And
if you’re using Chrome, the company is building tools to let you view and
    delete topics, as well as turn off the feature.
        Cookies (left) compared to Topics (right), which Google says will be easier to manage and understand.Image by Google
        Google’ s running out of time to
    replace
    third
    -
    party
    cookies
    in
    Chrome
    by
    2023
    ,
    as
    promised
    .
    The
    company
    plans
    on launching a developer trial for Topics in Chrome, but there’s no information on when exactly that will
begin
    .

    “Browsers have traditionally worked only for the users — remember how great it was when they all started blocking pop-up ads?” John Bergmayer, the legal director at Public Knowledge, a nonprofit that promotes an
    open internet, points out. “Google’s concepts on this topic seem to flip that.”

Google’s previous replacement for third-party cookies, FLoC (or Federated Learning of Cohorts), is a form of interest-based tracking that identifies you based on your “cohort,” or a group of people that share similar interests.

PRIVACY CRITICS SAID FLOC CAN MAKE IT EASIER FOR ADVERTISERS TO IDENTIFY YOU
Privacy critics, like the Electronic Frontier Foundation (EFF), argued the system poses additional privacy risks, such as making it easier for advertisers to identify you
    with browser fingerprinting, a tool used by sites to gain specific information about your device and browser, and may also expose information about your demographics, potentially resulting in discriminatory targeted ads. Due to these concerns, browsers like Brave, Vivaldi, Edge, and Mozilla have all refused to
    use it.
        “It definitely improves on FLoC in some important ways,” Bennett Cyphers, a staff technologist at EFF told The Verge. “Being less scary than FLoC doesn’t mean it’s ‘good.’ It will tell third-party trackers about what kind of sites you browse, and it could help websites and advertisers ID you across devices.”

But Google’s idea of assigning topics to users isn’t exactly new. As EFF points out, Google’s Privacy Sandbox weighed the idea of PIGIN in 2019, otherwise known as “Private Interest Including Noise.” Like Topics, it would work by sharing a list of interests
    with advertisers, but as Cyphers of EFF explained at the time, it could still “provide trackers
    with a massive new stream of information they could use to build or augment their own user profiles.” A recent
    update says a newer version of that approach, under the name FLEDGE, is in early testing
    on Chrome and Chrome Canary.Google will share more details on that plan and “measurement technical proposals” later this week.

Update January 25th 2
    :45 PM ET: Updated to add a statement from Bennett Cyphers, a staff technologist at EFF.",1,draft,2022-01-26 11:45:10.353,2022-01-26 11:45:10.353
6,1,"Google abandons FLoC, introduces Topics API to replace tracking cookies","<article class=""l-segment l-main-content"">
<div class=""l-sidebar-fixed l-segment l-article-body-segment"">
<div class=""l-col__main"">
<figure class=""e-image e-image--hero""><span class=""e-image__inner""> <span class=""e-image__image "" data-original=""https://cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg""> <picture class=""c-picture"" data-cid=""site/picture_element-1643195909_5406_329131"" data-cdata=""{&quot;image_id&quot;:70429956,&quot;ratio&quot;:&quot;*&quot;}""> <source srcset=""https://cdn.vox-cdn.com/thumbor/wKfQVtg2R9KkUfEKBnLTZ1xrnnU=/0x0:2040x1360/320x213/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 320w, https://cdn.vox-cdn.com/thumbor/_JpjXe0L0wdRLbCu--QZfKGngPw=/0x0:2040x1360/620x413/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 620w, https://cdn.vox-cdn.com/thumbor/8fRYYQ6bnWWeTtCi8tUzxblwSMQ=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 920w, https://cdn.vox-cdn.com/thumbor/XHRaiJv21jPwWGEVPWBHfre2UQA=/0x0:2040x1360/1220x813/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1220w, https://cdn.vox-cdn.com/thumbor/5h8F7JV6T_s7xytQuUftmL7F4RU=/0x0:2040x1360/1520x1013/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1520w, https://cdn.vox-cdn.com/thumbor/x-3SWMkqfoYVp_cK7gyhYgjbGc0=/0x0:2040x1360/1820x1213/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1820w, https://cdn.vox-cdn.com/thumbor/qVmhMCgaGB1pd-Rez0_JzhclKKQ=/0x0:2040x1360/2120x1413/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 2120w, https://cdn.vox-cdn.com/thumbor/YsRFV2JkALRtwtIhv1zSLhlh9II=/0x0:2040x1360/2420x1613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 2420w"" type=""image/webp"" sizes=""(min-width: 1221px) 846px, (min-width: 880px) calc(100vw - 334px), 100vw"" /> <img src=""https://cdn.vox-cdn.com/thumbor/Oa2TdcSrPoiRmihqXscEHJnU_zE=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg"" sizes=""(min-width: 1221px) 846px, (min-width: 880px) calc(100vw - 334px), 100vw"" srcset=""https://cdn.vox-cdn.com/thumbor/Y4JRmZcG2XG22Ud_A0Vt5uVulkc=/0x0:2040x1360/320x213/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 320w, https://cdn.vox-cdn.com/thumbor/xCIUiLftfSx_wGgizBChYMwgXt4=/0x0:2040x1360/620x413/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 620w, https://cdn.vox-cdn.com/thumbor/mla3T5K-jBt8tqxUKrC_hdNqR5o=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 920w, https://cdn.vox-cdn.com/thumbor/L_4_Eob9X99McPdwKE7RdJY-WW0=/0x0:2040x1360/1220x813/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1220w, https://cdn.vox-cdn.com/thumbor/5c0emk3xO7CNqWzEmv4xbzSmRQA=/0x0:2040x1360/1520x1013/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1520w, https://cdn.vox-cdn.com/thumbor/fLSatqRDROdprG4fvDeo9vdo0Hw=/0x0:2040x1360/1820x1213/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 1820w, https://cdn.vox-cdn.com/thumbor/cErJcehTalFABzu1Ugp4onfuQsk=/0x0:2040x1360/2120x1413/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 2120w, https://cdn.vox-cdn.com/thumbor/vlEM9bO2tJ2sYH-JLC7uOs8_A1s=/0x0:2040x1360/2420x1613/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/70429956/acastro_180427_1777_0001.0.jpg 2420w"" alt="""" data-upload-width=""2040"" /> </picture> </span> </span> <span class=""e-image__meta""> <cite>Illustration by Alex Castro / The Verge</cite> </span></figure>
<div class=""remixd-wrapper"">
<div class=""c-remixd-integration-standard remixd"" data-concert-ads-name=""remixd"">
<div id=""remixd-audio-player"" class="""">
<div class=""remixd-audio-player"" style=""position: relative;"">&nbsp;</div>
</div>
</div>
</div>
<div class=""c-entry-content "">
<p id=""f99TfT""><a href=""https://blog.google/products/chrome/get-know-new-topics-api-privacy-sandbox/"">Google is walking back plans</a> to replace third-party cookies
    with FLoC by instead proposing the Topics API, a new system for interest-based advertising. Topics works by pinpointing five of your interests, such as &ldquo;
    Fitness&rdquo; or &ldquo;Travel &amp; Transportation,&rdquo;
    based on your web activity, as measured by participating sites, for one week.</p>
<div id=""Kdksn6"">
<div style=""
    left: 0px; width: 100%; height: auto; position: relative; padding-bottom: 0px;
    "">
<div class=""p-scalable-video""><iframe src=""
    https://www.youtube.com/embed/I9jzqbdxAdk?rel=0"" scrolling=""no"" allowfullscreen=""allowfullscreen""></iframe></div>
</div>
</div>
<p id=""Yin65l"">Your browser will store these topics for three weeks before deleting them. Google says that these categories &ldquo;
    are selected entirely on your device&rdquo; and don&rsquo;t involve &ldquo;
    any external servers, including Google servers.&rdquo;
    When you visit a website, Topics will show the site and its advertising partners just three of your interests, consisting of &ldquo;
    one topic from each of the past three weeks.&rdquo;</p>
<p id=""wx5rye"">As noted on the <a href=""
    https://github.com/jkarlin/topics"">Topics API GitHub</a> page, there are currently about 350 available topics in its advertising taxonomy (although Google plans on adding anywhere from &ldquo;a few hundred&rdquo; to &ldquo;a few thousand&rdquo; eventually). Google says Topics won&rsquo;
    t include any &ldquo;sensitive categories&rdquo; like race or gender. And if you & rsquo;
    re using Chrome, the company is building tools to let you view and
    delete topics, as well as turn off the feature.</p>
        <div class="" m -ad m -ad__dynamic_ad_unit mb -3 m -ad__desktop_article_body_failsafe "" data -concert-ads- name ="" desktop_article_body_failsafe "">
        <div id="" div-gpt-ad-desktop_article_body_failsafe "" class="" dynamic -js-slot ""></div>
        </div>
        <figure class="" e- image ""><span class="" e-image__inner ""> <span class="" e-image__image "" data -original=""
    https://cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg""> <picture class=""c-picture"" data-cid=""site/picture_element-1643195909_28_329132"" data-cdata=""{&quot;
    asset_id&quot;:23193572,&quot;ratio&quot;:&quot;*&quot;}""> <source srcset=""https://cdn.vox-cdn.com/thumbor/7WgOCEKOiBra32rgY5u9nv-7Csc=/0x0
    :1000x551/320x0/filters:focal(0x0:1000x551):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 320w,
    https://cdn.vox-cdn.com/thumbor/z8_q_5hJy-2ysskMObsAdRmGIhg=/0x0:1000x551/520x0/filters:focal(0x0:1000x551):format(webp)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 520w, https://cdn.vox-cdn.com/thumbor/Wkn3R2AqIoK7X6sotSwOliV7bJc=/0x0
    :1000x551/720x0/filters:focal(0x0:1000x551):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 720w,
    https://cdn.vox-cdn.com/thumbor/uVh91U9WszRRF-Wt6kq5tlw5JqE=/0x0:1000x551/920x0/filters:focal(0x0:1000x551):format(webp)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 920w, https://cdn.vox-cdn.com/thumbor/Fb4fYs_YUKT9k_xaNZSEtWbm2As=/0x0
    :1000x551/1120x0/filters:focal(0x0:1000x551):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1120w,
    https://cdn.vox-cdn.com/thumbor/NSbIQeaLUtSrDP7kRsih_MDwGE4=/0x0:1000x551/1320x0/filters:focal(0x0:1000x551):format(webp)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1320w, https://cdn.vox-cdn.com/thumbor/nYE5O_2aWoRsK62vI6qgg_Cv_S8=/0x0
    :1000x551/1520x0/filters:focal(0x0:1000x551):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1520w,
    https://cdn.vox-cdn.com/thumbor/T9DM-_0dRYh20SUL7Cz2AHZQmbk=/0x0:1000x551/1720x0/filters:focal(0x0:1000x551):format(webp)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1720w, https://cdn.vox-cdn.com/thumbor/aAONYhNMpjlDm4tcAc8zNfuOa6I=/0x0
    :1000x551/1920x0/filters:focal(0x0:1000x551):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1920w"" type=""image/webp"" sizes=""(min-width: 1221px) 846px, (min-width: 880px) calc(100vw - 334px), 100vw"" /> <img src=""
    https://cdn.vox-cdn.com/thumbor/oeW2kYxFti6XV3bqxCTzVKquQcE=/0x0:1000x551/1200x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg"" sizes=""(min-width: 1221px) 846px, (min-width: 880px) calc(100vw - 334px), 100vw"" srcset=""
    https://cdn.vox-cdn.com/thumbor/QFMMBrlKwJAZTK4ZIFhf1Lj8YQs=/0x0:1000x551/320x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 320w, https://cdn.vox-cdn.com/thumbor/QcClLPmT-7FNh76jzsRCw0ZYOsA=/0x0
    :1000x551/520x0/filters:focal(0x0:1000x551):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 520w,
    https://cdn.vox-cdn.com/thumbor/EZGVHF6vAYPs6ykaupUCKVoiHN4=/0x0:1000x551/720x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 720w, https://cdn.vox-cdn.com/thumbor/YLcYpuE0Hj5jE6TdtY3OqegDciQ=/0x0
    :1000x551/920x0/filters:focal(0x0:1000x551):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 920w,
    https://cdn.vox-cdn.com/thumbor/vrRNLLni1f2pZebs51Ggf7TkYJs=/0x0:1000x551/1120x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1120w, https://cdn.vox-cdn.com/thumbor/Jtixbfl1l7ZOus60A598V-DD4K8=/0x0
    :1000x551/1320x0/filters:focal(0x0:1000x551):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1320w,
    https://cdn.vox-cdn.com/thumbor/zgZivoloZV6DGmRmk4R1XIZHPRU=/0x0:1000x551/1520x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1520w, https://cdn.vox-cdn.com/thumbor/yN5vRwPHc5QPhZY-ar4IU7nZjeI=/0x0
    :1000x551/1720x0/filters:focal(0x0:1000x551):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1720w,
    https://cdn.vox-cdn.com/thumbor/4K4I4m0ipsoALVGJS_AqRkE9UFA=/0x0:1000x551/1920x0/filters:focal(0x0:1000x551)
    :no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/23193572/google_topics_api.jpeg 1920w"" alt="""" data-upload-width=""1000"" /> </picture> </span> </span>
<figcaption><em>Cookies (left) compared to Topics (right), which Google says will be easier to manage and understand.</em></figcaption>
<span class=""e-image__meta""><cite>Image by Google</cite> </span></figure>
<p id=""A5mAME"">Google&rsquo;
    s running out of time to <a href=""
    https://www.theverge.com/2021/6/24/22547339/google-chrome-cookiepocalypse-delayed-2023"">replace third-party cookies in Chrome by 2023</a>, as promised. The company plans on launching a developer trial for Topics in Chrome, but there&rsquo;
    s no information on when exactly that will
    begin
        .</p>
<p id=""pp8rsY"">&ldquo;Browsers have traditionally worked only for the users &mdash;
        remember how great it was when they all started blocking pop-up ads?&rdquo;
        John Bergmayer, the legal director at Public Knowledge, a nonprofit that promotes an
        open internet, points out. &ldquo;Google&rsquo;s concepts on this topic seem to flip that.&rdquo;</p>
<p id=""w9hlNo"">Google&rsquo;
        s previous replacement for third-party cookies, FLoC (or Federated Learning of Cohorts), <a href=""
        https://www.theverge.com/2021/3/30/22358287/privacy-ads-google-chrome-floc-cookies-cookiepocalypse-finger-printing"">is a form of interest-based tracking</a> that identifies you based on your &ldquo;
        cohort,&rdquo;
        or a group of people that share similar interests.</p>
<div class=""c-float-right"">
<aside id=""x5QlhL""><q>Privacy critics said FLoC can make it easier for advertisers to identify you</q></aside>
</div>
<p id=""SWEBqc"">Privacy critics, like <a href=""
        https://www.eff.org/deeplinks/2021/03/googles-floc-terrible-idea"">the Electronic Frontier Foundation (EFF), argued the system poses additional privacy risks</a>, such as making it easier for advertisers to identify you
        with browser fingerprinting, a tool used by sites to gain specific information about your device and browser, and may also expose information about your demographics, potentially resulting in discriminatory targeted ads. Due to these concerns, <a href=""
        https://www.theverge.com/2021/4/16/22387492/google-floc-ad-tech-privacy-browsers-brave-vivaldi-edge-mozilla-chrome-safari"">browsers like Brave, Vivaldi, Edge, and Mozilla have all refused</a> to
        use it.</p>
<p id=""qgWNo0"">&ldquo;
        It definitely improves on FLoC in some important ways,&rdquo;
        Bennett Cyphers, a staff technologist at EFF told <em>The Verge</em>. &ldquo;
        Being less scary than FLoC doesn&rsquo;t mean it&rsquo;s &lsquo;good.&rsquo;
        It will tell third-party trackers about what kind of sites you browse, and it could help websites and advertisers ID you across devices.&rdquo;</p>
<p id=""VXIY8o"">But Google&rsquo;s idea of assigning topics to users isn&rsquo;
        t exactly new. As EFF points out, Google&rsquo;s Privacy Sandbox <a href=""https://www.eff.org/deeplinks/2019/08/dont-play-googles-privacy-sandbox-1"">weighed the idea of PIGIN in 2019</a>, otherwise known as <a href=""
        https://github.com/michaelkleber/pigin"">&ldquo;
        Private Interest Including Noise.&rdquo;</a> Like Topics, it would work by sharing a list of interests
        with advertisers, but as Cyphers of EFF explained at the time, it could still &ldquo;
        provide trackers with a massive new stream of information they could
        use to build or augment their own user profiles.&rdquo; A <a href=""https://developer.chrome.com/docs/privacy-sandbox/fledge/"">recent
        update </a> says a newer version of that approach, under the name FLEDGE, is in early testing
        on Chrome and Chrome Canary.Google will share more details on that plan and &ldquo;
        measurement technical proposals&rdquo;
        later this week.</p>
<p id=""glbSFT""><em><strong>
        Update January 25 th 2:45 PM ET:</strong></em><em> Updated to add a statement from Bennett Cyphers, a staff technologist at EFF.</em></p>
</div>
<div class=""connatix-article-desktop"" style=""display: none;
        "" data-concert-ads-name=""connatix-article-desktop"">
<div id=""connatix-article-desktop"" class=""""><iframe style=""
        display: none;
        ""></iframe></div>
</div>
<div class=""connatix-article"" data-concert-ads-name=""connatix-article"">
<div id=""connatix-article"" class=""""></div>
</div>
<div id=""formatter-datter"" class=""u-hidden-text"" data-cid=""site/entry_formatter-1643195909_7863_329133"" data-cdata=""{&quot;
        svg_hr_illustration&quot;:&quot;&quot;}""></div>
<section class=""c-nextclick"" data-cid=""apps/nextclick-1643195905_1259_360806"" data-cdata=""{&quot;
        dynamic_links&quot;
                :[{&quot;title&quot;:&quot;Fashion Nova first to be fined by FTC for blocking bad reviews&quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/25/22901435/ftc-fines-fashion-nova-allegedly-blocking-negative-customer-reviews&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;Fashion Nova first to be fined by FTC for blocking bad reviews&quot;},{&quot;title&quot;:&quot;The International Monetary Fund tells El Salvador it shouldn&rsquo;t use Bitcoin as legal tender &quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/25/22901374/el-salvador-bitcoin-international-monetary-fund-crypto&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;The International Monetary Fund tells El Salvador it shouldn&rsquo;t use Bitcoin as legal tender &quot;},{&quot;title&quot;:&quot;Here&rsquo;s how bad the chip shortage is, according to the White House&quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/25/22900987/chip-shortage-report-biden-commerce-secretary-raimondo&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;Here&rsquo;s how bad the chip shortage is, according to the White House&quot;},{&quot;title&quot;:&quot;NSO chairman steps down after domestic spying allegations in Israel&quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/25/22900706/nso-chairman-domestic-spying-allegations-israel-pegasus&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;NSO chairman steps down after domestic spying allegations in Israel&quot;},{&quot;title&quot;:&quot;Cracking a $2 million crypto wallet&quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/24/22898712/crypto-hardware-wallet-hacking-lost-bitcoin-ethereum-nft&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;Cracking a $2 million crypto wallet&quot;},{&quot;title&quot;:&quot;An OpenSea bug let attackers snatch Apes from owners at six-figure discounts&quot;,&quot;url&quot;:&quot;https://www.theverge.com/2022/1/24/22899125/opensea-bug-bored-ape-nfts-smart-contract-listings-cancellation&quot;,&quot;data-analytics-link&quot;:&quot;nextclicks&quot;,&quot;data-analytics-viewport&quot;:&quot;nextclicks&quot;,&quot;data-vars-analytics-link-title&quot;:&quot;An OpenSea bug let attackers snatch Apes from owners at six-figure discounts&quot;}],&quot;
        entry_id&quot;:22664608,&quot;experiment_id&quot;:&quot;exp_110&quot;,&quot;experiment_base_url&quot;:&quot;
        http://vox-datascience.s3.amazonaws.com/recommender/recs/&quot;}"">
<div class=""m-ad m-ad__dynamic_ad_unit m-ad__native_ad_module"" data-concert-ads-name=""native_ad_module"">
<div id=""div-gpt-ad-native_ad_module"" class=""dynamic-js-slot""></div>
</div>
<div class=""c-related-list"" data-cid=""site/related_list-1643195905_9838_360805"" data-cdata=""{}"">
<div>
<div class=""m-native_ad_unit dynamic-native-ad-native_ad_linkset_link"">&nbsp;</div>
</div>
</div>
</section>
</div>
</div>
<div class=""l-sidebar-fixed l-segment"">
<div id=""comments-sidebar"" class=""l-col__sidebar"" data-analytics-placement=""sidebar"">
<div class=""m-ad m-ad__dynamic_ad_unit m-ad__sticky m-ad__comments_medium_rectangle"" style=""position: sticky;
        top: 10px;
        "" data-concert-ads-name=""comments_medium_rectangle"">
<div id=""div-gpt-ad-comments_medium_rectangle"" class=""dynamic-js-slot dfp_ad--held-area"" style=""min-width: 300px; height: 250px;""></div>
</div>
</div>
</div>
</article>"'';

EXEC dbo.create_post 1, N''How I got an FBI record at age 11 from dabbling in cryptography then got into more trouble'', N''<p>&nbsp;
</p>
<p>Les Earnest &lt;les
<em>at</em> cs.stanford.edu&gt;
</p>
<p>&nbsp;
</p>
<p>Growing up in San Diego, my first encounter with advanced technology was the gift of a one-speed fat tired bicycle in 1937. The second one, acquired a short time later, was my own radio with mysteriously glowing vacuum tubes, which enabled me to listen to a series of 15 minute kids&rsquo; radio
programs every afternoon, such as &ldquo;Magic
&nbsp;Island
&rdquo;
and &ldquo;Jack
Armstrong, the All American Boy.&rdquo;
&nbsp;
</p>
<p>&nbsp;
</p>
<p>At some point the Jack Armstrong program invited listeners to mail in a&nbsp;Wheaties
&nbsp;box
top to get a decoder ring that could be used to decipher secret messages that would be given near the end of certain broadcasts.&nbsp;
&nbsp;I
sent for it as did Bobby Bond, my best friend through most of grammar school.&nbsp;
&nbsp;Bobby
was particularly intrigued with cryptography and in 1942 he bought a new book called&nbsp;
<em>Secret and Urgent</em>. Note that this was early in World War II.&nbsp;
&nbsp;We
both read&nbsp;it
and learned how to use letter frequencies to break ciphers, then went on to more advance topics.&nbsp;
</p>
<p>Fletcher Pratt, <em>Secret and Urgent</em>, Blue Ribbon Books; Garden
City, NY;
1942</p>
<p>&nbsp;
</p>
<p>Bobby and I decided that we needed to have a secure way to communicate with each other, so we put together a rather elaborate jargon code based on the principles described in the book. I don''''t remember exactly why we thought we needed it. We spent nearly every afternoon together so there was ample time to talk privately.&nbsp;
&nbsp;Still
, you never could tell when you might need to send a secret message!</p>
<p>&nbsp;
</p>
<p>We typed up the code key on single sheet of paper with a carbon copy and each carried one at all times.&nbsp;
&nbsp;I
had recently been given eyeglasses but didn''''t like to wear them, so I kept them in a hard case in the pocket of my trousers.&nbsp;
&nbsp;I
figured that this was a good place to keep my copy of the code key, so I carefully folded it to one-eighth of its original size and stuck it at the bottom of the case, under my glasses.</p>
<p>&nbsp;
</p>
<p>Every chance I got, I went body surfing at&nbsp;Old
&nbsp;Mission
&nbsp;Beach
and usually went by streetcar. On my way home from the beach one time the case carrying my glasses somehow slipped out of my pocket unnoticed. When I reported the loss to my mother that night, she called the streetcar company to see if it had been turned in.&nbsp;Unfortunately
it hadn''''t.</p>
<p>&nbsp;
</p>
<p>After a few weeks of waiting in vain for the glasses to turn up, we began to lose hope.&nbsp;
&nbsp;My
mother didn''''t rush to replace them in view of the fact that I hadn''''t worn them much and they cost about $8, a large sum at that time. (To me, $8 represented 40 round trips to the beach by streetcar, or 80 admission fees to the movies.)</p>
<p>&nbsp;
</p>
<p>Unknown to us, the case had been found by a patriotic citizen who opened it, discovered the code key, recognized that it must belong to a Japanese spy and turned it over to the FBI.&nbsp;
&nbsp;This
was just after local citizens of Japanese descent had been rounded up and taken away to concentration camps, though I was not aware of that at the time.&nbsp;
&nbsp;I
remember hearing that a local grocer was secretly a Colonel in the Japanese Army and had hidden his uniform in the back of his store. A lot of people actually believed such things.</p>
<p>&nbsp;
</p>
<p>About ten weeks later, my mother told me that she received a mysterious telephone call at work&ndash;
at that time she was Vice Principal at Roosevelt Junior High.&nbsp;
&nbsp;The
caller, who identified himself as an FBI agent, said, &ldquo;I
want an appointment with you at once.&rdquo;
&nbsp;
&nbsp;She
said, &ldquo;Come right
over to my office.&rdquo;
&nbsp;
&nbsp;
&ldquo;
No, we must see you in your home,&rdquo; was
the reply. She went home and waited for a substantial period.&nbsp;
&nbsp;I
happened to be off on another escapade, so I wasn''''t aware of all this.</p>
<p>&nbsp;
</p>
<p>Eventually a black limousine pulled up in front of the house. Two men sat in it reading notes&nbsp;
then&nbsp;eventually
came up the steps. As my mother let them in the living room, each rolled back his coat lapel to flash identification and said something like, &ldquo;I
''''m Joe Blow of the FBI.&rdquo;
&nbsp;
&nbsp;One
of them then threw my glasses on the coffee table and said, &ldquo;Have
you seen these before?&rdquo;
&nbsp;
&nbsp;My
mother replied, &ldquo;They
look like my son''''s glasses, which he lost awhile ago.&rdquo;
&nbsp;
&nbsp;
&ldquo;They
are your son''''s alright,&rdquo; said
one of them.</p>
<p>&nbsp;
</p>
<p>They wanted to know why there was a code sheet in the case with the glasses.&nbsp;
&nbsp;My
mother said we had been studying cryptography and that this was no doubt something that we had put together for fun. At first they refused to believe her, arguing that the code sheet could not have been compiled by kids, but after awhile, one of the two began to be a bit friendlier.</p>
<p>&nbsp;
</p>
<p>My mother told the investigators how glad she was to get the glasses back, considering that they cost $8. The sourpuss did a slow burn, then said &ldquo;Lady
, this case has cost the government thousands of dollars. It has been the top priority in our office for the last eight weeks. We traced the glasses to your son from the prescription by examining the files of all optometrists in the&nbsp;San
Diego&nbsp;area.
&rdquo;
&nbsp;
&nbsp;He
went on to say that they had been interviewing our friends and neighbors for several weeks.</p>
<p>&nbsp;
</p>
<p>The friendlier one eventually described how much it had cost to investigate another recent case where a person was reported to have pulled down an American flag and stepped on it.&nbsp;
&nbsp;
Only after the investigation was well under way did they learn that the perpetrator of this nefarious act was only four years old.</p>
<p>&nbsp;
</p>
<p>The tough agent apparently remained convinced to the
end that I really was a Japanese spy.&nbsp;
&nbsp;He
insisted on keeping code sheet &ldquo;
for our records.&rdquo;
&nbsp;
&nbsp;He
apparently wanted to be in a position to decode any of our secret communications if they should find any.</p>
<p>&nbsp;
</p>
<p>Since our coding scheme had been compromised, Bobby and I devised a new key.&nbsp;
&nbsp;I
started carrying it in my wallet, which I felt was more secure.&nbsp;
&nbsp;I
don''''t remember ever exchanging any coded messages but I was always ready.&nbsp;
&nbsp;I
didn&rsquo;t
expect anything more to come of our misadventure but we managed to get into more trouble.</p>
<p><strong>&nbsp;
</strong></p>
<p><strong>Postscript: Bobby and I got into more trouble</strong></p>
<p>Bobby&rsquo;s
dad was a medical doctor and at some point Bobby discovered a stack of preprinted forms for recording information about pregnant women. As an expression of wishful thinking we filled one out in the name of a cute 12-year-old girl who lived across the street from me and who everyone called &ldquo;Alabama
&rdquo; because
that was where she was from and because she spoke with a charming southern drawl.</p>
<p>&nbsp;
</p>
<p>After we left the form by her front door her parents somehow figured out who had done that and, when Bobby&rsquo;s
and my parents learned of this stunt they decreed that we would no longer play together. We followed that guidance for over 40 years.</p>
<p>&nbsp;
</p>
<p>A few years later, when I was in college, I ran into Alabama on a warm summer day at Old Mission Beach where I was body surfing. Not surprisingly she was sexier than ever, wearing a bikini bottom but Instead of a bra she had a scarf tied around her top. When I learned that she had come there by public transit I offered her a ride home even though she no longer lived in my neighborhood, which she accepted. We had a friendly chat at the beach and on the way to her home but I didn&rsquo;t
follow up by seeking a date, figuring that her parents likely still had a negative view of me.</p>
<p>&nbsp;
</p>
<p><strong>A slap on the wrist</strong></p>
<p>Around the same time, I got a summer job at the Naval Electronics Lab in San Diego working on the assessment of sonar and underwater passive listening systems. This involved going to sea on a round-bottomed boat that rocked a lot and, after I had chili for lunch the first day, I experienced substantial lossage. I also got to go out on a submarine, which was much cooler, though there was some consternation when I popped up on the conning tower without doing the protocol of asking permission. I noticed that our passive listening system, using microphones on tripods resting on the sea bottom, managed to detect the submarine just once, when it ran into the microphone and made a large &ldquo;thunk
&rdquo;
.</p>
<p>&nbsp;
</p>
<p>At some point they decided that I should have a security clearance and one of the questions on the single page application form was &ldquo;Have
you ever been investigated by the FBI?&rdquo; Naturally
, I checked &ldquo;Yes.
&rdquo; The
next question was, &ldquo;If
so, describe the circumstances.&rdquo; There
was very little space on the form, so I answered simply and honestly, &ldquo;I
was suspected of being a Japanese spy.&rdquo;
When I handed the form in to the security officer, he scanned it quickly, looked me over slowly, then said, &ldquo;Explain
this&rdquo;--pointing at the FBI question. I described what had happened.</p>
<p>&nbsp;
</p>
<p>He then got very agitated, picked up my form, tore it in pieces, and threw it in the waste basket, then handed me a blank form, saying &ldquo;Here
, fill it out again and don''''t mention that. If you do, I''''ll make sure that you&nbsp;
<em>never</em>&nbsp;get
a security clearance.&rdquo;
</p>
<p>&nbsp;
</p>
<p>I did as he directed, thus lying, and was shortly granted the clearance. I never again disclosed that incident on security clearance forms. However about twelve years later I learned by chance that putting slightly provocative information on a security clearance form can greatly speed up the clearance process. See my journal article, &ldquo;
<a href="http://www.stanford.edu/~learnest/les/mongrel.htm">Can computers cope with human races?</a>&rdquo;
</p>
<p>&nbsp;
</p>
<p><strong>Epilogue: Bobby and I start a new conspiracy</strong></p>
<p>In the early 1970s I was drawn into bicycle racing by my two sons and, after racing a bit, took up officiating, then became editor of the U.S. Cycling Federation Rulebook and began systematically proposing amendments to the racing rules. Most of my proposed rule changes were accepted without controversy but my proposal in the early 1980s to require that strong helmets be used while racing ran into a brick wall because it constituted a strong break with tradition. I had based that proposal on my observation that nearly all serious injuries or deaths incurred in races were the direct result of head injuries.</p>
<p>&nbsp;
</p>
<p>While looking around for support I came across an article in a national cycling magazine advocating the same thing, which was written by a Dr. Robert Bond. &nbsp;I
recalled hearing that my former friend had gone off to Stanford and had become an M.D., so I wondered if he might be the author. It turned out that he was, so we joined forces and the next time I visited San Diego we and our wives got together and reminisced a bit but didn&rsquo;t
discuss how Bobby and I had been separated.</p>
<p>&nbsp;
</p>
<p>We both continued to advocate adopting strong helmet requirements but my own bicycle club opposed me and booted me off their board of directors, then campaigned against my reelection to the national board of directors with the result that I lost my seat there for two years.&nbsp;
As I departed I wrote a report refuting all known arguments against the strong helmet rule. By chance another cyclist died as a result of wearing an inadequate helmet at a velodrome near where the board held their next meeting. They finally saw the light and adopted a strong helmet rule.</p>
<p>&nbsp;
</p>
<p>Two years later I regained my seat on the board as the riders finally figured out that the strong helmet rule was a good thing. It then started spreading around the world and has since become standard in racing organizations almost everywhere, saving hundreds of lives and preventing thousands of serious head injuries. I&rsquo;m
proud of that.</p>
<p>&nbsp;
</p>
<p>Recreational cyclists often follow the lead of racers in their selection of equipment and attire. In the U.S. the use of strong helmets has now become widely accepted and even enacted into laws in some places, at least for younger riders. However that trend has been less pronounced in Europe and other parts of the world so far.</p>
<p>&nbsp;
</p>
<p>For more on the prolonged helmet fight in the U.S. see <em>&ldquo;
<a href="http://www.stanford.edu/~learnest/cyclops/bash1.htm">The brain bucket bash</a>&rdquo;
</em>.</p>
<p>&nbsp;
</p>'', 1, N''draft'';

EXEC dbo.create_post 1,
     N''Latin as She is Spoke: How Classicists Tricked Themselves, and the Real Issue with Mary Beard''''s Latin'', N''<h3 class="post-title entry-title">&nbsp;
</h3>
<div id="post-body-1534709321937002650" class="post-body entry-content">
<div dir="ltr">
<div class="separator"><a href="https://lh3.googleusercontent.com/-DlIFEt3jzMM/YE24iggYkaI/AAAAAAAAAaM/gahDqEJuuroBf2U-G4s1mig7kakfV-N-wCLcBGAsYHQ/51n0wb.jpeg"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://lh3.googleusercontent.com/-DlIFEt3jzMM/YE24iggYkaI/AAAAAAAAAaM/gahDqEJuuroBf2U-G4s1mig7kakfV-N-wCLcBGAsYHQ/51n0wb.jpeg" alt="" width="448" height="196" data-original-height="330" data-original-width="756" /></a></div>
<br />Not long ago, Mary Beard graced us with&nbsp;
<a href="https://www.the-tls.co.uk/what-does-the-latin-actually-say/" target="_blank" rel="noopener">a bit of honorable honesty</a>&nbsp;
in the Times Literary Supplement, in which she confessed to what is a bit of an open secret among most classicists. She can''''t sight-read a complex Latin text all that well. Most classicists can''''t. This admission &mdash;
from someone like Beard &mdash;
is good to have out there.<br /><br />What irritates me is that &mdash;again
like most classicists &mdash; she
treats this as a self-evident fact to be just accepted rather than a problem to be dealt with, as if nobody could hope to actually read Cicero with ease. It always strikes me as bizarre and a bit embarrassing to see classicists insisting that it is impossible to acquire fluid or fluent command of Latin or Greek, that "we" can never do this. It''''s not just that this assumption would be news to people like Galileo, Kepler or Descartes. It''''s that people do actually acquire this kind of competence. Today. Anyone who pokes around at, say, the Conventiculum Bostoniense, will find proficient Latin-speakers as readily as Zeus finds incestuous booty-calls.<br /><br />Take Msgr. Daniel Gallagher who worked for a decade at the Vatican Secretariat''''s Latin Office. Here''''s&nbsp;
<a href="https://www.youtube.com/watch?v=Qh0vjaUdcDE" target="_blank" rel="noopener">him delivering a lecture about the possibility of a manned mission to Mars</a>&nbsp;
in Latin. Here''''s Jorge T&aacute;rrega
<a href="https://youtu.be/CL1KkcvPwyw" target="_blank" rel="noopener">teaching one of Horace''''s most famous poems through the medium of Latin</a>. Here''''s <a href="https://www.youtube.com/watch?v=ku2ApYHb4Ac&amp;t=637s" target="_blank" rel="noopener">Justin Slocum Bailey talking about Aulus Gellius in Latin</a>. If you want something literary,&nbsp;
<a href="http://ephemeris.alcuinus.net/disticha.php?id=544" target="_blank" rel="noopener">here''''s a lovely poem</a>&nbsp;
by&nbsp;C
&auml;cilie
Koch (AKA Caecilia) inspired by the discovery of the jaw-bone of a Neanderthal boy, and another <a href="https://www.suberic.net/~marc/vandievoet.html#epitaphiuminnumerorum" target="_blank" rel="noopener">poem by Alanus Divutius</a>&nbsp;dedicated
to the 9/11 victims. Here''''s&nbsp;
<a href="https://la.wikipedia.org/wiki/Relativitas_specialis" target="_blank" rel="noopener">a Latin Wikipedia article about special relativity</a>. Here''''s a&nbsp;
<a href="https://www.youtube.com/watch?v=v5uumdXZsuM" target="_blank" rel="noopener">scene from Jurassic Park dubbed into Latin</a>. Here''''s the&nbsp;
<a href="https://quomododicitur.com/" target="_blank" rel="noopener">Quomodo Dicitur podcast</a>&nbsp;
in which three people (not always the same people) have unscripted conversations about various topics in Latin. &nbsp;I
could keep spouting these links till either I or you, dear reader, die of boredom. There are plenty of people who read Latin as easily as any "modern" language that they have acquired as adults. There are entire&nbsp;
<a href="http://vintti.yle.fi/yle.fi/latini/viewtopiccbaf.html?f=1&amp;t=1301" target="_blank" rel="noopener">internet forums written in it</a>.&nbsp;
<br /><br />There are even still people who write scholarly material in Latin &mdash; very
, very occasionally. The subject matter tends to be unlikely to be of interest to anybody who can''''t read Latin well (<a href="https://dl.dropbox.com/s/7p9en2emtdwrfg7/PARERGA%20PALEARIANA.pdf" target="_blank" rel="noopener">here''''s a good example</a>). One exception to this, which would be of interest to linguists &mdash; particularly
sociolinguists who deal with more unusual forms of bilingualism &mdash;
is Terence Tunberg''''s&nbsp;
<a href="https://www.amazon.com/rationibus-colloquendi-Supplementa-Humanistica-Lovaniensia/dp/B00E6TVCTO" target="_blank" rel="noopener">brilliant and informative monograph</a>&nbsp;about
the use and nature of spoken Latin in early modern Europe. The whole thing is in Latin, and not the kind of simplified user-friendly Latin found in textbooks. Here''''s a passage from the first page:<br />
<blockquote class="tr_bq"><em>Libri tam medio illo aevo quam litterarum et artium renascentium aetate Latine scripti adhuc exstant permulti: quibus perlectis, etiam nunc iudicare possumus quale quisque genus scribendi coluerit: at non tam facile iudicare valemus quibus modis, quam crebro, quam diligenter homines iam pridem emortui ex tempore et pro re nata soliti sint Latine colloqui</em></blockquote>
<blockquote class="tr_bq">There exist as yet a great many books written in Latin as much from the Middle Ages as from the Renaissance. Having read them, we are even now&nbsp;able
to judge what kind of writing-type any given person practiced. We are not as easily able to judge how, how often, or how carefully people long dead were wont to converse in Latin when&nbsp;speaking
it spontaneously on an as-needed basis.</blockquote>
My English translation is a bit stilted, because I wanted to keep close the structure of the Latin, and even so I had to shift some of the information into a new clause ("when speaking it") and render an idiom with another somewhat inapposite idiom (<em>pro re nata</em> -&gt; "on an as-needed basis"). A phrase like "quale quisque genus scribendi coluerit" containing a hyperbaton-nested pronoun, can only be put into much more long-winded English.&nbsp;"Practice"
is a poor substitute for "colere" which might more nearly be rendered as "cultivate" but is infinitely less pretentious. I rather doubt that the thought would have been expressed this way if Tunberg were writing in English. My point here is that, though written by a native English speaker, this does not read like the work of someone who writes Latin while thinking in, or mentally translating from, English. This is comfortably written, idiomatic Latin which could not be translated into un-stilted English without some rephrasing and recasting of sentences. And Tunberg wrote this in the year of our lord 2012 for an audience he expected to understand him.<br /><br />Nonetheless, as Latin prose goes, this is a relatively straightforward passage with no rhetorical flourishes or stylistic fireworks. Tunberg''''s aim is purely communicative. He is not trying to entertain, and has no need to impress. Compare that with the beginning of a speech by Giovanni Rossi in Rome, about the poet Joseph Tusiani, which opens in full-on <em>Ciceroniatio</em>.<br />
<blockquote class="tr_bq"><em>Munus mihi, Theodorice optime, mandasti grave et aleae plenum, in provinciam me tuam arcessens, qui lateres tracto, non carmina, et siqua facundia est in me, quam alii laudant, ego scio quam sit exigua, omnino sum expers poeseos, quin etiam &mdash; fateor
enim aperte &mdash; raro
versibus neolatinis delectari soleo, in quibus nescioquid fucatum mihi deprehendere videor.&nbsp;
</em></blockquote>
<blockquote class="tr_bq">My good Theodoricus, you have ordered me on a hard and risk-riddled mission, summoning me into your bailiwick. I deal with bricks, not poems. If there is in me any of the eloquence which others laud, I know how paltry it is. I have nothing at all to do with poetry, and &mdash; I
openly admit it &mdash; I
tend only rarely to find pleasure in neolatin verse, in which I seem to apprehend something contrived.</blockquote>
Rossi draws freely on the Latin stylistic arsenal in his address, and translating it into a less awkward English would require not just a more thorough recasting, but also some sacrificing of nuance. As it is, my crummy English version sacrifices both the elegance and nuance of phrases like&nbsp;
<em>nescioquid fucatum.&nbsp;
</em>The term&nbsp;
<em>nescioquid</em>&nbsp;here
carries a force not only of indefiniteness but also of triviality, and <em>fucatus</em>&nbsp;
<em>&nbsp;
</em>(literally "painted" or perhaps "covered in make-up") is not merely "contrived" but also "embellished" with overtones of falsity. <em>"In provinciam me tuam arcessens</em>" has a strongly military overtone to it, but <em>provincia </em>also has a more general semantic range of "sphere of official duty" and jokes relying on this word''''s association with military bureaucracy go back to Plautus. Rossi''''s familiarity&nbsp;
with things poetic is already apparent (the phrase&nbsp;<em>plenus aleae</em>&nbsp;may or may not be meant to evoke its origin in Horace, as it is a stock phrase of Neo-Latin).The trivialization of the speaker '''' s knowledge of poetry gives it a playful irony which becomes more apparent as Rossi '''' s speech goes
on ("tamen tibi, quae est humanitas tua, lubenter morem geram, Josephum autem amicum, virum laudatum, laudabo lubentius").&nbsp;
Humble
posturing of this kind is common in Latin literature, though not always with this&nbsp;kind
of self-awareness.&nbsp;Rossi
expresses the modesty topos by toying with a famous phrase of Cicero''''s in&nbsp;
<em>Pro</em>&nbsp;
<em>Archia</em>&nbsp;
    ("Si quid est in me ingeni...quod sentio quam sit exiguum")
    and variations on that phrasing are not uncommon in mock speeches in Renaissance literature. The mock-aspect is heightened,by substituting <em>facundia</em>&nbsp;
"fluency, eloquence"
for
<em>ingenium</em>&nbsp;"natural ability"
in a Ciceronian phrase template.<br /><br />The Latinity here shines in a high-end literary polish even as it cracks a smile of genre-savvy humor and casual familiarity. The speaker is not taking himself or his high-flown clausal structures too seriously.&nbsp; Because
Rossi himself was not unknown to his audience, even personal biography comes into play. The statement that <em>lateres tracto, non carmina</em>&nbsp;
is an allusion to Rossi''''s professional background as an architect.<br /><br />There is a specifically Latinate aesthetic at work here. Its cultural register is quite different from the passage I took from Tunberg''''s book. Full understanding of the denotative content of a speech like this requires a well-developed grasp of Latin idiom. Fully apprehending its connotative dimensions requires a peculiar kind pragmatic awareness which depends on a shared knowledge of the Latin canon. And this is from a speech delivered in 2009. To an audience that understood what he was saying in real time (about a Latin poet born just a year before the birth of the first television station.)<br /><br />Oh, and if you want to see high-end <em>spoken</em> Latin in action:<br /><br />Here''''s <a href="http://stroh.userweb.mwn.de/scholae/vl_philosophia_wise14-15/schola12_cap45_12-1-2015_de_lucretio.mp3" target="_blank" rel="noopener">Wilfried Stroh</a>&nbsp;talking
in Latin about Lucretius.<br />Here''''s&nbsp;
<a href="https://vimeo.com/177617004" target="_blank" rel="noopener">Luigi Miraglia giving an interview in Latin</a>&nbsp;
in which he discusses, among other things, how he was taught the language.<br />And here''''s Miraglia&nbsp;
<a href="https://www.youtube.com/watch?v=_OyhWKTmJBo&amp;t=472s" target="_blank" rel="noopener">giving a lecture in which he says a lot of things I don''''t think are true</a>.<br /><br />This is what I mean when I say Latin is not a dead language, so much as one that just happens to lack native speakers.<br /><br />The thing of it is that classicists often act like they don''''t know these people exist. Or if they do, they imagine them to be a small congeries of exceptional souls. That may be true when it comes to people who speak Latin as well and spontaneously as Miraglia does, or who would be able capture ever nuance of a speech like Rossi''''s in real time. (I am so very, very far from being either of these.) But Tunberg''''s book is not aimed at a tiny audience of eccentric linguistic necrophiles. It is aimed at Renaissance scholars who deal with Latin texts a lot, and whom he expects not to have much difficulty understanding the substance of his arguments expressed in the language.<br /><br />It''''s not uncommon for renaissance scholars to develop a good reading proficiency in Latin that allows them to deal with any text in the language, albeit not without the help of a dictionary. The reason is a practical one. Unlike classicists, scholars of Renaissance literature often have to deal with texts precisely like the one that so frustrates Mary Beard:&nbsp;texts
that are not available in translation, let alone in modern critical editions with regularized spelling complete with footnotes that hold your hand.<br /><br />Quoth Mary Beard:<br />
<blockquote class="tr_bq"><em>And you are on your own: there''''s no crib here, like there is with Tacitus</em></blockquote>
To which a medievalist or Renaissance specialist will respond "welcome to my life." People whose scholarly work depends on dealing with medieval or Renaissance Latin texts&nbsp;
<em>have to have</em>&nbsp;a
better command of Latin than the kind Mary Beard describes. And if you''''re sitting there thinking "but Medieval Latin is simpler than Classical Latin" realize that I don''''t just mean reading the pared down language of the Res Gesta Francorum or even Jerome''''s Bible. I mean reading Cicero''''s letters, alongside Petrarch''''s Ciceronian response to them. I mean reading Virgil alongside Walter of Ch&acirc;tillon. I
am talking about the kind of reading proficiency that allows one to skim hundreds of pages of text in order to find material relevant to one''''s research. If Peter Godman couldn''''t read new, unfamiliar and often abstruse Latin texts, he&nbsp;
<a href="https://global.oup.com/academic/product/the-archpoet-and-medieval-culture-9780198719229?cc=us&amp;lang=en&amp;" target="_blank" rel="noopener">could not do the research he does</a>. Medievalists and Renaissance scholars &mdash; even
those taught by painfully ineffective traditional methods &mdash; get
practice dealing with texts on their own way more than classicists as a rule.<br /><br />Quoth Mary Beard:<br />
<blockquote class="tr_bq"><em>Why, I still wonder, are Latin and Greek so hard. I think it is partly that most of us, even if we have done our turn in trying to translate English into Latin, still learn ancient languages largely passively.&nbsp;It
is both the plus and the minus of Latin that we never have to ask for a pizza, or the way to the swimming pool, in it.&nbsp;
</em></blockquote>
Beard treats Latin as if it were any other "ancient language" which "we" mostly learn passively. But as "ancient languages" go, Latin is quite unusual in its active cultivation. Though the example of&nbsp;
<a href="https://www.abebooks.com/servlet/SearchResults?tn=Post-independence%2BSanskrit%2BLiterature" target="_blank" rel="noopener">Sanskrit </a>shows it is hardly unique, and there&nbsp;
are those who use and learn Ancient Greek actively too (see&nbsp;<a href="https://www.conventiculum.com/2019-greekh" target="_blank" rel="noopener">here</a>,&nbsp;<a href="https://www.youtube.com/watch?v=tJrGaOF-bOw" target="_blank" rel="noopener">or here</a>,&nbsp;<a href="https://incubator.wikimedia.org/wiki/Wp/grc/%CE%9A%CF%85%CF%81%CE%AF%CE%B1_%CE%94%CE%AD%CE%BB%CF%84%CE%BF%CF%82/%CE%B2" target="_blank" rel="noopener">or here</a>,&nbsp;<a href="https://www.youtube.com/watch?v=wy3270CAi54" target="_blank" rel="noopener">or here</a>&nbsp;or <a href="https://www.youtube.com/watch?v=gT1gORzl1Us" target="_blank" rel="noopener">here</a>). This is fundamentally unlike the situation with, say, Old English, Gothic, Old French or Middle English (though <em>Alice In Wonderland</em>&nbsp;has been translated&nbsp;<a href="http://www.evertype.com/books/alice-got.html" target="_blank" rel="noopener">into</a>&nbsp;<a href="http://www.evertype.com/books/alice-fro.html" target="_blank" rel="noopener">all</a>&nbsp;<a href="http://www.evertype.com/books/alice-enm.html" target="_blank" rel="noopener">of</a>&nbsp;<a href="http://www.evertype.com/books/alice-ang.html" target="_blank" rel="noopener">these</a>, and <a href="https://blogicarian.blogspot.com/2019/05/an-old-english-poem-river-barrow-of.html" target="_blank" rel="noopener">the occasional nerd still writes poetry in Old English</a>.) It''''s unlikely that, say, <a href="https://la.wikipedia.org/wiki/Metatypia" target="_blank" rel="noopener">a relatively obscure linguistics concept</a>&nbsp;could
readily be discussed in Old Irish or Ancient Egyptian.<br /><br />Note also the word "still" here, as if the exclusively passive study of Latin were an old tradition. It is actually a quite recent development. The beginning of it is less than two centuries old at most. More importantly, though, the idea of Latin as a specifically "ancient" language &mdash;
to be treated and learned as if it were dead &mdash;
is very much a 19th century conceit. This is the language in which&nbsp;
<a href="http://www.thelatinlibrary.com/newton.regulae.html" target="_blank" rel="noopener">Newton</a>, <a href="https://la.wikisource.org/wiki/De_revolutionibus_orbium_coelestium/05" target="_blank" rel="noopener">Copernicus</a>, <a href="http://www.thelatinlibrary.com/galileo/galileo.sid.html" target="_blank" rel="noopener">Galileo</a>&nbsp;
and&nbsp;
<a href="http://www.thelatinlibrary.com/kepler/strena.html" target="_blank" rel="noopener">Kepler</a> did science. The language in which&nbsp;
<a href="http://www.thelatinlibrary.com/gauss.html" target="_blank" rel="noopener">Gauss</a>,&nbsp;
<a href="https://fr.wikisource.org/wiki/%C5%92uvres_de_Fermat/I/Maxima_et_Minima" target="_blank" rel="noopener">Fermat</a>, and&nbsp;
<a href="https://la.wikisource.org/wiki/Methodus_inveniendi/Additamentum_II" target="_blank" rel="noopener">Euler</a> did math. The language in which <a href="http://www.thelatinlibrary.com/spinoza.ethica1.html" target="_blank" rel="noopener">Spinoza</a>, <a href="http://www.thelatinlibrary.com/descartes/des.med1.shtml" target="_blank" rel="noopener">Descartes</a> and <a href="http://www.thelatinlibrary.com/bacon/bacon.liber1.shtml" target="_blank" rel="noopener">Francis Bacon</a> did philosophy. The language in which <a href="http://www.perseus.tufts.edu/hopper/text?doc=Perseus%3Atext%3A2011.01.0165" target="_blank" rel="noopener">Giovanni Pontano</a>&nbsp;
and&nbsp;
<a href="http://www.thelatinlibrary.com/milton.quintnov.html" target="_blank" rel="noopener">John Milton</a>&nbsp;wrote
copious amounts of poetry. The language in which&nbsp;
<a href="http://www.thelatinlibrary.com/more.html" target="_blank" rel="noopener">Thomas More wrote his "Utopia"</a>.<br /><br />Renaissance humanists in particular were zealous advocates of a pedagogy which aimed at making Latin their students&rsquo; "second mother tongue"
by constant conversational practice without burdening them with useless amounts of grammatical analysis. Giovanni Pontano not only wrote only in Latin, but apparently spoke only Latin to his wife Adriana and his four children. He even wrote a series of&nbsp;
<a href="http://www.intratext.com/IXT/LAT0578/_PC.HTM" target="_blank" rel="noopener">Latin lullabies</a>&nbsp;
for his son Lucio. I rather doubt Pontano knew what an "agent complement" or "partitive genitive" even was. In the 15th and 16th centuries, it was common for schools to require that Latin be spoken amongst students. Scholars have unearthed letters in which parents wrote to their sons in boarding schools in Latin, often for the purpose of providing good practice. There was once a tradition of Latin school theater &mdash; a
Protestant development which the Jesuits helped spread throughout much of Western Europe &mdash; which
served, in essence, as a glorified language exercise. Most of the plays performed were new creations, not recycled classics from antiquity (although many in the Middle Ages and Renaissance did indeed study the comedies of Terence and Plautus precisely in order to learn conversational style.) This gave the players a chance to broaden their vocabulary and tighten their grasp of the various stylistic registers of Latin. In fact, I''''d bet that a student who happens to pick up Jakob Bidermann''''s <em>Canodoxus </em>will discover that such plays can still serve that function today. Latin in the High Middle Ages and Renaissance was taught as what it is: a completely normal language. It''''s important to realize how "modern" a habit it is to treat Latin as a language to be learned passively through grammatical gymnastics. This pedagogical habit developed not long ago, and for rationally understandable reasons. It is not written into nature. The fact that there aren''''t any Romans to chat with anymore didn''''t stop people like Erasmus from using it as a conversational language with other educated people. Even though there is little practical need for spoken proficiency in Latin anymore, there is no reason why learners of Latin today should be railroaded into the kind of semi-literacy that academic classicists often acquire. There is no reason why learners should be made to treat every Latin text as puzzle to be deciphered into translation, rather than a specimen of normal human communication to be understood as such.<br /><br />Quoth Mary Beard:<br />
<blockquote class="tr_bq"><em>But more to the point is that most of the classics we have to read in Latin, or Greek, are so damn difficult.&nbsp;Making
sense of Thucydides or Tacitus is closer to making sense of James Joyce than Charles Dickens . . . and after even 10 years at the language one is hardly quite up to the task (and it was probably almost as baffling for native speakers too).</em></blockquote>
This, to me, seems profoundly untrue, and by only mentioning historians, Beard has fudged the issue a bit. History, as a Roman genre, was prone to (a) some amount of archaism and (b) a tendency toward syntactic innovation. Historians from Livy on, experimented with the future participle, with the gerund and gerundive, with the infinitive dependent on adjectives, with plain cases with compound verbs. There''''s a strong tendency to deletion of assumed constituents that would normally be made explicit. Tacitus'''' rhetorical habits can indeed get a bit mystifying at times, especially when he himself seems to be a bit sick of what he''''s writing about and to take delight in overdoing the syntax. But Beard is I think massively overstating the difficulty this would cause for native speakers. In <a href="https://www.the-tls.co.uk/is-latin-too-hard/" target="_blank" rel="noopener">an earlier&nbsp;
and much more wrong-headed piece</a>&nbsp;she
even suggested that "asking a school student to read Tacitus is a bit like asking an English learner to go off and read Finnegan&rsquo;s Wake." &nbsp;If
you find Tacitus remotely comparable to Finnegan''''s Wake in his difficulty, that says more about you than about Tacitus. (If it''''s an innocent exaggeration, it''''s one that is so out of proportion as to be uninformative.)<br /><br />And Beard''''s broader implication that "the classics we have to read" challenged the comprehension skills of native speakers in their own time makes so little sense that I have trouble accepting that she really believes this. Leave historians to the side for a moment and consider any of the "classic" texts which we know were composed for oral delivery or performance. Aristophanes'''' comedies may sometimes deploy bizarre language, and are often deliberately silly, but we have no reason to think that they were truly baffling for their original audience. The comedies of Plautus and Terence cannot have posed a serious comprehension challenge to their rather varied audiences when first performed. Not only were most of the classics we read easily understood by their target audience, but many of them were intelligible when <em>delivered orally at normal speed</em>.<br /><br />The aspects of the language that modern students often find superfluously difficult when reading any ancient Latin author (such as word order) posed no comprehension difficulty to those authors'''' original audiences. We have a lot of ancient Latin of a non-literary kind to compare Cicero or Tacitus with. Even the most subliterary papyri taken via dictation &mdash; fascinating
as they are in many ways &mdash; contain
a lot of the same features that modern learners often stumble over. And the&nbsp;
<em>Cena Trimalchionis,</em>&nbsp;which
deliberately imitates the ordinary (and subliterary) speech of uneducated freedmen, is by no means especially easy for Anglophone learners.<br /><br />To be sure, a lot of Romans whose knowledge of literary Latin fell below the high standards of the rhetors were unable to <em>compose</em>&nbsp;coherent
complex prose like Cicero, or Tacitus a hundred years later.&nbsp;
(We have good evidence, for example, that even in Tacitus '''' day the inflected passive didn '''' t have a great deal of currency in most people '''' s ordinary speech, and letters taken from dictation tend to avoid using it in anything but its most basic and predictable forms.)
Learners of spoken Latin as a second language during the empire could not necessarily write elegant or even competent hexameters. (Sometimes their attempts to do so were&nbsp;<a href="https://www.jstor.org/stable/300737" target="_blank" rel="noopener">comically inept and incomprehensible</a>).<br /><br />But the upper echelons of Roman society in the Late Republic and Early Empire were a world in which speechmaking was important and ubiquitous, in which different contexts will have required different styles of composition and delivery, and where it is vanishingly unlikely that, say, Cicero''''s speeches would have been completely intelligible when delivered orally to their intended audience. However florid and high-flown his speeches may be, however annoying it is for Latin students to try and hunt for the verb heading his main clauses, they were speeches meant for an educated audience that cannot have had great difficulty understanding what he was saying in real time (except on those occasions where he actually intended to be opaque). Point being: it would be a poor public speaker indeed whose speeches were so syntactically florid that nobody in the audience could understand him without a sentence diagram.<br /><br />Quoth Mary Beard:<br />
<blockquote class="tr_bq"><em>"I have often said that more things survive (in both Greek and Latin) of what the ancient Romans wrote than anyone could hope to read in a lifetime."</em></blockquote>
This sounds like a huge overestimation to me. To be sure, a lot of it probably isn''''t worth reading to most people, at least not for enjoyment. Much of it is only of incidental "historical" interest, I suspect. But the entirety of extant literature in Greek and Latin through to, say, the Late Empire is probably enough to fill a single small bookstore. It''''s a lot, sure. But a single person could probably read all of it. Even if you added to that all the personal correspondences unearthed in papyri and on wax tablets, and all the inscriptional material I doubt that it is impossible for a human to read all of it. I certainly wouldn''''t want to. I can''''t think of anyone who would want to, really. How many grave inscriptions would they have to read? How many tabulae in which a soldier in Britain sends for underwear or something? Still, it would be doable. Once you push the threshold of "ancient Romans" through into the very ass-
end of Late Antiquity, though, it is quite plainly impossible for a single human to read it all.<br /><br />In fact, "Ancient Latin" represents less than one percent of all that has been written in the language. We pigeonhole this language as "ancient" because 19th century ideas about what "real" Latin is have &mdash;
in a highly warped form &mdash; delimited
the general sense of what Latin is, and can be, how it can be learned, and how it can be read. Even in the 19th century, though, a lot of interesting work was produced in Latin. Like&nbsp;
<a href="https://www.mauriziopistone.it/testi/carmina/14_gladiatores.html" target="_blank" rel="noopener">Giovanni Pascoli''''s poem about gladiators who escaped with Spartacus</a>.<br /><br />Outside the rarified and often invisible academic discipline of Neo-Latin studies, non-ancient Latin is constantly ignored into invisibility despite its profusion. The result is intellectual impoverishment. For example, students of baroque French literature tend to be ignorant of Du Bellay''''s Latin poetry, which is every bit as copious and accomplished as his French poetry. A full appreciation or assessment of Du Bellay''''s accomplishment as a poet should &mdash; I
think &mdash; require
consideration of his work in both languages. But, with a few exceptions, people tend not to think so today. His Latin is &mdash;
in an important sense &mdash; "unreal"
to French literary history.<br /><br />As early as 1923, Thierry Sandre put it well:<br />
<blockquote class="tr_bq">"Il para&icirc;t qu''''on ne lit plus le latin, depuis longtemps d&eacute;j&agrave;. On ne le lit plus surtout parce qu''''on ne nous y int&eacute;resse plus. Qu''''on nous apporte une traduction d''''un bon ouvrage que nous ne connaissions pas : nous aurons envie d''''en voir l''''original. Mais, dira-t-on, y a-t-il encore de bons ouvrages que nous ne connaissions pas ? Il y en a malheureusement beaucoup, beaucoup trop ! La litt&eacute;rature latine du Moyen-Age est consid&eacute;rable ; nous n''''en savons pas grand''''chose ; et toute la litt&eacute;rature fran&ccedil;aise du XVIe si&egrave;cle est doubl&eacute;e d''''une litt&eacute;rature latine dont nous ne savons &agrave; peu pr&egrave;s rien. Quel vaste champ &agrave; explorer ! Que de d&eacute;couvertes &agrave; faire ! Plus d''''un chapitre de nos histoires litt&eacute;raires y gagnerait une lumi&egrave;re utile. On laisse presque toujours dans l''''ombre les po&eacute;sies latines de nos po&egrave;tes fran&ccedil;ais."</blockquote>
<blockquote class="tr_bq"><em>(It seems we no longer read Latin, and have not done so for some time. Above all, we no longer read it because nobody gets us interested in it. Show us a translation of a great work we don''''t know, and we will want to see the original. You may well ask, are there still great works in Latin that we do not know? Unfortunately a great many, too many. The latin literature of the Middle Ages is considerable, and we know little of it. The whole of 16th century French literature is coupled with a Latin literature we know virtually nothing about. What a vast field to explore, what discoveries to be made! More than one chapter of literary history would benefit from the light it might shed. We almost always leave the Latin poetry of our French poets in the shadows.)&nbsp;
</em></blockquote>
Another case in point is the study of Orientalism. Modern scholars of European Orientalism almost never know Latin, despite its omnipresence in the scholarly firmament of Europe from the Middle Ages through to the
end of the 18th century. It is a pity, as Latinate Orientalism was a bit of a different animal than what was produced in vernaculars. Sir William Jones, for example, wrote so much more about Persian and Arabic literature in Latin than he ever bothered to say in English. Most of his Latin writing &mdash; influential
in its day &mdash; remains
untranslated and thus almost never read today. A thorough reading of <a href="https://books.google.ca/books?id=2NQpAAAAYAAJ&amp;dq=%22poeseos%22%20sir%20william%20jones&amp;pg=PR1#v=onepage&amp;q&amp;f=false" target="_blank" rel="noopener">Jones'''' "Poeseos Asiaticae Commentariorum Libri Sex"</a> and a consideration of the variety of people influenced by it, including Goethe and Friedrich Engels, offers a dimension to European literary Orientalism that is often simply invisible to modern literary historians and theorists.<br />
<div>&nbsp;
</div>
Mary Beard is a great scholar, and I don''''t want to be misunderstood as saying otherwise. There is more than just language proficiency to successful academic life, after all, and it is by no means the most important thing. For many reasons, knowing a language well is less valuable in academia than than knowing something else about the people who used the language, or having something worthwhile to say about texts written in it.&nbsp;The
Czech writer Jan Kresadlo was at home enough in Homeric Greek that he was able to write a brilliantly hilarious&nbsp;
<a href="http://www.aoidoi.org/articles/vc/astronautilia.pdf" target="_blank" rel="noopener">Science Fiction Epic in it</a>. But his facility with the language did not mean that he knew the first thing about Ancient Ionian land tenure practices.<br /><br />Still, one needn''''t strive to achieve a knowledge of Latin comparable to that of Giovanni Pontano or John Owen or Luigi Miraglia in order to have the kind of comfortable reading ability that allows one to understand unfamiliar texts of considerable complexity. It is <em>completely</em> <em>doable</em>. Language learning is never effortless, but a lot of the difficulty classicists in particular face in acquiring a working reading knowledge of Greek and Latin is completely avoidable. To bring that burden down to its more natural weight, though, a lot of things will have to change. It can''''t happen on a large scale in the absence of teachers who both know the languages much better than most classicists do and are trained in second language pedagogy.<br /><br />Nor can it happen if learners are simply told that high reading proficiency is an unattainable, or even unreasonable goal. Mary Beard''''s confession is admirably honest, but it should not be taken completely at face value. Though her experience is a very common one, it is possible to do better. Latin and Greek are normal human languages. Teachers and learners will do themselves and each other a capital favor by treating them as such.<br /><br />If anyone reading this is interested in learning to read Latin as a normal language, then I strongly recommend Hans &Oslash;rberg
''''s&nbsp;
<a href="https://www.amazon.com/gp/product/1585104205/ref=dbs_a_def_rwt_hsch_vapi_taft_p1_i0" target="_blank" rel="noopener">Lingua Latina Per Se Illustrata</a>&nbsp;series. It
''''s perfect for either self-study or classroom use, and I''''ve seen it do wonders to help struggling learners. Above all else, it helps you learn <em>to think about Latin in Latin</em>. It''''s the only Latin textbook I know of that actually helps you avoid transverbalization (the habit of mentally translating everything you read.)&nbsp;
</div>
<div dir="ltr">&nbsp;
</div>
<div dir="ltr">&nbsp;
</div>
</div>'', 1;

EXEC dbo.create_post 1, N''Reclaiming the lost art of Linux server administration'', N''<div>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcrazymonk.in%2Fwp-content%2Fuploads%2F2020%2F11%2FLinux-Sticker--scaled.jpg&amp;f=1&amp;nofb=1" alt="Linux Sticker - CrazyMonk" width="166" height="232" /></p>
<p>One of the skills I wish I''''d learned earlier in my career is basic Linux server administration. Specifically in relation to hosting something on the web, either a web app or API that I wrote myself, or something from the thriving <a href="https://github.com/awesome-selfhosted/awesome-selfhosted">self-hosted community</a>, such as Wordpress. Managing servers is increasingly seen as the ''''older way'''' of doing things, so it''''s easy to become a software developer and never learn to set up a VPS, set up remote access, stand up a firewall, etc.</p>
<p>Choosing to actively manage your infrastructure is part of a much larger discussion about the proper way to choose your tools. This discussion is extensive and it runs along many different dimensions.</p>
<p>There''''s the axis of <a href="https://mcfunley.com/choose-boring-technology">new vs. old tech</a> and also of build vs. buy. Finally, there''''s the decision to use <strong>managed vs. unmanaged services</strong>. This last one is the topic of this blog post.</p>
<p>At one
end of the spectrum, you can manage everything like it''''s 1999. You set up your own host, install and manage dependencies, set up backups, etc. As you move towards the fully-managed end of the spectrum, you start to see lightly-managed compute primitives like Amazon RDS all the way to full-service, cloud-enabled app frameworks like AWS Amplify or Google App Engine, and BaaS/PaaS providers like Heroku.</p>
<p>The default position at most places I come across is to go as managed as you can tolerate, usually to save on engineering effort. But how did we manage to ship anything just 10 years ago, when most of these options weren''''t available?</p>
<p>The truth is that it <em>was</em> possible to build high-traffic web services in the "bad old days", even with a very small team. Even with <em>just one person</em>. This is how Marco Arment describes his experience building and running Tumblr circa 2010, largely by himself:</p>
<blockquote>
<p>Tumblr taught me by necessity, especially in the early days when we had no staff and very little money, how to develop and host a high-traffic web service cheaply, easily, and sanely. I couldn&rsquo;t
let the servers require too much maintenance because server administration wasn&rsquo;t
my main job &mdash; we
didn&rsquo;t
have a dedicated server administrator for the first few years, so I just had to set things up such that they didn&rsquo;t
need much administration.</p>
</blockquote>
<p>You can read the full blog post <a href="https://marco.org/2014/03/27/web-hosting-for-app-developers">here</a>. If you still don''''t believe that people shipped big things fast before all of these cloud services came on the scene, I recommend reading some of the write ups at <a href="http://highscalability.com">High Scalability</a>, especially the ones from the previous decade. I particularly like the series on <a href="http://highscalability.com/blog/2009/8/5/stack-overflow-architecture.html">Stack Overflow</a>.</p>
<p>The good news is that these tools and techniques are still available to everyone. I propose that you turn the default position on its head &mdash; instead
of defaulting to highly managed services, default to self-managed services and only venture out as needed.</p>
<h2>How did we get here?</h2>
<p>If you, like me, believe that basic server maintenance is a dying art, how did we get here? It''''s easy to point fingers at the big cloud providers and say, "They don''''t want us to learn this stuff for their own profit!". But the actual reason might be more prosaic. Combine the multi-billion dollar marketing budgets of AWS, GCP and Azure and you have significant gravitational pull. Then add their respective armies of developer evangelists. Sprinkle in some cargo-culting and a decade''''s worth of "ship fast and break things" and you
end up where we are today.</p>
<p>Before getting into the benefits of learning basic Linux administration, keep in mind tha this isn''''t a black or white proposition. Like any good engineering challenge, it''''s about tradeoffs. For example, if you do read stories from the previous decade, you''''ll see people building their own hardware. That''''s where I draw the line. Unless you need the performance, <em>don''''t manage physical hardware</em>. Get a Linux VPS from a reputable hosting provider and be done with it.</p>
<p>Also stay away from the notion that "the cloud is evil". That''''s where most of these type of articles go astray. The big cloud providers have given us real benefits and real innovations over the past decade. That fact is undeniable. The trick is to separate the wheat from the chaff. For example, I''''m not going to build <a href="https://firebase.google.com/docs/database/">realtime database</a> but I will learn how to self-host MySQL if that''''s all I need.</p>
<h2>Reaping the benefits of Linux administration</h2>
<p>OK &mdash; you
''''ve gotten this far without knowing how to run your own servers. Why change? These are some of the reasons that convinced me.</p>
<p><strong>No vendor lock-in</strong>. If you run your whole system on Linux VPSes, you''''ve essentially commoditized the compute layer. If something happens with your current host, you can pack up your things and set up shop somewhere else whenever you like.</p>
<p><strong>Unrestrained compute</strong>. Netlify will only host your one repo. Lambda will only run your one function. Linux admin is a chore, but in return <em>you get the whole computer</em>. You can install whatever software you want and set things up as you see fit. You can even save some money in the process since you can run all your applications on the same infrastructure instead of paying per app.</p>
<p><strong>Long-lasting skills</strong>. The tech industry moves <em>fast</em>, but if you look around there are certain foundational technologies that have stuck around for a long, long time. Bash, SSH, nginx/Apache, even Linux itself. Here''''s an uncontroversial claim: these foundational technologies will continue to be foundational throughout your entire career. What else can you say that about in the tech industry? The earlier you learn how to write a good Bash script, the better. Compare this reality with cloud services. Building on top of them often feels like quicksand &mdash; they
morph under you, quickly deprecate earlier versions and sometimes shut down entirely.</p>
<p><strong>The speed (and joy) of using tools</strong>. This one is my favorite. And here I make a distinction between a "tool" and a "service". A hammer is a tool. I use a hammer in exactly the way I want . It blends into the background and becomes an extension of myself. In contrast, a service talks back. It wants things. We''''re so surrounded by services that we''''ve forgotten what using a tool feels like. Linux is a tool. Bash is a tool. They''''re quiet and obedient. The only thing they ask for is your dedication. They''''re also fast, if you know how to use them. Here''''s my theory: the dexterity that comes from learning these tools contributes to most of the potential productivity boost of self-hosting.</p>
<h2>Getting started</h2>
<p>Starting is not hard, but you need a plan. Just like learning programming, I recommend having a project that requires you to learn Linux admin. If you have a <em>need to learn</em>, you will learn. You don''''t need to be a programmer to manage Linux servers, but if you''''re a programmer, this might be as easy as deciding to run your own software directly on a Linux VPS. If you''''re not a programmer, you can choose from a variety of open source projects with a strong community that can help you if you get stuck. Some projects that might interest you are <a href="https://www.home-assistant.io">Home Assistant</a>, <a href="https://pi-hole.net">Pi-hole</a> or something from <a href="https://github.com/awesome-selfhosted/awesome-selfhosted">this list of projects</a>.</p>
<p>I also recommend picking and committing to a ''''default admin stack'''' that includes an OS, Bash, a scripting language, a webserver and a data store. Just like you use macOS or Windows for all your personal computing, you should also pick a specific Linux distribution as your default server OS. It takes time to be productive in any OS. That''''s why you need to pick one and stick to it. For example, my OS of choice is <a href="https://ubuntu.com">Ubuntu</a> &mdash; I
picked it because it has a large community, it''''s easy on beginners and almost everything I''''d want to host has official Ubuntu support.</p>
<p>As for scripting, commit to getting good at <a href="https://www.gnu.org/software/bash/">Bash</a>. Bash is the default "shell" for most Linux distributions. If you''''re not familiar with that term, the shell is the program that runs your other programs, so it pays <em>huge dividends</em> to know to make this layer bend to your will.</p>
<p>Bash is the primary interface for the command line terminal and it is also a scripting language. You can (and should!) save your terminal commands in a file for later use, so you can run them all at once. If you get good at this, it will help you remember how you set things up, and will automate a lot of things for you. I can''''t stress enough how important this is, and how universally useful it can be to learn Bash. As a practical goal, you should be able to recreate your host <strong>with a single Bash script</strong>.</p>
<p>There''''s only one specific feature in Bash I want to highlight: <a href="https://www.gnu.org/software/bash/manual/bash.html#Here-Documents">here documents</a>. Most things on a server that you''''d want to set up use text files for their configurations. Here documents let you specify an "inline file" inside your script file. If you know what a string literal is, you can think of here documents as a "file literal". Here''''s <a href="https://gist.github.com/pietrorea/5badae19ae8bd58c980b3fe9debddef0">an example</a> that sets up remote SSH access. Here''''s <a href="https://gist.github.com/pietrorea/9081e2810c20337c6ea85350a31bb427">another example</a> that directs MySQL to create
a database and an admin user. That''''s how you can set up an entire server with only one script. Learning to use here documents took me from casual Bash user to budding system administrator. I wish I had learned it years earlier.</p>
<p>Bash has been around for a while, so it has its share of rough edges compared to more modern programming environments. For example, if you''''re a programmer, you might take it for granted that every scripting language has dictionaries/hash maps, right? Well, in Bash associative arrays didn''''t formally exist until Bash 4. Some older systems have Bash 3 as the default version, so you can''''t use dictionaries unless you install a newer version of Bash.</p>
<p>For all of Bash''''s advantages, I agree with Google''''s <a href="https://google.github.io/styleguide/shellguide.html#s1.1-which-shell-to-use">Shell Style Guide</a>:</p>
<blockquote>
<p>If you are writing a script that is more than 100 lines long, or that uses non-straightforward control flow logic, you should rewrite it in a more structured language now. Bear in mind that scripts grow. Rewrite your script early to avoid a more time-consuming rewrite at a later date.</p>
</blockquote>
<p>You can get far with just Bash, and if you''''re not a programmer, that might be a good stopping point. But if need to write longer scripts, then the next decision you need to make after picking a default server OS is picking a default scripting language.</p>
<p>In theory, any language that can interact with OS can do, which includes most programming languages. For example, MySQL ships with a script called <code class="language-text">mysql_secure_installation</code>. The <a href="https://github.com/twitter-forks/mysql/blob/master/scripts/mysql_secure_installation.sh">original version</a> was written in Bash, but as the script grew, it got <a href="https://github.com/mysql/mysql-server/blob/7ed30a748964c009d4909cb8b4b22036ebdef239/client/mysql_secure_installation.cc">a rewrite</a> in C++. This was a good choice for that project, because MySQL is written in C/C++, but it''''s probably not a good choice for your default scripting language.</p>
<p>For your scripting language, I recommend something that doesn''''t require compilation, with a strong community behind it. Python, Ruby and JavaScript are all good choices. I picked JavaScript because I like to limit the things I need to learn, and I already needed JavaScript/TypeScript for the web. Node also has a huge library of packages via <a href="https://www.npmjs.com">npm</a> if I ever need to do something more complicated.</p>
<p>If you''''re an iOS developer, as much as I''''d like to recommend Swift, I can''''t recommend it for Linux administration. Linux support is getting better, and you can avoid the compilation step and <a href="https://krakendev.io/blog/scripting-in-swift">use Swift like a scripting language</a>, but the Swift Package Manager simply pales in comparison to NPM, especially for something like Linux management.</p>
<p>After picking your OS, learning Bash and (optionally) committing to a scripting language, the next things on the shopping list are a web server and a data layer. Keep in mind that this is just for server administration. If you''''re not a programmer, you don''''t need to learn a database like a programmer would.</p>
<p>I picked <a href="https://nginx.org">nginx</a> as my default webserver, although I hear Apache is also good. Learning to use a good webserver will help you direct traffic to your applications, so it''''s essential. For my default database, I picked <a href="https://www.mysql.com">MySQL</a>. It''''s been around long enough, that there''''s nothing I could throw at it that would make it break a sweat.</p>
<p>To reiterate, when you''''re just starting, it''''s more important to pick something to host than to pick the tools to host it with. Let the app dictate what you need to learn first. If you don''''t know what to pick as your first hosted app, you can''''t go wrong with <a href="https://wordpress.org">Wordpress</a>. There are many hosting providers that offer 1-click Wordpress installations, but if something goes wrong, you won''''t know how everything was set up in order to fix it. As a concrete goal, aim to set up Wordpress on a new host in <strong>a single script</strong>. Feel free to look at my examples for <a href="https://github.com/pietrorea/scripts/blob/master/ubuntu/setup.sh">VPS setup</a> and <a href="https://github.com/pietrorea/scripts/blob/master/ubuntu/install-wordpress.sh">Wordpress installation</a> if you find them helpful.</p>
<p>Happy hosting!</p>
</div>'', 1;

EXEC dbo.create_post 1, N''Pirates Spammed an Infamous Soviet Short-wave Radio Station with Memes'', N''<div class="short-form__body__article-lede-image">
<div class="short-form__lede-credit">&nbsp;
</div>
</div>
<div class="article__body-components" data-component="BodyComponentRenderer">
<div class="topic-callout">
<div class="topic-callout__img"><a href="https://www.vice.com/en/topic/cyber"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://video-images.vice.com/topics/57a205628cb727dec795a6b1/callout_logo/1614199980283-screen-shot-2021-02-24-at-34918-pm.png?resize=240:*" alt="Screen Shot 2021-02-24 at 3" width="301" height="298" /></a></div>
<div class="topic-callout__dek">Hacking. Disinformation. Surveillance. CYBER is Motherboard''''s podcast and reporting on the dark underbelly of the internet.</div>
<div class="topic-callout__cta"><a href="https://www.vice.com/en/topic/cyber">See More &rarr;
</a></div>
</div>
<p>Pirates hijacked an infamous short-wave radio station, which dates from the Soviet era but is still online today, and used it to broadcast everything from Gangnam Style to audio that draws memes when inspected under a spectrum analyzer.</p>
<p>For decades the numbers station known as UVB-76 <a href="https://www.wired.com/2011/09/ff-uvb76/" target="_blank" rel="noopener">has emitted an enigmatic series of beeps</a> and a voice <a href="https://www.iflscience.com/technology/explorers-found-their-way-into-the-abandoned-uvb76-numbers-station-this-is-what-they-saw/" target="_blank" rel="noopener">reading numbers and names</a>, in what people suspect is a long running communications method for Russian intelligence. Since the broadcast is public, pirates are able to use their software-defined radio (SDR) transmitters to effectively flood the frequencies with noise and memes.</p>
<p>The recent barrage of attacks on the station come as <a href="https://www.nbcnews.com/news/world/blinken-ukraine-russia-attack-short-notice-invasion-fears-mount-rcna12691" target="_blank" rel="noopener">Russia prepares to invade neighbouring Ukraine</a>, where radio enthusiasts speculate at least some of the pirate broadcasts originate.</p>
<p><a href="https://www.vice.com/en/article/ezvyyj/cubas-mysterious-numbers-station-is-still-on-the-air">Numbers stations</a> are short-wave radio stations known for their mysterious and cryptic broadcasts, long believed to be a method used by spy agencies to communicate with covert operatives. They typically involve voices reading off sequences of numbers, or timed pulses that can be decoded into messages. While many stations have become obsolete or redundant, several broadcasts remain on the air&mdash;much
to the fascination of amateur radio hobbyists.</p>
<div class="abc__tweety" data-component="TweetyBlock">
<div>
<div class="twitter-tweet twitter-tweet-rendered"><iframe id="twitter-widget-0" class="" style="width: 864px; height: 433px;" title="Twitter Tweet" src="https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfZXhwZXJpbWVudHNfY29va2llX2V4cGlyYXRpb24iOnsiYnVja2V0IjoxMjA5NjAwLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdHdlZXRfZW1iZWRfOTU1NSI6eyJidWNrZXQiOiJodGUiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3NwYWNlX2NhcmQiOnsiYnVja2V0Ijoib2ZmIiwidmVyc2lvbiI6bnVsbH19&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1483180058869121033&amp;lang=en&amp;origin=https%3A%2F%2Fwww.vice.com%2Fen%2Farticle%2Fy3vbjj%2Fpirates-spammed-an-infamous-soviet-short-wave-radio-station-with-memes-uvb-76&amp;sessionId=7c55725d98a2463543f31fc4b4d17d0452addcb1&amp;siteScreenName=vice&amp;theme=light&amp;widgetsVersion=75b3351%3A1642573356397&amp;width=550px" width="864" height="433" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen" data-tweet-id="1483180058869121033" data-mce-fragment="1"></iframe></div>
</div>
</div>
<div class="abc__tweety" data-component="TweetyBlock">
<div>
<div class="twitter-tweet twitter-tweet-rendered"><iframe id="twitter-widget-1" class="" style="width: 1254px; height: 627px;" title="Twitter Tweet" src="https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-1&amp;features=eyJ0ZndfZXhwZXJpbWVudHNfY29va2llX2V4cGlyYXRpb24iOnsiYnVja2V0IjoxMjA5NjAwLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdHdlZXRfZW1iZWRfOTU1NSI6eyJidWNrZXQiOiJodGUiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3NwYWNlX2NhcmQiOnsiYnVja2V0Ijoib2ZmIiwidmVyc2lvbiI6bnVsbH19&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1482573832443801604&amp;lang=en&amp;origin=https%3A%2F%2Fwww.vice.com%2Fen%2Farticle%2Fy3vbjj%2Fpirates-spammed-an-infamous-soviet-short-wave-radio-station-with-memes-uvb-76&amp;sessionId=7c55725d98a2463543f31fc4b4d17d0452addcb1&amp;siteScreenName=vice&amp;theme=light&amp;widgetsVersion=75b3351%3A1642573356397&amp;width=550px" width="1254" height="627" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen" data-tweet-id="1482573832443801604" data-mce-fragment="1"></iframe></div>
</div>
</div>
<div class="abc__tweety" data-component="TweetyBlock">
<div>
<div class="twitter-tweet twitter-tweet-rendered"><iframe id="twitter-widget-2" class="" style="width: 944px; height: 476px;" title="Twitter Tweet" src="https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-2&amp;features=eyJ0ZndfZXhwZXJpbWVudHNfY29va2llX2V4cGlyYXRpb24iOnsiYnVja2V0IjoxMjA5NjAwLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdHdlZXRfZW1iZWRfOTU1NSI6eyJidWNrZXQiOiJodGUiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3NwYWNlX2NhcmQiOnsiYnVja2V0Ijoib2ZmIiwidmVyc2lvbiI6bnVsbH19&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1484147868374085632&amp;lang=en&amp;origin=https%3A%2F%2Fwww.vice.com%2Fen%2Farticle%2Fy3vbjj%2Fpirates-spammed-an-infamous-soviet-short-wave-radio-station-with-memes-uvb-76&amp;sessionId=7c55725d98a2463543f31fc4b4d17d0452addcb1&amp;siteScreenName=vice&amp;theme=light&amp;widgetsVersion=75b3351%3A1642573356397&amp;width=550px" width="944" height="476" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen" data-tweet-id="1484147868374085632" data-mce-fragment="1"></iframe></div>
</div>
</div>
<p><a href="https://www.reddit.com/r/amateurradio/comments/s8jblw/the_russian_buzzer_uvb76_4625_broke_protocol/" target="_blank" rel="noopener">Another poster on Reddit uploaded an image</a> they said was from the UVB-76 broadcast of a V for Vendetta mask. Another broadcast <a href="https://twitter.com/redfox0x20/status/1483180058869121033?s=21" target="_blank" rel="noopener">included the trollface</a> meme.</p>
<blockquote class="abc__quote abc__quote--blockquote" data-component="QuoteBlock">
<p><em><strong>Do you know anything else about this hijacked broadcast? We''''d love to hear from you. Using a non-work phone or computer, you can contact Joseph Cox securely on Signal on +44 20 8133 5190, Wickr on josephcox, or email</strong></em>&nbsp;
<a href="mailto:joseph.cox@vice.com">joseph.cox@vice.com</a><em><strong>.</strong></em></p>
</blockquote>
<p>In around October 2010, the source of the broadcast moved, and a male voice identified the station with a new call sign: MDZhB. The following year, enthusiasts entered the broadcast&rsquo;s
original location in Povarovo, Russia, and <a href="https://www.gizmodo.com.au/2016/07/the-unexplained-signals-of-russian-station-uvb-76/" target="_blank" rel="noopener">allegedly found a log book which showed messages transmitted on UVB-76</a>.</p>
<p>For now, the excitement appears to be over. At the time of writing, <a href="https://www.youtube.com/watch?v=fUgzv-8_EMc" target="_blank" rel="noopener">a live feed of the UVB-76 stream</a> shows the station has returned to its characteristic, rhythmic beeps.</p>
</div>'', 1;

EXEC dbo.create_post 1, N''Preserving a floppy disk with a logic analyzer and a serial cable'', N''<h2>Introduction</h2>
<p>Being involved with retro computers, I have a few floppy disks (of the 3.5-inch variety) that I would like to preserve as faithfully as possible. Of course, I know there are dedicated devices for doing that, such as the <a href="https://www.kryoflux.com/">Kryoflux</a> or the <a href="http://www.cbmstuff.com/proddetail.php?prod=scp">SuperCard Pro</a>. But it occurred to me that I already own the required hardware to capture the low-level data from a floppy disk: my <a href="https://www.saleae.com/">Saleae Logic 8 logic analyzer</a>.<br />Side note: While I can only highly recommend the Saleae analyzers for their features and easy-to-use software, the things described here can also be done with other logic analyzers &ndash; including
those available for less than 10 &euro;
from your favorite Chinese online store &ndash;
and using, for example, the free <a href="https://sigrok.org/wiki/Supported_hardware#Logic_analyzers">Sigrok software</a>.</p>
<h2>A primer on the floppy drive interface</h2>
<p>Contrary to more modern mass storage devices such as ATA hard drives or USB sticks, the interface to a floppy drive is much more low-level. E.g., you can ask a modern hard drive to read sector 1337 and it will return you the bytes stored in that sector. In contrast, as soon as it is selected for reading and the disk is rotating, a floppy drive will simply give you a pulse each time the magnetic flux changes, i.e. whenever the magnetic field changes orientation. It is important to know that the magnetic field orientation does not directly represent the individual bits that are stored on the disk. Instead, an encoding scheme is always used. The details of the encoding differ between systems &ndash; which
is why you cannot read an Amiga disk in an Atari ST, for example. Regardless of the implementation, the encoding always needs to take care of several things: 1. Encode the data bits, obviously. 2. Clock recovery. This is essential because different drives may rotate at slightly different speeds and the floppy disk controller thus needs to determine the actual data rate. 3. Marking the start of a sector. This is often achieved by flux patterns that do not occur in regular data.</p>
<p>The following examples will consider MFM (modified frequency modulation) encoding as used in IBM PCs and Atari STs. It is important to note, however, that the floppy disk imaging is performed at raw flux level and as such will work with every encoding.</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/floppy-read-data.png" alt="" width="734" /></p>
<p>This image shows the signals involved in reading data from a floppy disk. The write
select signal, <em> write gate</em>, is forced high, which means deasserted, since floppy disks use active low logic signals.Then the disk drive will return flux transitions as pulses as described above
on the <em> read data </em> line.Only the falling edge is relevant.</p>
    <p>Furthermore, so that you know the duration of one revolution of the disk, the <em> index </em> signal provides one pulse for every revolution.During that time &ndash;
nominally
200 ms for a 300-rpm, 3.5-inch drive &ndash; an
entire track on the disk is read. The <em>side 1 select</em> signal tells the drive which side of the disk to read.</p>
<p>If you zoom in on the <em>read data</em> signal, you will see that &ndash;
for MFM encoding and DD (double density) disks &ndash; the
flux transitions are 4 &micro;s
, 6 &micro;s
or 8 &micro;s
apart.</p>
<p>How to tell the drive which track to read? There is no command instructing the drive to seek to, e.g., track 42 by itself. You have to provide step pulses &ndash; again
active low &ndash;
for each step the drive head is supposed to make inwards (towards higher track numbers) or outwards (towards lower track numbers), depending on the <em>direction</em> signal. The <em>track 0 </em>signal indicates when the head is at the outermost track.</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/floppy-step-signal-1.png" alt="" width="587" /></p>
<h2>Connecting the logic analyzer and capturing a first track</h2>
<p>With that knowledge, one can now connect the logic analyzer to the drive. The pinout of the floppy drive connector is shown below. All odd numbered pins are connected to ground.</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/floppy-connector.png" alt="" width="510" /></p>
<p>Note: A drive taken from an IBM-compatible PC is configured as <em>drive
select B < / em > and, thus, needs the <em>drive
select B</em> and <em>motor enable B</em> lines pulled low to be selected.<em> Write gate</em> of course needs to be pulled high.My drive is a modern one that only requires a +5 V power supply.Older drives might want the +12 V supply as well.</p> <p>The output signals, such as <em> read data </em> and <em> index </em>, are open -collector, meaning that a pull-up resistor to 5 V is needed.To minimize cross talk between the flying leads, I used logic analyzer channels 1 and 3 as well as proper grounding.With a DD floppy disk inserted and the motor now spinning, one can capture a trace
with the logic analyzer &ndash;
preferably
triggered on the falling edge of the <em>index</em> signal.</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/logic-analyzer-capture.png" alt="" width="931" /></p>
<p>This looks as expected. A histogram of the times between flux changes confirms that indeed 4 &micro;s
, 6 &micro;s
, and 8 &micro;s
prevail.</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/floppy-flux-timing-histogram.png" alt="" width="700" /></p>
<h2>Controlling the floppy drive</h2>
<p>In order to move the drive head, I resorted to another bit of hardware that was available: a USB serial cable. Mine is from FTDI, but every cable should work that not only exposes transmit and receive signals but also the control lines. I made the following connections:</p>
<p>RTS &rarr; direction
<br />DTR &rarr; side
1 select<br />TX &rarr; step
<br />CTS &larr; track
0<br />GND = GND</p>
<p>RTS and DTR are outputs that can be controlled from the serial cable. CTS is an input. Using TX (the transmit line) as step signal means that sending a 0xff byte will cause a single step pulse to the drive because of the start bit of the serial transmission. I verified this to work with a terminal program that allows me to arbitrarily set the control lines.</p>
<h2>Automating</h2>
<p>Capturing all 80 or more tracks of a floppy disk means that the process needs to be automated. Python comes in handy. Of course, a serial port can easily be controlled from a Python script (via the <a href="https://pythonhosted.org/pyserial/">pyserial module</a>). Fortunately, the Saleae software can be remote-controlled and there is a <a href="https://github.com/ppannuto/python-saleae">Python module for that</a>, as well. A minor issue I found is that the remote-control API does not expose all settings. Hence, I initialize the Saleae software from a previously saved settings file.</p>
<p>With my finished script, I can step through all the tracks on the floppy disk, capturing both sides, track by track, with the logic analyzer. Data is exported from the Saleae software and imported into Python for further processing. This mainly consists of trimming the data to one revolution of the disk by means of the <em>index </em>signal and of calculating the times between flux changes, i.e., the times between falling edges of the <em>read data</em> signal.</p>
<h2>Exporting the data</h2>
<p>Obviously, for preservation the captured data needs to be stored &ndash; preferably
in an already established format. I decided to go with the Supercard Pro (.scp) file format, because it is <a href="http://www.cbmstuff.com/downloads/scp/scp_image_specs.txt">well documented</a> and understood by third-party applications such as emulators. An scp file stores times between flux transitions, exactly the type of data that I capture with my setup. The Python script was quickly extended to produce the correct format including headers.</p>
<h2>Preserving the first disk</h2>
<p>With hardware and software now in place, one can now test everything. For the first test, I chose an unimportant disk, just in case some malfunction would damage it. The script ran, the floppy drive clicking every time the head moved one track further inwards. And in the
end, the scp file was generated! Its file size is roughly 14 MB. Considering that the disk only has a usable capacity of 720 kB, this shows how much more low-level information is preserved by imaging disks at magnetic flux level.</p>
<p>I used the <a href="https://hxc2001.com/download/floppy_drive_emulator/index.html">HxCFloppyEmulator software</a> to decode and interpret the data. It correctly decoded the individual sectors captured in the scp file, telling me that all 1440 sectors were decoded without error &ndash; proving
that my setup works without any issues!</p>
<p><img class="align_center" src="https://www.chzsoft.de/site/site/assets/files/1046/floppy-decoded.1232x0-is.png" alt="" width="1200" /></p>
<p>Also, one can make interesting discoveries. Consider this display of track 0, side 0 of my disk. The bit timings &ndash; drawn
as thick gray lines &ndash; show
the drive this disk was originally written with had some jitter, evidenced by the wavy lines. But the two sectors containing part of the FAT (file allocation table) were overwritten by a different drive with nearly perfect timing &ndash; marked
by orange boxes. Thus, you can even use this data to &ldquo;finger
-print&rdquo; a
floppy drive.</p>
<h2>Final remarks</h2>
<p>If you want to this try yourself, you can find my Python script in <a href="https://github.com/czietz/floppy-and-logic-analyzer">https://github.com/czietz/floppy-and-logic-analyzer</a>. You probably will have to adapt it to your hardware configuration.</p>
<p>There are some things that could be improved:</p>
<ul>
<li>The process is quite slow, requiring ca. 10 seconds per track, ca. 800 seconds for a full disk. Most of the time is spent in the Saleae Python API for capturing and exporting data. Perhaps, profiling can highlight potential bottlenecks.</li>
<li>To reliably preserve defective (or copy-protected) disks, it is sometimes required to save multiple revolutions per track. The scp file format allows for it; my
Python script could be extended accordingly.</li>
<li>Since in my setup the drive motor is always on, I have to switch off the power supply before changing disks. By using one of the general-purpose output pins of my serial cable, the <em>motor enable</em> signal could be controlled. However, these output pins cannot be set via pyserial.</li>
</ul>'', 1;

EXEC dbo.create_post 1, N''Conspiracy Theories About Facebook Outage Spread Even Without Facebook'', N''<p>&nbsp;
</p>
<div class="short-form__body__article-body">
<div class="short-form__body__article-lede-image">
<div><picture class="responsive-image responsive-image--loaded lazyloader--loaded lazyloader--fadeIn lazyloader--relative"><source srcset="https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=500:* 1x, https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=1000:* 2x" media="(min-width: 1000px)" /><source srcset="https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=600:* 1x, https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=1200:* 2x" media="(min-width: 700px)" /><source srcset="https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=300:* 1x, https://video-images.vice.com/articles/615b6232ec4d9500948ed7e7/lede/1633379183196-facebook.jpeg?crop=1xw:0.843xh;0xw,0.058xh&amp;resize=600:* 2x" media="(min-width: 0px)" /><img class="responsive-image__img" style="display: block; margin-left: auto; margin-right: auto;" alt="facebook" /></picture></div>
<div class="short-form__lede-credit">Image: Chip Somodevilla/Getty Images</div>
</div>
<div class="article__body-components" data-component="BodyComponentRenderer">
<p>Facebook, as well as WhatsApp and Instagram, have been gone from the internet for hours.&nbsp;
</p>
<p>Internet users, obviously, are freaking out. Facebook has said very little about what is actually happening, but the outage is currently seemingly affecting only Facebook and its services. Many experts believe it to be related to issues with internet infrastructure, specifically DNS and BGP.</p>
<p>Short for for Domain Name System, the DNS is a service that allows the internet to run by translating domains such as Facebook.com into IP addresses and vice versa. For some unknown reason, Facebook''''s DNS records, as well as BGP records, are gone from the internet. BGP (Border Gateway Protocol) is the system that figures out the best route for a packet to travel across the internet.</p>
<div class="abc__tweety" data-component="TweetyBlock">
<div>
<div class="twitter-tweet twitter-tweet-rendered"><iframe id="twitter-widget-0" class="" title="Twitter Tweet" src="https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfZXhwZXJpbWVudHNfY29va2llX2V4cGlyYXRpb24iOnsiYnVja2V0IjoxMjA5NjAwLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdHdlZXRfZW1iZWRfOTU1NSI6eyJidWNrZXQiOiJodGUiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3NwYWNlX2NhcmQiOnsiYnVja2V0Ijoib2ZmIiwidmVyc2lvbiI6bnVsbH19&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1445114730151043073&amp;lang=en&amp;origin=https%3A%2F%2Fwww.vice.com%2Fen%2Farticle%2F4avjqb%2Fconspiracy-theories-about-facebook-outage-spread-even-without-facebook&amp;sessionId=38a3158fcd95b5ac677df8036c5dc292279f9f29&amp;siteScreenName=vice&amp;theme=light&amp;widgetsVersion=75b3351%3A1642573356397&amp;width=550px" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen" data-tweet-id="1445114730151043073" data-mce-fragment="1"></iframe></div>
</div>
</div>
<p>In this information vacuum, however, conspiracy theorists have begun speculating that this is a massive hack, that it&rsquo;s
tied to Sunday night''''s &ldquo;
60 Minutes&rdquo; episode
in which <a href="https://www.vice.com/en/article/qj873p/facebook-whistleblower-says-company-chooses-profits-over-safety-all-the-time">a Facebook whistleblower said that Facebook is intentionally misleading the public</a> and the government on its efforts to curb hate speech and misinformation, or is otherwise related to Facebook''''s recent problems in the news.&nbsp;
</p>
<p>A music studio recording business <a href="https://twitter.com/benjaminenfield/status/1445104389014835213?s=21" target="_blank" rel="noopener">posted a screenshot</a> of what look to be a bunch of DNS addresses on Twitter and speculated that Facebook is gone forever, which quickly went viral with literally no context whatsoever. The screenshot <a href="https://twitter.com/PeterSlattery3/status/1445125197179277326" target="_blank" rel="noopener">appears to be stolen</a> from another Twitter account called KillFearNY, which describes itself as a creative and sports agency.</p>
<div class="article__embed-component" data-component="OEmbedBlock">
<div class="article__embed-component__content">
<div>
<div><iframe src="https://oembed.vice.com/cTpADvr" allowfullscreen="allowfullscreen" data-mce-fragment="1"></iframe></div>
</div>
</div>
</div>
<p>One of the most popular theories has centered around a supposed hack that resulted in 1.5 billion Facebook records being sold on a hacking forum. In this version, people are pointing to a September 22 post from a supposed company called X2Emails which has "more than 1.5b Database of Facebook these database scraped this year and 100% emails are included and phone as well" and is somehow connected to today''''s outage.</p>
<p>This theory doesn''''t even pass the smell test, though. The person who posted the advertisement doesn''''t even pretend the data was stolen from Facebook. The post says it was "scraped," and it only contains: "We only have these fields : Emails , Gender , Location , cities , dob , phone numbers , names , uid." Scraped databases of Facebook users show up all the time and have little or nothing to do with any sort of hack.</p>
<div class="body-image" data-component="ImageBlock">
<div class="body-image__img">
<div><picture class="responsive-image responsive-image--loaded lazyloader--loaded"><source srcset="https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=800:* 1x, https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=1600:* 2x" media="(min-width: 1000px)" /><source srcset="https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=600:* 1x, https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=1200:* 2x" media="(min-width: 700px)" /><source srcset="https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=400:* 1x, https://video-images.vice.com/_uncategorized/1633378945326-screen-shot-2021-10-04-at-35206-pm.png?resize=800:* 2x" media="(min-width: 0px)" /><img class="responsive-image__img" alt="Screenshot" /></picture></div>
</div>
<div class="body-image__caption">
<p>Screenshot of Raid Forum post. (Image: Motherboard)</p>
</div>
</div>
<p>What''''s worse&mdash;
or better depending on your point of view&mdash;
is that it''''s very likely that this is all a scam anyway.&nbsp;
</p>
<p>Another user in the forum thread alerted others not to trust the seller.</p>
<p>"Scammer. Only sends [a sample of] 20 users. There is no more. Doesn''''t accept escrow(moderator). But he expects you to believe in 20 samples and send $5,000.&nbsp; Instead of 1.5 billion, I think there are 150 users of data for social engineering.&nbsp; "</p>
<p>Aric Toler, a researcher at Bellingcat, <a href="https://twitter.com/AricToler/status/1445100884740935686" target="_blank" rel="noopener">was one of the first ones to report</a> that people should be cautious and not take this at face value.&nbsp;
</p>
<p>The fact that some wannabe hacker advertises scraped data on a hacking forum that anyone can access is nothing new. It happens every other week. Sometimes, hackers who post on Raid Forums do have real hacked data, but sometimes they&rsquo;re
just trying to scam other users.</p>
<p>Even other forum users are not taking it seriously.</p>
<p>"Hahahaha 600 TB of Mark Zucker burger selfies :D," one user posted in a chat.&nbsp;
</p>
<p>Facebook could not be reached for comment because of the outage, which nonetheless has seemingly caused mass chaos not just online but offline, too. Reporters at the <em>New York Times</em>, for example, <a href="https://twitter.com/sheeraf/status/1445099150316503057" target="_blank" rel="noopener">have noted</a> that Facebook employees have been unable to get into certain buildings. Facebook employees have also had to communicate with each other <a href="https://twitter.com/MikeIsaac/status/1445118465258364928" target="_blank" rel="noopener">using secondary messaging services like Discord and Zoom</a>.&nbsp;
</p>
<p>In January of this year, <a href="https://www.vice.com/en/article/xgz7bd/facebook-phone-numbers-bot-telegram">Motherboard reported on a real incident</a> where attackers scraped Facebook, obtaining a database of 500 million accounts. That database included phone numbers of people who actively tried to keep that information private. Two months later someone dumped the database on a hacking forum, <a href="https://www.businessinsider.com/stolen-data-of-533-million-facebook-users-leaked-online-2021-4" target="_blank" rel="noopener">according to reports at the time</a>.</p>
<p>We''''re still not sure what''''s happening at Facebook, and an outage of this severity and length is unprecedented in Facebook history. There may very well be a very interesting explanation for the outage, but we simply don''''t know enough to say what caused it yet. One thing we&rsquo;ve
learned, though, is that conspiracy theories can spread across the internet just fine without Facebook.</p>
</div>
</div>'', 1;
COMMIT TRAN