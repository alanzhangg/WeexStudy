import foo from './src/MetaTem.vue'
const meta = weex.requireModule('meta')
meta.setViewport({
    width: 640
})
foo.el = '#root'
export default new Vue(foo);
