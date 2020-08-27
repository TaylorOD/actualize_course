class Person

    def initialize(first_name, last_name, hair_color, hobbies)
        @first_name = first_name
        @last_name = last_name
        @hair_color = hair_color
        @hobbies = hobbies
    end

    def first_name
        return @first_name
    end

    def last_name
        return @last_name
    end

    def hair_color
        return @hair_color
    end

    def hobbies
        return @hobbies
    end

    def add_hobby(hobby)
        @hobbies << hobby
    end

    def full_name
        return first_name + " " + last_name
    end

    def email
        return first_name.downcase + "." + last_name.downcase + "@gmail.com"
    end

    def summary
        return first_name + " " + last_name + " has " + hair_color + " hair and loves to " + hobby_list + "."
    end

    def hobby_list
        list = ""
        index = 0
        while index < hobbies.length
            if index == hobbies.length - 1
              list << hobbies[index]
            else
                list << hobbies[index] + ", "
            end
            index = index + 1

        end
        return list
    end

end




person = [
    Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]),
    Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]),
    Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"])
]


# Question 2 & 3
class ContactList
      def initialize(title)
        @title = title
        @contacts = contacts
      end
      def title
        @title
      end
      def contacts
        @contacts
      end
      def add_contact(new_contact)
        @contacts << new_contact
      end
    end
    ​
    my_contacts = ContactList.new("Friends", people)
    ​
    my_contacts.add_contact(person_2)
    

p my_contacts.contacts


p person
p person[0].full_name
p person[0].email
p person[0].summary