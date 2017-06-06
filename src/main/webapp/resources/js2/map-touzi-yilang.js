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
	 {name: '阿巴斯港', value: 123},
	 {name: '扎黑丹', value: 145},
	 {name: '比尔詹德', value: 146},
	 {name: '克尔曼', value: 157},
	 {name: '伊斯法罕', value: 158},
	 {name: '马什哈德', value: 178},
	 {name: '大不里土', value: 188},
	 {name: '阿莫勒', value: 200},
	 {name: '卡拉季', value: 225},
	 {name: '德黑兰', value: 230},
    
];
var geoCoordMap = {
	'阿巴斯港':[56.2,27.1],
	'扎黑丹':[60.8,29.4],
	'比尔詹德':[59.2,32.8],
	'克尔曼':[57.0,30.2],
	'伊斯法罕':[51.6,32.6],
	'马什哈德':[59.6,36.2],
	'大不里土':[50.5,37.3],
	'阿莫勒':[52.3,36.4],
	'卡拉季':[50.9,35.8],
	'德黑兰':[51.3,35.6],
    
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
                    color: '#FF00FF'
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
                    color: '#FF00CC',
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