/*
* generated by Xtext
*/
grammar InternalWML;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.wesnoth.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.wesnoth.parser.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.wesnoth.services.WMLGrammarAccess;

}

@parser::members {

 	private WMLGrammarAccess grammarAccess;
 	
    public InternalWMLParser(TokenStream input, IAstFactory factory, WMLGrammarAccess grammarAccess) {
        this(input);
        this.factory = factory;
        registerRules(grammarAccess.getGrammar());
        this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected InputStream getTokenFile() {
    	ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/wesnoth/parser/antlr/internal/InternalWML.tokens");
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Root";	
   	}
   	
   	@Override
   	protected WMLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleRoot
entryRuleRoot returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getRootRule(), currentNode); }
	 iv_ruleRoot=ruleRoot 
	 { $current=$iv_ruleRoot.current; } 
	 EOF 
;

// Rule Root
ruleRoot returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getRootAccess().getUnorderedGroup());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootAccess().getUnorderedGroup(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootAccess().getUnorderedGroup(), 0);
	 				}
					(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootAccess().getTextdomainsTextDomainParserRuleCall_0_0(), currentNode); 
	    }
		lv_textdomains_1_0=ruleTextDomain		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"textdomains",
	        		lv_textdomains_1_0, 
	        		"TextDomain", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)+
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootAccess().getUnorderedGroup(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootAccess().getUnorderedGroup(), 1);
	 				}
					(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootAccess().getPreprocPreprocessorParserRuleCall_1_0(), currentNode); 
	    }
		lv_preproc_2_0=rulePreprocessor		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"preproc",
	        		lv_preproc_2_0, 
	        		"Preprocessor", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)+
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootAccess().getUnorderedGroup(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootAccess().getUnorderedGroup(), 2);
	 				}
					(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootAccess().getRootsRootTypeParserRuleCall_2_0(), currentNode); 
	    }
		lv_roots_3_0=ruleRootType		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"roots",
	        		lv_roots_3_0, 
	        		"RootType", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)+
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootAccess().getUnorderedGroup());
	 				}
 				)
			)  

		)*	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getRootAccess().getUnorderedGroup());
	}

)
;





// Entry rule entryRuleTextDomain
entryRuleTextDomain returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getTextDomainRule(), currentNode); }
	 iv_ruleTextDomain=ruleTextDomain 
	 { $current=$iv_ruleTextDomain.current; } 
	 EOF 
;

// Rule TextDomain
ruleTextDomain returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'#textdomain ' 
    {
        createLeafNode(grammarAccess.getTextDomainAccess().getTextdomainKeyword_0(), null); 
    }
(
(
		lv_DomainName_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getTextDomainAccess().getDomainNameIDTerminalRuleCall_1_0(), "DomainName"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getTextDomainRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"DomainName",
	        		lv_DomainName_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
))
;





// Entry rule entryRulePreprocessor
entryRulePreprocessor returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getPreprocessorRule(), currentNode); }
	 iv_rulePreprocessor=rulePreprocessor 
	 { $current=$iv_rulePreprocessor.current; } 
	 EOF 
;

// Rule Preprocessor
rulePreprocessor returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(
    { 
        currentNode=createCompositeNode(grammarAccess.getPreprocessorAccess().getMacroParserRuleCall_0(), currentNode); 
    }
    this_Macro_0=ruleMacro
    { 
        $current = $this_Macro_0.current; 
        currentNode = currentNode.getParent();
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getPreprocessorAccess().getPathIncludeParserRuleCall_1(), currentNode); 
    }
    this_PathInclude_1=rulePathInclude
    { 
        $current = $this_PathInclude_1.current; 
        currentNode = currentNode.getParent();
    }
)
;





// Entry rule entryRuleMacro
entryRuleMacro returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getMacroRule(), currentNode); }
	 iv_ruleMacro=ruleMacro 
	 { $current=$iv_ruleMacro.current; } 
	 EOF 
;

// Rule Macro
ruleMacro returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'{' 
    {
        createLeafNode(grammarAccess.getMacroAccess().getLeftCurlyBracketKeyword_0(), null); 
    }
(
(
		lv_macroName_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getMacroAccess().getMacroNameIDTerminalRuleCall_1_0(), "macroName"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"macroName",
	        		lv_macroName_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	'}' 
    {
        createLeafNode(grammarAccess.getMacroAccess().getRightCurlyBracketKeyword_2(), null); 
    }
)
;





// Entry rule entryRulePathInclude
entryRulePathInclude returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getPathIncludeRule(), currentNode); }
	 iv_rulePathInclude=rulePathInclude 
	 { $current=$iv_rulePathInclude.current; } 
	 EOF 
;

// Rule PathInclude
rulePathInclude returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'{' 
    {
        createLeafNode(grammarAccess.getPathIncludeAccess().getLeftCurlyBracketKeyword_0(), null); 
    }
