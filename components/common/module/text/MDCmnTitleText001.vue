<template>
  <div class="title-wrap type1" :class="{ 'line-type': isUnderline }">
    <div class="tit_bx">
      <strong class="tit" :class="[className, { fwNor: isNotBold }]">
        <slot></slot>
      </strong>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MDCmnTitleText001',
  props: {
    styleType: {
      type: [Number, String],
      default: '0',
    },
    isNotBold: {
      type: Boolean,
      default: false,
    },
    isUnderline: {
      type: Boolean,
      default: false,
    },
    // subTitle: {
    //   type: String,
    //   default: null,
    // },
  },
  data() {
    return {};
  },
  computed: {
    className() {
      const cases = {
        0: '',
        // 1: 'mdTitle1',
        // 2: 'mdTitle2',
        // 3: 'mdTitle3',
        // 4: 'mdTitle4',
        5: 'mdTitle5',
      };
      return cases[this.styleType];
    },
  },
};
</script>

<style lang="scss" scoped>
// css 없어서 임시 - 퍼블 소스 받으면 삭제
// .mdTitle1 {
//   font-size: 12pt;
//   line-height: 1.25;
//   font-weight: 700;
// }
// .mdTitle2 {
//   font-size: 10pt;
//   line-height: 1.25;
//   font-weight: 700;
// }
// .mdTitle3 {
//   font-size: 11px;
//   line-height: 1.25;
//   font-weight: 700;
// }
.text-bold {
  font-weight: bold;
}
</style>
