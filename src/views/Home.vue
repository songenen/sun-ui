<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>Sun-UI</h1>
        <h2>一个极简的 UI 框架</h2>
        <p class="actions">
          <a href="https://github.com/songenen/sun-ui">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg>
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript </h3>
          <p>源代码采用 TypeScript 书写</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-idea"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
  import Topnav from '../components/Topnav.vue'
  export default {
    components:{ Topnav }
  }
</script>

<style lang="scss" scoped>
$green: #eb5c4c;
$border-radius: 4px;
$color: #fff;
.topnavAndBanner {
  background: linear-gradient(183deg, rgba(255,162,27,1) 0%, rgba(255,211,159,1) 100%);
  clip-path: ellipse(100% 60% at 50% 40%);

}
.features {
  margin: 10px auto;
  padding: 0 16px;
  @media (min-width: 800px) {
    width: 800px;
    >ul {

      >li {
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    >ul {
      >li {
        width: 33.3333%;
      }
    }
  }
  >ul {
    display: flex;
    flex-wrap: wrap;
    >li {
      width: 400px;
      margin: 16px 0;
      display: grid;
      justify-content: center;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      margin-right: -15px;
      >svg {
        grid-area: icon;
        width: 56px;
        height: 56px;
      }
      >h3 {
        grid-area: title;
        font-size: 20px;
      }
      >p {
        grid-area: text
      }
    }
  }
}
.banner {
  color: $color;

  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  > .actions{
    padding: 8px 0;
    a {
      background: $green;
      color: white;
      margin:0 8px;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;
      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>