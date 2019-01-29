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
    it("renders a div with class book", () => {
      expect(wrapper.find("div.book")).toBePresent()
    })

    it("renders an h1 tag with class title and props.name as text", () => {
      expect(wrapper.find("h1.title").text()).toBe(book.name)
    })

    it("renders a p tag with class author and 'Authos:' props.author text", () => {
      expect(wrapper.find("p.author").text()).toBe(`Author: ${book.author}`)
    })

    it("renders a p tag with class pub_date and text 'Publication Date:' props.publication_date text", () => {
      expect(wrapper.find("p.pub_date").text()).toBe(`Publication Date: ${book.publication_date}`)
    })

    it("renders a p tag with class description and text props.description", () => {
      expect(wrapper.find(".description").text()).toBe(book.description)
    })
  })
})
