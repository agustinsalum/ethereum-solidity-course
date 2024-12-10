// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract TaskManager {

    enum TaskStatus {
        Pending,      // Estado pendiente
        InProgress,   // En progreso
        Done          // Completado
    }

    struct Task {
        uint256 id;          // ID de la tarea
        string title;        // Título de la tarea
        TaskStatus status;   // Estado de la tarea
    }

    // Usar 'indexed' permite buscar y filtrar instancias de este evento en la blockchain por el ID
    event TaskCreated(uint256 indexed id, string title);

    Task[] public tasks;        // Array de tareas
    uint256 public taskCounter; // Contador de tareas
    uint256 constant MAX_TASK = 10; // Máximo número de tareas permitidas

    // Crear una nueva tarea
    function createTask(string calldata _title) external {
        require(bytes(_title).length > 0, "empty title"); // Verificar que el título no esté vacío
        if (taskCounter >= MAX_TASK) {
            revert("maximum achieved"); // Revertir si se alcanza el máximo de tareas
        }
        tasks.push(Task(taskCounter, _title, TaskStatus.Pending)); // Añadir una nueva tarea con estado 'Pending'
        emit TaskCreated(taskCounter, _title); // Emitir evento TaskCreated
        taskCounter++;
    }

    modifier validTaskIndex(uint256 _id) {
        require(_id < tasks.length, "id does not exist"); // Verificar que el ID sea válido
        _;
    }
    
    // Actualizar el estado de una tarea
    function updateTaskStatus(uint256 _id, TaskStatus _status) external validTaskIndex(_id) {
        tasks[_id].status = _status; // Cambiar el estado de la tarea
    }

    // Leer la próxima tarea pendiente
    function readNextToDo() external view returns (Task memory) {
        uint256 taskLen = tasks.length;
        for (uint256 i = 0; i < taskLen; i++) {
            if (tasks[i].status == TaskStatus.Pending) { // Verificar si la tarea está pendiente
                return tasks[i]; // Devolver la primera tarea pendiente encontrada
            }
        }
        revert("No pending tasks found"); // Revertir si no hay tareas pendientes
    }

    // Modificador para verificar que el array de tareas no esté vacío
    modifier taskExists() {
        require(tasks.length > 0, "No tasks to delete"); // Verificar que haya tareas
        _;
    }

    // Eliminar una tarea específica
    function deleteTask(uint256 _id) external validTaskIndex(_id) taskExists {
        tasks[_id] = tasks[tasks.length - 1]; // Mover la última tarea a la posición de la tarea eliminada
        tasks.pop(); // Eliminar la última tarea, que ahora es redundante
    }

    // Eliminar la última tarea
    function deleteLastTask() external taskExists {
        tasks.pop(); // Eliminar la última tarea
    }
}
