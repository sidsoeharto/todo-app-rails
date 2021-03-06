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
      <v-container fluid>
        <v-row>
          <v-col cols="8">
            <h2>My To-Do List</h2>
          </v-col>
          <v-col
            cols="4"
          >
            <div><h5>Sort by:</h5></div>
            <v-select>
            </v-select>
          </v-col>
        </v-row>
        <v-row
          justify="center"
          align-content="center"
          align="center"
        >
          <v-col cols="12">
            <TaskCard />
            <TaskCard />
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
  }
};
</script>
