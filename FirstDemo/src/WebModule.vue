<template>
    <div class="wrapper">
        <div class="group">
            <input class="input" v-model="value" ref="input" type="url" autofocus="false"></input>
        </div>
        <div class="group">
            <text class="button" @click="loadURL">loadURL</text>
            <text class="button" @click="reload">reload</text>
        </div>
        <web ref="webview" :src="url" class="webview" @pagestart="start" @pagefinish="finish" @error="error"></web>
    </div>
</template>
<script>
    const webview = weex.requireModule('webview')
    const modal = weex.requireModule('modal')

    export default {
        data () {
            return{
                url: 'https://www.baidu.com',
                value: 'https://www.baidu.com'
            }
        },
        methods:{
            loadURL (event) {
                this.url = this.value
                modal.toast({message: 'load url' + this.url})
                setTimeout(() => {
                    console.log('will go back.')
                    modal.toast({message: 'will go back'})
                    webview.goBack(this.$refs.webview)
                }, 10000)
            },
            reload (event) {
                console.log('will reload webview')
                modal.toast({message: 'reload'})
                webview.reload(this.$refs.webview)
            },
            start (event) {
                console.log('pagestarts', event)
                modal.toast({message: 'pagestart'})
            },
            finish (event) {
                console.log('pagefinish', event)
                modal.toast({message: 'pagefinish'})
            },
            error (event) {
                console.log('error', event)
                modal.toast({message: 'error'})
            }
        }
    }
</script>
<style scoped>
    .group{
        flex-direction: row;
        justify-content: space-around;
        margin-top: 80px;
    }
    .input{
        width: 600px;
        font-size: 36px;
        padding-top: 15px;
        padding-bottom: 15px;
        border-width: 2px;
        border-style: solid;
        border-color: #bbbbbb;
    }
    .button{
        width: 225px;
        text-align: center;
        background-color: #d3d3d3;
        padding-top: 15px;
        padding-bottom: 15px;
        margin-bottom: 30px;
        font-size: 30px;
    }
    .webview{
        margin-left: 75px;
        width: 600px;
        height: 750px;
        border-width: 2px;
        border-style: solid;
        border-color: #41b883;
    }
</style>