<template>
  <div class="wrap m-10">
    <div class="flex">
      <InputView />
    </div>
    <div class="mt-3">
      <ListView />
    </div>
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useTodosStore } from "@/stores/todos";
import InputView from "@/components/InputView.vue";
import ListView from "@/components/ListView.vue";
import axios from "axios";

const todosStore = useTodosStore();

const backendUrl = `${process.env.VUE_APP_BACKEND_URL}/todo`;
const getTodo = () => {
  axios
    .get(backendUrl)
    .then((result) => {
      todosStore.setTodos(result.data);
    })
    .catch((error) => {
      console.log(error);
    });
};

onMounted(() => {
  getTodo();
});
</script>

<style></style>
