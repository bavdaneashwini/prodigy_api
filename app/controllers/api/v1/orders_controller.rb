module Api
    module V1
        class OrdersController < ApplicationController
            protect_from_forgery with: :null_session
            def create
                binding.pry
                if params[:external_id].present?
                    existing_order = Order.where(external_id: params[:external_id])
                    if existing_order.present?
                        if existing_order.locked_at.present? || existing_order.created_at > 15.minutes
                            render json: {
                                message: 'order is already marked, you cannot edit'
                            }, status: already_created
                        else
                            existing_order.line_items.each do |item|
                                if item.new_record?
                                    item.original = true
                                else
                                    item.original = false
                                end
                            end
                        end
                    end
                    SkuStat.sidekiq_delay.recalculate_stat(order.line_items)
                end
            end


            def lock
                binding.pry
                if params[:id].present? 
                    order = Order.find params[:id]
                    order.locked_at = Time.now
                end
            end
        end
    end
end