(
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getPathIncludeAccess().getPathHOMEPATHParserRuleCall_1_0_0(), currentNode); 
	    }
		lv_path_1_1=ruleHOMEPATH		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getPathIncludeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"path",
	        		lv_path_1_1, 
	        		"HOMEPATH", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		lv_path_1_2=RULE_PATH
		{
			createLeafNode(grammarAccess.getPathIncludeAccess().getPathPATHTerminalRuleCall_1_0_1(), "path"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getPathIncludeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"path",
	        		lv_path_1_2, 
	        		"PATH", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
)	'}' 
    {
        createLeafNode(grammarAccess.getPathIncludeAccess().getRightCurlyBracketKeyword_2(), null); 
    }
)
;





// Entry rule entryRuleRootType
entryRuleRootType returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getRootTypeRule(), currentNode); }
	 iv_ruleRootType=ruleRootType 
	 { $current=$iv_ruleRootType.current; } 
	 EOF 
;

// Rule RootType
ruleRootType returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getRootTypeAccess().getUnorderedGroup());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 0);
	 				}
					(	'[' 
    {
        createLeafNode(grammarAccess.getRootTypeAccess().getLeftSquareBracketKeyword_0_0(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootTypeAccess().getStartTagRootTagParserRuleCall_0_1_0(), currentNode); 
	    }
		lv_startTag_2_0=ruleRootTag		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"startTag",
	        		lv_startTag_2_0, 
	        		"RootTag", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)	']' 
    {
        createLeafNode(grammarAccess.getRootTypeAccess().getRightSquareBracketKeyword_0_2(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootTypeAccess().getSubTypesRootTypeParserRuleCall_0_3_0(), currentNode); 
	    }
		lv_subTypes_4_0=ruleRootType		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"subTypes",
	        		lv_subTypes_4_0, 
	        		"RootType", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)*)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootTypeAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 1);
	 				}
					(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootTypeAccess().getAtAttributesParserRuleCall_1_0(), currentNode); 
	    }
		lv_at_5_0=ruleAttributes		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"at",
	        		lv_at_5_0, 
	        		"Attributes", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)+
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootTypeAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getRootTypeAccess().getUnorderedGroup(), 2);
	 				}
					((
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootTypeAccess().getOkpreprocPreprocessorParserRuleCall_2_0_0(), currentNode); 
	    }
		lv_okpreproc_6_0=rulePreprocessor		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"okpreproc",
	        		lv_okpreproc_6_0, 
	        		"Preprocessor", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)*	'[' 
    {
        createLeafNode(grammarAccess.getRootTypeAccess().getLeftSquareBracketKeyword_2_1(), null); 
    }
	'/' 
    {
        createLeafNode(grammarAccess.getRootTypeAccess().getSolidusKeyword_2_2(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getRootTypeAccess().getEndTagRootTagParserRuleCall_2_3_0(), currentNode); 
	    }
		lv_endTag_9_0=ruleRootTag		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getRootTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"endTag",
	        		lv_endTag_9_0, 
	        		"RootTag", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)	']' 
    {
        createLeafNode(grammarAccess.getRootTypeAccess().getRightSquareBracketKeyword_2_4(), null); 
    }
)
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRootTypeAccess().getUnorderedGroup());
	 				}
 				)
			)  

		)+
	  	{getUnorderedGroupHelper().canLeave(grammarAccess.getRootTypeAccess().getUnorderedGroup())}?	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getRootTypeAccess().getUnorderedGroup());
	}

)
;





// Entry rule entryRuleRootTag
entryRuleRootTag returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getRootTagRule(), currentNode); }
	 iv_ruleRootTag=ruleRootTag 
	 { $current=$iv_ruleRootTag.current; } 
	 EOF 
;

// Rule RootTag
ruleRootTag returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(
    { 
        currentNode=createCompositeNode(grammarAccess.getRootTagAccess().getSimpleTagParserRuleCall_0(), currentNode); 
    }
    this_SimpleTag_0=ruleSimpleTag
    { 
        $current = $this_SimpleTag_0.current; 
        currentNode = currentNode.getParent();
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getRootTagAccess().getAddedTagParserRuleCall_1(), currentNode); 
    }
    this_AddedTag_1=ruleAddedTag
    { 
        $current = $this_AddedTag_1.current; 
        currentNode = currentNode.getParent();
    }
)
;





// Entry rule entryRuleSimpleTag
entryRuleSimpleTag returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getSimpleTagRule(), currentNode); }
	 iv_ruleSimpleTag=ruleSimpleTag 
	 { $current=$iv_ruleSimpleTag.current; } 
	 EOF 
;

// Rule SimpleTag
ruleSimpleTag returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		lv_endTag_0_0=	'/' 
    {
        createLeafNode(grammarAccess.getSimpleTagAccess().getEndTagSolidusKeyword_0_0(), "endTag"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getSimpleTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "endTag", true, "/", lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getSimpleTagAccess().getTagNameRootTagsListParserRuleCall_1_0(), currentNode); 
	    }
		lv_tagName_1_0=ruleRootTagsList		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getSimpleTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"tagName",
	        		lv_tagName_1_0, 
	        		"RootTagsList", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRuleAddedTag
