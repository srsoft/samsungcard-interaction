<template>
  <div v-if="isPopup" class="pop-sec" :class="{ pd_t_0: unsetTopPadding }">
    <slot></slot>
  </div>
  <div v-else-if="isInner" class="inner_section"><slot></slot>
  </div>
  <section v-else :class="getClassByProps()">
    <slot></slot>
  </section>
</template>

<script>
export default {
  name: 'LayoutSection',
  props: {
    isSelection: {
      type: Boolean,
      default: false,
    },
    isPopup: {
      type: Boolean,
      default: false,
    },
    unsetTopPadding: {
      type: Boolean,
      default: false,
    },
    isInner:{
      type: Boolean,
      default: false,
    }
  },
  methods: {
    getClassByProps() {
      let classOption = this.unsetTopPadding ? 'pd_t_0 ' : '';
      classOption += this.isSelection ? 'selection' : 'section';
      return classOption;
    },
  },
};
</script>
<style>
.section[imsi='class1'] {
  background-color: #fff;
  margin-top: -50px;
  margin-left: -20px;
  margin-right: -20px;
  padding: 20px;
}
</style>
