<script>
/**
 * Eelement 설명 : WCMS url의 HTML 취득
 * ************************************************************************************************
 *     수정일        이  름    사유
 * ***********************************************************************************************
 *     2021-08-20    진윤오   최초 작성
 * ***********************************************************************************************
 */

import axios from 'axios';

export default {
  name: 'SCWcmsHtml',
  props: {
    /**
     * wcms 에서 JSON 을 가져오는 url
     */
    url: {
      type: String,
      default: null,
    },
  },

  data() {
    return {
      /**
       * @description url에서 받아온 DATA
       * @type {string}
       */
      response: '',

      /**
       * @description Loading 여부
       * @type {boolean}
       */
      isLoading: true,
    };
  },

  /**
   * WCMS 서버 랜더링 SEO
   */
  async fetch() {
    if (this.url) {
      try {
        this.isLoading = true;
        const response = await axios.get(this.url);
        this.response = response.data;
      } catch (e) {
        console.log(e);
      } finally {
        this.isLoading = false;
      }
    }
  },
  render() {
    return this.$scopedSlots.default({
      html: this.response,
      isLoading: this.isLoading,
    });
  },
};
</script>
