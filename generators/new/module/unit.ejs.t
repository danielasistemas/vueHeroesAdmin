---
to: tests/unit/modules/<%= h.changeCase.kebab(name) %>.spec.js
---
<%
  const fileName = h.changeCase.kebab(name)
  const importName = h.changeCase.camel(fileName) + "Module"
%>import <%= importName %> from "@/store/<%= fileName %>";

describe("@state/modules/<%= fileName %>", () => {
  it("exports a valid Vuex module", () => {
    expect(<%= importName %>).toBeAVuexModule();
  });
});
