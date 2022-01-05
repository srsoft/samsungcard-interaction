<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">바텀모달</nuxt-link></h1>
      <button class="btn_util" @click="onBottomModal">바텀 모달</button>
      <p><nuxt-link :to="{ name: 'interaction-common-MovePage' }">페이지 간 이동</nuxt-link></p>
    </LayoutSection>
    <LayoutSection>
      <h2>설명</h2>
      <div>npm install --save @webzlodimir/vue-bottom-sheet</div>
    </LayoutSection>
    <LayoutSection>
      <VueBottomSheet
        ref="myBottomSheet"
        :overlay="true"
        max-height="50%"
        effect="fx-fadein-scale"
        :rounded="true"
        :is-full-screen="true"
        :swipe-able="true"
        :background-scrollable="false"
        :background-clickable="false"
      >
        <h1>vue bottom sheet</h1>
        <span @click="close">close</span>
        <p><nuxt-link :to="{ name: 'interaction-common-MovePage' }" class="btn_util">페이지 간 이동</nuxt-link></p>
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

      <div>
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
        1 <br />
      </div>
    </LayoutSection>

    <!-- // Footer -->
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
// import movepage from '@/mixins/movepage.js';

export default {
  name: 'Detail',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  beforeRouteLeave(to, from, next) {
    this.$refs.myBottomSheet.close();
    next();
  },
  // mixins: [movepage],
  methods: {
    onBottomModal() {
      this.open();
    },
    open() {
      this.$refs.myBottomSheet.open();
    },
    close() {
      this.$refs.myBottomSheet.close();
    },
    // opened() {
    //   this.console.log('opened');
    // },
    // closed() {
    //   this.console.log('closed');
    // },
  },
};
</script>
<style lang="scss" scoped>
// @import '~@/assets/scss/interaction/movepage.scss';
</style>
