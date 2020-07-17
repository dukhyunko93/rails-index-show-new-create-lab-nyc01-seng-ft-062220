class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end
    
    def create
        coupon = Coupon.create(coupons_params)
        redirect_to coupon_path(coupon.id)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end


    private

    def coupons_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end