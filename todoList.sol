pragma solidity ^0.5.0;

contract myTaskList{
    
    // TASK STRUCTURE TO STORE DETAILS OF A TASK
    struct Task{
        string title;
        string description;
        bool is_complete;
    }
    
    // USED TO MAINTAIN THE NUMBER TASKS IN THE LIST
    uint private taskNumber = 0;
    
    // MAPPING OF TASK WITH ITS TASK-NUMBER
    mapping(uint=>Task) public tasks;
    
    // USED TO CREATE A TASK IN THE LIST
    function createTodoList(string memory title, string memory description) public{
        taskNumber = taskNumber + 1;
        tasks[taskNumber] = Task(title, description, false);
    }
    
    // UPDATING THE STATUS OF TASK
    function markTaskAsDoneAt(uint position) public{
        tasks[position].is_complete = true;
    }
    
    // GET THE STATUS OF THE TASK
    function getStatusOfTaskAt(uint position) public view returns (bool){
        return tasks[position].is_complete;
    }
}
