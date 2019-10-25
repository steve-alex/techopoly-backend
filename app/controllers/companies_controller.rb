class CompaniesController < ApplicationController
    protect_from_forgery :except => [:update, :show, :create, :index, :funding_round]
    
    def index
        companies = Company.all
        render json: CompanySerializer.new(companies)

    end
    def create
        company = Company.create(company_params)
        if company.save
            render json: game
        else
            render json: {message: 'Controller could not be initialized'}
        end
    end

    def show
        company = Company.find(params[:id])
        if company
            render json: CompanySerializer.new(company).to_serialized_json
        else
            render json: {message: "Cannot find a company with that id."}
        end
    end

    def update
        company = Company.find(params[:id])
        # byebug
        if company
            company.update(player_id: params[:player][:id])
            render json: CompanySerializer.new(company).to_serialized_json
        else 
            render json: {message: "Cannot update the company."}
        end
    end

    def funding_round
        company = Company.find(params[:id])
        # byebug
        if company
            company.update(price: params[:price])
            render json: CompanySerializer.new(company).to_serialized_json
        else 
            render json: {message: "Cannot update the company."}
        end
    end

    private

    def company_params
        params.permit!
    end

end
