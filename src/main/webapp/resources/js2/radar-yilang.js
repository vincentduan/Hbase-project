// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('radar'));
myChart.setOption({
    title: {
        text: '指数雷达图',
        textStyle:{color:'#ffffff'}
    },
    tooltip: {},
    radar: {
        radius:'75%',
        indicator: [
           { name: '政治指数', max: 10},
           { name: '经济指数', max: 10},
           { name: '贸易指数', max: 10},
           { name: '稳定指数', max: 10},
           { name: '对华关系', max: 10},
        ],
        shape: 'circle',
                splitNumber: 5,
                name: {
                    textStyle: {
                        color: '#ffffff'
                    }
                },
                splitLine: {
                    lineStyle: {
                        color: [
                            'rgba(68,172,244, 0.5)', 'rgba(68,172,244, 0.6)',
                            'rgba(68,172,244, 0.7)', 'rgba(68,172,244, 0.8)',
                            'rgba(68,172,244, 0.9)', 'rgba(68,172,244, 1)'
                        ].reverse()
                    }
                },
                splitArea: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: 'rgba(68,172,244, 0.5)'
                    }
                }
    },
    series: [{
        type: 'radar',
        itemStyle: {
                    normal: {
                        color: '#44ACF4'
                    }
                },
        data : [
            {
                value : [8.6, 8.3, 9.2, 6.7, 8.5],
                name : '预算分配（Allocated Budget）'
            },
        ]
    }]
})

