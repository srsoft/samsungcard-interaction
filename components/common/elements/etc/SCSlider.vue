<template>
  <div class="sc-slider range">
    <SCSlider v-model="value" min="0" max="1000" :marks="marks" />
  </div>
</template>

<script>
import SCSlider from 'vue-slider-component';
import 'vue-slider-component/theme/default.css';

export default {
  name: 'SCSlider',
  components: {
    SCSlider,
  },
  data() {
    return {
      value: 0,
      marks: {
        0: {
          label: '0%',
        },
        100: {
          label: '100%',
        },
      },
    };
  },
  computed: {},
  watch: {},
  mounted() {},
  created() {},

  beforeDestroy() {},

  methods: {},
};
</script>
