AtomIncrement = require '../lib/atom-generate-default-options-specs'

describe "dummy test for travis-ci.org to run", ->
  [workspaceElement, activationPromise] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    activationPromise = atom.packages.
      activatePackage('atom-generate-default-options-specs')

    waitsForPromise ->
      atom.workspace.open()

  it "--> runs a dummy test", ->
    expect(1).toBe(1)
