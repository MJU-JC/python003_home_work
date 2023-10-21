
var projectName = '疫情居家办公系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.html'
},

{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '工作主页',
	url: './pages/gongzuozhuye/list.html'
}, 
{
	name: '通知公告',
	url: './pages/tongzhigonggao/list.html'
}, 

{
	name: '成员交流',
	url: './pages/forum/list.html'
}, 
]

var adminurl =  "http://localhost:8080/djangoclhj5/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"员工","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除"],"menu":"工作类型","menuJump":"列表","tableName":"gongzuoleixing"}],"menu":"工作类型管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","工作分配"],"menu":"工作主页","menuJump":"列表","tableName":"gongzuozhuye"}],"menu":"工作主页管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除","审核"],"menu":"工作选取","menuJump":"列表","tableName":"gongzuoxuanqu"}],"menu":"工作选取管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","删除"],"menu":"工作分配","menuJump":"列表","tableName":"gongzuofenpei"}],"menu":"工作分配管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","删除","审核"],"menu":"工作信息","menuJump":"列表","tableName":"gongzuoxinxi"}],"menu":"工作信息管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"绩效信息","menuJump":"列表","tableName":"jixiaoxinxi"}],"menu":"绩效信息管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","删除","审核"],"menu":"需求申请","menuJump":"列表","tableName":"xuqiushenqing"}],"menu":"需求申请管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"通知公告","menuJump":"列表","tableName":"tongzhigonggao"}],"menu":"通知公告管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["新增","查看","修改","删除"],"menu":"成员交流","tableName":"forum"}],"menu":"成员交流"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","工作选取"],"menu":"工作主页列表","menuJump":"列表","tableName":"gongzuozhuye"}],"menu":"工作主页模块"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"通知公告列表","menuJump":"列表","tableName":"tongzhigonggao"}],"menu":"通知公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["开始工作","查看","删除"],"menu":"工作选取","menuJump":"列表","tableName":"gongzuoxuanqu"}],"menu":"工作选取管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["开始工作","查看","删除","审核"],"menu":"工作分配","menuJump":"列表","tableName":"gongzuofenpei"}],"menu":"工作分配管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除"],"menu":"工作信息","menuJump":"列表","tableName":"gongzuoxinxi"}],"menu":"工作信息管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"绩效信息","menuJump":"列表","tableName":"jixiaoxinxi"}],"menu":"绩效信息管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除"],"menu":"需求申请","menuJump":"列表","tableName":"xuqiushenqing"}],"menu":"需求申请管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","工作选取"],"menu":"工作主页列表","menuJump":"列表","tableName":"gongzuozhuye"}],"menu":"工作主页模块"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"通知公告列表","menuJump":"列表","tableName":"tongzhigonggao"}],"menu":"通知公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"员工","tableName":"yuangong"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
