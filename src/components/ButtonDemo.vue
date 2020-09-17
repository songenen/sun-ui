<template>
<div> button</div>

  <h1>2222222</h1>
  <div>
    <Button @click="onClick">哈哈</Button>
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