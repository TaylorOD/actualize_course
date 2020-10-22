<template>
  <div class="note-container">
    <NoteSidebar/>
      <NoteEditor/>
    </div>
</template>

<script>
import NoteSidebar from "./NoteSidebar";
import NoteEditor from "./NoteEditor";

export default {
  components: {
    NoteSidebar,
    NoteEditor,
  }
}
</script>