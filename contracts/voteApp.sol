pragma solidity >=0.4.22 <0.6.0;

contract voteApp{
    struct Proposal{
        string  statement;
        uint upvotes;
        uint downvotes;
        mapping(address=>uint) voteCheck; // 0==not voted ; 1== upvtoe ; 2== downvote
    }
    mapping(uint=>Proposal) internal proposal;
    uint proposal_id;
    function add(string memory _statement) public {
      proposal[proposal_id].statement = _statement;
      proposal_id++;
    }
    function upvote(uint _id) public {
        require(proposal[_id].voteCheck[msg.sender] == 0,"Already Voted");
        proposal[_id].upvotes++;
        proposal[_id].voteCheck[msg.sender] = 1;
        
    }
    function downvote(uint _id)public {
        require(proposal[_id].voteCheck[msg.sender] == 0,"Already Voted");
        proposal[_id].downvotes++;
        proposal[_id].voteCheck[msg.sender] = 2;
        
    }
    function getProposals(uint _id) public view returns(string memory _stmt, uint _upvotes, uint _downvotes ){
        _stmt = proposal[_id].statement;
        _upvotes = proposal[_id].upvotes;
        _downvotes = proposal[_id].downvotes;
    } 
    function getCount() public view returns(uint _count){
        _count = proposal_id;
    }
}