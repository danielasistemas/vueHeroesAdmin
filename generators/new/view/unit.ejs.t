---
to: "tests/unit/views/<%= h.changeCase.kebab(name) %>.spec.js"
---
<%
  const fileName = h.changeCase.kebab(name)
  const importName = h.changeCase.pascal(fileName)
%>import <%= importName %> from "@/views/<%= fileName %>";

describe("@views/<%= fileName %>", () => {
  it("is a valid view", () => {
    expect(<%= importName %>).toBeAViewComponent();
  });
});
