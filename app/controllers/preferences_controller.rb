class PreferencesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:preference_submission]

  def preference_submission
    Preference.filter_preferences(params)
  end

end
