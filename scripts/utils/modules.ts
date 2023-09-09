import G from "glob";
import glob from "glob-promise";

export async function loadModules<Module extends Record<string, unknown>>(
  globPattern: string,
  options?: G.IOptions,
) {
  const files = await glob(globPattern, options);

  const modules: Module[] = await Promise.all(
    files.map(
      (file) => import(file.replace(__dirname, ".").replace(".ts", "")),
    ),
  );

  return modules;
}
