<template>
  <div class="disp-info">
    <div v-if="title" class="detail-disp">
      {{ title }}
    </div>
    <div class="price-disp">
      <SCAmountList v-if="isAmountArr" :is-border="false" :amount-arr="amountArr" />
    </div>
  </div>
</template>

<script>
import SCAmountList from '@/components/common/elements/lists/SCAmountList.vue';

export default {
  name: 'SCDispInfo',
  components: { SCAmountList },
  props: {
    /**
     * title
     */
    title: {
      type: String,
      description: 'title',
    },
    /**
     * 컨텐츠 Array<Object:{ title: string , context: string , unit: string }>
     * [{ title: '총 3건', context: '15,000,000', unit: '원' }]
     */
    amountArr: {
      type: Array,
      default: () => [],
      description: '컨텐츠 Array',
    },
  },
  computed: {
    isAmountArr() {
      return this.amountArr.length > 0;
    },
  },
  methods: {},
};
</script>
