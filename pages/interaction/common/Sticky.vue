<template>
  <LayoutContainer>
    <LayoutSection>
      <h1>Sticky 2</h1>
      <div class="sticky">1</div>
      <div class="sticky">2</div>
      <div class="sticky">3</div>
      <div class="sticky">4</div>
      <div v-sticky class="sticky menu">5</div>
      <div class="sticky">6</div>
      <div class="sticky">7</div>
      <div class="sticky">8</div>
      <div class="sticky">9</div>
      <div v-sticky class="sticky menu">10</div>
      <div class="sticky">11</div>
      <div class="sticky">12</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div v-sticky class="sticky menu">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
      <div class="sticky">13</div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
// import Sticky from 'vue-sticky-directive';
export default {
  name: 'Sticky',
  // directives: { Sticky },
  beforeDestory() {},
};
</script>

<style lang="scss" scoped>
.sticky {
  background: #f9f9f9;
  padding: 5px 0;
  margin-bottom: 20px;
  text-align: center;
  &.menu {
    background: #000;
    color: #fff;
  }
}
</style>
