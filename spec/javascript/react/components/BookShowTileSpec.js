import BookShowTile from '../../../../app/javascript/react/components/BookShowTile';
import { mount } from 'enzyme';
import jasmineEnzyme from 'jasmine-enzyme';
import React from 'react';

  describe('BookShowTile', () => {
    let wrapper, book;

  beforeEach(() => {

    book = {
      key: "1",
      name: "Best Name",
      author: "Best Author",
      publication_date: "Best Published on",
      description: "Best description"
    }

    wrapper = mount(
      <BookShowTile
        key="1"
        name="Best Name"
        author="Best Author"
        publication_date="Best Published on"
        description="Best description"
      />);
  });

  describe("displays all book elements", () => {
    it("renders a div", () => {
      expect(wrapper.find("div")).toBePresent()
    })

    it("renders a title class", () => {
      expect(wrapper.find(".title").text()).toBe("Best Name")
    })

    it("renders an author class", () => {
      expect(wrapper.find(".author").text()).toBe("Author:Best Author")
    })

    it("renders a pub_date class", () => {
      expect(wrapper.find(".pub_date").text()).toBe("Publication Date: Best Published on")
    })

    it("renders an description class", () => {
      expect(wrapper.find(".description").text()).toBe("Best description")
    })
  })
})
