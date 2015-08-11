-module(element_label).
-author('Rusty Klophaus').
-include_lib("nitro/include/nitro.hrl").
-compile(export_all).

render_element(Record) -> 
  wf_tags:emit_tag(<<"label">>, nitro:render(Record#label.body), [
    {<<"id">>, Record#label.id},
    {<<"class">>, Record#label.class},
    {<<"style">>, Record#label.style},
    {<<"for">>, Record#label.for},
    {<<"onclick">>, nitro:js_escape(Record#label.onclick)} | Record#label.data_fields
  ]).