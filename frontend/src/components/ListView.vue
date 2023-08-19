<template>
  <div>
    <p>TodoList</p>
    <ul>
      <li v-for="(todo, key) in todosStore.todos" :key="key">
        <span>id: {{ todo.id }} / todo: {{ todo.todo }}</span>
      </li>
    </ul>
  </div>
</template>
<script setup>
import { useTodosStore } from "@/stores/todos";
const todosStore = useTodosStore();
</script>
<style></style>
