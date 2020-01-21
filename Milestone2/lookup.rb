def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

def parse_dns(dns_raw)
  a = {}
  dns_raw.
    select { |v| v[0] != "\n" && v.strip[0] != "#" }.           #checks for the invalid records
    map { |record| record.split(",").map { |rec| rec.strip } }.
    select { |row| row.length == 3 }.each { |rec_array| #checks for the invalid records
    if a[rec_array[0]] == nil
      a[rec_array[0]] = {} #creating a hash
    end
    a[rec_array[0]][rec_array[1]] = rec_array[2] #storing records as hash of hashes
  }
  return a
end

def resolve(dns_records, lookup_chain, domain)
  if dns_records["A"][domain]
    lookup_chain.push(dns_records["A"][domain])
    lookup_chain
  elsif dns_records["CNAME"][domain]
    lookup_chain.push dns_records["CNAME"][domain] # recursively calls the resolve function with the new domain name when there is no A type record for the domain
    resolve(dns_records, lookup_chain, dns_records["CNAME"][domain])
  else
    # pushes error message and returns if both the CNAME record and the A record  not found
    lookup_chain[lookup_chain.length - 1] = "Error: record not found for #{lookup_chain[lookup_chain.length - 1]}"
    lookup_chain
  end
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
