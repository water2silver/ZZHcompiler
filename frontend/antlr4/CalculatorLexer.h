
// Generated from E:/GitDatabase/calculator/frontend/antlr4/Calculator.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"




class  CalculatorLexer : public antlr4::Lexer {
public:
  enum {
    T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, T__6 = 7, 
    T_ADD = 8, T_SUB = 9, T_FUNC = 10, T_RETURN = 11, T_ID = 12, T_DIGIT = 13, 
    WS = 14, LineComment = 15, MultiLineComment = 16
  };

  explicit CalculatorLexer(antlr4::CharStream *input);

  ~CalculatorLexer() override;


  std::string getGrammarFileName() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const std::vector<std::string>& getChannelNames() const override;

  const std::vector<std::string>& getModeNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;

  const antlr4::atn::ATN& getATN() const override;

  // By default the static state used to implement the lexer is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:

  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

};

