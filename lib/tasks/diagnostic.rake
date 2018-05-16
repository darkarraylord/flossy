namespace :diagnostic do
  desc "Runs Inception Analysis on a given image."
  task :analyse_image, [:diagnostic_id] => :environment do |t, args|
    diagnostic = Diagnostic.find(args[:diagnostic_id])
    puts "Augmenting diagnostics with Tensorflow Analysis for #{diagnostic.description}"
    DiagnosticJob.perform_later(diagnostic.id)
  end

end
