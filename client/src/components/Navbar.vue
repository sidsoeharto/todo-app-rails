<template>
  <v-app-bar
    color="teal darken-1"
    flat
    dark
    max-height=64px
  >
    <v-toolbar-title>
      To-Do App
    </v-toolbar-title>

    <v-spacer />

    <router-link
      style="text-decoration: none; color: inherit;"
      to='/newtask'
    >
      <v-btn
        class="ma-2 white--text"
        color="secondary"
      >
        New Task
        <v-icon
          right
          dark
        >
          mdi-plus
        </v-icon>
      </v-btn>
    </router-link>

    <v-btn icon @click="logout">
      <v-icon>
        mdi-logout
      </v-icon>
    </v-btn>

  </v-app-bar>
</template>

<script>
export default {
  methods: {
    logout () {
      this.$router.push({ name: 'Login' })
    }
  }
}
</script>

<style>

</style>