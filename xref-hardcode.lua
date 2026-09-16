-- Replaces cross-document references (@sec-*, @eq-* ...) with fixed text
-- listed under `xref-hardcode:` in a document's front matter.
local map = {}

return {
  {
    Meta = function(m)
      for k, v in pairs(m["xref-hardcode"] or {}) do
        map[k] = pandoc.utils.stringify(v)
      end
    end
  },
  {
    Cite = function(c)
      if #c.citations == 1 and map[c.citations[1].id] then
        return pandoc.Str(map[c.citations[1].id])
      end
    end
  }
}
