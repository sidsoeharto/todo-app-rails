<template>
  <v-container fluid fill-height>
    <v-layout align-center justify-center>
      <v-flex xs12 sm8 md4>
        <v-form @submit.prevent="login">
          <v-card>
            <v-card-title>
              <v-container justify-center>
                Login to To-Do App
              </v-container>
            </v-card-title>
            <v-card-text>
              <v-container>
                <v-text-field
                  prepend-icon="mdi-account"
                  label="Username"
                  v-model="email"
                  required
                >
                </v-text-field>

                <v-text-field
                  prepend-icon="mdi-lock"
                  label="Password"
                  type="password"
                  name="password"
                  v-model="password"
                  required
                >
                </v-text-field>

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
                    type="submit">Login</v-btn>
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
  data () {
    return {
      email: '',
      password: ''
    }
  },
  methods: {
    login () {
      const payload = {
        email: this.email,
        password: this.password
      }
      console.log(payload)
      this.$router.push({ name: 'Home' })

      // this.$store.dispatch('login', payload)
    }
  }
}
</script>

<style>

</style>