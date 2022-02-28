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
end