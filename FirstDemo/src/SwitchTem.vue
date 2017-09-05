<template>
    <div>
        <div class="example">
            <text class="label">normal</text>
            <switch></switch>
        </div>
        <div class="example">
            <text class="label">checked</text>
            <switch checked="true"></switch>
        </div>
        <div class="example">
            <text class="label">disabled</text>
            <switch checked="true" disabled="true"></switch>
            <switch checked="true"></switch>
        </div>
        <div class="example">
            <text class="label">onchange</text>
            <switch @change="onchange"></switch>
            <text class="info">{{checked}}</text>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                checked:false
            }
        },
        methods:{
            onchange (event){
                console.log('onchenge, value: ${event.value}')
                this.checked = event.value;
            }
        }
    }
</script>
<style>
    .example{
        flex-direction: row;
        justify-content: flex-start;
        margin-top: 180px;
    }
    .lable{
        font-size: 40px;
        line-height: 60px;
        width: 350px;
        color: #666;
        text-align: right;
        margin-right: 20px;
    }
    .info{
        font-size: 30px;
        line-height: 60px;
        color: #bbb;
        margin-left: 10px;
    }
</style>