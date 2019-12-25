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
                <td class="text-xs-right">
                  <div class="datatable-cell-wrapper">{{ props.item.proficiency }}</div>
                </td>
                <td class="text-xs-right">
                  <div class="datatable-cell-wrapper">{{ props.item.experience }}</div>
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
        </material-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
// https://jsfiddle.net/g5jykkrn/2/
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
      frameHeaders: [
        {
          sortable: false,
          text: "Frame Name",
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
          experience: "5"
        },
        {
          name: "PHP",
          proficiency: "Curaçao",
          experience: "3"
        },
        {
          name: "C",
          proficiency: "Netherlands",
          experience: "3"
        },
        {
          name: "Golang",
          proficiency: "Korea, South",
          experience: "1"
        }
      ],
      frameItems: [
        {
          name: "Spring",
          proficiency: "Niger",
          experience: "5"
        },
        {
          name: "Codeigniter",
          proficiency: "Curaçao",
          experience: "3"
        },
        {
          name: "Laravel",
          proficiency: "Netherlands",
          experience: "3"
        },
        {
          name: "Beego",
          proficiency: "Korea, South",
          experience: "1"
        }
      ]
    };
  }
};
</script>
