<template>
  <LayoutContainer>
    <LayoutSection>
      <SCBtn @onClick="openSwipemodal('100%', '80vh', '20px')">width 100%, height 80vh, radius 20px</SCBtn>
      <SCBtn @onClick="openSwipemodal('100%', '100vh', '20px')">width 100%, height 80vh, radius 20px</SCBtn>
      <SCBtn @onClick="openSwipemodal('100%', '80%', '20px')">width 100%, height 80%, radius 20px</SCBtn>
      <SCBtn @onClick="openSwipemodal('100%', '100%', '20px')">width 100%, height 100%, radius 20px</SCBtn>
      <SCBtn @onClick="openSwipemodal('100%', '80vh', '0px')">width 100%, height 80vh, radius 0px</SCBtn>
      <SCBtn @onClick="openSwipemodal('100%', '100vh', '0px')">width 100%, height 80vh, radius 0px</SCBtn>
      <SCBtn @onClick="openSwipemodal('80%', '80vh', '20px')">width 80%, height 80vh, radius 20px</SCBtn>
      <SCBtn @onClick="openSwipemodal('80%', '100vh', '20px')">width 80%, height 80vh, radius 20px</SCBtn>
      <swipemodal v-model="modal" :width="sWidth" :height="sHeight" :radius="sRadius">
        <div>
          <h1>contents</h1>
          <div> {{ sWidth }}, {{ sHeight }}, {{ sRadius }} </div>
          <span @click="modal = !modal">close</span>
        </div>
      </swipemodal>
    </LayoutSection>
  </LayoutContainer>
</template>

<script>
import swipemodal from 'nekoo_vue_swipemodal';
import 'nekoo_vue_swipemodal/dist/swipemodal.css';

import SCBtn from '@/components/common/elements/btns/SCBtn';

export default {
  name: 'BottomPopup',
  components: {
    swipemodal,
    SCBtn,
  },
  data() {
    return {
      modal: false,
      sWidth: '',
      sHeight: '',
      sRadius: '',
    };
  },
  beforeDestory() {},
  methods: {
    openSwipemodal(width, height, radius) {
      this.sWidth = width;
      this.sHeight = height;
      this.sRadius = radius;
      this.modal = true;
    },
  },
};
</script>

<style></style>
