<template>
  <LayoutContainer>
    <LayoutSection>
      <h1><nuxt-link :to="{ name: 'interaction' }">Tabmenu1</nuxt-link></h1>
      <div>설명 : 컨텐츠 파트를 나눠 놓고 탭동작</div>
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
  name: 'Tabmenu1',
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
