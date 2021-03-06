require 'forwardable'

require 'ramda/version'
require 'ramda/function'
require 'ramda/list'
require 'ramda/logic'
require 'ramda/math'
require 'ramda/object'
require 'ramda/relation'
require 'ramda/string'

# Ramda library implementation, source: http://ramdajs.com/
# rubocop:disable Metrics/ModuleLength
module Ramda
  extend SingleForwardable

  def_delegators Ramda::Function,
                 :always,
                 :comparator,
                 :compose,
                 :construct,
                 :converge,
                 :curry,
                 :flip,
                 :identity,
                 :invoker,
                 :memoize,
                 :n_ary,
                 :once,
                 :pipe,
                 :tap,
                 :use_with

  def_delegators Ramda::List,
                 :all,
                 :any,
                 :append,
                 :concat,
                 :contains,
                 :drop,
                 :filter,
                 :find,
                 :flatten,
                 :group_by,
                 :head,
                 :index_of,
                 :join,
                 :last_index_of,
                 :length,
                 :sort,
                 :map,
                 :nth,
                 :pluck,
                 :prepend,
                 :range,
                 :reduce,
                 :reduce_right,
                 :reject,
                 :reverse,
                 :tail,
                 :take,
                 :take_while,
                 :uniq,
                 :xprod,
                 :zip,
                 :zip_with

  def_delegators Ramda::Logic,
                 :all_pass,
                 :and,
                 :any_pass,
                 :if_else,
                 :is_empty,
                 :not,
                 :or

  def_delegators Ramda::Math,
                 :add,
                 :dec,
                 :divide,
                 :inc,
                 :multiply,
                 :product,
                 :subtract,
                 :sum

  def_delegators Ramda::Object,
                 :assoc,
                 :clone,
                 :eq_props,
                 :keys,
                 :merge,
                 :omit,
                 :pick,
                 :pick_all,
                 :project,
                 :prop,
                 :props,
                 :values

  def_delegators Ramda::Relation,
                 :count_by,
                 :difference,
                 :difference_with,
                 :eq_by,
                 :equals,
                 :gt,
                 :gte,
                 :intersection,
                 :lt,
                 :lte,
                 :max,
                 :min,
                 :prop_eq,
                 :sort_by,
                 :union,
                 :union_with

  def_delegators Ramda::String,
                 :match,
                 :split,
                 :to_lower,
                 :to_upper
end
