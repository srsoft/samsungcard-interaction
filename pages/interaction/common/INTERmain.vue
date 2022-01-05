<template>
  <div class="app">
    <div class="navbar" :class="{ 'navbar--hidden': !showNavbar }"> navbar {{ showNavbar }} </div>
    <div class="contents">
      <p v-for="i in 100" :key="i"
        ><nuxt-link :to="{ name: 'interaction-common-detail' }">samsung card {{ i }}</nuxt-link></p
      >
    </div>
    <div class="bottombar" :class="{ 'bottombar--hidden': !showNavbar }">
      <span class="my">마이</span>
      <span class="benefits">혜택</span>
      <span class="finance">금융</span>
      <span class="life">라이프</span>
      <span class="allmenu">전체</span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'INTERmain',
  components: {},
  data() {
    return {
      showNavbar: true,
      lastScrollPosition: 0,
    };
  },
  mounted() {
    window.addEventListener('scroll', this.onScroll);
  },
  beforeDestory() {
    window.removeEventListener('scroll', this.onScroll);
  },
  methods: {
    onScroll() {
      const currentScrollPosition = window.pageYOffset || document.documentElement.scrollTop;

      if (currentScrollPosition < 0) {
        return;
      }
      this.showNavbar = currentScrollPosition < this.lastScrollPosition;
      console.log(this.lastScrollPosition, currentScrollPosition);

      this.lastScrollPosition = currentScrollPosition;
    },
  },
};
</script>
<style lang="scss">
* {
  box-sizing: border-box;
}

body {
  padding: 0;
  margin: 0;
}

.app {
  width: 100vw;
}
.navbar {
  display: flex;
  justify-content: center;
  align-items: center;
  color: #fff;
  height: 60px;
  width: 100vw;
  background: hsl(200, 50%, 50%);
  position: fixed;
  box-shadow: 0 2px 15px rgba(71, 120, 120, 0.5);
  transform: translate3d(0, 0, 0);
  transition: 0.3s all ease-out;
  &.navbar--hidden {
    box-shadow: none;
    transform: translate3d(0, -100%, 0);
  }
}

.bottombar {
  display: flex;
  justify-content: space-around;
  align-items: center;

  color: #fff;
  height: 60px;
  width: 100vw;
  background: hsl(200, 50%, 50%);
  position: fixed;
  bottom: 0px;
  box-shadow: 0 2px 15px rgba(71, 120, 120, 0.5);
  transform: translate3d(0, 0, 0);
  transition: 0.3s all ease-out;
  &.bottombar--hidden {
    box-shadow: none;
    transform: translate3d(0, 100%, 0);
  }
  span {
  }
}

.contents {
  padding-top: 60px;
  p {
    border: 1px solid #f9f9f9;
    border-radius: 999px;
    margin: 5px 10px;
    text-align: center;
    padding: 10px;
  }
}
</style>
