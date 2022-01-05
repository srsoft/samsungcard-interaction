<template>
  <div class="dlist_wrap">
    <MDCmnTitleText001 v-if="titleArea" :style-type="titleAreaStyleType" :is-not-bold="titleAreaIsNotBold" :is-underline="titleAreaisUnderline">
      {{ titleArea }}
    </MDCmnTitleText001>
    <dl class="dlist_detail" :class="{ 'bdr-top': isTopBorder, type_bdr: isBorder }">
      <div v-for="(item, i) in amountArr" :key="i" class="d_col align-start" :class="{ result: item.isResult }">
        <dt><i v-if="item.titleIcon" class="ico ico-md" :class="item.titleIcon" />{{ item.title }}</dt>
        <dd>
          <p v-if="item.onlyStr" class="col_txt"> {{ item.onlyStr }}</p>
          <slot>
            <del v-if="item.del">{{ item.del }}</del>
            <SCIcon v-if="item.bank" :name="item.bank" size="md" style-type="bank" />
            <SCPriceAmount v-if="item.context" :font-size="item.fontSize" :price="item.context" :unit="item.unit" />
            <SCDateAmount v-if="item.date" :date="item.date" />
            <p class="txt_detail" v-if="item.subContext">
              <span v-html="item.subContext"></span>
            </p>
          </slot>
          <SCBtn v-if="item.btn" :label="item.btn.label" style-type="link" class="end_btn" :is-button-tag="false" @onClick="onClick(item.btn.event)" />
        </dd>
      </div>
    </dl>
  </div>
</template>

<script>
import MDCmnTitleText001 from '@/components/common/module/text/MDCmnTitleText001.vue';
import SCPriceAmount from '@/components/common/elements/etc/SCPriceAmount.vue';
import SCIcon from '@/components/common/elements/etc/SCIcon';
import SCBtn from '@/components/common/elements/btns/SCBtn.vue';
import SCDateAmount from '@/components/common/elements/etc/SCDateAmount.vue';

export default {
  name: 'SCAmountList',
  components: { MDCmnTitleText001, SCPriceAmount, SCIcon, SCBtn, SCDateAmount },
  props: {
    isTopBorder: {
      type: Boolean,
      default: false,
    },
    isBorder: {
      type: Boolean,
      default: false,
    },
    amountArr: {
      type: Array,
      required: true,
      // default: () => [{ title: '', del: '', context: '', unit: '', fontSize: '' }],
    },
    titleArea: {
      type: String,
    },
    titleAreaStyleType: {
      type: Number,
      default: 0,
    },
    titleAreaIsNotBold: {
      type: Boolean,
      default: false,
    },
    titleAreaisUnderline: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {};
  },
  methods: {
    // className(item) {
    //   const cases = {
    //     만원: 'unit-t',
    //     '%': 'unit-p',
    //     분: 'unit-m',
    //     원: 'unit-w',
    //     개월: 'unit-mth',
    //   };
    //   return cases[item];
    // },
    onClick(el) {
      this.$emit('onClick', el);
    },
  },
};
</script>
<style lang="scss" scoped>
// .price-amount.large {
//   font-size: 1.5rem !important;
// }
</style>
