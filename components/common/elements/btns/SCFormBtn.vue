<template>
  <div class="form_dw">
    <button class="dw_btn" type="button" aria-label="선택사항 더보기" :disabled="disabled" @click="onClick">
      <span v-if="!selectedName" class="dw_value" :class="className">{{ btnLabel ? btnLabel : placeholder }}</span>
      <span v-else class="dw_value">
        <SCIcon v-if="icoType" :style-type="icoType" :name="icoName" :size="'md'" />
        {{ selectedName }}
      </span>
      <span v-if="unit" class="txt_unit">{{ unit }}</span>
      <SCIcon v-else :style-type="'common'" :name="'expand-more-m'" />
    </button>
    <!-- <input v-if="btnLabel" :id="btnLabel" type="hidden" :name="btnLabel" :value="btnLabel" /> -->
  </div>
</template>

<script>
import SCIcon from '@/components/common/elements/etc/SCIcon';

export default {
  name: 'SCFormBtn',
  components: { SCIcon },
  props: {
    /**
     * SCIcon 컴포넌트에 내려주는 styleType
     */
    icoType: {
      type: String,
      validator: (value) => {
        return ['common', 'solid', 'line', 'color', 'bank', 'brand', 'shop', 'coffee'].includes(value);
      },
      description: 'SCIcon 컴포넌트에 내려주는 styleType css 조합에 사용됨',
    },

    /**
     * SCIcon 컴포넌트에 내려주는 name css 조합에 사용됨
     */
    icoName: {
      type: String,
      description: 'SCIcon 컴포넌트에 내려주는 name css 조합에 사용됨',
    },

    /**
     * icon name
     */
    selectedName: {
      type: String,
      description: 'selectedName',
    },

    /**
     * placeholder
     */
    placeholder: {
      type: String,
      description: 'placeholder',
    },

    /**
     * 내용
     */
    btnLabel: {
      type: [String, Number],
      description: 'btnLabel',
    },

    /**
     * unit 우측 label
     */
    unit: {
      type: String,
      description: 'unit',
    },
    /**
     * disabled 여부
     */
    disabled: {
      type: Boolean,
      description: 'disabled',
    },
  },
  computed: {
    className() {
      return [{ placeholder: !this.btnLabel }];
    },
  },
  watch: {
    // btnLabel: {
    //   handler() {
    //     this.emitInputData(this.btnLabel);
    //   },
    // },
  },
  mounted() {},
  methods: {
    onClick() {
      this.$emit('onClick');
    },
    emitInputData(data) {
      this.$emit('inputData', data);
    },
  },
};
</script>

<style scoped>
.txt_unit {
  color: #111111;
  font-size: 1rem;
  font-weight: 700;
  font-style: normal;
}
</style>
