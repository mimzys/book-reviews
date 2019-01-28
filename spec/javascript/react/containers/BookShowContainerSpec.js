// import BooksShowContainer from '../../../app/javascript/react/containers/BooksShowContainer';
// import BookShowTile from '../../../app/javascript/react/components/BookShowTile';
// import { mount } from 'enzyme';
// import jasmineEnzyme from 'jasmine-enzyme';
// import React from 'react';
// import fetchMock from 'fetch-mock';
//
//
//
// describe('BooksShowContainer', () => {
//   let wrapper;
// const props = {
//   id: 1,
//   name: "book 1",
//   author: "test author",
//   isbn: 12345,
//   description: "best book ever",
//   publication_date: "Jan-01-2001"
// }
//
//   beforeEach(() => {
//     fetchMock.get(`/api/v1/books/${bookId}.json`, {
//       status: 200,
//       body: props
//     });
//     jasmineEnzyme();
//     wrapper = mount(<BooksShowContainer {...props} params={{id:1}}/>);
//   });
//
//   afterEach(fetchMock.restore)
//
//   it('should return true', () => {
//     expect(true).toEqual(true)
//   });
//
//   it('should render a div tag', () => {
//     expect(wrapper.find('div')).toBePresent();
//   });
//
//   it('should render a p tag with the label Author', ()=>{
//     expect(wrapper.find('p').text()).toBe('Author: ');
//   });
//
//   it('should render a book show tile component', () =>{
//     expect(wrapper.find(BookShowTile)).toBePresent();
//     expect(wrapper.find('p')).toBePresent();
//     expect(wrapper.find('p').text()).toEqual('Author: ')
//   });
// });

// describe('some', () => {
//   it('should return true', () => {
//     expect(true).toEqual(true);
//   })
// })
