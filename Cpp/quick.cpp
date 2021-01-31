#include <iostream>
#include <cstdlib>
#include <list>
using namespace std;

class Book
{
        private:
                int bookID;
                std::string bookName;
                std::string ISBN;

        public:

       
        int GetBookID(){
                return bookID;
        }

        std::string GetBookName(){
                return bookName;
        }

        std::string GetISBN(){
                return ISBN;
        }

        void SetBookID(int);
        void SetBookName(std::string);
        void SetBookISBN(std::string);

        Book(int id,string name, string isbn_code)
        {
               bookID = id;
               bookName = name;
               ISBN = isbn_code; 
        }
        
        void Print_Book()
	{
		cout << "BookID - " << bookID << ", BookName - "
			<< bookName << ", ISBN - " 
			<< ISBN << endl;
	}
       
};

bool quick_sort(Book First, Book Next)
{
	if (First.GetBookID() < Next.GetBookID()) 
		return true; 

	if (First.GetBookID() > Next.GetBookID()) 
		return false;

	return true;
}

void Print_List(list<Book> list_book)
{
	list<Book>::iterator listItr;
	for (listItr = list_book.begin();
		listItr != list_book.end();
		listItr++)
	{
		(*listItr).Print_Book();
	}
}

int main()
{
        list<Book> listbook;

        listbook.clear();

        const Book B1(3, "Alone Forever              ", "978-1-60309-322-4");
	const Book B2(1, "American Elf               ", "978-1-891830-85-3");
	const Book B3(5, "The Bojeffries Saga        ", "978-1-60309-063-6");
	const Book B4(4, "Deep Breaths               ", "978-1-60309-455-9");
	const Book B5(2, "God Is Disappointed in You ", "978-1-60309-098-8");

	listbook.push_back(B1);
	listbook.push_back(B2);
	listbook.push_back(B3);
	listbook.push_back(B4);
	listbook.push_back(B5);

        printf("\nList Before Sorting:\n");
        Print_List(listbook);
	printf("\nSorting List by ID:\n");
        listbook.sort(quick_sort);
        Print_List(listbook);
}