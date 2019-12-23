<template>
  <v-container fill-height fluid grid-list-xl>
    <v-layout justify-center wrap>
      <v-flex md12>
        <material-card color="green" title="Skill" text="Here is a subtitle for this table">
          <v-data-table
            :headers="skillHeaders"
            :items="skillItems"
            :pagination.sync="pagination"
            hide-actions
          >
            <template slot="headerCell" slot-scope="{ header }">
              <span
                class="subheading font-weight-light text-success text--darken-3"
                v-text="header.text"
              />
            </template>
            <template slot="items" slot-scope="{ item }">
              <td>{{ item.name }}</td>
              <td>{{ item.proficiency }}</td>
              <td>{{ item.experience }}</td>
            </template>
          </v-data-table>
        </material-card>
      </v-flex>
      <v-flex md12>
        <material-card
          color="green"
          flat
          full-width
          title="Frame"
          text="Here is a subtitle for this table"
        >
          <v-data-table
            :headers="frameHeaders"
            :items="frameItems"
            :pagination.sync="pagination"
            hide-actions
          >
            <template slot="headerCell" slot-scope="{ header }">
              <span class="subheading font-weight-light text--darken-3" v-text="header.text" />
            </template>
            <template slot="items" slot-scope="{ item }">
              <td>{{ item.name }}</td>
              <td>{{ item.proficiency }}</td>
              <td>{{ item.experience }}</td>
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
