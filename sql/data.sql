USE SimpleCMS;

EXEC dbo.insert_option @Name = 'admin.email', @Value = 'fadsfsdfadf@gmail.com';
EXEC dbo.insert_option 'site.title', 'Blog made Simple'
EXEC dbo.insert_option 'site.copyright', 'kingtech Media 2022'

EXEC dbo.create_user 'Glenford', 'Williams', 'glen@gmail.com', 'supersecret',
     'kingwill'
GO

EXEC dbo.create_post 1, 'The start of something great article about today', 'Today in history'
GO

EXEC dbo.read_postById 1


DECLARE @pw AS VARCHAR(50) = (SELECT pw
                              FROM cms_users
                              WHERE id = 2);
EXEC dbo.update_user 1, 'Glenford', 'Williams', 'glenfr', 'fasdfasd', 1, @pw

BEGIN tran
EXEC dbo.create_post 1, 'Google abandons FLoC, introduces Topics API to replace tracking cookies', N''
EXEC dbo.create_post 1, 'The start of something great article about today', 'Today in history'
EXEC dbo.create_post 1,
     "Clean energy firm Husk signs UN energy compact as it begins solar mini-grid expansion in Nigeria, rest of Africa", N'"<div class=""content-wrap"">
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
    </div>";'
EXEC dbo.create_post 1, N'Baidu’s electric car brand Jidu closes $400M Series A round', N'<p><img class=""article__featured-image article__featured-image--block"" src=""https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=730&amp;crop=1"" sizes=""(max-width: 730px) 100vw, (max-width: 1600px) 75vw, 1390px"" srcset=""https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=400&amp;crop=1 400w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=730&amp;crop=1 730w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=990&amp;crop=1 990w, https://techcrunch.com/wp-content/uploads/2022/01/Screen-Shot-2022-01-26-at-4.02.20-PM.png?w=1390&amp;crop=1 1390w"" alt=""jidu baidu"" /></p>
    <div class=""image-credits"">
    <p><strong>Image Credits:&nbsp;</strong>Teaser of Jidu/s concept robocar</p>
    </div>
    <div class=""article-content"">
    <p id=""speakable-summary"">Once an industry with long development cycles, the automotive space is being upended by China&rsquo;s tech giants. One can hardly keep up with all the new electric vehicle brands that come out of the country nowadays. Jidu, an electric carmaking company founded by Baidu and its Chinese auto partner Geely&nbsp;<a href=""https://techcrunch.com/2021/01/10/baidu-electric-car-making/"" target=""_blank"" rel=""noopener"">only a year ago</a>,&nbsp;<a href=""https://mp.weixin.qq.com/s/vKWptyDilbcNO46bu6AQfA"" target=""_blank"" rel=""noopener"">said</a>&nbsp;Wednesday it has banked nearly $400 million in a Series A funding round.</p>
    <p>The new injection, bankrolled by Baidu and Geely, which owns Volvo, is a boost to the $300 million initiation capital that Jidu closed last March. The proceeds will speed up Jidu&rsquo;s R&amp;D and mass production process and allow it to showcase its first concept &ldquo;robocar&rdquo; &mdash; which it classifies as an automotive robot rather than a car &mdash; at the Beijing auto show in April. The mass-produced version of the robocar will launch in 2023.</p>
    <p>Jidu&rsquo;s chief executive<a href=""https://www.britishcouncil.cn/en/alumni/alumniawards2019/xyp"" target=""_blank"" rel=""noopener"">&nbsp;Xia Yiping</a>&nbsp;previously headed the connected car unit of Fiat Chrysler in the APAC region and co-founded Mobike, the Chinese bike-sharing pioneer&nbsp;<a href=""https://techcrunch.com/2018/04/03/chinese-bike-sharing-pioneer-mobike-sold-to-ambitious-meituan-dianping-for-2-7b/"" target=""_blank"" rel=""noopener"">acquired by Meituan</a>&nbsp;in 2018.</p>
    <div id=""tc-target-mid-article-2262365"" class=""tc-target-mid-article ad-unit--size-auto""></div>
    <p>The rate at which Jidu has moved forward is remarkable but could easily attract skeptics who question its tech&rsquo;s viability. The speedy cycle, the carmaker&nbsp;<a href=""https://mp.weixin.qq.com/s/3RuGFwiNEwoL2N-oJtDJEg"" target=""_blank"" rel=""noopener"">explained</a>, is thanks to its strategy of using a simulated prototype car to develop its smart cockpit and autonomous driving systems, rather than testing individual hardware parts in a mass-produced vehicle.</p>
    <p>The carmaker said in as short as nine months, it has &ldquo;tested and proven&rdquo; the safety and reliability of its Level 4 (autonomous driving without human interaction in most circumstances) capabilities for urban and highway roads.</p>
    <p>The EV startup is also putting a big emphasis on branding and fan community, something&nbsp;<a href=""https://techcrunch.com/2021/11/09/nio-global-expansion/"" target=""_blank"" rel=""noopener"">its competitor Nio is known for.</a>&nbsp;In December, it&nbsp;<a href=""https://mp.weixin.qq.com/s/vKWptyDilbcNO46bu6AQfA"" target=""_blank"" rel=""noopener"">started recruiting</a>&nbsp;car lovers to join its &ldquo;Jidu Union&rdquo; to geek out about cars at online and offline events.</p>
    <p>Moving forward, Jidu will be hiring and training talent specializing in autonomous driving, smart cockpits, smart manufacturing and other related technologies.</p>
    </div>
    ';
EXEC dbo.create_post 1, 'Resilience raises $45 million for its cancer care startup', N'"<p><img class=""article__featured-image article__featured-image--block"" src=""https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=730&amp;crop=1"" sizes=""(max-width: 730px) 100vw, (max-width: 1600px) 75vw, 1390px"" srcset=""https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=400&amp;crop=1 400w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=730&amp;crop=1 730w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=990&amp;crop=1 990w, https://techcrunch.com/wp-content/uploads/2021/03/Resilience-Team.jpg?w=1390&amp;crop=1 1390w"" alt=""Resilience &amp;#8211; Team"" /></p>
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
</article>"';
COMMIT TRAN