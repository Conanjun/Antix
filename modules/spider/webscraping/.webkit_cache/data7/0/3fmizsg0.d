   �      -http://news.qq.com/newsweather/showWeather.js %�G��     �����         
     O K           �      Base-Url   http://news.qq.com/   Server   squid/3.5.20   Content-Type   &application/javascript; charset=GB2312   Expires   Thu, 22 Jun 2017 09:51:25 GMT   Cache-Control   max-age=604800   Content-Encoding   gzip   Vary   1Accept-Encoding, Accept-Encoding, Accept-Encoding   X-Cache   HIT from shenzhen.qq.com /**
* @��������������ʾ
* @author annan#tencent.com
* @time 2012-12-04
* @version v1.0.0
*/
//���������ID��Ӧ��ϵ
        Site = {};
        Site.Weather = {
            defaultCity: "01010101",
            city: {
                "������": {
                    "_": "01010101",
                    "������": "01010101"
                },
                "�Ϻ���": {
                    "_": "01012601",
                    "�Ϻ���": "01012601"
                },
                "�����": {
                    "_": "01012901",
                    "�����": "01012901"
                },
                "������": {
                    "_": "01010401",
                    "������": "01010401"
                },
                "���": {
                    "_": "01013101",
                    "���": "01013101"
                },
                "����": {
                    "_": "01010301",
                    "����": "01010301"
                },
                "̨��ʡ": {
                    "_": "01012801",
                    "̨��": "01012801",
                    "����": "01012802",
                    "̨��": "01012803",
                    "����": "01012801",
                    "��¡": "01012801",
                    "����": "01012801",
                    "����": "01012801",
                    "����": "01012801",
                    "����": "01012801",
                    "��Ͷ": "01012801",
                    "���": "01012801",
                    "����": "01012801",
                    "̨��": "01012801",
                    "̨��": "01012801",
                    "��԰": "01012801",
                    "����": "01012801",
                    "����": "01012801",
                    "����": "01012801",
                    "�û�": "01012801"
                },
                "����ʡ": {
                    "_": "01010208",
                    "������": "01010201",
                    "������": "01010202",
                    "������": "01010203",
                    "������": "01010204",
                    "������": "01010205",
                    "������": "01010206",
                    "������": "01010207",
                    "�Ϸ���": "01010208",
                    "������": "01010209",
                    "������": "01010210",
                    "��ɽ��": "01010211",
                    "������": "01010212",
                    "����ɽ��": "01010213",
                    "ͭ����": "01010214",
                    "�ߺ���": "01010215",
                    "������": "01010216",
                    "������": "01010217"
                },
                "����ʡ": {
                    "_": "01010501",
                    "������": "01010501",
                    "������": "01010502",
                    "��ƽ��": "01010503",
                    "������": "01010504",
                    "������": "01010505",
                    "Ȫ����": "01010506",
                    "������": "01010507",
                    "������": "01010508",
                    "������": "01010509"
                },
                "����ʡ": {
                    "_": "01010607",
                    "������": "01010601",
                    "������": "01010602",
                    "������": "01010603",
                    "��������": "01010604",
                    "�����": "01010605",
                    "��Ȫ��": "01010606",
                    "������": "01010607",
                    "������": "01010608",
                    "¤����": "01010609",
                    "ƽ����": "01010610",
                    "������": "01010611",
                    "��ˮ��": "01010612",
                    "������": "01010613",
                    "��Ҵ��": "01010614"
                },
                "�㶫ʡ": {
                    "_": "01010704",
                    "������": "01010701",
                    "��ݸ��": "01010702",
                    "��ɽ��": "01010703",
                    "������": "01010704",
                    "��Դ��": "01010705",
                    "������": "01010706",
                    "������": "01010707",
                    "������": "01010708",
                    "ï����": "01010709",
                    "÷����": "01010710",
                    "��Զ��": "01010711",
                    "��ͷ��": "01010712",
                    "��β��": "01010713",
                    "�ع���": "01010714",
                    "������": "01010715",
                    "������": "01010716",
                    "�Ƹ���": "01010717",
                    "տ����": "01010718",
                    "������": "01010719",
                    "��ɽ��": "01010720",
                    "�麣��": "01010721"
                },
                "����": {
                    "_": "01010811",
                    "��ɫ��": "01010801",
                    "������": "01010802",
                    "������": "01010803",
                    "���Ǹ���": "01010804",
                    "�����": "01010805",
                    "������": "01010806",
                    "�ӳ���": "01010807",
                    "������": "01010808",
                    "������": "01010809",
                    "������": "01010810",
                    "������": "01010811",
                    "������": "01010812",
                    "������": "01010813",
                    "������": "01010814"
                },
                "����ʡ": {
                    "_": "01010903",
                    "��˳��": "01010901",
                    "�Ͻڵ���": "01010902",
                    "������": "01010903",
                    "����ˮ��": "01010904",
                    "ǭ������": "01010905",
                    "ǭ����": "01010906",
                    "ǭ������": "01010907",
                    "ͭ�ʵ���": "01010908",
                    "������": "01010909"
                },
                "����ʡ": {
                    "_": "01011008",
                    "������": "01011004",
                    "������": "01011005",
                    "������": "01011007",
                    "������": "01011008",
                    "������": "01011012",
                    "������": "01011014",
                    "�Ͳ���": "01011015",
                    "������": "01011016",
                    "�Ĳ���": "01011017",
                    "��ָɽ��": "01011018"
                },
                "�ӱ�ʡ": {
                    "_": "01011108",
                    "������": "01011101",
                    "������": "01011102",
                    "�е���": "01011103",
                    "������": "01011104",
                    "��ˮ��": "01011105",
                    "�ȷ���": "01011106",
                    "�ػʵ���": "01011107",
                    "ʯ��ׯ��": "01011108",
                    "��ɽ��": "01011109",
                    "��̨��": "01011110",
                    "�żҿ���": "01011111"
                },
                "����ʡ": {
                    "_": "01011216",
                    "������": "01011201",
                    "�ױ���": "01011202",
                    "������": "01011203",
                    "������": "01011204",
                    "������": "01011206",
                    "�����": "01011205",
                    "������": "01011207",
                    "ƽ��ɽ��": "01011208",
                    "�����": "01011209",
                    "����Ͽ��": "01011210",
                    "������": "01011211",
                    "��Դ��": "0101121201",
                    "������": "01011213",
                    "������": "01011214",
                    "������": "01011215",
                    "֣����": "01011216",
                    "�ܿ���": "01011217",
                    "פ������": "01011218"
                },
                "������ʡ": {
                    "_": "01011303",
                    "������": "01011301",
                    "���˰������": "01011302",
                    "��������": "01011303",
                    "�׸���": "01011304",
                    "�ں���": "01011305",
                    "������": "01011306",
                    "��ľ˹��": "01011307",
                    "ĵ������": "01011308",
                    "���������": "01011309",
                    "��̨����": "01011310",
                    "˫Ѽɽ��": "01011311",
                    "�绯��": "01011312",
                    "������": "01011313"
                },
                "����ʡ": {
                    "_": "01011410",
                    "������": "01011401",
                    "��ʩ��": "01011402",
                    "�Ƹ���": "01011403",
                    "��ʯ��": "01011404",
                    "������": "01011405",
                    "������": "01011406",
                    "Ǳ����": "0101140701",
                    "��ũ������": "0101140702",
                    "ʮ����": "01011408",
                    "������": "01011409",
                    "�人��": "01011410",
                    "������": "0101140703",
                    "������": "0101140704",
                    "������": "01011411",
                    "�差��": "01011412",
                    "Т����": "01011413",
                    "�˲���": "01011414"
                },
                "����ʡ": {
                    "_": "01011502",
                    "������": "01011501",
                    "��ɳ��": "01011502",
                    "������": "01011503",
                    "������": "01011504",
                    "������": "01011505",
                    "¦����": "01011506",
                    "������": "01011507",
                    "��̶��": "01011508",
                    "������": "01011509",
                    "������": "01011510",
                    "������": "01011511",
                    "������": "01011512",
                    "�żҽ���": "01011513",
                    "������": "01011514"
                },
                "����ʡ": {
                    "_": "01011603",
                    "�׳���": "01011601",
                    "��ɽ��": "01011602",
                    "������": "01011603",
                    "������": "01011604",
                    "��Դ��": "01011605",
                    "��ƽ��": "01011606",
                    "��ԭ��": "01011607",
                    "ͨ����": "01011608",
                    "�ӱ���": "01011609"
                },
                "����ʡ": {
                    "_": "01011704",
                    "������": "01011701",
                    "������": "01011702",
                    "���Ƹ���": "01011703",
                    "�Ͼ���": "01011704",
                    "��ͨ��": "01011705",
                    "������": "01011706",
                    "��Ǩ��": "01011707",
                    "̩����": "01011708",
                    "������": "01011709",
                    "������": "01011710",
                    "�γ���": "01011711",
                    "������": "01011712",
                    "����": "01011713"
                },
                "����ʡ": {
                    "_": "01011806",
                    "������": "01011801",
                    "������": "01011803",
                    "������": "01011802",
                    "��������": "01011804",
                    "�Ž���": "01011805",
                    "�ϲ���": "01011806",
                    "Ƽ����": "01011807",
                    "������": "01011808",
                    "������": "01011809",
                    "�˴���": "01011810",
                    "ӥ̶��": "01011811"
                },
                "����ʡ": {
                    "_": "01011912",
                    "��ɽ��": "01011901",
                    "��Ϫ��": "01011902",
                    "������": "01011903",
                    "������": "01011904",
                    "������": "01011905",
                    "��˳��": "01011906",
                    "������": "01011907",
                    "��«����": "01011908",
                    "������": "01011909",
                    "������": "01011910",
                    "�̽���": "01011911",
                    "������": "01011912",
                    "������": "01011913",
                    "Ӫ����": "01011914"
                },
                "���ɹ�": {
                    "_": "01012004",
                    "��ͷ��": "01012001",
                    "�����": "01012002",
                    "������˹��": "01012003",
                    "���ͺ�����": "01012004",
                    "���ױ�����": "01012005",
                    "ͨ����": "01012006",
                    "�ں���": "01012007",
                    "��������": "01012008",
                    "���ֹ�����": "01012009",
                    "�˰���": "01012010",
                    "�����׶���": "01012011",
                    "�����첼��": "01012012"
                },
                "����": {
                    "_": "01012104",
                    "��ԭ��": "01012101",
                    "ʯ��ɽ��": "01012102",
                    "������": "01012103",
                    "������": "01012104",
                    "������": "01012105"
                },
                "�ຣ": {
                    "_": "01012207",
                    "������": "01012201",
                    "��������": "01012202",
                    "������": "01012203",
                    "������": "01012204",
                    "������": "01012205",
                    "������": "01012206",
                    "������": "01012207",
                    "������": "01012208"
                },
                "ɽ��ʡ": {
                    "_": "01012305",
                    "������": "01012305",
                    "������": "01012301",
                    "������": "01012302",
                    "��Ӫ��": "01012303",
                    "������": "01012304",
                    "������": "01012306",
                    "������": "01012307",
                    "�ĳ���": "01012308",
                    "������": "01012309",
                    "�ൺ��": "01012310",
                    "������": "01012311",
                    "̩����": "01012312",
                    "������": "01012313",
                    "Ϋ����": "01012314",
                    "��̨��": "01012315",
                    "��ׯ��": "01012316",
                    "�Ͳ���": "01012317"
                },
                "ɽ��ʡ": {
                    "_": "01012408",
                    "������": "01012401",
                    "��ͬ��": "01012402",
                    "������": "01012403",
                    "������": "01012404",
                    "�ٷ���": "01012405",
                    "������": "01012406",
                    "˷����": "01012407",
                    "̫ԭ��": "01012408",
                    "������": "01012409",
                    "��Ȫ��": "01012410",
                    "�˳���": "01012411"
                },
                "����ʡ": {
                    "_": "01012507",
                    "������": "01012501",
                    "������": "01012502",
                    "������": "01012503",
                    "������": "01012504",
                    "ͭ����": "01012505",
                    "μ����": "01012506",
                    "������": "01012507",
                    "������": "01012508",
                    "�Ӱ���": "01012509",
                    "������": "01012510"
                },
                "�Ĵ�ʡ": {
                    "_": "01012703",
                    "������": "01012701",
                    "������": "01012702",
                    "�ɶ���": "01012703",
                    "������": "01012704",
                    "������": "01012705",
                    "������": "01012706",
                    "�㰲��": "01012707",
                    "��Ԫ��": "01012708",
                    "��ɽ��": "01012709",
                    "��ɽ��": "01012710",
                    "������": "01012711",
                    "üɽ��": "01012712",
                    "������": "01012713",
                    "�ڽ���": "01012715",
                    "�ϳ���": "01012714",
                    "��֦����": "01012716",
                    "������": "01012717",
                    "�Ű���": "01012718",
                    "�˱���": "01012719",
                    "������": "01012720",
                    "�Թ���": "01012721"
                },
                "����": {
                    "_": "01013003",
                    "�������": "01013001",
                    "��������": "01013002",
                    "������": "01013003",
                    "��֥����": "01013004",
                    "��������": "01013005",
                    "�տ������": "01013006",
                    "ɽ�ϵ���": "01013007"
                },
                "�½�": {
                    "_": "01013213",
                    "�����յ���": "01013201",
                    "����̩����": "01013202",
                    "����������": "01013203",
                    "����������": "01013204",
                    "������": "01013205",
                    "���ܵ���": "01013206",
                    "�������": "01013207",
                    "��ʲ����": "01013208",
                    "����������": "01013209",
                    "�������տ���": "01013210",
                    "���ǵ���": "01013211",
                    "��³������": "01013212",
                    "��³ľ����": "01013213",
                    "������": "01013214",
                    "ʯ������": "0101321501",
                    "��������": "0101321502"
                },
                "����ʡ": {
                    "_": "01013307",
                    "��ɽ��": "01013301",
                    "������": "01013302",
                    "������": "01013303",
                    "�º���": "01013304",
                    "������": "01013305",
                    "�����": "01013306",
                    "������": "01013307",
                    "������": "01013308",
                    "�ٲ���": "01013309",
                    "ŭ����": "01013310",
                    "������": "01013312",
                    "˼é��": "01013307",
                    "��ɽ��": "01013313",
                    "��˫������": "01013314",
                    "��Ϫ��": "01013315",
                    "��ͨ��": "01013316"
                },
                "�㽭ʡ": {
                    "_": "01013401",
                    "������": "01013401",
                    "������": "01013402",
                    "������": "01013403",
                    "����": "01013404",
                    "��ˮ��": "01013405",
                    "������": "01013406",
                    "������": "01013407",
                    "������": "01013408",
                    "̨����": "01013409",
                    "������": "01013410",
                    "��ɽ��": "01013411"
                }
            }
        }        
       

        Site.weatherTxt = ['��', '����', '��', '����', '������', '�����겢���б���', '���ѩ', 'С��', '����', '����', '����', '��ѩ', '�ش�ѩ', '��ѩ', 'Сѩ', '��ѩ', '��ѩ', '��ѩ', '��', '����', 'ɳ����', 'С��-����', '����-����', '����-����', '����-����', '����-�ش���', 'Сѩ-��ѩ', '��ѩ-��ѩ', '��ѩ-��ѩ', '����', '��ɳ', 'ǿɳ����', '�', '������', '���ߴ�ѩ', '����']
       
        Site.weatherimgIco = { 'defaultUrl': 'http://mat1.gtimg.com/weather/weatherIco/imgIco/', 'ico': [{ 'img': '0.png' }, { 'img': '1.png' }, { 'img': '2.png' }, { 'img': '3.png' }, { 'img': '4.png' }, { 'img': '5.png' }, { 'img': '6.png' }, { 'img': '7.png' }, { 'img': '8.png' }, { 'img': '9.png' }, { 'img': '10.png' }, { 'img': '10.png' }, { 'img': '10.png' }, { 'img': '13.png' }, { 'img': '14.png' }, { 'img': '16.png' }, { 'img': '16.png' }, { 'img': '17.png' }, { 'img': '18.png' }, { 'img': '19.png' }, { 'img': '20.png' }, { 'img': '8.png' }, { 'img': '9.png' }, { 'img': '10.png' }, { 'img': '10.png' }, { 'img': '10.png' }, { 'img': '16.png' }, { 'img': '16.png' }, { 'img': '17.png' }, { 'img': '29.png' }, { 'img': '30.png' }, { 'img': '20.png' }, { 'img': '32.png' }, { 'img': '33.png' }, { 'img': '14.png' }, { 'img': '18.png'}] };
        Site.weatherIcon={
		"00":{ //��
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sun.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sunnight.png"
		},
		"01":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/cloudy.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/cloudynight.png"
		},
		"02":{ //��
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/overcast.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/cloudynight.png"
		},
		"03":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rain.sun.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rain.sun.png"
		},
		"04":{ //������
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainstorm.png"
		},
		"05":{ //�����겢���б���
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainstorm.png"
		},
		"06":{ //���ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sleet.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sleet.png"
		},
		"07":{ //С��
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/drizzle.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/drizzle.png"
		},
		"08":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png"
		},
		"09":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainy1.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainy1.png"
		},
		"10":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png"
		},
		"11":{ //��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png"
		},
		"12":{ //�ش�ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png"
		},
		"13":{ //��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png"
		},
		"14":{ //Сѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png"
		},
		"15":{ //��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png"
		},
		"16":{ //��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png"
		},
		"17":{ //��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png"
		},
		"18":{ //��
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/mist.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/mist.png"
		},
		"19":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sleet.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sleet.png"
		},
		"20":{ //ɳ����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png"
		},
		"21":{ //С��-����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/drizzle.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/drizzle.png"
		},
		"22":{ //����-����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png"
		},
		"23":{ //����-����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainy1.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainy1.png"
		},
		"24":{ //����-����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png"
		},
		"25":{ //����-�ش���
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/showers.png"
		},
		"26":{ //Сѩ-��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow1.png"
		},
		"27":{ //��ѩ-��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png"
		},
		"28":{ //��ѩ-��ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snowstorm.png"
		},
		"29":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png"
		},
		"30":{ //��ɳ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png"
		},
		"31":{ //ǿɳ����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png"
		},
		"32":{ //�
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/rainy2.png"
		},
		"33":{ //������
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/sand.png"
		},
		"34":{ //���ߴ�ѩ
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/snow2.png"
		},
		"35":{ //����
			"day":"http://mat1.gtimg.com/news/newsweather/wIco/mist.png",
			"night":"http://mat1.gtimg.com/news/newsweather/wIco/mist.png"
		}
	}
       
        function weatherInfo() { }

        weatherInfo.prototype = {
            //��ȡ׼ȷ����ID
            getCityID: function () {
                var proviceName = IPData[2];
                var cityName = IPData[3];
                //console.log(proviceName,cityName);
                var ciytId = null;
                if ((proviceName != '')) {
                    if (cityName == '' || cityName == 'δ֪') {
                        ciytId = Site.Weather.city[proviceName]['_'];
                    } else {
                        ciytId = Site.Weather.city[proviceName][cityName];
                    }
                } else {
                    ciytId = Site.Weather.defaultCity;
                }
                this.setcookie
                return ciytId;
            },
            //����js
            loadJs: function (url, charsetMode, jsName, callback) {
                var script = document.createElement('script');
                script.charset = charsetMode;
                script.id = jsName;
                script.src = url;
                script.type = 'text/javascript';
                var head = document.getElementsByTagName('head')[0];
                head.appendChild(script);
                if (script.attachEvent) {
                    script.attachEvent('onreadystatechange', function () {
                        if (script.readyState == 4 || script.readyState == 'complete' || script.readyState == 'loaded') {
                            callback();
                        }
                    });
                } else if (script.addEventListener) {
                    script.addEventListener('load', callback, false)
                }
            },
            //ɾ��js
            removeJs: function (jsName) {
                var script = document.getElementById(jsName);
                var head = document.getElementsByTagName('head')[0];
                head.removeChild(script);
            },
            //��ȡ������Ϣ���������µ�
            getWeatherInfo: function () {
                var cityId = this.getCityID();
                //console.log(cityId);
                var _url = 'http://weather.gtimg.cn/city/' + cityId + '.js?ref=qqnews';
                var that = this;

                this.loadJs(_url, 'gb2312', 'weatherJs', function () {
                    var wInfo = __weather_city;
                    //console.log(wInfo);
                    if (document.getElementById('wCity') != null) {
                        document.getElementById('wCity').innerHTML = wInfo.bi_name;
                    }

                    if (document.getElementById('wTp') != null) {
                        document.getElementById('wTp').innerHTML = wInfo.sk_tp + '��';
                    }
                    var imgIco = Site.weatherIcon[wInfo.sk_wt].day;
					if((wTime.currentHours<4)||(wTime.currentHours>=20)){
						imgIco = Site.weatherIcon[wInfo.sk_wt].night;
					}
					
                    var ie6 = ! -[1, ] && !window.XMLHttpRequest;

                    if (document.getElementById('weatherIco') != null) {
                        if (ie6) {
                            document.getElementById('weatherIco').style.filter = 'progid:DXImageTransform.Microsoft.AlphaImageLoader(src="' + imgIco + '" ,sizingMethod="noscale")';
                        } else {
                            document.getElementById('weatherIco').innerHTML = '<img src="' + imgIco + '" /> ';
                        }
                    }
                    that.removeJs('weatherJs');
                });
            }
        }
        weatherInfo.prototype.getWeatherInfo();/*  |xGv00|1317ee8c770dc95730e73aa357e389ee */