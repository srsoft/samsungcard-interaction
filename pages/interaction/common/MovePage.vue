<template>
  <LayoutContainer>
    <LayoutSection>
      <MDCmnHeader001 :class="{ on: headerState }" title="페이지간 이동" :has-close="true" @onClickHeaderLink="onClose"></MDCmnHeader001>
      <div class="bannerCard">
        <h1><nuxt-link :to="{ name: 'interaction' }">페이지 간 이동</nuxt-link></h1>
        <div>banner card</div>
      </div>
      <div class="bannerOver">
        <div v-for="i in 100" :key="i">{{ i }}</div>
      </div>
    </LayoutSection>
    <!-- // Footer -->
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
import MDCmnHeader001 from '@/components/common/module/MDCmnHeaderTitle001.vue';
// import movepage from '@/mixins/movepage.js';

export default {
  name: 'Detail',
  components: {
    LayoutContainer,
    LayoutSection,
    MDCmnHeader001,
  },
  data() {
    return {
      headerState: false,
    };
  },
  // mixins: [movepage],
  mounted() {
    window.addEventListener('scroll', this.onScroll);
  },
  methods: {
    onClose() {
      this.$router.push({ name: 'interaction' });
    },
    onScroll() {
      const currentScrollPosition = window.pageYOffset;
      console.log('onScroll:', currentScrollPosition);
      if (currentScrollPosition > 200 - 48) {
        this.headerState = true;
      } else {
        this.headerState = false;
      }
    },
  },
};
</script>
<style lang="scss">
.container {
  padding-top: 0px !important;
  padding-left: 0px !important;
  padding-right: 0px !important;
}
.bannerCard {
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 200px;
  background-color: #ccc;
  padding: 50px 20px 20px;
  z-index: 1;
}
.bannerOver {
  position: relative;
  margin-top: 200px;
  background-color: #fff;
  z-index: 2;
}
.page-hd-wrap {
  opacity: 0;
  transition-duration: 0.2s;
  &.on {
    opacity: 1;
  }
}
</style>
