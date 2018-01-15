App.InvestmentReportAlert =
  initialize: ->
    $('#js-investment-report-alert').on 'click', ->
      if this.checked && $('#budget_investment_feasibility_unfeasible').is(':checked')
        confirm(this.dataset.valuationFinishedAlert + "\n" + this.dataset.notFeasibleAlert);
      else if this.checked
        confirm(this.dataset.valuationFinishedAlert);
