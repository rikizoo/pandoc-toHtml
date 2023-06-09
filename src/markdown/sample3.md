[git におけるコミットログ/メッセージ例文集 100](http://anond.hatelabo.jp/20160725092419)の転載

### 例文を組み込んだ Alfred Workflow を作りました: [Alfred Git Commit Message Example](https://github.com/mono0926/alfred-git-commit-message-example)

![Gif Example](https://raw.githubusercontent.com/mono0926/alfred-git-commit-message-example/master/assets/example.gif)

以下転載:

---

# git におけるコミットログ/メッセージ例文集 100

私はコミットログの書き方に悩む英語の苦手な人間である。実際、似たような人は世の中に結構いるようで、頻出単語を集計したりまとめたものは既にあって役に立つのだけれど、これらはあくまで単語の話であり、具体的な文を構成する過程でやっぱり困る部分がかなりあった。

要するに、どういう時にどういう文が使われているのか、ということを示した例文集が欲しいのである。ググると他にも「例文集があればいいのに」みたいな声はあるくせして、しかし誰も作ろうとしない。何なんだお前ら。それじゃ私が楽できないじゃないか。

仕方なく自分でまとめたので、増田に垂れ流しておく。

# はじめに

ここで挙げているコミットログは全て実際のコミットログからの転載である。当然ながら各コミットログの著作権はそれぞれの書き手にある。いずれも各英文でググれば出てくるし、フェアユースの範囲なら許してくれるだろうと考え名前とプロジェクト名は割愛したが、ここにお詫びと感謝を述べておきたい。

抽出条件だが、参考にできそうなコミットログを多く含んでいそうなリポジトリを GitHub の STAR の多い方からざっと目で見て適当に選び、それぞれ最新コミットから 5000 件抽出した（あわせて前処理として、コミットログ冒頭のタグ情報は消去した）。

結果として対象としたリポジトリは以下の通り。

- swift
- atom
- electron
- rails
- tensorflow

atom のみ 5400 件抽出していたため、計 25400 件のコミットログがベースである。このうち、以下の条件に合致するものは参考例にすべきでないとして一律排除した。

- ピリオドで終わっているもの(4535 件)
- 小文字で始まっているもの(2242 件)
- 過去形, 現在進行形で始まっているもの(1044 件)
- Merge/Revert で始まっているもの(6555 件)
- 絵文字を使っているもの(2171 件)
- その他バージョン番号のみ等、参考にならないと判断したもの(313 件)

こうして残った 8540 件を眺めながら、適当に切り出したのがこの用例集である。個人的に「うーんこの」と思った表現も、散見される場合は載せた。
ということで、以下用例を羅列していく。

# 用例集

## オプションやフラグ、メニューを追加した

- Add -enable-experimental-nested-generic-types frontend flag
- Add --main-process flag to run specs in the main process
- Add Throws flag and ThrowsLoc to AbstractFunctionDecl
- Add "event" parameter for "click" handler of MenuItem
- Add File &gt; Exit menu on Windows

## ファイルを追加した

- Add npm start script
- Add build script
- Add SkUserConfig.h with blank SkDebugf macro

## メソッドや機能を追加した

- Add TypeLowering::hasFixedSize()
- Add overflow scrolling
- Add convenience API for demangling
- Add a typealias to avoid a build ordering dependency between projects
- Add a helper method mayHaveOpenedArchetypeOperands to SILInstruction

## 実装を別のものへ切り替えた

- Use args.resourcePath instead of args.devResourcePath
- Use arrays instead of while loops
- Use auto instead of repeating explicit class names
- Use weak pointer instead of manual bookkeeping
- Change all uses of 'CInt' to 'Int32' in the SDK overlay
- Change Integer#year to return a Fixnum instead of a Float to improve consistency

## 新しく何かに対応した/機能上の制約を取り払った

- Add support for closure contexts to readMetadataFromInstance()
- Add support for activating and deactivating package-specific keymaps
- Add support for launching HTML files directly
- Add support for allocators that require tensors with zero
- Make it possible to call `reflect` multiple times
- Make it possible to set a data type for variables that come out of constants
- Allow atom-pane to be shrunk independently of its contents' width
- Allow null TextEditorComponent::domNode during visibility check

## 何かを使うようにした

- Use const for util require
- Use FoldingSetNode for ProtocolType
- Use unique text editor title in window and tab titles
- Use an empty object if metadata is ~null
- Use target_link_libraries for fat executable dependencies
- Use existing flatMapToOptionalTests dataset

## より好ましい実装に改良した

- Make the clone function more generic
- Make IO faster for v8 compile cache
- Make model constructor argument to addViewProvider optional
- Make Browser::Quit more robust
- Make Menu.getApplicationMenu() public
- Improve incompatible native module error message
- Improve readability of multi-line command
- Improve folds behavior when duplicating lines
- Improve deprecated message on webPreferences options

## 何かを出来ない/しないようにした

- Don't bail reading a metadata instance if swift_isaMask isn't available
- Don't exit until the parent asks for an instance
- Don't include Parent pointer in Nominal/BoundGeneric TypeRef uniquing
- Don't use MatchesExtension for matching filters
- Don't use ES6 class for AutoUpdater windows class
- Don't use MatchesExtension for matching filters
- Avoid `distinct` if a subquery has already materialized
- Avoid infinite recursion when bad values are passed to tz aware fields

## オブジェクトの内容や挙動を確認しやすくした

- Emit capture descriptors in their own section
- Emit field metadata for @objc classes
- Emit reflection info for protocols

## Assert を追加した

- Add assert for role with app name in label
- Add assertions for no available bookmark
- Add asserts for properties

## 不要なコードを除去した

- Remove some dead code
- Remove some unused enum declaration
- Remove unused variable
- Remove unnecessary line feeds
- Remove trailing whitespace
- Remove debug statement
- Remove redundant mapType{Into,OutOf}Context() calls

## コードを移動した

- Move function signature analysis to a Util
- Move markInvalidGenericSignature() to a method on TypeChecker
- Move diagnostic for stored properties in protocols from type checking to validation
- Move Doxygen converter into a proper MarkupASTNode visitor
- Move Module require to top

## 名前を修正した

- Rename environment -&gt; environmentHelpers
- Rename watchProjectPath to watchProjectPaths
- Rename generic arguments
- s/grammarName/grammar
- fullVersion -&gt; writeFullVersion

## 小さなバグやタイポを修正した, 警告を潰した

- Fix typos
- Fix a typo
- Fix a test
- Fix typo in DevTools Extensions tutorial
- Fix DownloadingState typo
- Fix includes order
- Fix mistake in tvOS availability
- Fix cpplint warnings
- Fix wrong markdown
- Add missing return
- Add missing period in comment

## バグや好ましくない挙動を修正した

- Fix a memory leak in FSO
- Fix lifetime issues in ManagedBuffer.value
- Fix mangling for nested generic types
- Fix memory corruption in another circularity check
- Fix thread-unsafety in Process.Argument initialization
- Fix "Object has been destroyed" error in "page-title-updated" event
- Make Error.prepareStackTrace read-only (again)
- Make string slicing tests standalone
- Make sure showing success dialogs works correctly
- Make sure to emit closure bodies only once
- Make sure all native resources get freed on exit
- Make sure temp file will be cleaned up when base::Move fails

## テスト、コメント、ドキュメントを追加した

- Add tests for pending pane items
- Add validation test for projecting existentials
- Add a basic test for opening an editor in largeFileMode if &gt;= 2MB
- Add specs for moveSelectionLeft()
- Add failing spec for Menu.buildFromTemplate
- Add comment about map key/values
- Add TODO about blinkFeatures -&gt; enableBlinkFeatures
- Add a design-decisions section to the CONTRIBUTING guide
- Add style.less examples
- Add docs for app.getLocale()
- Add documentation for --proxy-bypass-list

## テストを削除した

- Remove a redundant test
- Remove an empty test

## テスト、コメントを修正した

- Fix comment
- Fix outdated comment
- Fix failing specs on Windows
- Fix PersistentVector test for powerpc64{le}
- Update specs for deferred activation hooks
- Update successor/predecessor in validation tests
- Update some tests to use LifetimeTracked instead of hand-rolled canaries

## ドキュメントを修正した

- Update README.md
- Update docs for marker callback
- Update documentation for mark\*Position
- Update link to solarized-dark-syntax
- Improve documentation of `ses.cookies.set()`
- Improve readability in CSRF section of guide
- Improve spec description

# 表現傾向とまとめ

以上の用例をふまえ、今回の参考ログ 8540 件から先頭の単語を出現回数で並べると次のようになった。

| 単語      | 出現回数 |
| --------- | -------- |
| Add       | 1149     |
| Fix       | 1014     |
| Update    | 584      |
| Remove    | 566      |
| Use       | 382      |
| Don't     | 260      |
| Make      | 228      |
| Move      | 178      |
| Change    | 103      |
| Rename    | 85       |
| Improve   | 76       |
| Avoid     | 68       |
| Allow     | 65       |
| Implement | 60       |
| Handle    | 58       |

コミットログの基本形はもちろん動詞 + 名詞である。名詞は固有名詞、複数形、不可算名詞が多いが、単数形の場合の冠詞は a が使われるか、あるいは省略される。the はまず使われない。

何かを追加した、という表現では非常に広く Add が使われる。メソッドからテスト、ドキュメントに至るまで大概これでまかなえる。

一方、何かを修正した、という表現では広く Fix が使われる。「何か」は typo や crash といった単語からメソッド名まで幅広い名詞を取るが、動名詞はあまり取らないのと、that 節は取らないのでその点は注意が必要である。

Fix は「何かが正しく動くようにした」ことを示し、正しい動作内容が何かを説明しない。そこで正しい動作内容に言及したい場合は Make sure が使われる（こちらは that 節が取れる）。ただし Fix よりもニュアンス的に重い表現と思われ、Fix を使わず Make sure ばかり使うのはちょっとキモいのではないかと思う（Ensure はさらに重い表現っぽい）。

また、Fix は typo 以外でのドキュメント修正に対して使われることは稀である。対して Update はドキュメント、コメント、テストに使われ、本体のコードの修正に対しては使われない。本体コードの修正にあわせてテストも更新したなら Update が使われる。ただ、テスト機構それ自体のバグを修正したなら Fix である。

無駄な何かを単純に除去したなら Remove を使う。これまでのもの(A)から別のもの(B)に切り替えたのであれば Use B instead of A か Change A to B が使われる。新たに何かを利用するようにしたのであれば Use を、利用を取りやめた場合は Don't use を使うことが多い。

何かをしないようにしたなら Don't を、内部実装の効率化なら Make A + 比較級/形容詞 か Improve が使われる。

中身の変更を伴わない単なる名前の変更なら Rename A to B、コードや機能の論理上の場所を移動させたなら Move A to B である。

この辺はリファクタリングと呼ばれる行為と思うが、Refactor というぼんやりした動詞はあまり使われず、このように変更内容の種類に応じて動詞が使い分けられている。

## 余談

コミットログには Why を書くべきだ、というのを何かで見かけたので because とか since を使ったログがどの程度あるかを調べたが、8540 件のうち 22 件だった。基本的に短く、シンプルに、一目で意味が取れるログが好まれる傾向がある。例えば get rid of とか 2 件しか使われておらず、圧倒的に remove である。

一方で、シンプルな単語だけど開始単語としては使われないものもある。例えば次のような単語である。Expand(9)、Extend(8)、Print(5)、Optimize(5)、Publish(4)、Append(4)、Modify(3)、Manage(2)、Revise(2)、Dump(2)、Insert(2)、Migrate(2)、Enhance(1)、Edit(1) 。いずれもカッコ内は 8540 件に対する冒頭での登場回数である。結局、より一般的で平易な単語で表せたり、Refactor 同様に抽象度が高すぎると使われないのだろう。

# おわりに

8000 件もログを見たおかげで、迷いなくコミットメッセージが思いつくようになったのが個人的には今回書いてて最大の収穫だった。たぶんカンニングペーパーを作る行為それ自体が効率のいい学習になるという話と同じだと思う。

このまとめも 100 以上用例を転載してあるので、それを読むだけでも多少は効果があるんじゃないかと思う。同じようにコミットログ書きたくねぇなぁ英語わっかんねぇなぁと思っている人にとって、何か役に立つところがあれば幸いである。

from https://gist.github.com/mono0926/e6ffd032c384ee4c1cef5a2aa4f778d7
