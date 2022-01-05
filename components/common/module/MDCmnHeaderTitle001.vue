<template>
  <div class="page-hd-wrap">
    <div class="page-tit">
      <a href="#"
        ><i v-if="hasBack" class="ico ico-sm common-back" @click="onClick"></i>
        <span>{{ title }}</span>
      </a>
    </div>
    <div v-if="hasClose" class="page-unit">
      <button type="button" class="sc-cmn btn_icon" aria-label="페이지 닫기" @click="onClose">
        <i class="sc-cmn ico common-close"></i>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MDCmnHeaderTitle001',

  props: {
    title: {
      type: String,
      required: true,
    },
    hasBack: {
      type: Boolean,
      default: true,
    },
    hasClose: {
      type: Boolean,
      default: false,
    },
  },

  computed: {},

  methods: {
    onClick() {
      this.$emit('onClickHeaderLink');
    },
    onClose() {
      this.$emit('onClickHeaderClose');
    },
  },
};
</script>
<style></style>
