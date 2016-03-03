Feature: Provide Customer Data and Client appointment records to Talksoft
Ability for RevSpring to send Customer Data and Client appointment records to Talksoft

Scenario: RemindMe in PST time only 
Given that Client opted for "PST' in "timezonename' field
And I opt-in to receive email communication in PST timezone
When I schedule an appointment
Then I should receive email/Text/IVR communication in PST time only.

Scenario: RemindMe should send IVR message  only 
Given that I opt-in for  'Y' in 'Phone Allowed' field and 'N' in 'Text allowed' and 'N' in 'Email allowed' field.
When I Schedule an appointment
Then I should get an IVR message.

Scenario: RemindMe should send Email message only 
Given that I opt-in for ‘Y’ in 'Email Allowed' field and 'N' in 'Text allowed' and 'N' in Phone allowed field.
When I Schedule an appointment
Then I should get an Email message.

Scenario: RemindMe should send Text message only 
Given that I opt-in for ‘Y’ in 'Email Allowed' field and 'N' in 'Phone allowed' and 'N' in Phone allowed field.
When I Schedule an appointment
Then I should get a Text message.

Scenario:  RemindeMe 'preferred mode' is  email
Given that I want to  receive email communication only 
When I schedule an appointment
Then I should receive email communication and not Text and IVR

Scenario:  RemindeMe 'preferred mode' is  Phone
Given that I want to  receive IVR communication only 
When I schedule an appointment
Then I should receive IVR communication and not Text and Email

Scenario:  RemindeMe 'preferred mode' is  Text
Given that I want to  receive Text communication only 
When I schedule an appointment
Then I should receive Text communication and not Email and IVR

Scenario: Do not RemindMe more than maximum retries
Given that customer specifies "2"  in "maxretriesDay"  for phone calls per client 
Then Client  should not receive more than 2 phone calls per day

Scenario:  RemindMe Phone call after 11:00 AM PST and Before 5:PM PST
Given that customer specifies "11" PST  in "CallstartHour"  ands "5" PST in "CutofHour" Field for phone calls per client 
Then Client  should not receive any call before 11:00 PST and after 5:00PM PST

Scenario:  RemindMe communication speaks the first name of the Client
Given that customer specifies "Y"  in "Speakname"   Field  
Then Clients first name is spoken in the communication
