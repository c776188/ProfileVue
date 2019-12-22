<template>
  <v-container fill-height fluid grid-list-xl>
    <v-layout justify-center wrap>
      <v-flex md12>
        <material-card color="green" title="Skill" text="Here is a subtitle for this table">
          <v-data-table :headers="headers" :items="items" hide-actions>
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
              <!-- <td class="text-xs-right">{{ item.salary }}</td> -->
            </template>
          </v-data-table>
        </material-card>
      </v-flex>
      <v-flex md12>
        <material-card
          color="green"
          flat
          full-width
          title="Table on Plain Background"
          text="Here is a subtitle for this table"
        >
          <v-data-table :headers="headers" :items="items.slice(0, 7)" hide-actions>
            <template slot="headerCell" slot-scope="{ header }">
              <span class="subheading font-weight-light text--darken-3" v-text="header.text" />
            </template>
            <template slot="items" slot-scope="{ item }">
              <td>{{ item.name }}</td>
              <td>{{ item.proficiency }}</td>
              <td>{{ item.experience }}</td>
              <!-- <td class="text-xs-right">{{ item.salary }}</td> -->
            </template>
          </v-data-table>
        </material-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    headers: [
      {
        sortable: false,
        text: "Skill Name",
        value: "name"
      },
      {
        sortable: false,
        text: "Proficiency",
        value: "proficiency"
      },
      {
        sortable: true,
        text: "Experience",
        value: "experience"
      }
      // {
      //   sortable: false,
      //   text: "Salary",
      //   value: "salary",
      //   align: "right"
      // }
    ],
    items: [
      {
        name: "JAVA",
        proficiency: "Niger",
        experience: "5"
        // salary: "$35,738"
      },
      {
        name: "PHP",
        proficiency: "Curaçao",
        experience: "3"
        // salary: "$23,738"
      },
      {
        name: "C",
        proficiency: "Netherlands",
        experience: "3"
        // salary: "$56,142"
      },
      {
        name: "Golang",
        proficiency: "Korea, South",
        experience: "1"
        // salary: "$38,735"
      }
      // {
      //   name: "Doris Greene",
      //   proficiency: "Malawi",
      //   experience: "Feldkirchen in Kārnten",
      //   // salary: "$63,542"
      // },
      // {
      //   name: "Mason Porter",
      //   proficiency: "Chile",
      //   experience: "Gloucester",
      //   // salary: "$78,615"
      // }
    ]
  })
};
</script>
