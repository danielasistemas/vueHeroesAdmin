---
to: "src/components/<%= h.changeCase.kebab(name).toLowerCase().slice(0, 5) === 'base-' ? '_' : '' %><%= h.changeCase.kebab(name) %>.vue"
---
<%
if (blocks.indexOf('template') !== -1) {
%><template>
  <div class="<%= h.changeCase.kebab(name) %>">
  </div>
</template>

<%
}
if (blocks.indexOf('script') !== -1) {
%><script>
export default {
  <% if (blocks.indexOf('template') === -1) {
  %>render(h) {
    return <div class="<%= h.changeCase.kebab(name) %>"></div>
  }<% } %>
}
</script>
<%
}

if (blocks.indexOf('style') !== -1) {
%>
<style lang="scss" scoped>
</style><%
}
%>
