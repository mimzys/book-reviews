import App from '../../../../app/javascript/react/components/app';
import BooksShowTile from '../../../../app/javascript/react/components/BookShowTile';
import fetchMock from 'fetch-mock';

describe('BooksShowContainer', () => {
  let wrapper, books;

  beforeEach(() => {
    books = [{id: 1, name: "Check the weather", author: "john doe", publication_date: "Jan-01-2001",isbn: 12345, description: "best book ever" }]

    fetchMock.get('/api/v1/books/1', {
      status: 200,
      body: books[0]
    });

    wrapper = mount(
      <BooksShowTile
        params = {{id:1}}
      />);
  });

  afterEach(fetchMock.restore)

    it('renders a div', () => {
      expect(wrapper.find('div')).toBePresent()
    })

    it('renders a BookShowTile', (done) => {
      setTimeout(() => {
        expect(wrapper.find('BookShowTile').length).toEqual(books.length)
        done()
      }, 0)
    })
  })
