import HeroesData from "@/views/heroes-data";

describe("@views/heroes-data", () => {
  it("is a valid view", () => {
    expect(HeroesData).toBeAViewComponent();
  });
});