entryRuleAddedTag returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getAddedTagRule(), currentNode); }
	 iv_ruleAddedTag=ruleAddedTag 
	 { $current=$iv_ruleAddedTag.current; } 
	 EOF 
;

// Rule AddedTag
ruleAddedTag returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'+' 
    {
        createLeafNode(grammarAccess.getAddedTagAccess().getPlusSignKeyword_0(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getAddedTagAccess().getTagNameRootTagsListParserRuleCall_1_0(), currentNode); 
	    }
		lv_tagName_1_0=ruleRootTagsList		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAddedTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"tagName",
	        		lv_tagName_1_0, 
	        		"RootTagsList", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRuleRootTagsList
entryRuleRootTagsList returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getRootTagsListRule(), currentNode); } 
	 iv_ruleRootTagsList=ruleRootTagsList 
	 { $current=$iv_ruleRootTagsList.current.getText(); }  
	 EOF 
;

// Rule RootTagsList
ruleRootTagsList returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    createLeafNode(grammarAccess.getRootTagsListAccess().getIDTerminalRuleCall(), null); 
    }

    ;





// Entry rule entryRuleAttributes
entryRuleAttributes returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getAttributesRule(), currentNode); }
	 iv_ruleAttributes=ruleAttributes 
	 { $current=$iv_ruleAttributes.current; } 
	 EOF 
;

// Rule Attributes
ruleAttributes returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		lv_attrName_0_0=RULE_ID
		{
			createLeafNode(grammarAccess.getAttributesAccess().getAttrNameIDTerminalRuleCall_0_0(), "attrName"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrName",
	        		lv_attrName_0_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	'=' 
    {
        createLeafNode(grammarAccess.getAttributesAccess().getEqualsSignKeyword_1(), null); 
    }
(
(
(
		lv_attrValue_2_1=RULE_ID
		{
			createLeafNode(grammarAccess.getAttributesAccess().getAttrValueIDTerminalRuleCall_2_0_0(), "attrValue"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrValue",
	        		lv_attrValue_2_1, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_attrValue_2_2=RULE_IDLIST
		{
			createLeafNode(grammarAccess.getAttributesAccess().getAttrValueIDLISTTerminalRuleCall_2_0_1(), "attrValue"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrValue",
	        		lv_attrValue_2_2, 
	        		"IDLIST", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getAttributesAccess().getAttrValueTSTRINGParserRuleCall_2_0_2(), currentNode); 
	    }
		lv_attrValue_2_3=ruleTSTRING		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrValue",
	        		lv_attrValue_2_3, 
	        		"TSTRING", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		lv_attrValue_2_4=RULE_STRING
		{
			createLeafNode(grammarAccess.getAttributesAccess().getAttrValueSTRINGTerminalRuleCall_2_0_3(), "attrValue"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrValue",
	        		lv_attrValue_2_4, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_attrValue_2_5=RULE_PATH
		{
			createLeafNode(grammarAccess.getAttributesAccess().getAttrValuePATHTerminalRuleCall_2_0_4(), "attrValue"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getAttributesRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"attrValue",
	        		lv_attrValue_2_5, 
	        		"PATH", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
))
;





// Entry rule entryRuleTSTRING
entryRuleTSTRING returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getTSTRINGRule(), currentNode); } 
	 iv_ruleTSTRING=ruleTSTRING 
	 { $current=$iv_ruleTSTRING.current.getText(); }  
	 EOF 
;

// Rule TSTRING
ruleTSTRING returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(
	kw='_' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getTSTRINGAccess().get_Keyword_0(), null); 
    }
    this_STRING_1=RULE_STRING    {
		$current.merge(this_STRING_1);
    }

    { 
    createLeafNode(grammarAccess.getTSTRINGAccess().getSTRINGTerminalRuleCall_1(), null); 
    }
)
    ;





// Entry rule entryRuleHOMEPATH
entryRuleHOMEPATH returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getHOMEPATHRule(), currentNode); } 
	 iv_ruleHOMEPATH=ruleHOMEPATH 
	 { $current=$iv_ruleHOMEPATH.current.getText(); }  
	 EOF 
;

// Rule HOMEPATH
ruleHOMEPATH returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(
	kw='~' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getHOMEPATHAccess().getTildeKeyword_0(), null); 
    }
    this_PATH_1=RULE_PATH    {
		$current.merge(this_PATH_1);
    }

    { 
    createLeafNode(grammarAccess.getHOMEPATHAccess().getPATHTerminalRuleCall_1(), null); 
    }
)
    ;





RULE_SL_COMMENT : '#' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ID : ('a'..'z'|'A'..'Z'|'_'|'-'|'0'..'9')+;

RULE_IDLIST : (RULE_ID ',')* RULE_ID;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ANY_OTHER : .;

RULE_PATH : (('a'..'z'|'A'..'Z'|'_'|'.'|'-'|'0'..'9')+ '/')* ('a'..'z'|'A'..'Z'|'_'|'.'|'-'|'0'..'9')+ '/'?;


