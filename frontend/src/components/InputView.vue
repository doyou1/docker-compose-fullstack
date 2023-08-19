<template>
  <div>
    <div>
      <input
        id="todo"
        type="text"
        class="mx-2 border rounded-full border-red-300 p-2"
        v-model="todo"
        autofocus
      />
      <button
        type="button"
        class="mx-2 border rounded-full border-red-300 p-2"
        @click="sendTodo"
      >
        Send
      </button>
    </div>
  </div>
</template>
<script setup>
import { ref } from "vue";
import axios from "axios";
import { useTodosStore } from "@/stores/todos";
const todosStore = useTodosStore();

const todo = ref("");
const sendTodo = async () => {
  if (todo.value.length > 0) {
    const backendUrl = "api/todo";
    let result = await axios.post(backendUrl, {
      todo: todo.value,
    });
    if (result) {
      todosStore.setTodos(result.data);
      todo.value = "";
      document.getElementById("todo").focus();
    }
  }
};
</script>
<style></style>
