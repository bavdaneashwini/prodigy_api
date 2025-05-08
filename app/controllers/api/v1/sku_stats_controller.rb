module Api
    module V1
        class SkuStatsController < ApplicationController
            # protect_from_forgery with: :null_session
            def sku_summary
                binding.pry
                if params[:sku].present?
                    skus = SkuStat.where(sku: params[:sku])
                    detail_info = skus.each do |s|
                        {week: s.week, total_quantity: s.total_quantity}
                    render json: {
                        sku: params[:sku],

                        summary: detail_info
                      }, status: :ok
                end
            end
        end
    end
end