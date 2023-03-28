Feature: basic
  Scenario: within 1 second resource creation
    Given a resource called cm:
    """
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: example
      namespace: default
    """
    When I create cm
    Then within 1m cm jsonpath '{.metadata.name}' should equal bar
    And I delete cm
