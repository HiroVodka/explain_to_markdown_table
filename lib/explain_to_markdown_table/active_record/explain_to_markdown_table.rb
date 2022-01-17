module ActiveRecord
  class Relation
    def explain(markdown: false)
      exec_explain(collecting_queries_for_explain { exec_queries }, markdown)
    end
  end

  module Explain
    def exec_explain(queries, markdown) # :nodoc:
      str = queries.map do |sql, binds|
        msg = +"EXPLAIN for: #{sql}"
        unless binds.empty?
          msg << " "
          msg << binds.map { |attr| render_bind(attr) }.inspect
        end
        msg << "\n"
        msg << connection.explain(sql, binds)
      end.yield_self do |s|
        break s unless markdown
        binding.irb
        s.join("\n").split(/\R/).each_slice(2).map(&:first).insert(2, "|-|-|-|-|-|-|-|-|-|-|")
      end.join("\n")

      def str.inspect
        self
      end

      str
    end
  end
end
