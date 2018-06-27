module MembersHelper
    def activity_durations
        [['15min', 15], ['30min', 30], ['45 min', 45], ['1 hr', 60], ['1.5 hrs', 90], 
                        ['2 hrs', 120], ['2.5 hrs', 150], ['3 hrs', 180]]
    end

    def link_to_add_fields(name, f, association)
        new_object = f.object.send(association).klass.new
        id = new_object.object_id
        fields = f.fields_for(association, new_object, child_index: id) do |builder|
          render(association.to_s.singularize + "_fields", f: builder)
        end
        link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
    end
end
