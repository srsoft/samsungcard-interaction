<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">챗봇</nuxt-link></h1>
      <div>npm install --save v-dragged</div>
      <div>currentBottomSheetState: {{ currentBottomSheetState }}</div>
      <div>npm install vue-backtotop --save</div>
      <div v-for="i in 100" :key="i">{{ i }}</div>
      <div v-if="buttonShow" ref="dragged" v-dragged.prevent="onDragged" class="floating-banner">
        <i @click.prevent="buttonShow = false"></i>
        <p>안녕하세요<br />삼성카드 챗봇샘입니다.</p>
        <span>챗봇</span>
      </div>
      <BackToTop visibleoffset="60" bottom="100px" right="20px">
        <button class="btn-to-top">top</button>
      </BackToTop>
    </LayoutSection>
    <LayoutSection>
      vue bottom sheet
      <VueBottomSheet
        ref="myBottomSheet"
        :overlay="true"
        max-height="95%"
        max-width="100%"
        :rounded="true"
        :is-full-screen="true"
        :swipe-able="true"
        :background-scrollable="false"
        :background-clickable="false"
        @opened="currentBottomSheetState = true"
        @closed="currentBottomSheetState = false"
      >
        <h1>챗봇 채팅</h1>
        <button class="btn_util" @click="currentBottomSheetState = false">close</button>
        <h2>interaction</h2>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
        <p>modal popup</p>
      </VueBottomSheet>
      hello button area
    </LayoutSection>
    <!-- // Footer -->
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
import BackToTop from 'vue-backtotop';

export default {
  name: 'Detail',
  components: {
    LayoutContainer,
    LayoutSection,
    BackToTop,
  },
  data() {
    return {
      topStart: 50,
      topEnd: 100,
      currentTop: 0,
      currentBottomSheetState: false,
      buttonShow: true,
    };
  },
  watch: {
    currentBottomSheetState(v) {
      if (v) {
        this.$refs.myBottomSheet.open();
      } else {
        this.$refs.myBottomSheet.close();
      }
    },
  },
  mounted() {
    this.$refs.dragged.style.top = window.innerHeight - this.topEnd + 'px';
    this.currentTop = this.$refs.dragged.style.top;
  },
  methods: {
    onDragged({ el, deltaX, deltaY, offsetX, offsetY, clientX, clientY, first, last }) {
      if (first) {
        this.dragged = true;
        return;
      }
      if (last) {
        this.dragged = false;
        if (this.currentTop === el.style.top) {
          setTimeout(() => {
            if (this.buttonShow) {
              this.currentBottomSheetState = !this.currentBottomSheetState;
            }
          }, 100);
        } else {
          this.currentTop = el.style.top;
        }
        return;
      }

      const l = +window.getComputedStyle(el).left.slice(0, -2) || 0;
      const t = +window.getComputedStyle(el).top.slice(0, -2) || 0;

      if (t + deltaY > this.topStart && t + deltaY < window.innerHeight - this.topEnd) el.style.top = t + deltaY + 'px';
    },
  },
};
</script>
<style lang="scss" scoped>
@import '~@/assets/scss/interaction/chatbot.scss';
.btn-to-top {
  border: 1px solid black;
  width: 40px;
  height: 40px;
  border-radius: 50px;
  cursor: pointer;
}
</style>
