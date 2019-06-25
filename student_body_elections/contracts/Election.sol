pragma solidity ^0.5.8;

contract Election {
  // model candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  // store canadidate
  // fetch candidate
  mapping(uint => Candidate) public candidates;
  // store candidate count
  uint public candidatesCount;
  // Constructor
  constructor() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate(string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  // casting votes

}