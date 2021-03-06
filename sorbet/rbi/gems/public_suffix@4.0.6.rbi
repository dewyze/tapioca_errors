# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `public_suffix` gem.
# Please instead update this file by running `bin/tapioca gem public_suffix`.

module PublicSuffix
  class << self
    def decompose(name, rule); end
    def domain(name, **options); end
    def normalize(name); end
    def parse(name, list: T.unsafe(nil), default_rule: T.unsafe(nil), ignore_private: T.unsafe(nil)); end
    def valid?(name, list: T.unsafe(nil), default_rule: T.unsafe(nil), ignore_private: T.unsafe(nil)); end
  end
end

PublicSuffix::BANG = T.let(T.unsafe(nil), String)
PublicSuffix::DOT = T.let(T.unsafe(nil), String)

class PublicSuffix::Domain
  def initialize(*args); end

  def domain; end
  def domain?; end
  def name; end
  def sld; end
  def subdomain; end
  def subdomain?; end
  def tld; end
  def to_a; end
  def to_s; end
  def trd; end

  class << self
    def name_to_labels(name); end
  end
end

class PublicSuffix::DomainInvalid < ::PublicSuffix::Error; end
class PublicSuffix::DomainNotAllowed < ::PublicSuffix::DomainInvalid; end
class PublicSuffix::Error < ::StandardError; end

class PublicSuffix::List
  def initialize; end

  def <<(rule); end
  def ==(other); end
  def add(rule); end
  def clear; end
  def default_rule; end
  def each(&block); end
  def empty?; end
  def eql?(other); end
  def find(name, default: T.unsafe(nil), **options); end
  def size; end

  protected

  def rules; end

  private

  def entry_to_rule(entry, value); end
  def rule_to_entry(rule); end
  def select(name, ignore_private: T.unsafe(nil)); end

  class << self
    def default(**options); end
    def default=(value); end
    def parse(input, private_domains: T.unsafe(nil)); end
  end
end

PublicSuffix::List::DEFAULT_LIST_PATH = T.let(T.unsafe(nil), String)

module PublicSuffix::Rule
  class << self
    def default; end
    def factory(content, private: T.unsafe(nil)); end
  end
end

class PublicSuffix::Rule::Base
  def initialize(value:, length: T.unsafe(nil), private: T.unsafe(nil)); end

  def ==(other); end
  def decompose(*_arg0); end
  def eql?(other); end
  def length; end
  def match?(name); end
  def parts; end
  def private; end
  def value; end

  class << self
    def build(content, private: T.unsafe(nil)); end
  end
end

class PublicSuffix::Rule::Entry < ::Struct
  def length; end
  def length=(_); end
  def private; end
  def private=(_); end
  def type; end
  def type=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class PublicSuffix::Rule::Exception < ::PublicSuffix::Rule::Base
  def decompose(domain); end
  def parts; end
  def rule; end

  class << self
    def build(content, private: T.unsafe(nil)); end
  end
end

class PublicSuffix::Rule::Normal < ::PublicSuffix::Rule::Base
  def decompose(domain); end
  def parts; end
  def rule; end
end

class PublicSuffix::Rule::Wildcard < ::PublicSuffix::Rule::Base
  def initialize(value:, length: T.unsafe(nil), private: T.unsafe(nil)); end

  def decompose(domain); end
  def parts; end
  def rule; end

  class << self
    def build(content, private: T.unsafe(nil)); end
  end
end

PublicSuffix::STAR = T.let(T.unsafe(nil), String)
PublicSuffix::VERSION = T.let(T.unsafe(nil), String)
