class ExpiredDiariesWorker
    include Sidekiq::Worker

    def perform
        Sidekiq.logger.info "test"
    end
end