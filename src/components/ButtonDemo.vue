<template>
<div> button</div>

  <h1>2222222</h1>
  <div>
    <Button>默认</Button>
    <Button theme="button">哈哈</Button>
    <Button theme="link">哈哈</Button>
    <Button theme="text">哈哈</Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
export default {
  components:{Button},
  setup(){
    const onClick=()=>{
      console.log(1);
    }
    return {onClick}

  }
}
</script>

<style lang="scss" scoped>

</style>