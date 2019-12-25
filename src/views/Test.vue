
<template>
  <v-data-table
    class="fb-table-elem"
    :headers="headers"
    :items="items"
    hide-actions
    item-key="name"
    expand
  >
    <template slot="items" slot-scope="props">
      <tr @click="props.expanded = !props.expanded">
        <td>
          <div class="datatable-cell-wrapper">{{ props.item.name }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.calories }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.fat }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.carbs }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.protein }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.sodium }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.calcium }}</div>
        </td>
        <td class="text-xs-right">
          <div class="datatable-cell-wrapper">{{ props.item.iron }}</div>
        </td>
      </tr>
    </template>
    <template slot="expand" slot-scope="props">
      <v-card flat>
        <v-card-text>Peek-a-boo! {{ props.item.name }}</v-card-text>
        <v-card-text>Peek-a-boo!</v-card-text>
        <div class="datatable-container"></div>
      </v-card>
    </template>
  </v-data-table>
</template>
<script>
export default {
  methods: {
    clicked(value) {
      this.expanded.push(value);
    }
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