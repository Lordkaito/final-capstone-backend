require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do
  # rubocop:disable Metrics/BlockLength
  path '/api/v1/cars' do
    get('list cars') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create cars') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: {
            price: { type: :integer },
            brand: { type: :string },
            model: { type: :string },
            image: { type: :string },
            description: { type: :string }
          },
          required: %w[price brand model image description]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
  # rubocop:enable Metrics/BlockLength

  # rubocop:disable Metrics/BlockLength
  path '/api/v1/cars/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show car') do
      response(200, 'successful') do
        let(:id) { '7' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update car') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: {
            price: { type: :integer },
            brand: { type: :string },
            model: { type: :string },
            description: { type: :string },
            image: { type: :string }
          }
        }
        let(:id) { '7' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update car') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :reservation, in: :body, schema: {
          type: :object,
          properties: {
            price: { type: :integer },
            brand: { type: :string },
            model: { type: :string },
            description: { type: :string },
            image: { type: :string }
          },
          required: %w[price brand model image description]
        }
        let(:id) { '7' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
  # rubocop:enable Metrics/BlockLengthsymbolize_names: true)
  # rubocop:enable Metrics/BlockLength
end