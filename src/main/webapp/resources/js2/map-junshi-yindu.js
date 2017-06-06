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
	 {name: '004导弹基地', value: 123},
	 {name: '723部队', value: 145},
	 {name: '蓝色军刀', value: 146},
	 {name: '宗教集团军', value: 157},
	 {name: '绿地特种军', value: 158},
	 {name: '103炮兵旅', value: 178},
	 {name: '80号核设施', value: 188},
	 {name: '航空203师', value: 200},
	 {name: '航空735师', value: 225},
	 {name: '92号核设施', value: 230},
    
];
var geoCoordMap = {
	'004导弹基地':[81,21],
	'723部队':[80,25],
	'蓝色军刀':[82,17],
	'宗教集团军':[75,23],
	'绿地特种军':[75,27],
	'103炮兵旅':[84,22],
	'80号核设施':[76,25],
	'航空203师':[74,15],
	'航空735师':[83,19],
	'92号核设施':[82,26],
    
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