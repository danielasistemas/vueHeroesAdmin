---
to: "src/views/<%= h.changeCase.kebab(name) %>.vue"
---
<%
  const fileName = h.changeCase.kebab(name)
  const importName = h.changeCase.pascal(fileName)
  const titleName = h.changeCase.title(name)
%><template>
  <div class="<%= fileName %>">
    <h1><%= titleName %></h1>
  </div>
</template>

<script>
export default {
  page: {
    title: "<%= titleName %>",
    meta: [{ name: "description", content: "The <%= titleName %> page." }]
  }
};
</script>
<%
if (useStyles) { %>
<style lang="scss" scoped>
</style>
<% } %>