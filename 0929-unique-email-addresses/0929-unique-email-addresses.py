class Solution:
    def numUniqueEmails(self, emails: List[str]) -> int:
        #for i in range(len(emails)):
            #split_emails=[emails.split('@') for email in emails]
            #print(split_emails)
            #local_name,domain_name=emails[i].split('@')
            #print(local_name,domain_name)
            #local_name[i]=local_name.replace(".","")
            #print(local_name,domain_name)
        result = set()
        for email in emails:
            domain = email.split('@')[1]
            #print(domain)
            print(email.split('@')[0])
            local_name = email.split('@')[0].split('+')[0]
            x=local_name.split('+')[0]
            print(local_name)
            print(x)
            local_name=local_name.replace('.','')
            print(local_name)
            print(x)
            result.add(local_name + '@' + domain)
        return len(result)
