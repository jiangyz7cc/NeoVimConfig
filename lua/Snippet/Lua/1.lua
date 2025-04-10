local e = require("luasnip")

e.add_snippets(
	"cs",
	{
		e.snippet(
			"class",
			{
				t("public class ") ,
				i(1 , "ClassName") ,
				t({ "" , "{" }) ,
				t({ "" , "\tpublic " }), i(2 , "void"), t(" ") , i(3 , "MethodName") , t("() {") ,
				t({ "" , "\t\t" }) , i(0) ,
				t({ "" , "\t}" }) ,
				t({ "" , "}" })
			}
		)
	}
)
