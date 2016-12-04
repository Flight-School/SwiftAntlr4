/* Copyright (c) 2012 The ANTLR Project Contributors. All rights reserved.
 * Use of this file is governed by the BSD 3-clause license that
 * can be found in the LICENSE.txt file in the project root.
 */



/**
 * This class represents profiling event information for a syntax error
 * identified during prediction. Syntax errors occur when the prediction
 * algorithm is unable to identify an alternative which would lead to a
 * successful parse.
 *
 * @see org.antlr.v4.runtime.Parser#notifyErrorListeners(org.antlr.v4.runtime.Token, String, org.antlr.v4.runtime.RecognitionException)
 * @see org.antlr.v4.runtime.ANTLRErrorListener#syntaxError
 *
 * @since 4.3
 */

public class ErrorInfo: DecisionEventInfo {
    /**
     * Constructs a new instance of the {@link org.antlr.v4.runtime.atn.ErrorInfo} class with the
     * specified detailed syntax error information.
     *
     * @param decision The decision number
     * @param configs The final configuration set reached during prediction
     * prior to reaching the {@link org.antlr.v4.runtime.atn.ATNSimulator#ERROR} state
     * @param input The input token stream
     * @param startIndex The start index for the current prediction
     * @param stopIndex The index at which the syntax error was identified
     * @param fullCtx {@code true} if the syntax error was identified during LL
     * prediction; otherwise, {@code false} if the syntax error was identified
     * during SLL prediction
     */
    public init(_ decision: Int,
                _ configs: ATNConfigSet,
                _ input: TokenStream, _ startIndex: Int, _ stopIndex: Int,
                _ fullCtx: Bool) {
        super.init(decision, configs, input, startIndex, stopIndex, fullCtx)
    }
}
