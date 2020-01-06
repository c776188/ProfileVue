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
.left-content p {
  margin: 150px 0 0;
  opacity: 1;
}
.right-content p {
  margin: 80px 0 150px;
  opacity: 1;
}
.container p {
  -webkit-transition: all 0.7s ease-in-out;
  -moz-transition: all 0.7 ease-in-out;
  -ms-transition: all 0.7s ease-in-out;
  -o-transition: all 0.7s ease-in-out;
  transition: all 0.7s ease-in-out;
}
.left-content .more-padding {
  padding-right: 200px;
  opacity: 0;
}
.right-content .more-padding {
  padding-left: 200px;
  opacity: 0;
}
</style>
<template>
  <div class="container">
    <h1>Simple Animated Timeline Scroller</h1>
    <div class="left-content">
      <p>Content 01</p>
      <p>Content 02</p>
      <p>Content 03</p>
      <p>Content 04</p>
      <p>Content 05</p>
      <p>Content 06</p>
      <p>Content 07</p>
      <p>Content 08</p>
      <p>Content 09</p>
      <p>Content 10</p>
    </div>
    <div class="right-content">
      <p>Content 01</p>
      <p>Content 02</p>
      <p>Content 03</p>
      <p>Content 04</p>
      <p>Content 05</p>
      <p>Content 06</p>
      <p>Content 07</p>
      <p>Content 08</p>
      <p>Content 09</p>
      <p>Content 10</p>
    </div>
  </div>
</template>

<script>
import jQuery from "jquery";
let $ = jQuery;

export default {
  methods: {
    clicked(value) {
      this.expanded.push(value);
    }
  },
  mounted: function() {
    $(window).scroll(function() {
      $(".container p").each(function() {
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
      headers: [
        {
          text: "Dessert (100g serving)",
          align: "left",
          sortable: false,
          value: "name"
        },
        { text: "Calories", value: "calories" },
        { text: "Fat (g)", value: "fat" },
        { text: "Carbs (g)", value: "carbs" },
        { text: "Protein (g)", value: "protein" },
        { text: "Sodium (mg)", value: "sodium" },
        { text: "Calcium (%)", value: "calcium" },
        { text: "Iron (%)", value: "iron" }
      ],
      items: [
        {
          value: false,
          name: "Frozen Yogurt",
          calories: 159,
          fat: 6.0,
          carbs: 24,
          protein: 4.0,
          sodium: 87,
          calcium: "14%",
          iron: "1%"
        },
        {
          value: false,
          name: "Ice cream sandwich",
          calories: 237,
          fat: 9.0,
          carbs: 37,
          protein: 4.3,
          sodium: 129,
          calcium: "8%",
          iron: "1%"
        },
        {
          value: false,
          name: "Eclair",
          calories: 262,
          fat: 16.0,
          carbs: 23,
          protein: 6.0,
          sodium: 337,
          calcium: "6%",
          iron: "7%"
        },
        {
          value: false,
          name: "Cupcake",
          calories: 305,
          fat: 3.7,
          carbs: 67,
          protein: 4.3,
          sodium: 413,
          calcium: "3%",
          iron: "8%"
        },
        {
          value: false,
          name: "Gingerbread",
          calories: 356,
          fat: 16.0,
          carbs: 49,
          protein: 3.9,
          sodium: 327,
          calcium: "7%",
          iron: "16%"
        },
        {
          value: false,
          name: "Jelly bean",
          calories: 375,
          fat: 0.0,
          carbs: 94,
          protein: 0.0,
          sodium: 50,
          calcium: "0%",
          iron: "0%"
        }
      ]
    };
  }
};
</script>