import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import forum from '@/views/modules/forum/list'
    import yuangong from '@/views/modules/yuangong/list'
    import gongzuoxinxi from '@/views/modules/gongzuoxinxi/list'
    import gongzuofenpei from '@/views/modules/gongzuofenpei/list'
    import jixiaoxinxi from '@/views/modules/jixiaoxinxi/list'
    import gongzuozhuye from '@/views/modules/gongzuozhuye/list'
    import tongzhigonggao from '@/views/modules/tongzhigonggao/list'
    import gongzuoxuanqu from '@/views/modules/gongzuoxuanqu/list'
    import config from '@/views/modules/config/list'
    import gongzuoleixing from '@/views/modules/gongzuoleixing/list'
    import xuqiushenqing from '@/views/modules/xuqiushenqing/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/forum',
        name: '成员交流',
        component: forum
      }
      ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
      ,{
	path: '/gongzuoxinxi',
        name: '工作信息',
        component: gongzuoxinxi
      }
      ,{
	path: '/gongzuofenpei',
        name: '工作分配',
        component: gongzuofenpei
      }
      ,{
	path: '/jixiaoxinxi',
        name: '绩效信息',
        component: jixiaoxinxi
      }
      ,{
	path: '/gongzuozhuye',
        name: '工作主页',
        component: gongzuozhuye
      }
      ,{
	path: '/tongzhigonggao',
        name: '通知公告',
        component: tongzhigonggao
      }
      ,{
	path: '/gongzuoxuanqu',
        name: '工作选取',
        component: gongzuoxuanqu
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/gongzuoleixing',
        name: '工作类型',
        component: gongzuoleixing
      }
      ,{
	path: '/xuqiushenqing',
        name: '需求申请',
        component: xuqiushenqing
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
