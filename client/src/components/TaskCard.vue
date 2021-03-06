<template>
  <v-card
    width="600"
    outlined
    rounded
  >
    <v-row>
      <v-col
        cols="10"
        class="flex-grow-1 flex-shrink-0"
      >
        <v-card-title>
          Task title
        </v-card-title>
        <v-card-subtitle>
          Due Date: 03/06/2021
        </v-card-subtitle>
        <v-card-text>
          <div>Priority: Primary</div>
          <div>Task Description</div>
        </v-card-text>
      </v-col>
      <v-col
        cols="2"
        class="flex-grow-1 flex-shrink-0"
        align
        justify
      >
        <v-card-actions>
          <div>
            <v-checkbox></v-checkbox>
          </div>
        </v-card-actions>
      </v-col>
    </v-row>
    <v-row
      justify="end"
      align="end"
    >
      <v-col
        cols="12"
        class="px-6 pb-8 pt-0"
        align-self="end"
      >
        <v-card-actions
          class="d-flex justify-end"
        >
          <v-btn
            color="primary"
            icon
            outlined
            fab
            small
            dark
            class="mr-3"
          >
            <v-icon>
              mdi-pencil
            </v-icon>
          </v-btn>
          <v-btn
            color="warning"
            icon
            outlined
            fab
            small
            dark
            class="mr-3"
          >
            <v-icon>
              mdi-delete
            </v-icon>
          </v-btn>
        </v-card-actions>
      </v-col>
    </v-row>
  </v-card>
</template>

<script>
export default {

}
</script>

<style>

</style>