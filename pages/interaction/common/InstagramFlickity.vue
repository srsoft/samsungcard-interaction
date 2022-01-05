<template>
  <LayoutContainer>
    <LayoutSection>
      <!-- <h1>Instagram Flickity</h1> -->
      <flickity ref="flickity" :options="flickityOptions" @init="onInit">
        <div class="carousel-cell">1</div>
        <div class="carousel-cell">2</div>
        <div class="carousel-cell">3</div>
        <div class="carousel-cell">4</div>
        <div class="carousel-cell">5</div>
        <div class="carousel-cell">6</div>
        <div class="carousel-cell">7</div>
        <div class="carousel-cell">8</div>
        <div class="carousel-cell">9</div>
        <div class="carousel-cell">10</div>
      </flickity>

      <br />
      <!-- <button @click="previous()">previous</button>
      <button @click="next()">next</button> -->
    </LayoutSection>
    <!-- <ol class="flickity-page-dots">
      <li class="dot is-selected"></li>
    </ol> -->
    <!-- // Footer -->
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';
import Flickity from 'vue-flickity';
import $ from 'jquery';
export default {
  components: {
    LayoutContainer,
    LayoutSection,
    Flickity,
  },
  layout: 'interaction',
  data() {
    return {
      flickityOptions: {
        initialIndex: 0,
        prevNextButtons: false,
        pageDots: true,
        wrapAround: false,
      },
    };
  },
  methods: {
    onInit() {
      this.$refs.flickity.on('change', (index) => {
        $('.flickity-page-dots').attr('style', '--selected:' + index);
        $('.flickity-page-dots > .dot').prev().removeClass('dot--prev');
        $('.flickity-page-dots > .dot').prev().removeClass('dot--prev-prev');
        $('.flickity-page-dots > .dot').prev().removeClass('dot--prev-prev-prev');
        $('.flickity-page-dots > .is-selected').prev().addClass('dot--prev');
        $('.flickity-page-dots > .is-selected').prev().prev().addClass('dot--prev-prev');
        $('.flickity-page-dots > .is-selected').prev().prev().prev().addClass('dot--prev-prev-prev');
      });
    },
    next() {
      this.$refs.flickity.next();
    },
    previous() {
      this.$refs.flickity.previous();
    },
  },
};
</script>
<style lang="scss">
@import '~@/assets/scss/interaction/flickity.scss';
</style>
