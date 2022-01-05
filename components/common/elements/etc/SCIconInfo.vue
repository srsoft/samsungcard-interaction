<template>
  <span class="inner-select-square">
    <SCIcon :style-type="styleType" :name="name" :size="size" />
    <span class="txt">{{ title }}</span>
  </span>
</template>

<script>
import SCIcon from './SCIcon';

export default {
  name: 'SCIconInfo',
  components: { SCIcon },
  props: {
    /**
     * class 조합에 사용 default 'common'
     * ['common', 'solid', 'line', 'color', 'bank', 'shop', 'coffee']
     */
    styleType: {
      type: String,
      default: 'common',
      vaildator: (value) => {
        ['common', 'solid', 'line', 'color', 'bank', 'shop', 'coffee'].includes(value);
      },
      description: 'class 조합에 사용',
    },
    /**
     * class 조합에 사용 icon-name
     */
    name: {
      type: String,
      description: 'class 조합에 사용 icon-name',
    },
    /**
     * class 조합에 사용 default 'md'
     */
    size: {
      type: String,
      default: 'md',
      description: 'class 조합에 사용',
    },
    /**
     * title 라벨
     */
    title: {
      type: String,
      description: ' title 라벨',
    },
  },
  data() {
    return {};
  },

  methods: {},
};
</script>
