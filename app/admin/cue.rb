ActiveAdmin.register Cue do
  permit_params(
    :active,
    :name,
    :position,
    :partial_name,
    :duration,
    :integer,
    :created_at,
    :updated_at,
    :gesture,
    :subtitle,
    :text,
    :youtube_indentifier,
    :youtube_start,
    :youtube_end,
    :speak_options,
    :room_id,
    :user_id
  )
end
