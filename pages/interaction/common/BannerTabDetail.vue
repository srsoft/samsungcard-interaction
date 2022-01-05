<template>
  <div>
    <div class="motionContainer">
      <div class="bannerItem" :class="{ off: bannerAction }" @click="onClickBanner">
        <div class="bannerTitle">banner Title</div>
        <div class="bannerDesc">banner Desc</div>
        <div class="bannerCard" />
      </div>
    </div>
    <div v-for="i in 100" :key="i">{{ i }}</div>
  </div>
</template>

<script>
export default {
  name: 'BannerTabDetail',
  components: {},
  beforeDestory() {},
  data() {
    return {
      bannerAction: false,
    };
  },
  methods: {
    onClickBanner() {
      this.bannerAction = true;
      setTimeout(() => {
        this.$router.go(-1);
      }, 500);
    },
  },
};
</script>

<style lang="scss" scoped>
.motionContainer {
  position: relative;
  width: 400px;
  // height: 100vh;
  border: 1px solid #333;
}
.bannerItem {
  position: relative;
  top: 0px;
  width: calc(100% - 0px);
  height: 340px;
  margin-left: 0px;
  background-color: #ccc;
  border-radius: 0px;
  padding: 20px;
  cursor: pointer;
  &.off {
    animation: bannerItemAction 0.5s ease-in-out forwards;
    .bannerCard {
      animation: bannerCardAction 0.5s ease-in-out forwards;
    }
  }
  .bannerTitle {
    font-size: 30px;
    font-weight: 800;
  }
  .bannerDesc {
    font-size: 20px;
    font-weight: 500;
  }
  .bannerCard {
    position: absolute;
    width: 100px;
    height: 160px;
    right: calc(100% / 2 - 50px);
    bottom: -50px;
    background-color: #3eaf7c;
  }
}

@keyframes bannerItemAction {
  0% {
    position: absolute;
    top: 0px;
    width: calc(100% - 0px);
    height: 340px;
    margin-left: 0px;
    border-radius: 0px;
  }
  100% {
    position: absolute;
    top: 300px;
    width: calc(100% - 40px);
    height: 300px;
    margin-left: 20px;
    border-radius: 30px;
  }
}

@keyframes bannerCardAction {
  0% {
    width: 100px;
    height: 160px;
    right: calc(100% / 2 - 50px);
    bottom: -50px;
    background-color: #3eaf7c;
  }
  100% {
    width: 50px;
    height: 80px;
    right: 20px;
    bottom: 20px;
    background-color: #888;
  }
}
</style>
