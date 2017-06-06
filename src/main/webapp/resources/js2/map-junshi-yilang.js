var map = L.map('map');
    L.tileLayer('Mapnik/{z}/{x}/{y}.png', {
                    maxZoom: 7,
                    minZoom:2
                    }).addTo(map);
    map.setView(L.latLng(35, 70), 4);
    var overlay = new L.echartsLayer3(map, echarts);
    var chartsContainer = overlay.getEchartsContainer();
    var myChart = overlay.initECharts(chartsContainer);
    var data = [
	 {name: '663导弹基地', value: 123},
	 {name: '999部队', value: 145},
	 {name: '山猫野战队', value: 146},
	 {name: '宗教集团军', value: 157},
	 {name: '高地特种军', value: 158},
	 {name: '567炮兵旅', value: 178},
	 {name: '12号核设施', value: 188},
	 {name: '航空567师', value: 200},
	 {name: '航空345师', value: 225},
	 {name: '23号核设施', value: 230},
    
];
var geoCoordMap = {
	'663导弹基地':[56.2,27.1],
	'999部队':[60.8,29.4],
	'山猫野战队':[59.2,32.8],
	'宗教集团军':[57.0,30.2],
	'高地特种军':[51.6,32.6],
	'567炮兵旅':[59.6,36.2],
	'12号核设施':[50.5,37.3],
	'航空567部队':[52.3,36.4],
	'航空345部队':[50.9,35.8],
	'23号核设施':[51.3,35.6]
    
};

var convertData = function (data) {
    var res = [];
    for (var i = 0; i < data.length; i++) {
        var geoCoord = geoCoordMap[data[i].name];
        if (geoCoord) {
            res.push({
                name: data[i].name,
                value: geoCoord.concat(data[i].value)
            });
        }
    }
    return res;
};

option = {
    // backgroundColor: '#404a59',
    tooltip : {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        y: 'bottom',
        x:'right',
        data:[''],
        textStyle: {
            color: '#fff'
        }
    },
    geo: {
        map: '',
        label: {
            emphasis: {
                show: false
            }
        },
        roam: true,
        itemStyle: {
            normal: {
                areaColor: '#323c48',
                borderColor: '#111'
            },
            emphasis: {
                areaColor: '#2a333d'
            }
        }
    },
    series : [
        {
            name: 'A',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: convertData(data),
            symbolSize: function (val) {
                return val[2] / 10;
            },
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: false
                },
                emphasis: {
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#FF6600'
                }
            }
        },
        {
            name: 'S',
            type: 'effectScatter',
            coordinateSystem: 'geo',
            data: convertData(data.sort(function (a, b) {
                return b.value - a.value;
            }).slice(0, 6)),
            symbolSize: function (val) {
                return val[2] / 10;
            },
            showEffectOn: 'render',
            rippleEffect: {
                brushType: 'stroke'
            },
            hoverAnimation: true,
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#FF0000',
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            zlevel: 1
        }
    ]
};
    // 使用刚指定的配置项和数据显示图表。
    overlay.setOption(option);