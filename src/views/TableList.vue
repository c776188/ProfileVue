<style>
.frame-table table {
  -webkit-box-shadow: inset 0px 0px 5px 2px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: inset 0px 0px 5px 2px rgba(0, 0, 0, 0.75);
  box-shadow: inset 0px 0px 5px 2px rgba(0, 0, 0, 0.75);
}

.frame-table table thead {
  visibility: collapse;
}
</style>>

<template>
  <v-container fill-height fluid grid-list-xl>
    <v-layout justify-center wrap>
      <v-flex md12>
        <material-card color="green" title="Skill" text="Here is a subtitle for this table">
          <v-data-table
            class="fb-table-elem"
            :headers="skillHeaders"
            :items="skillItems"
            item-key="name"
            :pagination.sync="pagination"
            hide-actions
            expand
          >
            <template slot="headerCell" slot-scope="{ header }">
              <span
                class="subheading font-weight-light text-success text--darken-3"
                v-text="header.text"
              />
            </template>
            <template slot="items" slot-scope="props">
              <tr @click="props.expanded = !props.expanded">
                <td>
                  <div class="datatable-cell-wrapper">{{ props.item.name }}</div>
                </td>
                <td>
                  <v-chip :color="getColor(props.item.proficiency)" dark>
                    <div class="datatable-cell-wrapper">{{ props.item.proficiency }}</div>
                  </v-chip>
                </td>
                <td>
                  <div class="datatable-cell-wrapper">{{ props.item.experience }}</div>
                </td>
              </tr>
            </template>
          </v-data-table>
        </material-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      expanded: [],
      singleExpand: false,
      pagination: {
        rowsPerPage: -1,
        sortBy: "proficiency",
        descending: true
      },
      skillHeaders: [
        {
          sortable: false,
          text: "Skill Name",
          value: "name"
        },
        {
          text: "Proficiency",
          value: "proficiency"
        },
        {
          text: "Experience",
          value: "experience"
        }
      ],
      skillItems: [
        {
          name: "JAVA",
          proficiency: "☆☆☆☆☆",
          experience: "5"
        },
        {
          name: "Spring",
          proficiency: "☆☆☆☆",
          experience: "1"
        },
        {
          name: "PHP",
          proficiency: "☆☆☆☆☆",
          experience: "4"
        },
        {
          name: "Codeigniter",
          proficiency: "☆☆☆☆",
          experience: "2"
        },
        {
          name: "Laravel",
          proficiency: "☆☆☆",
          experience: "1"
        },
        {
          name: "C",
          proficiency: "☆☆",
          experience: "3"
        },
        {
          name: "Unity",
          proficiency: "☆☆☆",
          experience: "1"
        },
        {
          name: "Golang",
          proficiency: "☆☆☆",
          experience: "1"
        },
        {
          name: "Beego",
          proficiency: "☆☆",
          experience: "1"
        },
        {
          name: "Javascript",
          proficiency: "☆☆☆☆☆",
          experience: "4"
        },
        {
          name: "VueJs",
          proficiency: "☆☆☆",
          experience: "2"
        },
        {
          name: "Android",
          proficiency: "☆☆",
          experience: "2"
        }
      ]
    };
  },
  methods: {
    getColor: function(proficiency) {
      if (proficiency.length > 4) return "red";
      else if (proficiency.length > 2) return "orange";
      else return "green";
    }
  }
};
</script>
