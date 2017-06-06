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
	 {name: '广东海贸', value: 123},
	 {name: '上海海贸', value: 145},
	 {name: '朝阳芯片', value: 146},
	 {name: '新浪电投', value: 157},
	 {name: '阿里集团', value: 158},
	 {name: '中海集运', value: 178},
	 {name: '中国海投', value: 188},
	 {name: '华为集团', value: 200},
	 {name: '联想集团', value: 225},
	 {name: '中国远洋', value: 230},
    
];
var geoCoordMap = {
	'广东海贸':[80,20],
	'上海海贸':[81,24],
	'朝阳芯片':[83,23],
	'新浪电投':[78,23],
	'阿里集团':[75,27],
	'中海集运':[85,21],
	'中国海投':[76,25],
	'华为集团':[74,15],
	'联想集团':[81,27],
	'中国远洋':[82,26],
    
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
                    color: '#0066FF'
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
                    color: '#0066FF',
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