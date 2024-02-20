
// Generated from Calculator.g4 by ANTLR 4.12.0


#include "CalculatorVisitor.h"

#include "CalculatorParser.h"


using namespace antlrcpp;

using namespace antlr4;

namespace {

struct CalculatorParserStaticData final {
  CalculatorParserStaticData(std::vector<std::string> ruleNames,
                        std::vector<std::string> literalNames,
                        std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  CalculatorParserStaticData(const CalculatorParserStaticData&) = delete;
  CalculatorParserStaticData(CalculatorParserStaticData&&) = delete;
  CalculatorParserStaticData& operator=(const CalculatorParserStaticData&) = delete;
  CalculatorParserStaticData& operator=(CalculatorParserStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag calculatorParserOnceFlag;
CalculatorParserStaticData *calculatorParserStaticData = nullptr;

void calculatorParserInitialize() {
  assert(calculatorParserStaticData == nullptr);
  auto staticData = std::make_unique<CalculatorParserStaticData>(
    std::vector<std::string>{
      "compileUnit", "funcDef", "funcFormalParams", "funcFormalParam", "funcBasicParam", 
      "block", "blockItemList", "blockItem", "statement", "expr", "addExp", 
      "addOp", "unaryExp", "primaryExp", "realParamList", "lVal"
    },
    std::vector<std::string>{
      "", "'('", "')'", "','", "'{'", "'}'", "'='", "';'", "'+'", "'-'", 
      "'function'", "'return'"
    },
    std::vector<std::string>{
      "", "", "", "", "", "", "", "", "T_ADD", "T_SUB", "T_FUNC", "T_RETURN", 
      "T_ID", "T_DIGIT", "WS", "LineComment", "MultiLineComment"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,1,16,128,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,
  	7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,
  	14,2,15,7,15,1,0,1,0,4,0,35,8,0,11,0,12,0,36,1,1,1,1,1,1,1,1,3,1,43,8,
  	1,1,1,1,1,1,1,1,2,1,2,1,2,5,2,51,8,2,10,2,12,2,54,9,2,1,3,1,3,1,4,1,4,
  	1,5,1,5,3,5,62,8,5,1,5,1,5,1,6,4,6,67,8,6,11,6,12,6,68,1,7,1,7,1,8,1,
  	8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,86,8,8,1,9,1,9,1,10,
  	1,10,1,10,1,10,5,10,94,8,10,10,10,12,10,97,9,10,1,11,1,11,1,12,1,12,1,
  	12,1,12,3,12,105,8,12,1,12,3,12,108,8,12,1,13,1,13,1,13,1,13,1,13,1,13,
  	3,13,116,8,13,1,14,1,14,1,14,5,14,121,8,14,10,14,12,14,124,9,14,1,15,
  	1,15,1,15,0,0,16,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,0,1,1,0,8,
  	9,126,0,34,1,0,0,0,2,38,1,0,0,0,4,47,1,0,0,0,6,55,1,0,0,0,8,57,1,0,0,
  	0,10,59,1,0,0,0,12,66,1,0,0,0,14,70,1,0,0,0,16,85,1,0,0,0,18,87,1,0,0,
  	0,20,89,1,0,0,0,22,98,1,0,0,0,24,107,1,0,0,0,26,115,1,0,0,0,28,117,1,
  	0,0,0,30,125,1,0,0,0,32,35,3,16,8,0,33,35,3,2,1,0,34,32,1,0,0,0,34,33,
  	1,0,0,0,35,36,1,0,0,0,36,34,1,0,0,0,36,37,1,0,0,0,37,1,1,0,0,0,38,39,
  	5,10,0,0,39,40,5,12,0,0,40,42,5,1,0,0,41,43,3,4,2,0,42,41,1,0,0,0,42,
  	43,1,0,0,0,43,44,1,0,0,0,44,45,5,2,0,0,45,46,3,10,5,0,46,3,1,0,0,0,47,
  	52,3,6,3,0,48,49,5,3,0,0,49,51,3,6,3,0,50,48,1,0,0,0,51,54,1,0,0,0,52,
  	50,1,0,0,0,52,53,1,0,0,0,53,5,1,0,0,0,54,52,1,0,0,0,55,56,3,8,4,0,56,
  	7,1,0,0,0,57,58,5,12,0,0,58,9,1,0,0,0,59,61,5,4,0,0,60,62,3,12,6,0,61,
  	60,1,0,0,0,61,62,1,0,0,0,62,63,1,0,0,0,63,64,5,5,0,0,64,11,1,0,0,0,65,
  	67,3,14,7,0,66,65,1,0,0,0,67,68,1,0,0,0,68,66,1,0,0,0,68,69,1,0,0,0,69,
  	13,1,0,0,0,70,71,3,16,8,0,71,15,1,0,0,0,72,73,5,12,0,0,73,74,5,6,0,0,
  	74,75,3,18,9,0,75,76,5,7,0,0,76,86,1,0,0,0,77,78,3,18,9,0,78,79,5,7,0,
  	0,79,86,1,0,0,0,80,86,3,18,9,0,81,82,5,11,0,0,82,83,3,18,9,0,83,84,5,
  	7,0,0,84,86,1,0,0,0,85,72,1,0,0,0,85,77,1,0,0,0,85,80,1,0,0,0,85,81,1,
  	0,0,0,86,17,1,0,0,0,87,88,3,20,10,0,88,19,1,0,0,0,89,95,3,24,12,0,90,
  	91,3,22,11,0,91,92,3,24,12,0,92,94,1,0,0,0,93,90,1,0,0,0,94,97,1,0,0,
  	0,95,93,1,0,0,0,95,96,1,0,0,0,96,21,1,0,0,0,97,95,1,0,0,0,98,99,7,0,0,
  	0,99,23,1,0,0,0,100,108,3,26,13,0,101,102,5,12,0,0,102,104,5,1,0,0,103,
  	105,3,28,14,0,104,103,1,0,0,0,104,105,1,0,0,0,105,106,1,0,0,0,106,108,
  	5,2,0,0,107,100,1,0,0,0,107,101,1,0,0,0,108,25,1,0,0,0,109,110,5,1,0,
  	0,110,111,3,18,9,0,111,112,5,2,0,0,112,116,1,0,0,0,113,116,5,13,0,0,114,
  	116,3,30,15,0,115,109,1,0,0,0,115,113,1,0,0,0,115,114,1,0,0,0,116,27,
  	1,0,0,0,117,122,3,18,9,0,118,119,5,3,0,0,119,121,3,18,9,0,120,118,1,0,
  	0,0,121,124,1,0,0,0,122,120,1,0,0,0,122,123,1,0,0,0,123,29,1,0,0,0,124,
  	122,1,0,0,0,125,126,5,12,0,0,126,31,1,0,0,0,12,34,36,42,52,61,68,85,95,
  	104,107,115,122
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  calculatorParserStaticData = staticData.release();
}

}

CalculatorParser::CalculatorParser(TokenStream *input) : CalculatorParser(input, antlr4::atn::ParserATNSimulatorOptions()) {}

CalculatorParser::CalculatorParser(TokenStream *input, const antlr4::atn::ParserATNSimulatorOptions &options) : Parser(input) {
  CalculatorParser::initialize();
  _interpreter = new atn::ParserATNSimulator(this, *calculatorParserStaticData->atn, calculatorParserStaticData->decisionToDFA, calculatorParserStaticData->sharedContextCache, options);
}

CalculatorParser::~CalculatorParser() {
  delete _interpreter;
}

const atn::ATN& CalculatorParser::getATN() const {
  return *calculatorParserStaticData->atn;
}

std::string CalculatorParser::getGrammarFileName() const {
  return "Calculator.g4";
}

const std::vector<std::string>& CalculatorParser::getRuleNames() const {
  return calculatorParserStaticData->ruleNames;
}

const dfa::Vocabulary& CalculatorParser::getVocabulary() const {
  return calculatorParserStaticData->vocabulary;
}

antlr4::atn::SerializedATNView CalculatorParser::getSerializedATN() const {
  return calculatorParserStaticData->serializedATN;
}


//----------------- CompileUnitContext ------------------------------------------------------------------

CalculatorParser::CompileUnitContext::CompileUnitContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<CalculatorParser::StatementContext *> CalculatorParser::CompileUnitContext::statement() {
  return getRuleContexts<CalculatorParser::StatementContext>();
}

CalculatorParser::StatementContext* CalculatorParser::CompileUnitContext::statement(size_t i) {
  return getRuleContext<CalculatorParser::StatementContext>(i);
}

std::vector<CalculatorParser::FuncDefContext *> CalculatorParser::CompileUnitContext::funcDef() {
  return getRuleContexts<CalculatorParser::FuncDefContext>();
}

CalculatorParser::FuncDefContext* CalculatorParser::CompileUnitContext::funcDef(size_t i) {
  return getRuleContext<CalculatorParser::FuncDefContext>(i);
}


size_t CalculatorParser::CompileUnitContext::getRuleIndex() const {
  return CalculatorParser::RuleCompileUnit;
}


std::any CalculatorParser::CompileUnitContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitCompileUnit(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::CompileUnitContext* CalculatorParser::compileUnit() {
  CompileUnitContext *_localctx = _tracker.createInstance<CompileUnitContext>(_ctx, getState());
  enterRule(_localctx, 0, CalculatorParser::RuleCompileUnit);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(34); 
    _errHandler->sync(this);
    _la = _input->LA(1);
    do {
      setState(34);
      _errHandler->sync(this);
      switch (_input->LA(1)) {
        case CalculatorParser::T__0:
        case CalculatorParser::T_RETURN:
        case CalculatorParser::T_ID:
        case CalculatorParser::T_DIGIT: {
          setState(32);
          statement();
          break;
        }

        case CalculatorParser::T_FUNC: {
          setState(33);
          funcDef();
          break;
        }

      default:
        throw NoViableAltException(this);
      }
      setState(36); 
      _errHandler->sync(this);
      _la = _input->LA(1);
    } while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 15362) != 0));
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncDefContext ------------------------------------------------------------------

CalculatorParser::FuncDefContext::FuncDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* CalculatorParser::FuncDefContext::T_FUNC() {
  return getToken(CalculatorParser::T_FUNC, 0);
}

tree::TerminalNode* CalculatorParser::FuncDefContext::T_ID() {
  return getToken(CalculatorParser::T_ID, 0);
}

CalculatorParser::BlockContext* CalculatorParser::FuncDefContext::block() {
  return getRuleContext<CalculatorParser::BlockContext>(0);
}

CalculatorParser::FuncFormalParamsContext* CalculatorParser::FuncDefContext::funcFormalParams() {
  return getRuleContext<CalculatorParser::FuncFormalParamsContext>(0);
}


size_t CalculatorParser::FuncDefContext::getRuleIndex() const {
  return CalculatorParser::RuleFuncDef;
}


std::any CalculatorParser::FuncDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitFuncDef(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::FuncDefContext* CalculatorParser::funcDef() {
  FuncDefContext *_localctx = _tracker.createInstance<FuncDefContext>(_ctx, getState());
  enterRule(_localctx, 2, CalculatorParser::RuleFuncDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(38);
    match(CalculatorParser::T_FUNC);
    setState(39);
    match(CalculatorParser::T_ID);
    setState(40);
    match(CalculatorParser::T__0);
    setState(42);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == CalculatorParser::T_ID) {
      setState(41);
      funcFormalParams();
    }
    setState(44);
    match(CalculatorParser::T__1);
    setState(45);
    block();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFormalParamsContext ------------------------------------------------------------------

CalculatorParser::FuncFormalParamsContext::FuncFormalParamsContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<CalculatorParser::FuncFormalParamContext *> CalculatorParser::FuncFormalParamsContext::funcFormalParam() {
  return getRuleContexts<CalculatorParser::FuncFormalParamContext>();
}

CalculatorParser::FuncFormalParamContext* CalculatorParser::FuncFormalParamsContext::funcFormalParam(size_t i) {
  return getRuleContext<CalculatorParser::FuncFormalParamContext>(i);
}


size_t CalculatorParser::FuncFormalParamsContext::getRuleIndex() const {
  return CalculatorParser::RuleFuncFormalParams;
}


std::any CalculatorParser::FuncFormalParamsContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitFuncFormalParams(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::FuncFormalParamsContext* CalculatorParser::funcFormalParams() {
  FuncFormalParamsContext *_localctx = _tracker.createInstance<FuncFormalParamsContext>(_ctx, getState());
  enterRule(_localctx, 4, CalculatorParser::RuleFuncFormalParams);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(47);
    funcFormalParam();
    setState(52);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == CalculatorParser::T__2) {
      setState(48);
      match(CalculatorParser::T__2);
      setState(49);
      funcFormalParam();
      setState(54);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFormalParamContext ------------------------------------------------------------------

CalculatorParser::FuncFormalParamContext::FuncFormalParamContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::FuncBasicParamContext* CalculatorParser::FuncFormalParamContext::funcBasicParam() {
  return getRuleContext<CalculatorParser::FuncBasicParamContext>(0);
}


size_t CalculatorParser::FuncFormalParamContext::getRuleIndex() const {
  return CalculatorParser::RuleFuncFormalParam;
}


std::any CalculatorParser::FuncFormalParamContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitFuncFormalParam(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::FuncFormalParamContext* CalculatorParser::funcFormalParam() {
  FuncFormalParamContext *_localctx = _tracker.createInstance<FuncFormalParamContext>(_ctx, getState());
  enterRule(_localctx, 6, CalculatorParser::RuleFuncFormalParam);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(55);
    funcBasicParam();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncBasicParamContext ------------------------------------------------------------------

CalculatorParser::FuncBasicParamContext::FuncBasicParamContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* CalculatorParser::FuncBasicParamContext::T_ID() {
  return getToken(CalculatorParser::T_ID, 0);
}


size_t CalculatorParser::FuncBasicParamContext::getRuleIndex() const {
  return CalculatorParser::RuleFuncBasicParam;
}


std::any CalculatorParser::FuncBasicParamContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitFuncBasicParam(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::FuncBasicParamContext* CalculatorParser::funcBasicParam() {
  FuncBasicParamContext *_localctx = _tracker.createInstance<FuncBasicParamContext>(_ctx, getState());
  enterRule(_localctx, 8, CalculatorParser::RuleFuncBasicParam);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(57);
    match(CalculatorParser::T_ID);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockContext ------------------------------------------------------------------

CalculatorParser::BlockContext::BlockContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::BlockItemListContext* CalculatorParser::BlockContext::blockItemList() {
  return getRuleContext<CalculatorParser::BlockItemListContext>(0);
}


size_t CalculatorParser::BlockContext::getRuleIndex() const {
  return CalculatorParser::RuleBlock;
}


std::any CalculatorParser::BlockContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitBlock(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::BlockContext* CalculatorParser::block() {
  BlockContext *_localctx = _tracker.createInstance<BlockContext>(_ctx, getState());
  enterRule(_localctx, 10, CalculatorParser::RuleBlock);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(59);
    match(CalculatorParser::T__3);
    setState(61);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 14338) != 0)) {
      setState(60);
      blockItemList();
    }
    setState(63);
    match(CalculatorParser::T__4);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockItemListContext ------------------------------------------------------------------

CalculatorParser::BlockItemListContext::BlockItemListContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<CalculatorParser::BlockItemContext *> CalculatorParser::BlockItemListContext::blockItem() {
  return getRuleContexts<CalculatorParser::BlockItemContext>();
}

CalculatorParser::BlockItemContext* CalculatorParser::BlockItemListContext::blockItem(size_t i) {
  return getRuleContext<CalculatorParser::BlockItemContext>(i);
}


size_t CalculatorParser::BlockItemListContext::getRuleIndex() const {
  return CalculatorParser::RuleBlockItemList;
}


std::any CalculatorParser::BlockItemListContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitBlockItemList(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::BlockItemListContext* CalculatorParser::blockItemList() {
  BlockItemListContext *_localctx = _tracker.createInstance<BlockItemListContext>(_ctx, getState());
  enterRule(_localctx, 12, CalculatorParser::RuleBlockItemList);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(66); 
    _errHandler->sync(this);
    _la = _input->LA(1);
    do {
      setState(65);
      blockItem();
      setState(68); 
      _errHandler->sync(this);
      _la = _input->LA(1);
    } while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 14338) != 0));
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockItemContext ------------------------------------------------------------------

CalculatorParser::BlockItemContext::BlockItemContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::StatementContext* CalculatorParser::BlockItemContext::statement() {
  return getRuleContext<CalculatorParser::StatementContext>(0);
}


size_t CalculatorParser::BlockItemContext::getRuleIndex() const {
  return CalculatorParser::RuleBlockItem;
}


std::any CalculatorParser::BlockItemContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitBlockItem(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::BlockItemContext* CalculatorParser::blockItem() {
  BlockItemContext *_localctx = _tracker.createInstance<BlockItemContext>(_ctx, getState());
  enterRule(_localctx, 14, CalculatorParser::RuleBlockItem);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(70);
    statement();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- StatementContext ------------------------------------------------------------------

CalculatorParser::StatementContext::StatementContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}


size_t CalculatorParser::StatementContext::getRuleIndex() const {
  return CalculatorParser::RuleStatement;
}

void CalculatorParser::StatementContext::copyFrom(StatementContext *ctx) {
  ParserRuleContext::copyFrom(ctx);
}

//----------------- ExpressionShowStatementContext ------------------------------------------------------------------

CalculatorParser::ExprContext* CalculatorParser::ExpressionShowStatementContext::expr() {
  return getRuleContext<CalculatorParser::ExprContext>(0);
}

CalculatorParser::ExpressionShowStatementContext::ExpressionShowStatementContext(StatementContext *ctx) { copyFrom(ctx); }


std::any CalculatorParser::ExpressionShowStatementContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitExpressionShowStatement(this);
  else
    return visitor->visitChildren(this);
}
//----------------- AssignStatementContext ------------------------------------------------------------------

tree::TerminalNode* CalculatorParser::AssignStatementContext::T_ID() {
  return getToken(CalculatorParser::T_ID, 0);
}

CalculatorParser::ExprContext* CalculatorParser::AssignStatementContext::expr() {
  return getRuleContext<CalculatorParser::ExprContext>(0);
}

CalculatorParser::AssignStatementContext::AssignStatementContext(StatementContext *ctx) { copyFrom(ctx); }


std::any CalculatorParser::AssignStatementContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitAssignStatement(this);
  else
    return visitor->visitChildren(this);
}
//----------------- ExpressionStatementContext ------------------------------------------------------------------

CalculatorParser::ExprContext* CalculatorParser::ExpressionStatementContext::expr() {
  return getRuleContext<CalculatorParser::ExprContext>(0);
}

CalculatorParser::ExpressionStatementContext::ExpressionStatementContext(StatementContext *ctx) { copyFrom(ctx); }


std::any CalculatorParser::ExpressionStatementContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitExpressionStatement(this);
  else
    return visitor->visitChildren(this);
}
//----------------- ReturnStatementContext ------------------------------------------------------------------

tree::TerminalNode* CalculatorParser::ReturnStatementContext::T_RETURN() {
  return getToken(CalculatorParser::T_RETURN, 0);
}

CalculatorParser::ExprContext* CalculatorParser::ReturnStatementContext::expr() {
  return getRuleContext<CalculatorParser::ExprContext>(0);
}

CalculatorParser::ReturnStatementContext::ReturnStatementContext(StatementContext *ctx) { copyFrom(ctx); }


std::any CalculatorParser::ReturnStatementContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitReturnStatement(this);
  else
    return visitor->visitChildren(this);
}
CalculatorParser::StatementContext* CalculatorParser::statement() {
  StatementContext *_localctx = _tracker.createInstance<StatementContext>(_ctx, getState());
  enterRule(_localctx, 16, CalculatorParser::RuleStatement);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(85);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 6, _ctx)) {
    case 1: {
      _localctx = _tracker.createInstance<CalculatorParser::AssignStatementContext>(_localctx);
      enterOuterAlt(_localctx, 1);
      setState(72);
      match(CalculatorParser::T_ID);
      setState(73);
      match(CalculatorParser::T__5);
      setState(74);
      expr();
      setState(75);
      match(CalculatorParser::T__6);
      break;
    }

    case 2: {
      _localctx = _tracker.createInstance<CalculatorParser::ExpressionStatementContext>(_localctx);
      enterOuterAlt(_localctx, 2);
      setState(77);
      expr();
      setState(78);
      match(CalculatorParser::T__6);
      break;
    }

    case 3: {
      _localctx = _tracker.createInstance<CalculatorParser::ExpressionShowStatementContext>(_localctx);
      enterOuterAlt(_localctx, 3);
      setState(80);
      expr();
      break;
    }

    case 4: {
      _localctx = _tracker.createInstance<CalculatorParser::ReturnStatementContext>(_localctx);
      enterOuterAlt(_localctx, 4);
      setState(81);
      match(CalculatorParser::T_RETURN);
      setState(82);
      expr();
      setState(83);
      match(CalculatorParser::T__6);
      break;
    }

    default:
      break;
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ExprContext ------------------------------------------------------------------

CalculatorParser::ExprContext::ExprContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::AddExpContext* CalculatorParser::ExprContext::addExp() {
  return getRuleContext<CalculatorParser::AddExpContext>(0);
}


size_t CalculatorParser::ExprContext::getRuleIndex() const {
  return CalculatorParser::RuleExpr;
}


std::any CalculatorParser::ExprContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitExpr(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::ExprContext* CalculatorParser::expr() {
  ExprContext *_localctx = _tracker.createInstance<ExprContext>(_ctx, getState());
  enterRule(_localctx, 18, CalculatorParser::RuleExpr);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(87);
    addExp();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- AddExpContext ------------------------------------------------------------------

CalculatorParser::AddExpContext::AddExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<CalculatorParser::UnaryExpContext *> CalculatorParser::AddExpContext::unaryExp() {
  return getRuleContexts<CalculatorParser::UnaryExpContext>();
}

CalculatorParser::UnaryExpContext* CalculatorParser::AddExpContext::unaryExp(size_t i) {
  return getRuleContext<CalculatorParser::UnaryExpContext>(i);
}

std::vector<CalculatorParser::AddOpContext *> CalculatorParser::AddExpContext::addOp() {
  return getRuleContexts<CalculatorParser::AddOpContext>();
}

CalculatorParser::AddOpContext* CalculatorParser::AddExpContext::addOp(size_t i) {
  return getRuleContext<CalculatorParser::AddOpContext>(i);
}


size_t CalculatorParser::AddExpContext::getRuleIndex() const {
  return CalculatorParser::RuleAddExp;
}


std::any CalculatorParser::AddExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitAddExp(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::AddExpContext* CalculatorParser::addExp() {
  AddExpContext *_localctx = _tracker.createInstance<AddExpContext>(_ctx, getState());
  enterRule(_localctx, 20, CalculatorParser::RuleAddExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(89);
    unaryExp();
    setState(95);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == CalculatorParser::T_ADD

    || _la == CalculatorParser::T_SUB) {
      setState(90);
      addOp();
      setState(91);
      unaryExp();
      setState(97);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- AddOpContext ------------------------------------------------------------------

CalculatorParser::AddOpContext::AddOpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* CalculatorParser::AddOpContext::T_ADD() {
  return getToken(CalculatorParser::T_ADD, 0);
}

tree::TerminalNode* CalculatorParser::AddOpContext::T_SUB() {
  return getToken(CalculatorParser::T_SUB, 0);
}


size_t CalculatorParser::AddOpContext::getRuleIndex() const {
  return CalculatorParser::RuleAddOp;
}


std::any CalculatorParser::AddOpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitAddOp(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::AddOpContext* CalculatorParser::addOp() {
  AddOpContext *_localctx = _tracker.createInstance<AddOpContext>(_ctx, getState());
  enterRule(_localctx, 22, CalculatorParser::RuleAddOp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(98);
    _la = _input->LA(1);
    if (!(_la == CalculatorParser::T_ADD

    || _la == CalculatorParser::T_SUB)) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- UnaryExpContext ------------------------------------------------------------------

CalculatorParser::UnaryExpContext::UnaryExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::PrimaryExpContext* CalculatorParser::UnaryExpContext::primaryExp() {
  return getRuleContext<CalculatorParser::PrimaryExpContext>(0);
}

tree::TerminalNode* CalculatorParser::UnaryExpContext::T_ID() {
  return getToken(CalculatorParser::T_ID, 0);
}

CalculatorParser::RealParamListContext* CalculatorParser::UnaryExpContext::realParamList() {
  return getRuleContext<CalculatorParser::RealParamListContext>(0);
}


size_t CalculatorParser::UnaryExpContext::getRuleIndex() const {
  return CalculatorParser::RuleUnaryExp;
}


std::any CalculatorParser::UnaryExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitUnaryExp(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::UnaryExpContext* CalculatorParser::unaryExp() {
  UnaryExpContext *_localctx = _tracker.createInstance<UnaryExpContext>(_ctx, getState());
  enterRule(_localctx, 24, CalculatorParser::RuleUnaryExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(107);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 9, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(100);
      primaryExp();
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(101);
      match(CalculatorParser::T_ID);
      setState(102);
      match(CalculatorParser::T__0);
      setState(104);
      _errHandler->sync(this);

      _la = _input->LA(1);
      if ((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 12290) != 0)) {
        setState(103);
        realParamList();
      }
      setState(106);
      match(CalculatorParser::T__1);
      break;
    }

    default:
      break;
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- PrimaryExpContext ------------------------------------------------------------------

CalculatorParser::PrimaryExpContext::PrimaryExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

CalculatorParser::ExprContext* CalculatorParser::PrimaryExpContext::expr() {
  return getRuleContext<CalculatorParser::ExprContext>(0);
}

tree::TerminalNode* CalculatorParser::PrimaryExpContext::T_DIGIT() {
  return getToken(CalculatorParser::T_DIGIT, 0);
}

CalculatorParser::LValContext* CalculatorParser::PrimaryExpContext::lVal() {
  return getRuleContext<CalculatorParser::LValContext>(0);
}


size_t CalculatorParser::PrimaryExpContext::getRuleIndex() const {
  return CalculatorParser::RulePrimaryExp;
}


std::any CalculatorParser::PrimaryExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitPrimaryExp(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::PrimaryExpContext* CalculatorParser::primaryExp() {
  PrimaryExpContext *_localctx = _tracker.createInstance<PrimaryExpContext>(_ctx, getState());
  enterRule(_localctx, 26, CalculatorParser::RulePrimaryExp);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(115);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case CalculatorParser::T__0: {
        enterOuterAlt(_localctx, 1);
        setState(109);
        match(CalculatorParser::T__0);
        setState(110);
        expr();
        setState(111);
        match(CalculatorParser::T__1);
        break;
      }

      case CalculatorParser::T_DIGIT: {
        enterOuterAlt(_localctx, 2);
        setState(113);
        match(CalculatorParser::T_DIGIT);
        break;
      }

      case CalculatorParser::T_ID: {
        enterOuterAlt(_localctx, 3);
        setState(114);
        lVal();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- RealParamListContext ------------------------------------------------------------------

CalculatorParser::RealParamListContext::RealParamListContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<CalculatorParser::ExprContext *> CalculatorParser::RealParamListContext::expr() {
  return getRuleContexts<CalculatorParser::ExprContext>();
}

CalculatorParser::ExprContext* CalculatorParser::RealParamListContext::expr(size_t i) {
  return getRuleContext<CalculatorParser::ExprContext>(i);
}


size_t CalculatorParser::RealParamListContext::getRuleIndex() const {
  return CalculatorParser::RuleRealParamList;
}


std::any CalculatorParser::RealParamListContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitRealParamList(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::RealParamListContext* CalculatorParser::realParamList() {
  RealParamListContext *_localctx = _tracker.createInstance<RealParamListContext>(_ctx, getState());
  enterRule(_localctx, 28, CalculatorParser::RuleRealParamList);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(117);
    expr();
    setState(122);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == CalculatorParser::T__2) {
      setState(118);
      match(CalculatorParser::T__2);
      setState(119);
      expr();
      setState(124);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LValContext ------------------------------------------------------------------

CalculatorParser::LValContext::LValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* CalculatorParser::LValContext::T_ID() {
  return getToken(CalculatorParser::T_ID, 0);
}


size_t CalculatorParser::LValContext::getRuleIndex() const {
  return CalculatorParser::RuleLVal;
}


std::any CalculatorParser::LValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<CalculatorVisitor*>(visitor))
    return parserVisitor->visitLVal(this);
  else
    return visitor->visitChildren(this);
}

CalculatorParser::LValContext* CalculatorParser::lVal() {
  LValContext *_localctx = _tracker.createInstance<LValContext>(_ctx, getState());
  enterRule(_localctx, 30, CalculatorParser::RuleLVal);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(125);
    match(CalculatorParser::T_ID);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

void CalculatorParser::initialize() {
  ::antlr4::internal::call_once(calculatorParserOnceFlag, calculatorParserInitialize);
}
