<template>
  <v-container fluid>
    <v-layout align-center justify-center>
      <v-flex xs12 sm8 md4>
        <v-form>
          <v-card>
            <v-card-title>
              <v-container justify-center>
                Edit Task
              </v-container>
            </v-card-title>
            <v-card-text>
              <v-container>
                <v-text-field
                  v-model="title"
                  prepend-icon="mdi-format-title"
                  label="Task Title"
                  outlined
                  required
                >
                </v-text-field>

                <v-textarea
                  v-model="description"
                  outlined
                  label="Description"
                  name="Description"
                >
                </v-textarea>

                <v-select
                  v-model="priority"
                  item-text="name"
                  item-value="id"
                  label="Priority"
                ></v-select>
                <v-menu
                  ref="menu"
                  v-model="menu"
                  :close-on-content-click="false"
                  :return-value.sync="date"
                  transition="scale-transition"
                  offset-y
                  min-width="auto"
                >
                  <template 
                    v-slot:activator="{ on, attrs }"
                  >
                    <v-text-field
                      v-model="date"
                      label="Due Date"
                      name="due_date"
                      prepend-icon="mdi-calendar"
                      readonly
                      v-bind="attrs"
                      v-on="on"
                    >
                    </v-text-field>
                  </template>

                  <v-date-picker>
                    <v-spacer></v-spacer>
                      <v-btn
                        text
                        color="primary"
                        @click="menu = false"
                      >
                        Cancel
                      </v-btn>
                      <v-btn
                        text
                        color="primary"
                      >
                        OK
                      </v-btn>
                  </v-date-picker>
                </v-menu>
              </v-container>
            </v-card-text>

            <v-card-actions>
              <v-container justify-center>
                <v-alert
                  type="error"
                  dense
                  outlined
                  v-if="alert === true"
                >
                  {{ errMessage }}

                  <div>
                    <v-btn
                      color="blue"
                      text
                      @click="changeAlert"
                    >
                      Close
                    </v-btn>
                  </div>
                </v-alert>
                <v-layout row justify-center>
                  <v-btn
                    color="blue"
                    dark
                    type="submit"
                    class="mx-4"
                  >Add</v-btn>
                  <v-btn
                    color="secondary"
                    dark
                    class="mx-4"
                    @click="home"
                  >Cancel</v-btn>
                </v-layout>
              </v-container>
            </v-card-actions>

          </v-card>
        </v-form>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  name: 'NewTask',
  data () {
    return {
      title: '',
      description: '',
      priority: '',
      date: '',
      menu: false,
      alert: false,
    }
  },
  methods: {
    home () {
      this.$router.push({ name: 'Home' })
    },
    changeAlert () {
      this.alert = false
    }
  }
}
</script>

<style>

</style>