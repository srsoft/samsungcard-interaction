<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">Progress Bar</nuxt-link></h1>
      <div>설명 : 프로그래스바</div>
    </LayoutSection>
    <LayoutSection>
      <div></div>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import LayoutContainer from '@/components/common/elements/layouts/LayoutContainer';
import LayoutSection from '@/components/common/elements/layouts/LayoutSection';

export default {
  name: 'Test5',
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

<style lang="scss" scoped></style>
