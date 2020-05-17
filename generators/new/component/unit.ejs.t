---
to: "tests/unit/components/<%= h.changeCase.kebab(name).toLowerCase().slice(0, 5) === 'base-' ? '_' : '' %><%= h.changeCase.kebab(name) %>.spec.js"
---
<%
  let fileName = h.changeCase.kebab(name).toLowerCase()
  const importName = h.changeCase.pascal(fileName)
  if (fileName.slice(0, 5) === 'base-') {
    fileName = '_' + fileName
  }
%>import <%= importName %> from "@/components/<%= fileName %>";

describe("@components/<%= fileName %>", () => {
  it("exports a valid component", () => {
    expect(<%= importName %>).toBeAComponent();
  });
});
