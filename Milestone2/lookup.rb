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

def parse_dns(dns_ra)
  dns_raw = dns_ra.select { |v| v[0] != "\n" && v[0] != "#" } #filters the input from the file
  a = {}
  dns_raw.each do |record| #split the each line into 3 columns
    rec_array = record.split(",")
    re_array = rec_array.map { |r| r.strip } #remove white spaces from each column
    if a[re_array[0]] == nil
      a[re_array[0]] = {}
    end
    a[re_array[0]][re_array[1]] = re_array[2] #creating hash
  end

  return a
end

def resolve(dns_records, lookup_chain, domain)
  if dns_records["CNAME"][domain] == nil && dns_records["A"][domain] == nil #pushes error message and returns  if both the CNAME record and the A record  not found
    lookup_chain[lookup_chain.length - 1] = "Error: record not found for #{lookup_chain[lookup_chain.length - 1]}"
    return lookup_chain
  elsif (dns_records["A"][domain] != nil) #return lookup chain if the A type record exists for the domain name
    lookup_chain.push dns_records["A"][domain]
    return lookup_chain
  else
    lookup_chain.push dns_records["CNAME"][domain] #recursively calls the resolve function with the new domain name when there is no A type record for the domain
    resolve(dns_records, lookup_chain, dns_records["CNAME"][domain])
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
