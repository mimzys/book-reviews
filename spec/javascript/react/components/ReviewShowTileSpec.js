import ReviewShowTile from '../../../../app/javascript/react/components/ReviewShowTile';
import { mount } from 'enzyme';
import jasmineEnzyme from 'jasmine-enzyme';
import React from 'react';

  describe('ReviewShowTile', () => {
    let wrapper, review;

  beforeEach(() => {

    review = {
      key: "1",
      rating: "3",
      comment: "Best Author",
      likes: "5",
      dislikes: "10"
      }

    wrapper = mount(
      <ReviewShowTile
        key={review.key}
        rating={review.rating}
        comment={review.comment}
        likes={review.likes}
        dislikes={review.dislikes}
      />
    )
  });

  describe("displays all review elements", () => {
    it("renders a div with class review", () => {
      expect(wrapper.find("div.review")).toBePresent()
    })

    it("renders an h5 tag with class rating and text 'Rating:' props.rating", () => {
      expect(wrapper.find("h5.rating").text()).toBe(`Rating: ${review.rating}`)
    })

    it("renders a p tag class comment and text 'Comment: ' props.comment", () => {
      expect(wrapper.find("p.comment").text()).toBe(`Comment: ${review.comment}`)
    })

    it("renders a p tag with class likes-and-dislikes with correct text", () => {
      expect(wrapper.find("p.likes-and-dislikes")).toBePresent();
      expect(wrapper.find("i.fa.fa-arrow-up")).toBePresent();
      expect(wrapper.find("i.fa.fa-arrow-down")).toBePresent();
    })

    it("renders icons for likes and dislikes", () => {
      expect(wrapper.find(".likes-and-dislikes").text().includes(review.likes)).toBe(true);
      expect(wrapper.find(".likes-and-dislikes").text().includes(review.dislikes)).toBe(true);
    })
  })
})
