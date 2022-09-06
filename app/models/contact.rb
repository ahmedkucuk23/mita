class Contact < ApplicationRecord

    validates_acceptance_of :termsofuse, :message => "You need to accept Terms & Services"

end
