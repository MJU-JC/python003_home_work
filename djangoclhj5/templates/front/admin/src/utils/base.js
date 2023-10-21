const base = {
    get() {
        return {
            url : "http://localhost:8080/djangoclhj5/",
            name: "djangoclhj5",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "疫情居家办公系统"
        } 
    }
}
export default base
