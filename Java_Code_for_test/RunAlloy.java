/* Inspired by org.alloytools.alloy.application/src/main/java/edu/mit/csail/sdg/alloy4whole/ExampleUsingTheCompiler */

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4.ErrorWarning;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Module;
import edu.mit.csail.sdg.parser.CompUtil;
import edu.mit.csail.sdg.translator.A4Options;
import edu.mit.csail.sdg.translator.A4Solution;
import edu.mit.csail.sdg.translator.TranslateAlloyToKodkod;


public final class RunAlloy {

    /*
     * Execute a command in a file. This method parses the file, then
     * execute the specified command.
     */
    public static void main(String[] args) throws Err {

        if (args.length != 2) {
            System.out.println("RunAlloy module.als property");
            System.exit(1);
        }

        String filename = args[0];
        String property = args[1];
        
        Module world = null;
        try {
            world = CompUtil.parseEverything_fromFile(null, null, filename);
        } catch (Err e) {
            System.err.println("Load failed at " + e.pos);
            System.exit(1);
        }

        // Choose some default options for how you want to execute the commands
        A4Options options = new A4Options();
        //options.solver = A4Options.SatSolver.SAT4J;
        options.solver = A4Options.SatSolver.Glucose41JNI;

        boolean foundprop = false;
        for (Command command : world.getAllCommands()) {
            if (command.label.equals(property)) {
                foundprop = true;
                A4Solution ans = TranslateAlloyToKodkod.execute_command(null, world.getAllReachableSigs(), command, options);
                if (command.check) { // check predicate
                    if (ans.satisfiable())
                        System.out.print("Counterexample found. Assertion is invalid");
                    else
                        System.out.print("No counterexample found. Assertion may be valid");
                } else { // run predicate
                    if (ans.satisfiable())
                        System.out.print("Instance found. Predicate is consistent");
                    else
                        System.out.print("No instance found. Predicate may be inconsistent");
                }
                if (ans.satisfiable() == (command.expects == 1))
                  System.out.println(", as expected.");
                else
                  System.out.println(", contrary to expectations.");
            }
        }
        if (! foundprop) {
            System.err.println("Property "+property+" not found.");
            System.exit(1);
        }
    }
}
