<template>
  <div class="note-container">
    <NoteSidebar/>
      <div class="note-editor">
        <p class="note-editor-info">Timestamp here...</p>
        <textarea class="note-editor-input">
          First note...
          Note text here...
        </textarea>
      </div>
    </div>
</template>

<script>
import NoteSidebar from "./NoteSidebar";

export default {
  components: {
    NoteSidebar,
  }
}
</script>