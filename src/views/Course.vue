<style>
h1 {
  font-size: 2em;
  text-align: center;
  margin: 20px 0 40px;
  padding: 0;
}
.container {
  width: 80%;
  margin: 0 auto;
  overflow: auto;
  padding: 2%;
}
.right-content,
.left-content {
  float: left;
  display: block;
  width: 40%;
  padding: 1% 2%;
}
.left-content {
  border-right: 5px dotted #666;
  text-align: right;
}
.left-content div {
  height: 150px;
  opacity: 1;
}
.right-content div:first-child {
  margin: 60px 0 0;
}
.right-content div {
  height: 150px;
  opacity: 1;
}
.container div {
  -webkit-transition: all 0.7s ease-in-out;
  -moz-transition: all 0.7 ease-in-out;
  -ms-transition: all 0.7s ease-in-out;
  -o-transition: all 0.7s ease-in-out;
  transition: all 0.7s ease-in-out;
}
.left-content .more-padding {
  padding-right: 100px;
  opacity: 0;
}
.right-content .more-padding {
  padding-left: 100px;
  opacity: 0;
}
</style>
<template>
  <div class="container">
    <h1>Simple Animated Timeline Scroller</h1>
    <div class="left-content">
      <course-content
        v-for="(item, key) in leftData"
        :key="key"
        :message="item.message"
        :year="item.year"
      ></course-content>
    </div>
    <div class="right-content">
      <course-content v-for="(item, key) in rightData" :key="key" :message="item.message"></course-content>
    </div>
  </div>
</template>

<script>
import Vue from "vue";
import jQuery from "jquery";
let $ = jQuery;

Vue.component("course-content", {
  template: `<div class='year'>
              <h2>{{year}}</h2>
              <p>{{message}}</p>
            </div>`,
  props: ["year", "message"]
});

export default {
  methods: {
    clicked(value) {
      this.expanded.push(value);
    }
  },
  created: function() {
    // year
    var thisYear = new Date().getFullYear();
    for (var i = thisYear; i >= 2013; i--) {
      this.leftData = this.leftData.concat([{ year: i }]);
    }
  },
  mounted: function() {
    // 滾軸事件
    $(window).scroll(function() {
      $(".container div").each(function() {
        var scrollTop = $(window).scrollTop(),
          elementOffset = $(this).offset().top,
          distance = elementOffset - scrollTop,
          windowHeight = $(window).height(),
          breakPoint = windowHeight * 0.9;

        if (distance > breakPoint) {
          $(this).addClass("more-padding");
        }
        if (distance < breakPoint) {
          $(this).removeClass("more-padding");
        }
      });
    });
  },
  data() {
    return {
      leftData: [],
      rightData: [
        {
          year: 2013,
          message: "cc"
        },
        {
          year: 2013,
          message: "dd"
        },
        {
          year: 2013,
          message: "ee"
        }
      ]
    };
  }
};
</script>