Feature: Disputes

  Scenario: Dispute Valid Block
    Given a test network
    Then sleep 60 seconds
    Then alice is up
    Then bob is up
    Then charlie is up
    Then david is up
    And alice reports node_roles is 4
    And alice reports sub_libp2p_is_major_syncing is 0
    Then sleep 15 seconds
    Then alice reports block height is at least 2
    And alice reports peers count is at least 2
    And bob reports block height is at least 2
    And bob reports peers count is at least 2
    And charlie reports block height is at least 2
    And charlie reports peers count is at least 2
    Then sleep 121 seconds
    And alice reports parachain_candidate_disputes_total is at least 1
    And bob reports parachain_candidate_disputes_total is at least 1
    And charlie reports parachain_candidate_disputes_total is at least 1
    Then alice reports parachain_candidate_dispute_votes{validity="valid"} is at least 1
    And bob reports parachain_candidate_dispute_votes{validity="valid"} is at least 2
    And charlie reports parachain_candidate_dispute_votes{validity="valid"} is at least 2
    Then alice reports parachain_candidate_dispute_concluded{validity="valid"} is at least 1
    Then alice reports parachain_candidate_dispute_concluded{validity="invalid"} is 0
    Then bob reports parachain_candidate_dispute_concluded{validity="valid"} is at least 1
    And charlie reports parachain_candidate_dispute_concluded{validity="valid"} is at least 1