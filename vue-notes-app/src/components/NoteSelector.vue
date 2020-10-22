<template>
    <div class="note-selector" v-bind:class="{active: note.id === selectedNoteId}">
      <p class="note-selector-title">{{ note.body }}</p>
      <p class="note-selector-timestamp">{{ note.timestamp }}</p>
    </div>
</template>

<script>
export default {
  props: ["note", "selectedNoteId"]
};
</script>