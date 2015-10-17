module Employee
  class Data < Grape::API


    resource :employee_data do
      desc "List all Employee"

      get do
        EmpDatum.all
      end

    end

  end
end