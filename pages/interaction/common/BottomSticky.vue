<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">하단 v-sticky</nuxt-link></h1>
      <div>설명 : 하단 스티키</div>
    </LayoutSection>
    <LayoutSection>
      <div>
        <div v-sticky class="bottomButton">top button sticky</div>
        <ul>
          <li v-for="i in 100" :key="i">{{ i }}</li>
        </ul>
        <div v-sticky sticky-side="bottom" class="bottomButton">bottom button sticky</div>
        <div class="footer">footer</div>
      </div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'BottomSticky',
  components: {
    LayoutContainer,
    LayoutSection,
  },
  beforeDestory() {},
  data() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
.bottomButton {
  background-color: #aaa;
  padding: 20px;
  text-align: center;
}
.footer {
  background-color: #ccc;
  text-align: center;
}
</style>
