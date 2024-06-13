<template>
    <div>
    <h1>Data from External API</h1>
    <div v-if="error">{{ error.message }}</div>
    <pre v-else-if="data">{{ data }}</pre>
    <div v-else>Loading...</div>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        data: null,
        error: null,
      };
    },
    created() {
      this.fetchData();
    },
    methods: {
      async fetchData() {
        try {
          const response = await axios.get('http://service-car:80');
          this.data = response.data;
        } catch (error) {
          this.error = error;
        }
      },
    },
  };
  </script>
  
  <style scoped>
  /* Add component-specific styles here */
  </style>
  