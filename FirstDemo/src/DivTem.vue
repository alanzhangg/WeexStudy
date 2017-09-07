<template>
    <!--
        ---嵌套层级不可过深，否则容易引起性能问题，建议控制在 10 层以内---
    -->
    <div class="wrapper">
        <text class="text">Hello World</text>
    </div>
</template>
<style>
    .wrapper{
        /*justify-content: center;*/
    }
    .text{
        text-align: center;
        margin-top: 180px;
        font-size: 70px;
        color: #ff0000;
    }
</style>
<script></script>