<template>
  <div class="home">
    <v-container fluid>
      <v-row 
        justify="center" 
        align="center"
        no-gutters
      >
        <v-col
          no-gutters
        >
          <v-parallax
            src="https://mewallpaper.com/thumbnail/abstract/8296-simple-background-wallpaper-download-free.jpg"
            class="pa-6"
            height="300"
          >
            <h1>Today's date:</h1>
            <h3>6th March 2021</h3>
          </v-parallax>
        </v-col>
      </v-row>
      <v-container 
        fluid
      >
        <v-row>
          <v-col
            align="center"
            justify="center"
          >
            <v-list
              class="mx-auto"
              flat
              elevation="1"
            >
              <v-list-title><h2>Task Due Today:</h2></v-list-title>
              <v-list-item-group>
                <v-list-item class="d-flex justify-center"><h4 >Task Title</h4></v-list-item>
                <v-list-item class="d-flex justify-center"><h4 >Task Title</h4></v-list-item>
              </v-list-item-group>
            </v-list>           
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="8"
            align="center"
            justify="center"
          >
            <h2>My To-Do List</h2>
          </v-col>
          <v-col
            cols="4"
          >
            <div><h5>Sort by:</h5></div>
            <v-select
              :items="sortSelection"
            >
            </v-select>
          </v-col>
        </v-row>
        <v-row
          justify="center"
          no-gutters
        >
          <v-col cols="1">
          </v-col>
          <v-col cols="10" align-self="center">
            <TaskCard />
          </v-col>
          <v-col cols="1">
          </v-col>
        </v-row>
        <v-row
          justify="center"
          no-gutters
        >
          <v-col cols="1">
          </v-col>
          <v-col cols="10" align-self="center">
            <TaskCard />
          </v-col>
          <v-col cols="1">
          </v-col>
        </v-row>
      </v-container>
    </v-container>
  </div>
</template>

<script>
// @ is an alias to /src
import TaskCard from '../components/TaskCard'

export default {
  name: "Home",
  components: {
    TaskCard
  },
  data () {
    return {
        sortSelection: [
        'Due Date',
        'Description',
        'Priority'
      ]
    }
  }
};
</script>
