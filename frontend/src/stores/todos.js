import { defineStore } from "pinia";

export const useTodosStore = defineStore("todos", {
  state: () => {
    return { todos: [] };
  },
  // could also be defined as
  // state: () => ({ count: 0 })
  actions: {
    setTodos(newTodos) {
      this.todos = newTodos;
    },
  },
});
