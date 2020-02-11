class ForbiddenAccessLogger
	FORBIDDEN_ACCESS_LOGFILE = File.join(Rails.root, 'log', 'forbidden_access.log')

	def self.generate(controller, resource)
    message = "controller name: #{controller}"
    log(message)
	end

  private
    def self.log(message, severity = :error)
      @model_log ||= Logger.new(FORBIDDEN_ACCESS_LOGFILE, 4, 50.megabytes)
      @model_log.send(severity, "#{message}\n")
    end
end