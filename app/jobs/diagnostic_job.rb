class DiagnosticJob < ApplicationJob
  queue_as :diagnostics

  def perform(diagnostic_id)
    diagnostic = Diagnostic.find(diagnostic_id)
    puts "Calling Tensorflow API for #{diagnostic.description}..."
    # TODO: perform a time consuming task like Clearbit's Enrinchment API.
    sleep 2
    puts "Done! Enriched #{diagnostic.description} with Inception"
  end
end
