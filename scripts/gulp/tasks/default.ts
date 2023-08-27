import gulp from "gulp";
import inquirer from "inquirer";
import searchList from "inquirer-search-list";
import { TaskCallback } from "undertaker";

inquirer.registerPrompt("search-list", searchList);

// Maps a choice to the gulp command
const choiceToCommandMap = new Map<string, string>([
  ["Start (with reload)", "startAndWatch"],
  ["Start", "start"],
]);

export async function defaultTask(done: TaskCallback) {
  const { task } = await inquirer.prompt<{ task: string }>([
    {
      type: "search-list",
      message: "Select task",
      name: "task",
      choices: Array.from(choiceToCommandMap.keys()),
      validate: function (answer) {
        if (!choiceToCommandMap.has(answer)) {
          return "Unknown option";
        }
        return true;
      },
    },
  ]);

  const gulpCommand = choiceToCommandMap.get(task);
  if (!gulpCommand) {
    return;
  }

  const gulpTask = gulp.task(gulpCommand);
  if (!gulpTask) {
    return;
  }

  return gulpTask(done);
}
