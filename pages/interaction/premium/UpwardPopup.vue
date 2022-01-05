<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">프리미엄 상향 팝업</nuxt-link></h1>
      <div>설명 : 축하 꽃가루 모션</div>
      <div>화면ID : PGHPPPCBenefitRewardsChoisePopup001</div>
      <div>npm install --save vue-lottie</div>
    </LayoutSection>
    <LayoutSection>
      <div>
        <div class="container">
          <h1>프리미엄 회원 선정</h1>
          <div class="lottiContainer">
            <lottie :width="250" :height="250" :options="lottieOptions" @animCreated="handleAnimation" />
          </div>
          <p>축하드립니다!</p>
          <p>22년 상반기 Platinum 회원으로 선정되셨습니다</p>
          <button>확인</button>
          <div>
            <button class="btn_util" @click="play">play</button>
            <button class="btn_util" @click="stop">stop</button>
            <button class="btn_util" @click="pause">pause</button>
          </div>
          <div>
            <p>Speed: x{{ animationSpeed }}</p>
            <input v-model="animationSpeed" type="range" min="0" max="3" step="0.5" @change="onSpeedChange" />
          </div>
        </div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import lottie from 'vue-lottie/src/lottie.vue';
import * as animationData from '~/assets/animation/lf20_u4yrau.json';

export default {
  components: {
    lottie,
  },
  data() {
    return {
      anim: null,
      defaultOptions: { animationData },
      animationSpeed: 1.5,
      lottieOptions: {
        animationData: animationData.default,
        loop: false,
        autoplay: true,
        renderer: 'svg',
      },
    };
  },
  methods: {
    handleAnimation(anim) {
      this.anim = anim;
      this.anim.setSpeed(this.animationSpeed);
    },

    stop() {
      this.anim.stop();
    },

    play() {
      // this.anim.play();
      this.anim.goToAndPlay(0, true);
    },

    pause() {
      this.anim.pause();
    },

    onSpeedChange() {
      this.anim.setSpeed(this.animationSpeed);
    },
  },
};
</script>

<style lang="scss" scoped>
.container {
  width: 400px;
}
.lottiContainer {
  position: relative;
  height: 100px;
  div {
    position: absolute;
    top: -100px;
    pointer-events: none;
  }
}
</style>
