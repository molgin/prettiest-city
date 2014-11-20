# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.create(
    name: "New York City",
    multipolygon_json: "{\"type\":\"MultiPolygon\",\"coordinates\":[[[[-74.04036099999999,40.700475999999995],[-74.040312,40.700539],[-74.040177,40.700604999999996],[-74.040064,40.700635],[-74.039932,40.700652999999996],[-74.039795,40.700627],[-74.039726,40.70059],[-74.039608,40.700538],[-74.039491,40.700509],[-74.039403,40.700468],[-74.03833,40.699248999999995],[-74.0382,40.699217999999995],[-74.038141,40.699149999999996],[-74.03817599999999,40.699087],[-74.03829499999999,40.699031999999995],[-74.03844099999999,40.698972],[-74.038583,40.698916],[-74.038815,40.698879999999996],[-74.03897599999999,40.698865],[-74.039204,40.698868],[-74.039324,40.698909],[-74.039391,40.698977],[-74.03943199999999,40.699081],[-74.03949,40.699152999999995],[-74.039565,40.699177],[-74.039631,40.699134],[-74.03966299999999,40.699079999999995],[-74.039732,40.699025999999996],[-74.039817,40.699009],[-74.040155,40.699276],[-74.039665,40.699276],[-74.039734,40.699373],[-74.03987599999999,40.699447],[-74.040003,40.699546999999995],[-74.040106,40.699618],[-74.04015,40.699737],[-74.04017,40.699836999999995],[-74.04017499999999,40.699908],[-74.04010099999999,40.700033999999995],[-74.040121,40.700101],[-74.04020899999999,40.700142],[-74.040292,40.700171],[-74.040302,40.700275],[-74.040346,40.700387],[-74.04036099999999,40.700475999999995]]],[[[-74.047133,40.690542],[-74.04710399999999,40.690563999999995],[-74.047119,40.690646],[-74.047184,40.690684999999995],[-74.047212,40.690723],[-74.047234,40.69085],[-74.047249,40.690999],[-74.047169,40.691114],[-74.047097,40.691142],[-74.04689499999999,40.691125],[-74.046568,40.691147],[-74.04626499999999,40.691158],[-74.04607,40.691185],[-74.04585999999999,40.691102],[-74.04529699999999,40.690899],[-74.044848,40.690728],[-74.04453099999999,40.690584],[-74.044279,40.690463],[-74.044048,40.690309],[-74.043931,40.690225],[-74.043917,40.690214999999995],[-74.043773,40.690083],[-74.04366399999999,40.689935],[-74.043556,40.689724999999996],[-74.043521,40.689588],[-74.04351299999999,40.689274],[-74.043556,40.689147],[-74.04358599999999,40.688981999999996],[-74.043658,40.688860999999996],[-74.043803,40.688756999999995],[-74.043977,40.688658],[-74.044208,40.688607999999995],[-74.04439599999999,40.688542],[-74.044569,40.688581],[-74.044794,40.688658],[-74.045074,40.688735],[-74.04536999999999,40.688877999999995],[-74.045616,40.689022],[-74.045883,40.689143],[-74.046144,40.68927],[-74.04647,40.68949],[-74.04657,40.689639],[-74.046751,40.689859],[-74.046995,40.690173],[-74.047285,40.690503],[-74.047133,40.690542]]],[[[-74.259089,40.499561],[-74.259089,40.499871999999996],[-74.25908799999999,40.500112],[-74.25908799999999,40.500133999999996],[-74.259089,40.500465],[-74.25909,40.500983],[-74.259089,40.502278],[-74.259089,40.50289],[-74.25857599999999,40.506112],[-74.258556,40.506232],[-74.258473,40.506752999999996],[-74.25837,40.507397],[-74.258291,40.507905],[-74.258262,40.507964],[-74.257192,40.510244],[-74.256984,40.510687999999995],[-74.25634,40.512066999999995],[-74.255924,40.512958],[-74.255488,40.513889999999996],[-74.255149,40.514618],[-74.25480999999999,40.515344],[-74.254417,40.515719],[-74.253038,40.516583],[-74.25166,40.517448],[-74.24606899999999,40.520952],[-74.24607,40.520972],[-74.246084,40.521293],[-74.24609699999999,40.521614],[-74.246408,40.524356999999995],[-74.24653599999999,40.524778999999995],[-74.248787,40.533032999999996],[-74.250205,40.539629],[-74.250609,40.541851],[-74.249274,40.544922],[-74.249211,40.545063999999996],[-74.247415,40.5492],[-74.239211,40.553764],[-74.233052,40.557609],[-74.232788,40.557773],[-74.232525,40.557938],[-74.232152,40.558158],[-74.232134,40.55817],[-74.231926,40.558310999999996],[-74.23169299999999,40.558457],[-74.230992,40.558395999999995],[-74.230312,40.558336],[-74.230291,40.558333999999995],[-74.229685,40.558281],[-74.22908,40.558228],[-74.22824,40.558130999999996],[-74.2274,40.558034],[-74.225956,40.557868],[-74.224513,40.557701],[-74.218398,40.556996],[-74.216839,40.558617999999996],[-74.216816,40.558642],[-74.2167,40.558763],[-74.216583,40.558884],[-74.216028,40.559461],[-74.215473,40.560038],[-74.215278,40.560241],[-74.21221,40.568177],[-74.21148099999999,40.570062],[-74.210779,40.571877],[-74.210752,40.571948],[-74.20985999999999,40.574256],[-74.208968,40.576563],[-74.20829599999999,40.579052],[-74.20826699999999,40.579193],[-74.208257,40.579242],[-74.208237,40.579333999999996],[-74.20751899999999,40.582741],[-74.206802,40.586148],[-74.20629799999999,40.588542],[-74.203688,40.592690999999995],[-74.19951999999999,40.597539],[-74.199519,40.597564999999996],[-74.199488,40.598287],[-74.19945799999999,40.599008999999995],[-74.199421,40.59988],[-74.19940799999999,40.600201],[-74.203813,40.605961],[-74.20375899999999,40.606604],[-74.20312799999999,40.614109],[-74.202541,40.616175],[-74.202434,40.61655],[-74.201864,40.618556999999996],[-74.20316199999999,40.622485999999995],[-74.20373699999999,40.624227],[-74.203485,40.625057999999996],[-74.202441,40.628521],[-74.202247,40.630902999999996],[-74.20152999999999,40.6316],[-74.20100000000001,40.632115],[-74.200469,40.63263],[-74.197428,40.63543],[-74.197136,40.635698999999995],[-74.19709399999999,40.635737],[-74.197063,40.635766],[-74.19699,40.635832],[-74.196505,40.636496],[-74.19601999999999,40.637161],[-74.195842,40.637404],[-74.195711,40.637583],[-74.195664,40.637648],[-74.19564299999999,40.637667],[-74.19348099999999,40.639669999999995],[-74.191298,40.641691],[-74.190489,40.64244],[-74.18968,40.643187999999995],[-74.189216,40.643561],[-74.188754,40.643934],[-74.188549,40.6441],[-74.188344,40.644264],[-74.187797,40.644604],[-74.187754,40.644631],[-74.186776,40.64524],[-74.185636,40.645995],[-74.18139,40.646474999999995],[-74.180548,40.646381999999996],[-74.179071,40.646215],[-74.177595,40.646049],[-74.170611,40.645289],[-74.16170699999999,40.644321999999995],[-74.161563,40.644306],[-74.16149,40.644298],[-74.161374,40.644284999999996],[-74.15953499999999,40.644054],[-74.158255,40.643895],[-74.157977,40.64386],[-74.157699,40.643825],[-74.156432,40.643667],[-74.153509,40.64333],[-74.14938099999999,40.642855],[-74.143255,40.642148999999996],[-74.142077,40.642246],[-74.141977,40.642263],[-74.141899,40.642275999999995],[-74.135904,40.643332],[-74.135817,40.643347999999996],[-74.133912,40.643684],[-74.1318,40.643755],[-74.130022,40.643815],[-74.128151,40.643902],[-74.125569,40.644023],[-74.124107,40.644451],[-74.12383,40.644532],[-74.123553,40.644613],[-74.122114,40.645033999999995],[-74.12067499999999,40.645455999999996],[-74.116509,40.646451],[-74.112343,40.647445999999995],[-74.109976,40.648011],[-74.10631599999999,40.648061999999996],[-74.10504,40.64808],[-74.100247,40.648148],[-74.094178,40.648233],[-74.093746,40.648239],[-74.091253,40.649443999999995],[-74.090582,40.64977],[-74.087418,40.6513],[-74.086806,40.651596],[-74.077261,40.651731],[-74.074415,40.651771],[-74.07157,40.651812],[-74.055739,40.651759999999996],[-74.054622,40.653406],[-74.054547,40.65354],[-74.05435,40.653856],[-74.054332,40.653875],[-74.05430199999999,40.653907],[-74.053484,40.655203],[-74.053229,40.655657],[-74.053016,40.656031999999996],[-74.052802,40.656408],[-74.052292,40.657303999999996],[-74.051783,40.6582],[-74.05136999999999,40.658926],[-74.05081799999999,40.659848],[-74.050495,40.660385],[-74.050485,40.660402],[-74.05015,40.660834],[-74.049786,40.661303],[-74.049594,40.661622],[-74.048937,40.662701999999996],[-74.04822,40.663905],[-74.047663,40.664832],[-74.045951,40.66768],[-74.044669,40.669813],[-74.04350699999999,40.671745],[-74.04275899999999,40.672988],[-74.035057,40.68394],[-74.034905,40.684231],[-74.034573,40.684866],[-74.032939,40.687782999999996],[-74.02628399999999,40.699902],[-74.02597,40.701623999999995],[-74.0254,40.704739],[-74.024945,40.707232999999995],[-74.024543,40.709436],[-74.02388599999999,40.713032],[-74.02373,40.713888],[-74.023386,40.715773999999996],[-74.02255099999999,40.720349999999996],[-74.022511,40.720573],[-74.02196099999999,40.723586],[-74.021588,40.725088],[-74.02156099999999,40.725218],[-74.02151599999999,40.725448],[-74.02111599999999,40.727421],[-74.021104,40.727467999999995],[-74.021076,40.727582],[-74.020775,40.728811],[-74.020724,40.729016],[-74.020405,40.730320999999996],[-74.019809,40.732752],[-74.01935999999999,40.734587999999995],[-74.018926,40.736357],[-74.01825099999999,40.739117],[-74.01807,40.739852],[-74.017867,40.740677999999996],[-74.017138,40.743652999999995],[-74.017022,40.744127],[-74.016784,40.745101],[-74.015677,40.749347],[-74.01548,40.750101],[-74.013784,40.756600999999996],[-74.01337699999999,40.757219],[-74.0124,40.758706],[-74.011493,40.760085],[-74.01112599999999,40.760645],[-74.009852,40.762585],[-74.009799,40.762665999999996],[-74.009672,40.762859],[-74.00952,40.76309],[-74.00918399999999,40.763601],[-74.00827,40.764846999999996],[-74.005854,40.768148],[-74.005083,40.769200999999995],[-74.004328,40.77024],[-74.00138299999999,40.774301],[-74.001327,40.774384],[-74.000219,40.776047],[-73.999583,40.777001],[-73.999583,40.777158],[-73.998575,40.778597],[-73.997768,40.77975],[-73.997383,40.780301],[-73.995811,40.782396],[-73.995705,40.782534999999996],[-73.994765,40.783789],[-73.993842,40.785022],[-73.99288299999999,40.786301],[-73.99198299999999,40.787600999999995],[-73.991618,40.788109999999996],[-73.99130099999999,40.78855],[-73.98995699999999,40.790424],[-73.988123,40.792981],[-73.986256,40.795584999999996],[-73.984883,40.7975],[-73.984923,40.797517],[-73.984889,40.797562],[-73.98440699999999,40.798198],[-73.982512,40.800705],[-73.98058,40.803261],[-73.979886,40.804181],[-73.97876099999999,40.805667],[-73.977021,40.807969],[-73.974882,40.8108],[-73.97157299999999,40.815616999999996],[-73.97113,40.81626],[-73.970621,40.817001999999995],[-73.970112,40.817743],[-73.968081,40.820701],[-73.96798299999999,40.820826],[-73.96728999999999,40.821704],[-73.966596,40.822581],[-73.966151,40.823144],[-73.965986,40.823352],[-73.965706,40.823706],[-73.965138,40.824425],[-73.965092,40.824483],[-73.963657,40.826298],[-73.963182,40.8269],[-73.962349,40.828807999999995],[-73.96145,40.830869],[-73.961198,40.831447],[-73.959915,40.834384],[-73.958608,40.837381],[-73.958382,40.837900000000005],[-73.957621,40.839647],[-73.955534,40.844435999999995],[-73.953982,40.848],[-73.953482,40.849000000000004],[-73.952128,40.851448],[-73.952056,40.851583],[-73.948385,40.858471],[-73.94776499999999,40.85955],[-73.945914,40.862545],[-73.94529899999999,40.863541999999995],[-73.94388599999999,40.865854],[-73.943207,40.866974],[-73.943111,40.867132],[-73.942864,40.867539],[-73.941856,40.869135],[-73.94112799999999,40.870374],[-73.94020499999999,40.871832999999995],[-73.939562,40.872912],[-73.93900599999999,40.873815],[-73.93855599999999,40.874503],[-73.938385,40.874775],[-73.938171,40.875116],[-73.933808,40.882214],[-73.933652,40.882463],[-73.93172899999999,40.885577999999995],[-73.92982099999999,40.888681999999996],[-73.92945499999999,40.889621999999996],[-73.929428,40.889692],[-73.929187,40.890308],[-73.928294,40.892562],[-73.92724199999999,40.895198],[-73.92711899999999,40.895496],[-73.926549,40.896879],[-73.925922,40.898477],[-73.925665,40.899150999999996],[-73.924953,40.901018],[-73.924235,40.902736],[-73.923842,40.903675],[-73.923307,40.905062],[-73.922467,40.907236],[-73.92096699999999,40.911012],[-73.920087,40.913128],[-73.919898,40.913604],[-73.919097,40.914806],[-73.918795,40.915971],[-73.918494,40.917134],[-73.91840499999999,40.917477],[-73.918352,40.917488],[-73.918128,40.917532],[-73.91790499999999,40.917577],[-73.910808,40.915372],[-73.910516,40.915282],[-73.910279,40.915186999999996],[-73.910006,40.915076],[-73.90949599999999,40.914930999999996],[-73.909471,40.914924],[-73.90884,40.914753999999995],[-73.90881399999999,40.914747],[-73.908328,40.914615999999995],[-73.90830199999999,40.914609],[-73.905947,40.913948],[-73.905911,40.913938],[-73.90419399999999,40.91346],[-73.903806,40.913353],[-73.90245399999999,40.912979],[-73.902106,40.912879],[-73.900697,40.912380999999996],[-73.89997,40.912132],[-73.899789,40.912071999999995],[-73.89950499999999,40.911978],[-73.898682,40.911871],[-73.89811999999999,40.911798],[-73.897424,40.911693],[-73.89735999999999,40.911671999999996],[-73.89725299999999,40.911654999999996],[-73.89663399999999,40.911324],[-73.896543,40.911293],[-73.892799,40.910058],[-73.89220499999999,40.909878],[-73.891928,40.909808999999996],[-73.89180499999999,40.909777999999996],[-73.88839399999999,40.908719999999995],[-73.887984,40.908592999999996],[-73.886237,40.908052],[-73.88616499999999,40.90803],[-73.886124,40.908015999999996],[-73.88601,40.907979],[-73.885401,40.907976999999995],[-73.884832,40.907723],[-73.884726,40.907685],[-73.88424599999999,40.907512],[-73.88412699999999,40.907503],[-73.884106,40.907500999999996],[-73.88405399999999,40.907497],[-73.882993,40.907423],[-73.882829,40.907382],[-73.88182499999999,40.907134],[-73.88144299999999,40.907004],[-73.880929,40.90683],[-73.880637,40.906745],[-73.880111,40.906591],[-73.879531,40.906441],[-73.879239,40.906365],[-73.878827,40.906188],[-73.87835,40.905983],[-73.87822,40.905983],[-73.87818899999999,40.905983],[-73.878012,40.905964999999995],[-73.877855,40.905922],[-73.877741,40.905888],[-73.877628,40.905854],[-73.876588,40.905539],[-73.87645499999999,40.905497],[-73.876229,40.905429999999996],[-73.875599,40.905243999999996],[-73.875559,40.905232],[-73.874797,40.90501],[-73.874623,40.904959999999996],[-73.874087,40.904807],[-73.873949,40.904767],[-73.872913,40.904467],[-73.87273499999999,40.904415],[-73.87093999999999,40.903887],[-73.87073099999999,40.903825999999995],[-73.869046,40.903332999999996],[-73.867876,40.902983],[-73.866952,40.902474999999995],[-73.865635,40.902086],[-73.865268,40.901962],[-73.865256,40.901958],[-73.86466899999999,40.901793],[-73.862878,40.901529],[-73.86286,40.901525],[-73.86264299999999,40.901474],[-73.862557,40.901427],[-73.86240099999999,40.901340999999995],[-73.86204099999999,40.901202999999995],[-73.86158999999999,40.901050999999995],[-73.860956,40.900846],[-73.86077499999999,40.900787],[-73.860321,40.900638],[-73.86025699999999,40.900616],[-73.86010399999999,40.900577999999996],[-73.860006,40.900565],[-73.859949,40.900558],[-73.859808,40.90054],[-73.85959,40.900513],[-73.85931,40.900479],[-73.8593,40.900493999999995],[-73.85920399999999,40.900878],[-73.85921499999999,40.900906],[-73.859308,40.901137999999996],[-73.859404,40.901378],[-73.859037,40.901469999999996],[-73.859003,40.901478],[-73.85901799999999,40.901492999999995],[-73.859303,40.901778],[-73.859392,40.901894999999996],[-73.85960399999999,40.902178],[-73.85911399999999,40.902471999999996],[-73.859104,40.902477999999995],[-73.859014,40.902432999999995],[-73.858469,40.902159999999995],[-73.858302,40.902077],[-73.858221,40.902335],[-73.8582,40.902378999999996],[-73.858042,40.902443999999996],[-73.85792,40.902494],[-73.85782499999999,40.902533],[-73.857805,40.902539999999995],[-73.85770699999999,40.902572],[-73.857199,40.902878],[-73.857,40.903579],[-73.85700299999999,40.903735999999995],[-73.857004,40.903819999999996],[-73.857004,40.903861],[-73.857004,40.904041],[-73.857004,40.904168999999996],[-73.857004,40.904378],[-73.857079,40.904416],[-73.857232,40.904492999999995],[-73.857404,40.904579],[-73.857449,40.904601],[-73.857587,40.904669],[-73.857449,40.904837],[-73.857321,40.905017],[-73.857136,40.904984999999996],[-73.85710399999999,40.904979],[-73.856956,40.904953],[-73.856697,40.90491],[-73.856434,40.905027],[-73.856394,40.905045],[-73.85631,40.905083],[-73.856151,40.905153],[-73.856118,40.905167999999996],[-73.85612499999999,40.905192],[-73.856156,40.905297999999995],[-73.856186,40.905401999999995],[-73.856279,40.905727999999996],[-73.856326,40.905801],[-73.856325,40.905966],[-73.856324,40.906166],[-73.85622699999999,40.906119],[-73.85615299999999,40.906082],[-73.85610799999999,40.90606],[-73.85607399999999,40.90606],[-73.855997,40.90606],[-73.85574,40.90606],[-73.855687,40.90606],[-73.85557399999999,40.906121999999996],[-73.85553399999999,40.906144],[-73.85531499999999,40.906262999999996],[-73.855104,40.906378],[-73.854704,40.906577999999996],[-73.854128,40.906675],[-73.85410399999999,40.906679],[-73.854007,40.906842],[-73.853802,40.907179],[-73.853804,40.907681],[-73.854295,40.907916],[-73.854393,40.907962999999995],[-73.854496,40.908017],[-73.85476799999999,40.908159],[-73.854796,40.908173],[-73.85488099999999,40.908217],[-73.854342,40.908974],[-73.85423399999999,40.909009999999995],[-73.85403699999999,40.909231],[-73.85399699999999,40.909276],[-73.853713,40.909447],[-73.852935,40.909918999999995],[-73.8529,40.909915999999996],[-73.852678,40.909898999999996],[-73.852184,40.909515],[-73.851379,40.910044],[-73.851123,40.910008999999995],[-73.851484,40.909591999999996],[-73.851812,40.909228999999996],[-73.851872,40.909158999999995],[-73.852046,40.908958999999996],[-73.85207799999999,40.908887],[-73.852369,40.908879999999996],[-73.85271399999999,40.908446],[-73.85306899999999,40.908021],[-73.853528,40.907464999999995],[-73.85279,40.907073],[-73.85260099999999,40.906977],[-73.852564,40.906968],[-73.852204,40.906878],[-73.851506,40.906645],[-73.851304,40.906577999999996],[-73.851057,40.906458],[-73.851019,40.906501999999996],[-73.850661,40.906925],[-73.850518,40.907123999999996],[-73.85045199999999,40.907182999999996],[-73.85042299999999,40.907207],[-73.850331,40.907281999999995],[-73.850225,40.907368],[-73.849126,40.906923],[-73.848803,40.906791999999996],[-73.848732,40.906763],[-73.848683,40.906743],[-73.847071,40.906172999999995],[-73.84679899999999,40.906078],[-73.846256,40.905842],[-73.846104,40.905777],[-73.84540299999999,40.905604],[-73.84532,40.905581999999995],[-73.844847,40.90531],[-73.844728,40.904731999999996],[-73.844713,40.904624999999996],[-73.844702,40.904177],[-73.84438899999999,40.904095999999996],[-73.844301,40.904078],[-73.84336499999999,40.90408],[-73.843305,40.90408],[-73.84232,40.903988999999996],[-73.842308,40.903988],[-73.842221,40.903985999999996],[-73.841318,40.903987],[-73.841291,40.903912999999996],[-73.841281,40.903886],[-73.84113599999999,40.903487],[-73.841062,40.903214],[-73.841048,40.903161999999995],[-73.841017,40.902978999999995],[-73.840999,40.902812],[-73.840958,40.902516],[-73.840873,40.901979],[-73.84083199999999,40.901818999999996],[-73.84078699999999,40.901693],[-73.840729,40.901567],[-73.84065,40.901413999999995],[-73.84056199999999,40.901284],[-73.840445,40.901123999999996],[-73.84021,40.900804],[-73.84018999999999,40.900777],[-73.84017899999999,40.900762],[-73.840172,40.900753],[-73.840159,40.900735],[-73.840085,40.900634],[-73.840049,40.900585],[-73.840036,40.900566999999995],[-73.83936299999999,40.899713],[-73.839287,40.899594],[-73.839221,40.899474999999995],[-73.839185,40.89936],[-73.83915499999999,40.899226],[-73.839154,40.899198999999996],[-73.83914899999999,40.899060999999996],[-73.839208,40.898818999999996],[-73.839241,40.898744],[-73.839257,40.898707],[-73.83939099999999,40.89841],[-73.83950999999999,40.898184],[-73.839649,40.897891],[-73.83972,40.897694],[-73.83972399999999,40.897633],[-73.83971799999999,40.897511],[-73.839696,40.897385],[-73.839677,40.897323],[-73.839655,40.897248999999995],[-73.839615,40.89714],[-73.839411,40.896693],[-73.838985,40.895602],[-73.838407,40.894061],[-73.837368,40.893820999999996],[-73.83733699999999,40.893814],[-73.836282,40.893530999999996],[-73.835605,40.893315],[-73.835174,40.89317],[-73.833595,40.892706],[-73.83271599999999,40.892443],[-73.8327,40.892438],[-73.832503,40.892376999999996],[-73.831856,40.892216999999995],[-73.83170299999999,40.892178],[-73.830972,40.891935],[-73.830818,40.891878999999996],[-73.83008699999999,40.8917],[-73.830022,40.891686],[-73.828716,40.891273999999996],[-73.828125,40.891051],[-73.82794299999999,40.890927999999995],[-73.827269,40.890797],[-73.827224,40.890785],[-73.825256,40.890248],[-73.82524099999999,40.890243999999996],[-73.825002,40.890178],[-73.82440299999999,40.889978],[-73.82402499999999,40.889978],[-73.82400899999999,40.889978],[-73.824047,40.889866],[-73.82403599999999,40.889823],[-73.824017,40.88975],[-73.82396299999999,40.889762999999995],[-73.823781,40.889809],[-73.823607,40.889852999999995],[-73.823557,40.889865],[-73.823555,40.889869999999995],[-73.823573,40.889882],[-73.82359799999999,40.889956],[-73.82368,40.890029999999996],[-73.823689,40.890076],[-73.82367099999999,40.890136999999996],[-73.823661,40.89017],[-73.82365,40.890338],[-73.823634,40.890391],[-73.823617,40.890412999999995],[-73.823576,40.890426],[-73.823527,40.890429999999995],[-73.823373,40.890415999999995],[-73.823303,40.890420999999996],[-73.823172,40.890544999999996],[-73.82312,40.890648],[-73.82311299999999,40.890777],[-73.823132,40.890871],[-73.823205,40.890918],[-73.823256,40.890961],[-73.823302,40.890989],[-73.82328199999999,40.891082],[-73.823244,40.891199],[-73.823003,40.891078],[-73.822959,40.891056],[-73.821703,40.89073],[-73.820994,40.890543],[-73.81971899999999,40.890206],[-73.819558,40.890163],[-73.8195,40.890147],[-73.819419,40.890125],[-73.818929,40.889993],[-73.818732,40.889939999999996],[-73.81850299999999,40.889877999999996],[-73.81761399999999,40.889679],[-73.817596,40.889675],[-73.816732,40.889503],[-73.816611,40.889479],[-73.81648299999999,40.88943],[-73.816206,40.889316],[-73.816104,40.889275999999995],[-73.815603,40.889178],[-73.81532899999999,40.889066],[-73.815165,40.888999],[-73.81504799999999,40.888951],[-73.813761,40.888721],[-73.813659,40.888706],[-73.81363999999999,40.888701999999995],[-73.813617,40.888695999999996],[-73.812645,40.888436999999996],[-73.812429,40.88838],[-73.811266,40.888093999999995],[-73.811101,40.888044],[-73.811065,40.888033],[-73.810953,40.887997999999996],[-73.8109,40.887982],[-73.80994199999999,40.88769],[-73.809923,40.887684],[-73.809457,40.887603999999996],[-73.80872,40.887481],[-73.808351,40.887361],[-73.80757299999999,40.887102],[-73.806395,40.886801],[-73.80572599999999,40.886662],[-73.805402,40.886596],[-73.805343,40.886584],[-73.805302,40.886579],[-73.804789,40.886505],[-73.80476999999999,40.886500000000005],[-73.804604,40.886455999999995],[-73.80446599999999,40.88642],[-73.804191,40.886348],[-73.80300199999999,40.886033999999995],[-73.802945,40.886019],[-73.801896,40.885707],[-73.801617,40.885632],[-73.799289,40.885007],[-73.798295,40.884738999999996],[-73.797348,40.88449],[-73.797302,40.884478],[-73.797102,40.884478],[-73.796306,40.884297],[-73.79628199999999,40.884291],[-73.79486299999999,40.883914],[-73.794311,40.883781],[-73.794048,40.883717999999995],[-73.792942,40.883410999999995],[-73.785797,40.8816],[-73.78370199999999,40.881077999999995],[-73.78355499999999,40.881042],[-73.783519,40.881032999999995],[-73.783408,40.881006],[-73.782838,40.880868],[-73.78226699999999,40.880728999999995],[-73.781202,40.880478],[-73.760988,40.875178],[-73.749483,40.872101],[-73.74806,40.871721],[-73.753732,40.856556],[-73.753787,40.856409],[-73.757801,40.845679],[-73.757967,40.845535999999996],[-73.76164,40.842372],[-73.762174,40.841910999999996],[-73.773429,40.832214],[-73.77452,40.831272999999996],[-73.77497699999999,40.830878999999996],[-73.780193,40.8264],[-73.778958,40.811713],[-73.774869,40.806909999999995],[-73.770899,40.802246],[-73.766229,40.79676],[-73.763712,40.793803],[-73.757103,40.789691999999995],[-73.756187,40.788703],[-73.750817,40.782886999999995],[-73.750458,40.78261],[-73.750337,40.782512],[-73.750295,40.782478],[-73.749664,40.782106],[-73.74933399999999,40.781908],[-73.747068,40.780546],[-73.74680000000001,40.780378],[-73.74636799999999,40.78012],[-73.745436,40.779497],[-73.74421,40.778704999999995],[-73.744107,40.778642],[-73.743421,40.778224],[-73.741535,40.777111],[-73.74076,40.776695],[-73.740366,40.77639],[-73.74007999999999,40.776209],[-73.739598,40.776075],[-73.739376,40.776013999999996],[-73.739307,40.775929],[-73.73912399999999,40.775704],[-73.738862,40.775573],[-73.737853,40.774879],[-73.73771099999999,40.774799],[-73.736873,40.774328],[-73.733893,40.772527],[-73.733042,40.771954],[-73.731963,40.771335],[-73.73113599999999,40.770869999999995],[-73.730305,40.770410999999996],[-73.729706,40.770053999999995],[-73.72959,40.769985],[-73.72871099999999,40.769467999999996],[-73.727888,40.768898],[-73.727729,40.768802],[-73.72661,40.76813],[-73.725545,40.767495],[-73.723777,40.766278],[-73.72317199999999,40.765924],[-73.722484,40.765527],[-73.72240099999999,40.765487],[-73.721143,40.764873],[-73.72104399999999,40.764809],[-73.720809,40.764648],[-73.720713,40.764531999999996],[-73.72034099999999,40.764268],[-73.720233,40.764196],[-73.720073,40.764089],[-73.71658099999999,40.761784999999996],[-73.716459,40.761705],[-73.714438,40.76045],[-73.714126,40.760245],[-73.713656,40.759935999999996],[-73.71363199999999,40.75992],[-73.713498,40.759831999999996],[-73.713325,40.75973],[-73.712898,40.75949],[-73.712761,40.759415],[-73.712605,40.759328],[-73.71244899999999,40.759242],[-73.712108,40.759017],[-73.712034,40.758967999999996],[-73.711548,40.758649],[-73.71134099999999,40.758513],[-73.710858,40.758195],[-73.710606,40.75803],[-73.710112,40.757708],[-73.709501,40.75731],[-73.709374,40.757227],[-73.708129,40.756414],[-73.707825,40.756215999999995],[-73.707008,40.755758],[-73.70618999999999,40.755300999999996],[-73.705271,40.75477],[-73.703468,40.753682999999995],[-73.703336,40.753599],[-73.703203,40.753515],[-73.702968,40.753383],[-73.70273499999999,40.753251],[-73.702178,40.752886],[-73.701633,40.752493],[-73.701438,40.751332],[-73.701342,40.750766999999996],[-73.701168,40.748864999999995],[-73.700901,40.747129],[-73.70087199999999,40.746866],[-73.700768,40.745014],[-73.700582,40.743184],[-73.70029199999999,40.74105],[-73.700082,40.739765],[-73.70002,40.73939],[-73.700009,40.739323],[-73.70001599999999,40.739272],[-73.700017,40.739261],[-73.70002,40.739236999999996],[-73.70003799999999,40.739221],[-73.700107,40.739159],[-73.700204,40.739070999999996],[-73.700318,40.738968],[-73.700811,40.738439],[-73.701471,40.737511999999995],[-73.702004,40.736522],[-73.70218899999999,40.73611],[-73.702411,40.735777999999996],[-73.70259,40.73551],[-73.703315,40.734563],[-73.70352199999999,40.734207999999995],[-73.70394499999999,40.733526],[-73.704599,40.732502],[-73.704859,40.732015],[-73.704869,40.731997],[-73.704882,40.731981],[-73.705269,40.731513],[-73.705772,40.73073],[-73.70648,40.729710999999995],[-73.707129,40.728702],[-73.707582,40.72791],[-73.707647,40.727796],[-73.708556,40.727584],[-73.709081,40.727464],[-73.70943199999999,40.727391],[-73.70967,40.727346],[-73.709954,40.72728],[-73.71047,40.727173],[-73.711308,40.72705],[-73.7119,40.726976],[-73.71242099999999,40.72691],[-73.714052,40.726704999999995],[-73.71495999999999,40.72659],[-73.71585,40.726478],[-73.716684,40.726375],[-73.718288,40.726044],[-73.72038599999999,40.725474999999996],[-73.720913,40.725339],[-73.721041,40.725305999999996],[-73.721193,40.725266999999995],[-73.721733,40.725105],[-73.722047,40.725012],[-73.722579,40.724878],[-73.722912,40.724793999999996],[-73.723428,40.724663],[-73.723868,40.724544],[-73.724197,40.724455],[-73.724547,40.72436],[-73.724634,40.724336],[-73.724722,40.724314],[-73.72508499999999,40.724196],[-73.725672,40.724038],[-73.726047,40.723904999999995],[-73.72647599999999,40.723752],[-73.726838,40.723608],[-73.727217,40.723456999999996],[-73.727328,40.723411999999996],[-73.727972,40.723158999999995],[-73.728162,40.723084],[-73.728734,40.722913],[-73.72914399999999,40.722763],[-73.729559,40.72258],[-73.729652,40.722535],[-73.73032599999999,40.722156999999996],[-73.72969499999999,40.720571],[-73.729661,40.720483],[-73.729433,40.719865],[-73.729255,40.719381],[-73.729176,40.719167],[-73.72894,40.718306],[-73.72857599999999,40.71698],[-73.728554,40.716898],[-73.728501,40.716705999999995],[-73.72841799999999,40.716391],[-73.728313,40.715998],[-73.728188,40.715523999999995],[-73.728064,40.715050999999995],[-73.727698,40.713662],[-73.72751099999999,40.712951],[-73.727364,40.712392],[-73.72733199999999,40.712272],[-73.727317,40.712216],[-73.727165,40.711588],[-73.727094,40.711293],[-73.727086,40.711259],[-73.72697099999999,40.710715],[-73.7269,40.709997],[-73.726896,40.709976],[-73.727047,40.709497],[-73.726895,40.7058],[-73.726871,40.705237],[-73.726835,40.704406],[-73.726781,40.703145],[-73.726779,40.703081999999995],[-73.726772,40.702954],[-73.726767,40.702872],[-73.726762,40.702768],[-73.72674599999999,40.702473],[-73.726728,40.702146],[-73.726751,40.702079999999995],[-73.726783,40.701986999999995],[-73.726738,40.701588],[-73.726713,40.701448],[-73.726654,40.701111999999995],[-73.72654399999999,40.698983],[-73.726525,40.698257999999996],[-73.726511,40.697781],[-73.726509,40.697522],[-73.726503,40.696886],[-73.726263,40.690773],[-73.726258,40.690611],[-73.726259,40.690269],[-73.72623899999999,40.689814999999996],[-73.726231,40.689659999999996],[-73.72621699999999,40.689305999999995],[-73.7262,40.688984],[-73.726175,40.688649999999996],[-73.726158,40.688469999999995],[-73.726089,40.687774],[-73.725996,40.686932],[-73.72594099999999,40.686399],[-73.725926,40.686225],[-73.725918,40.686099],[-73.725917,40.68609],[-73.725878,40.685514],[-73.725798,40.684354],[-73.725821,40.683949999999996],[-73.725843,40.683575],[-73.725861,40.683223],[-73.72590699999999,40.682657],[-73.725824,40.681636],[-73.725796,40.68136],[-73.725754,40.680946],[-73.725714,40.680529],[-73.725687,40.68025],[-73.72563,40.679587999999995],[-73.725788,40.678962],[-73.725841,40.678753],[-73.725903,40.678506999999996],[-73.726011,40.678078],[-73.726198,40.677381],[-73.726355,40.676973],[-73.726456,40.676747999999996],[-73.72654299999999,40.676487],[-73.726713,40.676089999999995],[-73.726851,40.675768999999995],[-73.726945,40.675551999999996],[-73.727141,40.675095999999996],[-73.727301,40.674738999999995],[-73.727441,40.674428999999996],[-73.727542,40.67416],[-73.72757399999999,40.674042],[-73.727609,40.673863],[-73.727767,40.673066],[-73.72791699999999,40.672339],[-73.72807,40.671608],[-73.727941,40.670809],[-73.727926,40.670097],[-73.727992,40.669427],[-73.728128,40.668707999999995],[-73.728264,40.668073],[-73.728222,40.667314],[-73.728264,40.666606],[-73.72827199999999,40.66644],[-73.728224,40.665965],[-73.72813699999999,40.665515],[-73.728107,40.665344999999995],[-73.727875,40.664694999999995],[-73.727834,40.663976],[-73.727814,40.663224],[-73.728085,40.663070999999995],[-73.728331,40.663044],[-73.72815299999999,40.662454],[-73.727931,40.661749],[-73.727592,40.661094],[-73.72720799999999,40.660422],[-73.72681,40.659794999999995],[-73.726444,40.659161999999995],[-73.72621099999999,40.658479],[-73.726027,40.657996],[-73.725927,40.657731],[-73.725882,40.657537],[-73.725759,40.656998],[-73.725335,40.655324],[-73.72478699999999,40.654001],[-73.724874,40.653447],[-73.72482099999999,40.65302],[-73.72498399999999,40.652678],[-73.72505199999999,40.652341],[-73.725248,40.652193],[-73.72549599999999,40.652114999999995],[-73.72568199999999,40.652058],[-73.725946,40.651961],[-73.72618899999999,40.651861],[-73.72643,40.651790999999996],[-73.72651499999999,40.651753],[-73.726671,40.651685],[-73.726818,40.651576999999996],[-73.726873,40.651541],[-73.727024,40.651498],[-73.72852999999999,40.650973],[-73.728703,40.650915999999995],[-73.728991,40.650839],[-73.729497,40.650636],[-73.729739,40.650558],[-73.730004,40.650479999999995],[-73.731055,40.650231],[-73.731427,40.650171],[-73.732208,40.650090999999996],[-73.734388,40.649820999999996],[-73.735135,40.649732],[-73.736735,40.649100000000004],[-73.73697899999999,40.649004999999995],[-73.73746,40.648818],[-73.73762599999999,40.648753],[-73.738799,40.648297],[-73.73904499999999,40.648201],[-73.73919,40.648122],[-73.74143699999999,40.646889],[-73.741439,40.646345],[-73.74144,40.646086],[-73.74144799999999,40.645942],[-73.741468,40.645564],[-73.741485,40.645247999999995],[-73.74162299999999,40.642716],[-73.741632,40.642586],[-73.741643,40.64244],[-73.741661,40.642198],[-73.741759,40.642016],[-73.741873,40.641804],[-73.742051,40.641473999999995],[-73.741428,40.640502],[-73.742283,40.640121],[-73.741534,40.63923],[-73.741263,40.638905],[-73.741224,40.638828],[-73.741126,40.638656],[-73.74103199999999,40.638476],[-73.740662,40.637833],[-73.740284,40.637175],[-73.739558,40.635863],[-73.739471,40.635706],[-73.73996,40.635144],[-73.740141,40.63511],[-73.740802,40.634986],[-73.741095,40.634931],[-73.741678,40.634837999999995],[-73.742237,40.634851],[-73.74265,40.635045],[-73.742673,40.635408],[-73.742629,40.635537],[-73.74257999999999,40.635647999999996],[-73.742531,40.635715],[-73.742081,40.636381],[-73.74127,40.637257],[-73.741187,40.637412],[-73.74120099999999,40.637589999999996],[-73.741501,40.63785],[-73.742361,40.638093],[-73.743295,40.638048],[-73.743651,40.637769],[-73.74394099999999,40.637541],[-73.744177,40.637356],[-73.746022,40.635211999999996],[-73.748001,40.634631],[-73.767425,40.626605999999995],[-73.767507,40.626469],[-73.767708,40.626208],[-73.767758,40.626113],[-73.767772,40.625996],[-73.767782,40.625912],[-73.767933,40.625755],[-73.768142,40.625462999999996],[-73.768154,40.625448999999996],[-73.76825,40.625398],[-73.768269,40.625295],[-73.768293,40.625236],[-73.768326,40.625097],[-73.768418,40.624989],[-73.7685,40.624897],[-73.768563,40.624801],[-73.768604,40.624733],[-73.768624,40.624584999999996],[-73.768649,40.624466],[-73.768709,40.624386],[-73.768761,40.624351999999995],[-73.768784,40.624289],[-73.768777,40.624195],[-73.76883,40.6241],[-73.768805,40.624027],[-73.768838,40.623951999999996],[-73.768757,40.623819999999995],[-73.768762,40.623760999999995],[-73.76866799999999,40.623588999999996],[-73.768643,40.623492],[-73.768643,40.623431],[-73.76861,40.623373],[-73.76858399999999,40.623312999999996],[-73.768553,40.623155],[-73.76757099999999,40.621477],[-73.767459,40.620511],[-73.766757,40.615283999999996],[-73.766719,40.615004],[-73.765244,40.614942],[-73.764349,40.614315999999995],[-73.763476,40.613706],[-73.763454,40.61369],[-73.762084,40.612732],[-73.760021,40.611349],[-73.759631,40.611297],[-73.759334,40.611258],[-73.75891,40.611205999999996],[-73.75754599999999,40.611036999999996],[-73.757235,40.610993],[-73.755197,40.610594],[-73.754947,40.610496999999995],[-73.75473199999999,40.610405],[-73.753458,40.61052],[-73.750652,40.611453],[-73.75008799999999,40.611641],[-73.74911999999999,40.611793999999996],[-73.748216,40.612010999999995],[-73.747993,40.61231],[-73.747614,40.611998],[-73.747451,40.612072],[-73.747216,40.612179],[-73.74694199999999,40.611775],[-73.746855,40.611574],[-73.745761,40.611992],[-73.745663,40.611812],[-73.745633,40.611756],[-73.745368,40.611204],[-73.744567,40.610116999999995],[-73.74387,40.608892999999995],[-73.74354699999999,40.608422999999995],[-73.74338,40.608179],[-73.743206,40.608013],[-73.74307,40.607886],[-73.743355,40.607499],[-73.743147,40.60726],[-73.741148,40.60546],[-73.740571,40.60488],[-73.740291,40.604597999999996],[-73.73922499999999,40.604141999999996],[-73.738151,40.602709999999995],[-73.738001,40.601628],[-73.737997,40.601600999999995],[-73.73828999999999,40.598389],[-73.738309,40.598208],[-73.738185,40.598002],[-73.738075,40.597818],[-73.738089,40.597688],[-73.73812199999999,40.597386],[-73.73813299999999,40.597286],[-73.73812,40.597096],[-73.738053,40.596143999999995],[-73.73803699999999,40.595912999999996],[-73.737736,40.594785],[-73.73763699999999,40.594415],[-73.73760399999999,40.594209],[-73.737521,40.59392],[-73.737451,40.593604],[-73.737414,40.593424999999996],[-73.73722599999999,40.593047999999996],[-73.737185,40.592965],[-73.73723199999999,40.592963999999995],[-73.73839,40.592939],[-73.738468,40.592937],[-73.740019,40.592906],[-73.74162799999999,40.592872],[-73.743237,40.592839],[-73.74338,40.592847],[-73.74360399999999,40.592859],[-73.74382899999999,40.592870999999995],[-73.744469,40.592904],[-73.747749,40.591502999999996],[-73.750978,40.589048999999996],[-73.752121,40.588181999999996],[-73.752371,40.587965],[-73.755183,40.585649],[-73.75550199999999,40.585387],[-73.755567,40.583186],[-73.75556999999999,40.583093999999996],[-73.755701,40.578688],[-73.756909,40.567651999999995],[-73.75804699999999,40.557268],[-73.758256,40.555364],[-73.76223399999999,40.550202999999996],[-73.764932,40.544402],[-73.76727199999999,40.538111],[-73.76763,40.537152],[-73.768739,40.533873],[-73.76878099999999,40.533747],[-73.772964,40.533370999999995],[-73.77698099999999,40.533012],[-73.783969,40.532387],[-73.792855,40.530381999999996],[-73.804242,40.527815],[-73.818919,40.524505],[-73.82615799999999,40.522874],[-73.829875,40.521464],[-73.837816,40.518453],[-73.854843,40.512],[-73.860609,40.508386],[-73.870029,40.502486],[-73.876778,40.501127],[-73.881839,40.495689999999996],[-73.882272,40.49521],[-73.886652,40.489793999999996],[-73.943747,40.522014],[-73.949912,40.52554],[-73.95033699999999,40.525464],[-73.954988,40.524634],[-73.957274,40.524226],[-73.99315899999999,40.517911999999995],[-74.042112,40.509299],[-74.05759499999999,40.506529],[-74.057873,40.506476],[-74.071052,40.503910999999995],[-74.07817899999999,40.502505],[-74.08289599999999,40.501666],[-74.091492,40.500136999999995],[-74.09167,40.500105],[-74.092298,40.499989],[-74.094483,40.499601],[-74.098576,40.498903999999996],[-74.107576,40.497417],[-74.124549,40.494620999999995],[-74.131132,40.493533],[-74.13715599999999,40.492537999999996],[-74.143917,40.491394],[-74.14993799999999,40.490372],[-74.152069,40.490017],[-74.160393,40.48869],[-74.162634,40.48829],[-74.163861,40.488071],[-74.20034199999999,40.482018],[-74.200395,40.482009],[-74.206451,40.481015],[-74.217041,40.479223999999995],[-74.22815299999999,40.477399],[-74.237935,40.481241],[-74.240691,40.482341999999996],[-74.243652,40.483526],[-74.248261,40.485367],[-74.24858499999999,40.485496999999995],[-74.249589,40.485898],[-74.249743,40.48596],[-74.24989699999999,40.486021],[-74.249934,40.486035],[-74.252646,40.48712],[-74.253159,40.487325],[-74.25331299999999,40.487386],[-74.254289,40.489005999999996],[-74.25653,40.492965],[-74.25671899999999,40.493299],[-74.257317,40.494349],[-74.259028,40.497107],[-74.25909,40.497206999999996],[-74.259089,40.499561]]]]}",
    min_x: -74.25909,
    max_x: -73.700009,
    min_y: 40.477399,
    max_y: 40.917577,
  )