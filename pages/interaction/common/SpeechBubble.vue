<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">서비스 가이드 팝업(말풍선)</nuxt-link></h1>
      <div>설명 : 5초후 말풍선 사라짐</div>
    </LayoutSection>
    <LayoutSection>
      <div class="speech-bubble-border">
        <div>1</div>
        <div>
          <button class="btn_icon"><i class="ico line-search">검색하기</i><p class="speech-bubble">더 많은 혜택을 검색해보세요.</p></button>
        </div>
        <div>3</div>
      </div>
      <div class="speech-bubble-border">
        <div><button class="btn_util" @click="onClick(1)">1</button></div>
        <div><button class="btn_util" @click="onClick(2)">2</button></div>
        <div><button class="btn_util" @click="onClick(3)">3</button></div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'SpeechBubble',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  beforeDestory() {},
  data() {
    return {};
  },
  methods: {
    onClick(v) {
      console.log(v);
    },
  },
};
</script>

<style lang="scss" scoped>
.speech-bubble-border {
  display: flex;
  justify-content: space-between;
}
.speech-bubble {
  position: absolute;
  bottom: -50px;
  right: -30px;
  white-space: nowrap;
  background-color: skyblue;
  border-radius: 999px;
  padding: 5px 10px;
  color: #fff;
  animation: speechBubble 0.2s 5s ease-in-out forwards;
  &::after {
    position: absolute;
    top: -15px;
    right: 30px;
    content: '';
    display: block;
    width: 0px;
    height: 0px;
    border-bottom: 10px solid transparent;
    border-bottom: 15px solid skyblue;
    border-left: 10px solid transparent;
    border-right: 10px solid transparent;
  }
}

@keyframes speechBubble {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
    visibility: hidden;
  }
}
</style>
