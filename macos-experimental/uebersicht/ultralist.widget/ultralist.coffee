  command: "/usr/bin/python3 ultralist.widget/main.py"

  refreshFrequency: 5000

  style: """
    left: 1em
    top: 2.0em
    font-family: JetBrains Mono
    font-size: 0.8em
  """

  render: (output) ->
    "<div>#{output}</div>"