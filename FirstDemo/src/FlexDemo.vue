<template>
    <div class = "pos">
        <div v-for="(v, i) in list" class="row">
            <div v-for="(text, k) in v" class="item">
                <div>
                    <text>{{text}}</text>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .pos{
        position: absolute;
        top: 128px;
        right: 0;
        bottom: 0;
        left: 0;
    }
    .item{
        flex:1;
        justify-content: center;
        align-items:center;
        border-width:1;    
    }
    .row{
        flex-direction: row;
        height:80px;
    }
</style>

<script>
    module.exports = {
        data: function(){
            return {
                list:[
                    ['A', 'B', 'C'],
                    ['D', 'E', 'F'],
                    ['G', 'H', 'I'],
                ]
            }
        }
    }
</script>