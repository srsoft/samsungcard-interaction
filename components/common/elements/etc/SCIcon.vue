<template>
  <i class="ico" :class="className"></i>
</template>

<script>
export default {
  name: 'SCIcon',
  props: {
    /**
     * class 조합에 사용
     */
    styleType: {
      type: String,
      default: 'common',
      vaildator: (value) => {
        return ['common', 'solid', 'line', 'color', 'bank', 'shop', 'coffee'].includes(value);
      },
      description: 'class 조합에 사용',
    },

    /**
     * class 조합에 사용 icon-name
     */
    name: {
      type: String,
      description: 'class 조합에 사용',
    },

    /**
     * class 조합에 사용
     */
    size: {
      type: String,
      default: '',
      vaildator: (value) => {
        return ['sm', 'md', 'lg', 'xl', ''].includes(value);
      },
      description: 'class 조합에 사용',
    },
  },
  data() {
    return {};
  },
  computed: {
    className() {
      const className = {
        common: 'common',
        solid: ' solid',
        line: 'line',
        color: 'color',
        bank: 'bank',
        brand: 'brand',
        shop: 'shop',
        coffee: 'coffee',
      };

      const addSizeStr = this.size ? `ico-${this.size}` : '';

      return `${addSizeStr} ${className[this.styleType]}-${this.name}`;
    },
  },
  methods: {},
};
</script>
