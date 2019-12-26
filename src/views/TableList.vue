<style>
.frame-table {
  margin-left: 10px;
  margin-bottom: 10px;
}

.frame-table table {
  -webkit-box-shadow: inset 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: inset 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
  box-shadow: inset 5px 5px 5px 0px rgba(0, 0, 0, 0.75);
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
                  <div class="datatable-cell-wrapper">{{ props.item.proficiency }}</div>
                </td>
                <td>
                  <div class="datatable-cell-wrapper">{{ props.item.experience }}</div>
                </td>
              </tr>
            </template>
            <template slot="expand" slot-scope="props">
              <v-card flat>
                <v-data-table
                  class="fb-table-elem frame-table"
                  :headers="skillHeaders"
                  :items="props.item.frame"
                  item-key="name"
                  :pagination.sync="pagination"
                  hide-actions
                >
                  <template slot="items" slot-scope="props">
                    <td>
                      <div class="datatable-cell-wrapper">{{ props.item.name }}</div>
                    </td>
                    <td>
                      <div class="datatable-cell-wrapper">{{ props.item.proficiency }}</div>
                    </td>
                    <td>
                      <div class="datatable-cell-wrapper">{{ props.item.experience }}</div>
                    </td>
                  </template>
                  <div class="datatable-container"></div>
                </v-data-table>
              </v-card>
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
        sortBy: "experience",
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
          proficiency: "Niger",
          experience: "5",
          frame: [
            {
              name: "Spring",
              proficiency: "Niger",
              experience: "5"
            }
          ]
        },
        {
          name: "PHP",
          proficiency: "Curaçao",
          experience: "3",
          frame: [
            {
              name: "Codeigniter",
              proficiency: "Curaçao",
              experience: "3"
            },
            {
              name: "Laravel",
              proficiency: "Netherlands",
              experience: "3"
            }
          ]
        },
        {
          name: "C",
          proficiency: "Netherlands",
          experience: "3"
        },
        {
          name: "Golang",
          proficiency: "Korea, South",
          experience: "1",
          frame: [
            {
              name: "Beego",
              proficiency: "Korea, South",
              experience: "1"
            }
          ]
        }
      ]
    };
  }
};
</script>
