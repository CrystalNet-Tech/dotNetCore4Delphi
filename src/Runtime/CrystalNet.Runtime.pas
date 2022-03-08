unit CrystalNet.Runtime;

interface
uses
	CNCoreClrLib.BridgeMgr, CNCoreClrLib.CallbackMgr, CNCoreClrLib.ArrayMgr, 
	CNCoreClrLib.TypeMgr, CNCoreClrLib.ObjectMgr, CNCoreClrLib.RttiMgr, 
	CrystalNet.Runtime.Consts, CrystalNet.Runtime.Enums, CrystalNet.Runtime.Intf;

type
	TIAsyncLocal = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncLocal>);

	TMarshalByRefObject = class(TCoreClrGenericImport<ICoreClrClass, IMarshalByRefObject>);

	T__ComObject = class(TCoreClrGenericImport<ICoreClrClass, I__ComObject>);

	TISerializable = class(TCoreClrGenericImport<ICoreClrClass, IISerializable>);

	TAttribute = class(TCoreClrGenericImport<IAttributeClass, IAttribute>);

	TActivator = class(TCoreClrGenericImport<IActivatorClass, IActivator>);

	TAdjustmentRule = class(TCoreClrGenericImport<IAdjustmentRuleClass, IAdjustmentRule>);

	TArmBase = class(TCoreClrGenericImport<IArmBaseClass, IArmBase>);

	TAdvSimd = class(TCoreClrGenericImport<IAdvSimdClass, IAdvSimd>);

	TArm64_2 = class(TCoreClrGenericImport<IArm64_2Class, IArm64_2>);

	TArm64 = class(TCoreClrGenericImport<IArm64Class, IArm64>);

	TAes = class(TCoreClrGenericImport<IAesClass, IAes>);

	TArm64_1 = class(TCoreClrGenericImport<IArm64_1Class, IArm64_1>);

	TX86Base = class(TCoreClrGenericImport<IX86BaseClass, IX86Base>);

	TSse = class(TCoreClrGenericImport<ISseClass, ISse>);

	TSse2 = class(TCoreClrGenericImport<ISse2Class, ISse2>);

	TAes_1 = class(TCoreClrGenericImport<IAes_1Class, IAes_1>);

	TX64_15 = class(TCoreClrGenericImport<IX64_15Class, IX64_15>);

	TX64_9 = class(TCoreClrGenericImport<IX64_9Class, IX64_9>);

	TX64_10 = class(TCoreClrGenericImport<IX64_10Class, IX64_10>);

	TX64 = class(TCoreClrGenericImport<IX64Class, IX64>);

	TAppContext = class(TCoreClrGenericImport<IAppContextClass, IAppContext>);

	TAppDomain = class(TCoreClrGenericImport<IAppDomainClass, IAppDomain>);

	TAppDomainSetup = class(TCoreClrGenericImport<ICoreClrClass, IAppDomainSetup>);

	TValueType = class(TCoreClrGenericImport<ICoreClrClass, IValueType>);

	TArm64_3 = class(TCoreClrGenericImport<IArm64_3Class, IArm64_3>);

	TArm64_4 = class(TCoreClrGenericImport<IArm64_4Class, IArm64_4>);

	TArm64_5 = class(TCoreClrGenericImport<IArm64_5Class, IArm64_5>);

	TArm64_6 = class(TCoreClrGenericImport<IArm64_6Class, IArm64_6>);

	TArm64_7 = class(TCoreClrGenericImport<IArm64_7Class, IArm64_7>);

	TArray = class(TCoreClrGenericImport<IArrayClass, IArray>);

	TArrayPool<T> = class(TCoreClrGenericImport<IArrayPoolClass<T>, IArrayPool<T>>);

	TArraySegment_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IArraySegment_Enumerator<T>>);

	TICloneable = class(TCoreClrGenericImport<ICoreClrClass, IICloneable>);

	TEncoding = class(TCoreClrGenericImport<IEncodingClass, IEncoding>);

	TAssembly = class(TCoreClrGenericImport<IAssemblyClass, IAssembly>);

	TAssemblyBuilder = class(TCoreClrGenericImport<IAssemblyBuilderClass, IAssemblyBuilder>);

	TAssemblyExtensions = class(TCoreClrGenericImport<IAssemblyExtensionsClass, IAssemblyExtensions>);

	TContextualReflectionScope = class(TCoreClrGenericImport<ICoreClrClass, IContextualReflectionScope>);

	TAsyncFlowControl = class(TCoreClrGenericImport<ICoreClrClass, IAsyncFlowControl>);

	TAsyncIteratorMethodBuilder = class(TCoreClrGenericImport<IAsyncIteratorMethodBuilderClass, IAsyncIteratorMethodBuilder>);

	TAsyncLocalValueChangedArgs<T> = class(TCoreClrGenericImport<ICoreClrClass, IAsyncLocalValueChangedArgs<T>>);

	TAsyncTaskMethodBuilder = class(TCoreClrGenericImport<IAsyncTaskMethodBuilderClass, IAsyncTaskMethodBuilder>);

	TAsyncTaskMethodBuilder<TResult> = class(TCoreClrGenericImport<IAsyncTaskMethodBuilderClass<TResult>, IAsyncTaskMethodBuilder<TResult>>);

	TAsyncValueTaskMethodBuilder = class(TCoreClrGenericImport<IAsyncValueTaskMethodBuilderClass, IAsyncValueTaskMethodBuilder>);

	TAsyncValueTaskMethodBuilder<TResult> = class(TCoreClrGenericImport<IAsyncValueTaskMethodBuilderClass<TResult>, IAsyncValueTaskMethodBuilder<TResult>>);

	TAsyncVoidMethodBuilder = class(TCoreClrGenericImport<IAsyncVoidMethodBuilderClass, IAsyncVoidMethodBuilder>);

	TWaitHandle = class(TCoreClrGenericImport<IWaitHandleClass, IWaitHandle>);

	TSse3 = class(TCoreClrGenericImport<ISse3Class, ISse3>);

	TSsse3 = class(TCoreClrGenericImport<ISsse3Class, ISsse3>);

	TSse41 = class(TCoreClrGenericImport<ISse41Class, ISse41>);

	TSse42 = class(TCoreClrGenericImport<ISse42Class, ISse42>);

	TAvx = class(TCoreClrGenericImport<IAvxClass, IAvx>);

	TX64_11 = class(TCoreClrGenericImport<IX64_11Class, IX64_11>);

	TX64_14 = class(TCoreClrGenericImport<IX64_14Class, IX64_14>);

	TX64_12 = class(TCoreClrGenericImport<IX64_12Class, IX64_12>);

	TX64_13 = class(TCoreClrGenericImport<IX64_13Class, IX64_13>);

	TX64_1 = class(TCoreClrGenericImport<IX64_1Class, IX64_1>);

	TAvx2 = class(TCoreClrGenericImport<IAvx2Class, IAvx2>);

	TX64_2 = class(TCoreClrGenericImport<IX64_2Class, IX64_2>);

	TBinaryPrimitives = class(TCoreClrGenericImport<IBinaryPrimitivesClass, IBinaryPrimitives>);

	TIDisposable = class(TCoreClrGenericImport<ICoreClrClass, IIDisposable>);

	TBIND_OPTS = class(TCoreClrGenericImport<ICoreClrClass, IBIND_OPTS>);

	TBinder = class(TCoreClrGenericImport<ICoreClrClass, IBinder>);

	TBINDPTR = class(TCoreClrGenericImport<ICoreClrClass, IBINDPTR>);

	TBitConverter = class(TCoreClrGenericImport<IBitConverterClass, IBitConverter>);

	TBitOperations = class(TCoreClrGenericImport<IBitOperationsClass, IBitOperations>);

	TBmi1 = class(TCoreClrGenericImport<IBmi1Class, IBmi1>);

	TX64_3 = class(TCoreClrGenericImport<IX64_3Class, IX64_3>);

	TBmi2 = class(TCoreClrGenericImport<IBmi2Class, IBmi2>);

	TX64_4 = class(TCoreClrGenericImport<IX64_4Class, IX64_4>);

	TBoolean = class(TCoreClrGenericImport<IBooleanClass, IBoolean>);

	TBuffer = class(TCoreClrGenericImport<IBufferClass, IBuffer>);

	TStream = class(TCoreClrGenericImport<IStreamClass, IStream>);

	TByte = class(TCoreClrGenericImport<IByteClass, IByte>);

	TEqualityComparer<T> = class(TCoreClrGenericImport<IEqualityComparerClass<T>, IEqualityComparer<T>>);

	TCalendar = class(TCoreClrGenericImport<ICalendarClass, ICalendar>);

	TCancellationTokenRegistration = class(TCoreClrGenericImport<ICoreClrClass, ICancellationTokenRegistration>);

	TChar = class(TCoreClrGenericImport<ICharClass, IChar>);

	TCharEnumerator = class(TCoreClrGenericImport<ICoreClrClass, ICharEnumerator>);

	TCharUnicodeInfo = class(TCoreClrGenericImport<ICharUnicodeInfoClass, ICharUnicodeInfo>);

	TEastAsianLunisolarCalendar = class(TCoreClrGenericImport<ICoreClrClass, IEastAsianLunisolarCalendar>);

	TChunkEnumerator = class(TCoreClrGenericImport<ICoreClrClass, IChunkEnumerator>);

	TSecurityAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityAttribute>);

	TCodeAccessSecurityAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICodeAccessSecurityAttribute>);

	TCollectionsMarshal = class(TCoreClrGenericImport<ICollectionsMarshalClass, ICollectionsMarshal>);

	TComEventsHelper = class(TCoreClrGenericImport<IComEventsHelperClass, IComEventsHelper>);

	TComInterfaceDispatch = class(TCoreClrGenericImport<IComInterfaceDispatchClass, IComInterfaceDispatch>);

	TComInterfaceEntry = class(TCoreClrGenericImport<ICoreClrClass, IComInterfaceEntry>);

	TIDeserializationCallback = class(TCoreClrGenericImport<ICoreClrClass, IIDeserializationCallback>);

	TCompareInfo = class(TCoreClrGenericImport<ICompareInfoClass, ICompareInfo>);

	TComparer<T> = class(TCoreClrGenericImport<IComparerClass<T>, IComparer<T>>);

	TCompressedStack = class(TCoreClrGenericImport<ICompressedStackClass, ICompressedStack>);

	TComWrappers = class(TCoreClrGenericImport<IComWrappersClass, IComWrappers>);

	TConfiguredAsyncDisposable = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredAsyncDisposable>);

	TConfiguredCancelableAsyncEnumerable<T> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredCancelableAsyncEnumerable<T>>);

	TConfiguredCancelableAsyncEnumerable_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredCancelableAsyncEnumerable_Enumerator<T>>);

	TConfiguredTaskAwaitable = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredTaskAwaitable>);

	TConfiguredTaskAwaiter = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredTaskAwaiter>);

	TConfiguredTaskAwaitable<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredTaskAwaitable<TResult>>);

	TConfiguredTaskAwaitable_ConfiguredTaskAwaiter<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredTaskAwaitable_ConfiguredTaskAwaiter<TResult>>);

	TConfiguredValueTaskAwaitable = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredValueTaskAwaitable>);

	TConfiguredValueTaskAwaiter = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredValueTaskAwaiter>);

	TConfiguredValueTaskAwaitable<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredValueTaskAwaitable<TResult>>);

	TConfiguredValueTaskAwaitable_ConfiguredValueTaskAwaiter<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IConfiguredValueTaskAwaitable_ConfiguredValueTaskAwaiter<TResult>>);

	TCONNECTDATA = class(TCoreClrGenericImport<ICoreClrClass, ICONNECTDATA>);

	TICustomAttributeProvider = class(TCoreClrGenericImport<ICoreClrClass, IICustomAttributeProvider>);

	TMemberInfo = class(TCoreClrGenericImport<ICoreClrClass, IMemberInfo>);

	TMethodBase = class(TCoreClrGenericImport<IMethodBaseClass, IMethodBase>);

	TConstructorInfo = class(TCoreClrGenericImport<IConstructorInfoClass, IConstructorInfo>);

	TConstructorBuilder = class(TCoreClrGenericImport<ICoreClrClass, IConstructorBuilder>);

	TContextBoundObject = class(TCoreClrGenericImport<ICoreClrClass, IContextBoundObject>);

	TContract = class(TCoreClrGenericImport<IContractClass, IContract>);

	TContractHelper = class(TCoreClrGenericImport<IContractHelperClass, IContractHelper>);

	TConvert = class(TCoreClrGenericImport<IConvertClass, IConvert>);

	TCrc32 = class(TCoreClrGenericImport<ICrc32Class, ICrc32>);

	TCriticalFinalizerObject = class(TCoreClrGenericImport<ICoreClrClass, ICriticalFinalizerObject>);

	TCriticalHandle = class(TCoreClrGenericImport<ICoreClrClass, ICriticalHandle>);

	TCriticalHandleMinusOneIsInvalid = class(TCoreClrGenericImport<ICoreClrClass, ICriticalHandleMinusOneIsInvalid>);

	TCriticalHandleZeroOrMinusOneIsInvalid = class(TCoreClrGenericImport<ICoreClrClass, ICriticalHandleZeroOrMinusOneIsInvalid>);

	TStringComparer = class(TCoreClrGenericImport<IStringComparerClass, IStringComparer>);

	TCultureAwareComparer = class(TCoreClrGenericImport<ICoreClrClass, ICultureAwareComparer>);

	TCustomAttributeData = class(TCoreClrGenericImport<ICustomAttributeDataClass, ICustomAttributeData>);

	TCustomAttributeExtensions = class(TCoreClrGenericImport<ICustomAttributeExtensionsClass, ICustomAttributeExtensions>);

	TCustomConstantAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICustomConstantAttribute>);

	TDBNull = class(TCoreClrGenericImport<IDBNullClass, IDBNull>);

	TDebug = class(TCoreClrGenericImport<IDebugClass, IDebug>);

	TDebugger = class(TCoreClrGenericImport<IDebuggerClass, IDebugger>);

	TDecoder = class(TCoreClrGenericImport<ICoreClrClass, IDecoder>);

	TDecoderFallback = class(TCoreClrGenericImport<IDecoderFallbackClass, IDecoderFallback>);

	TDecoderFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IDecoderFallbackBuffer>);

	TDelegate = class(TCoreClrGenericImport<IDelegateClass, IDelegate>);

	TDESCUNION = class(TCoreClrGenericImport<ICoreClrClass, IDESCUNION>);

	TDESCUNION_1 = class(TCoreClrGenericImport<ICoreClrClass, IDESCUNION_1>);

	TDeserializationToken = class(TCoreClrGenericImport<ICoreClrClass, IDeserializationToken>);

	TDiagnosticCounter = class(TCoreClrGenericImport<ICoreClrClass, IDiagnosticCounter>);

	TDictionary_Enumerator<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IDictionary_Enumerator<TKey,TValue>>);

	TKeyCollection_Enumerator<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IKeyCollection_Enumerator<TKey,TValue>>);

	TValueCollection_Enumerator<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IValueCollection_Enumerator<TKey,TValue>>);

	TDISPPARAMS = class(TCoreClrGenericImport<ICoreClrClass, IDISPPARAMS>);

	TDouble = class(TCoreClrGenericImport<IDoubleClass, IDouble>);

	TDp = class(TCoreClrGenericImport<IDpClass, IDp>);

	TDynamicILInfo = class(TCoreClrGenericImport<ICoreClrClass, IDynamicILInfo>);

	TMethodInfo = class(TCoreClrGenericImport<ICoreClrClass, IMethodInfo>);

	TELEMDESC = class(TCoreClrGenericImport<ICoreClrClass, IELEMDESC>);

	TEncoder = class(TCoreClrGenericImport<ICoreClrClass, IEncoder>);

	TEncoderFallback = class(TCoreClrGenericImport<IEncoderFallbackClass, IEncoderFallback>);

	TEncoderFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IEncoderFallbackBuffer>);

	TEnum = class(TCoreClrGenericImport<IEnumClass, IEnum>);

	TType = class(TCoreClrGenericImport<ITypeClass, IType>);

	TTypeInfo = class(TCoreClrGenericImport<ICoreClrClass, ITypeInfo>);

	TEnumBuilder = class(TCoreClrGenericImport<ICoreClrClass, IEnumBuilder>);

	TEnumEqualityComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IEnumEqualityComparer<T>>);

	THashSet_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IHashSet_Enumerator<T>>);

	TList_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IList_Enumerator<T>>);

	TReadOnlySpan_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IReadOnlySpan_Enumerator<T>>);

	TSpan_Enumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, ISpan_Enumerator<T>>);

	TEnvironment = class(TCoreClrGenericImport<IEnvironmentClass, IEnvironment>);

	TEventBuilder = class(TCoreClrGenericImport<ICoreClrClass, IEventBuilder>);

	TEventCommandEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IEventCommandEventArgs>);

	TEventData = class(TCoreClrGenericImport<ICoreClrClass, IEventData>);

	TEventInfo = class(TCoreClrGenericImport<ICoreClrClass, IEventInfo>);

	TEventSourceOptions = class(TCoreClrGenericImport<ICoreClrClass, IEventSourceOptions>);

	TEventToken = class(TCoreClrGenericImport<IEventTokenClass, IEventToken>);

	TEventWrittenEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IEventWrittenEventArgs>);

	TEXCEPINFO = class(TCoreClrGenericImport<ICoreClrClass, IEXCEPINFO>);

	TExceptionDispatchInfo = class(TCoreClrGenericImport<IExceptionDispatchInfoClass, IExceptionDispatchInfo>);

	TExceptionHandlingClause = class(TCoreClrGenericImport<ICoreClrClass, IExceptionHandlingClause>);

	TExecutionContext = class(TCoreClrGenericImport<IExecutionContextClass, IExecutionContext>);

	TFieldInfo = class(TCoreClrGenericImport<IFieldInfoClass, IFieldInfo>);

	TFieldBuilder = class(TCoreClrGenericImport<ICoreClrClass, IFieldBuilder>);

	TFieldToken = class(TCoreClrGenericImport<IFieldTokenClass, IFieldToken>);

	TFILETIME = class(TCoreClrGenericImport<ICoreClrClass, IFILETIME>);

	TFma = class(TCoreClrGenericImport<IFmaClass, IFma>);

	TX64_5 = class(TCoreClrGenericImport<IX64_5Class, IX64_5>);

	TIFormattable = class(TCoreClrGenericImport<ICoreClrClass, IIFormattable>);

	TFormattableString = class(TCoreClrGenericImport<IFormattableStringClass, IFormattableString>);

	TFormattableStringFactory = class(TCoreClrGenericImport<IFormattableStringFactoryClass, IFormattableStringFactory>);

	TIEquatable<T> = class(TCoreClrGenericImport<ICoreClrClass, IIEquatable<T>>);

	TFUNCDESC = class(TCoreClrGenericImport<ICoreClrClass, IFUNCDESC>);

	TGC = class(TCoreClrGenericImport<IGCClass, IGC>);

	TGCGenerationInfo = class(TCoreClrGenericImport<ICoreClrClass, IGCGenerationInfo>);

	TGCHandle = class(TCoreClrGenericImport<IGCHandleClass, IGCHandle>);

	TGCMemoryInfo = class(TCoreClrGenericImport<ICoreClrClass, IGCMemoryInfo>);

	TGCSettings = class(TCoreClrGenericImport<IGCSettingsClass, IGCSettings>);

	TGenericTypeParameterBuilder = class(TCoreClrGenericImport<ICoreClrClass, IGenericTypeParameterBuilder>);

	TGlobalizationExtensions = class(TCoreClrGenericImport<IGlobalizationExtensionsClass, IGlobalizationExtensions>);

	THalf = class(TCoreClrGenericImport<IHalfClass, IHalf>);

	THashCode = class(TCoreClrGenericImport<IHashCodeClass, IHashCode>);

	TIAsyncDisposable = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncDisposable>);

	TIAsyncEnumerable<T> = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncEnumerable<T>>);

	TIAsyncEnumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncEnumerator<T>>);

	TIAsyncResult = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncResult>);

	TIAsyncStateMachine = class(TCoreClrGenericImport<ICoreClrClass, IIAsyncStateMachine>);

	TIBindCtx = class(TCoreClrGenericImport<ICoreClrClass, IIBindCtx>);

	TICastable = class(TCoreClrGenericImport<ICoreClrClass, IICastable>);

	TICollection = class(TCoreClrGenericImport<ICoreClrClass, IICollection>);

	TICollection<T> = class(TCoreClrGenericImport<ICoreClrClass, IICollection<T>>);

	TIComparable = class(TCoreClrGenericImport<ICoreClrClass, IIComparable>);

	TIComparable<T> = class(TCoreClrGenericImport<ICoreClrClass, IIComparable<T>>);

	TIComparer = class(TCoreClrGenericImport<ICoreClrClass, IIComparer>);

	TIComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IIComparer<T>>);

	TIConnectionPoint = class(TCoreClrGenericImport<ICoreClrClass, IIConnectionPoint>);

	TIConnectionPointContainer = class(TCoreClrGenericImport<ICoreClrClass, IIConnectionPointContainer>);

	TIConvertible = class(TCoreClrGenericImport<ICoreClrClass, IIConvertible>);

	TICriticalNotifyCompletion = class(TCoreClrGenericImport<ICoreClrClass, IICriticalNotifyCompletion>);

	TICustomAdapter = class(TCoreClrGenericImport<ICoreClrClass, IICustomAdapter>);

	TICustomFactory = class(TCoreClrGenericImport<ICoreClrClass, IICustomFactory>);

	TICustomFormatter = class(TCoreClrGenericImport<ICoreClrClass, IICustomFormatter>);

	TICustomMarshaler = class(TCoreClrGenericImport<ICoreClrClass, IICustomMarshaler>);

	TICustomQueryInterface = class(TCoreClrGenericImport<ICoreClrClass, IICustomQueryInterface>);

	TIDictionary = class(TCoreClrGenericImport<ICoreClrClass, IIDictionary>);

	TIDictionary<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IIDictionary<TKey,TValue>>);

	TIDictionaryEnumerator = class(TCoreClrGenericImport<ICoreClrClass, IIDictionaryEnumerator>);

	TIDLDESC = class(TCoreClrGenericImport<ICoreClrClass, IIDLDESC>);

	TIDynamicInterfaceCastable = class(TCoreClrGenericImport<ICoreClrClass, IIDynamicInterfaceCastable>);

	TIEnumConnectionPoints = class(TCoreClrGenericImport<ICoreClrClass, IIEnumConnectionPoints>);

	TIEnumConnections = class(TCoreClrGenericImport<ICoreClrClass, IIEnumConnections>);

	TIEnumerable = class(TCoreClrGenericImport<ICoreClrClass, IIEnumerable>);

	TIEnumerable<T> = class(TCoreClrGenericImport<ICoreClrClass, IIEnumerable<T>>);

	TIEnumerator = class(TCoreClrGenericImport<ICoreClrClass, IIEnumerator>);

	TIEnumerator<T> = class(TCoreClrGenericImport<ICoreClrClass, IIEnumerator<T>>);

	TIEnumMoniker = class(TCoreClrGenericImport<ICoreClrClass, IIEnumMoniker>);

	TIEnumString = class(TCoreClrGenericImport<ICoreClrClass, IIEnumString>);

	TIEnumVARIANT = class(TCoreClrGenericImport<ICoreClrClass, IIEnumVARIANT>);

	TIEqualityComparer = class(TCoreClrGenericImport<ICoreClrClass, IIEqualityComparer>);

	TIEqualityComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IIEqualityComparer<T>>);

	TIFormatProvider = class(TCoreClrGenericImport<ICoreClrClass, IIFormatProvider>);

	TIFormatterConverter = class(TCoreClrGenericImport<ICoreClrClass, IIFormatterConverter>);

	TIHashCodeProvider = class(TCoreClrGenericImport<ICoreClrClass, IIHashCodeProvider>);

	TIIdentity = class(TCoreClrGenericImport<ICoreClrClass, IIIdentity>);

	TILGenerator = class(TCoreClrGenericImport<ICoreClrClass, IILGenerator>);

	TIList = class(TCoreClrGenericImport<ICoreClrClass, IIList>);

	TIList<T> = class(TCoreClrGenericImport<ICoreClrClass, IIList<T>>);

	TIMemoryOwner<T> = class(TCoreClrGenericImport<ICoreClrClass, IIMemoryOwner<T>>);

	TIMoniker = class(TCoreClrGenericImport<ICoreClrClass, IIMoniker>);

	TTextWriter = class(TCoreClrGenericImport<ITextWriterClass, ITextWriter>);

	TINotifyCompletion = class(TCoreClrGenericImport<ICoreClrClass, IINotifyCompletion>);

	TInt16 = class(TCoreClrGenericImport<IInt16Class, IInt16>);

	TInt32 = class(TCoreClrGenericImport<IInt32Class, IInt32>);

	TInt64 = class(TCoreClrGenericImport<IInt64Class, IInt64>);

	TInterfaceMapping = class(TCoreClrGenericImport<ICoreClrClass, IInterfaceMapping>);

	TInterlocked = class(TCoreClrGenericImport<IInterlockedClass, IInterlocked>);

	TIntrospectionExtensions = class(TCoreClrGenericImport<IIntrospectionExtensionsClass, IIntrospectionExtensions>);

	TIObjectReference = class(TCoreClrGenericImport<ICoreClrClass, IIObjectReference>);

	TIObservable<T> = class(TCoreClrGenericImport<ICoreClrClass, IIObservable<T>>);

	TIObserver<T> = class(TCoreClrGenericImport<ICoreClrClass, IIObserver<T>>);

	TIPermission = class(TCoreClrGenericImport<ICoreClrClass, IIPermission>);

	TIPersistFile = class(TCoreClrGenericImport<ICoreClrClass, IIPersistFile>);

	TIPinnable = class(TCoreClrGenericImport<ICoreClrClass, IIPinnable>);

	TIPrincipal = class(TCoreClrGenericImport<ICoreClrClass, IIPrincipal>);

	TIProducerConsumerCollection<T> = class(TCoreClrGenericImport<ICoreClrClass, IIProducerConsumerCollection<T>>);

	TIProgress<T> = class(TCoreClrGenericImport<ICoreClrClass, IIProgress<T>>);

	TIReadOnlyCollection<T> = class(TCoreClrGenericImport<ICoreClrClass, IIReadOnlyCollection<T>>);

	TIReadOnlyDictionary<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IIReadOnlyDictionary<TKey,TValue>>);

	TIReadOnlyList<T> = class(TCoreClrGenericImport<ICoreClrClass, IIReadOnlyList<T>>);

	TIReadOnlySet<T> = class(TCoreClrGenericImport<ICoreClrClass, IIReadOnlySet<T>>);

	TIReflect = class(TCoreClrGenericImport<ICoreClrClass, IIReflect>);

	TIReflectableType = class(TCoreClrGenericImport<ICoreClrClass, IIReflectableType>);

	TIResourceReader = class(TCoreClrGenericImport<ICoreClrClass, IIResourceReader>);

	TIRunningObjectTable = class(TCoreClrGenericImport<ICoreClrClass, IIRunningObjectTable>);

	TISafeSerializationData = class(TCoreClrGenericImport<ICoreClrClass, IISafeSerializationData>);

	TIsConst = class(TCoreClrGenericImport<IIsConstClass, IIsConst>);

	TISecurityEncodable = class(TCoreClrGenericImport<ICoreClrClass, IISecurityEncodable>);

	TISet<T> = class(TCoreClrGenericImport<ICoreClrClass, IISet<T>>);

	TIsExternalInit = class(TCoreClrGenericImport<IIsExternalInitClass, IIsExternalInit>);

	TISOWeek = class(TCoreClrGenericImport<IISOWeekClass, IISOWeek>);

	TIStackWalk = class(TCoreClrGenericImport<ICoreClrClass, IIStackWalk>);

	TIStream = class(TCoreClrGenericImport<ICoreClrClass, IIStream>);

	TIStrongBox = class(TCoreClrGenericImport<ICoreClrClass, IIStrongBox>);

	TIStructuralComparable = class(TCoreClrGenericImport<ICoreClrClass, IIStructuralComparable>);

	TIStructuralEquatable = class(TCoreClrGenericImport<ICoreClrClass, IIStructuralEquatable>);

	TIsVolatile = class(TCoreClrGenericImport<IIsVolatileClass, IIsVolatile>);

	TISymbolDocumentWriter = class(TCoreClrGenericImport<ICoreClrClass, IISymbolDocumentWriter>);

	TIThreadPoolWorkItem = class(TCoreClrGenericImport<ICoreClrClass, IIThreadPoolWorkItem>);

	TITuple = class(TCoreClrGenericImport<ICoreClrClass, IITuple>);

	TITypeComp = class(TCoreClrGenericImport<ICoreClrClass, IITypeComp>);

	TITypeInfo = class(TCoreClrGenericImport<ICoreClrClass, IITypeInfo>);

	TITypeInfo2 = class(TCoreClrGenericImport<ICoreClrClass, IITypeInfo2>);

	TITypeLib = class(TCoreClrGenericImport<ICoreClrClass, IITypeLib>);

	TITypeLib2 = class(TCoreClrGenericImport<ICoreClrClass, IITypeLib2>);

	TIValueTaskSource = class(TCoreClrGenericImport<ICoreClrClass, IIValueTaskSource>);

	TIValueTaskSource<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IIValueTaskSource<TResult>>);

	TKeyValuePair = class(TCoreClrGenericImport<IKeyValuePairClass, IKeyValuePair>);

	TKeywords = class(TCoreClrGenericImport<IKeywordsClass, IKeywords>);

	TKeywords_1 = class(TCoreClrGenericImport<IKeywords_1Class, IKeywords_1>);

	TKeywords_2 = class(TCoreClrGenericImport<IKeywords_2Class, IKeywords_2>);

	TLabel = class(TCoreClrGenericImport<ICoreClrClass, ILabel>);

	TLazyInitializer = class(TCoreClrGenericImport<ILazyInitializerClass, ILazyInitializer>);

	TLocalVariableInfo = class(TCoreClrGenericImport<ICoreClrClass, ILocalVariableInfo>);

	TLocalBuilder = class(TCoreClrGenericImport<ICoreClrClass, ILocalBuilder>);

	TLocalDataStoreSlot = class(TCoreClrGenericImport<ICoreClrClass, ILocalDataStoreSlot>);

	TLzcnt = class(TCoreClrGenericImport<ILzcntClass, ILzcnt>);

	TX64_6 = class(TCoreClrGenericImport<IX64_6Class, IX64_6>);

	TManualResetValueTaskSourceCore<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IManualResetValueTaskSourceCore<TResult>>);

	TMarshal = class(TCoreClrGenericImport<IMarshalClass, IMarshal>);

	TMath = class(TCoreClrGenericImport<IMathClass, IMath>);

	TMathF = class(TCoreClrGenericImport<IMathFClass, IMathF>);

	TMemoryExtensions = class(TCoreClrGenericImport<IMemoryExtensionsClass, IMemoryExtensions>);

	TMemoryManager<T> = class(TCoreClrGenericImport<ICoreClrClass, IMemoryManager<T>>);

	TMemoryMarshal = class(TCoreClrGenericImport<IMemoryMarshalClass, IMemoryMarshal>);

	TMethodBody = class(TCoreClrGenericImport<ICoreClrClass, IMethodBody>);

	TMethodBuilder = class(TCoreClrGenericImport<ICoreClrClass, IMethodBuilder>);

	TMethodToken = class(TCoreClrGenericImport<IMethodTokenClass, IMethodToken>);

	TMissing = class(TCoreClrGenericImport<IMissingClass, IMissing>);

	TModule = class(TCoreClrGenericImport<IModuleClass, IModule>);

	TModuleBuilder = class(TCoreClrGenericImport<ICoreClrClass, IModuleBuilder>);

	TModuleHandle = class(TCoreClrGenericImport<IModuleHandleClass, IModuleHandle>);

	TMonitor = class(TCoreClrGenericImport<IMonitorClass, IMonitor>);

	TMulticastDelegate = class(TCoreClrGenericImport<ICoreClrClass, IMulticastDelegate>);

	TNativeLibrary = class(TCoreClrGenericImport<INativeLibraryClass, INativeLibrary>);

	TNativeOverlapped = class(TCoreClrGenericImport<ICoreClrClass, INativeOverlapped>);

	TNlsEnumCalendarsData = class(TCoreClrGenericImport<ICoreClrClass, INlsEnumCalendarsData>);

	TNonRandomizedStringEqualityComparer = class(TCoreClrGenericImport<ICoreClrClass, INonRandomizedStringEqualityComparer>);

	TNullable = class(TCoreClrGenericImport<INullableClass, INullable>);

	TOpCode = class(TCoreClrGenericImport<ICoreClrClass, IOpCode>);

	TOpCodes = class(TCoreClrGenericImport<IOpCodesClass, IOpCodes>);

	TOrdinalComparer = class(TCoreClrGenericImport<ICoreClrClass, IOrdinalComparer>);

	TOSPlatformAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOSPlatformAttribute>);

	TPARAMDESC = class(TCoreClrGenericImport<ICoreClrClass, IPARAMDESC>);

	TParameterBuilder = class(TCoreClrGenericImport<ICoreClrClass, IParameterBuilder>);

	TParameterInfo = class(TCoreClrGenericImport<ICoreClrClass, IParameterInfo>);

	TParameterToken = class(TCoreClrGenericImport<IParameterTokenClass, IParameterToken>);

	TPath = class(TCoreClrGenericImport<IPathClass, IPath>);

	TPclmulqdq = class(TCoreClrGenericImport<IPclmulqdqClass, IPclmulqdq>);

	TX64_7 = class(TCoreClrGenericImport<IX64_7Class, IX64_7>);

	TPointer = class(TCoreClrGenericImport<IPointerClass, IPointer>);

	TPopcnt = class(TCoreClrGenericImport<IPopcntClass, IPopcnt>);

	TX64_8 = class(TCoreClrGenericImport<IX64_8Class, IX64_8>);

	TProfileOptimization = class(TCoreClrGenericImport<IProfileOptimizationClass, IProfileOptimization>);

	TPropertyInfo = class(TCoreClrGenericImport<ICoreClrClass, IPropertyInfo>);

	TPropertyBuilder = class(TCoreClrGenericImport<ICoreClrClass, IPropertyBuilder>);

	TPropertyToken = class(TCoreClrGenericImport<IPropertyTokenClass, IPropertyToken>);

	TRdm = class(TCoreClrGenericImport<IRdmClass, IRdm>);

	TReferenceEqualityComparer = class(TCoreClrGenericImport<IReferenceEqualityComparerClass, IReferenceEqualityComparer>);

	TReflectionContext = class(TCoreClrGenericImport<ICoreClrClass, IReflectionContext>);

	TRegisteredWaitHandle = class(TCoreClrGenericImport<ICoreClrClass, IRegisteredWaitHandle>);

	TRuntimeArgumentHandle = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeArgumentHandle>);

	TRuntimeFeature = class(TCoreClrGenericImport<IRuntimeFeatureClass, IRuntimeFeature>);

	TRuntimeFieldHandle = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeFieldHandle>);

	TRuntimeHelpers = class(TCoreClrGenericImport<IRuntimeHelpersClass, IRuntimeHelpers>);

	TRuntimeMethodHandle = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeMethodHandle>);

	TRuntimeReflectionExtensions = class(TCoreClrGenericImport<IRuntimeReflectionExtensionsClass, IRuntimeReflectionExtensions>);

	TRuntimeTypeHandle = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeTypeHandle>);

	TSafeHandle = class(TCoreClrGenericImport<ICoreClrClass, ISafeHandle>);

	TSafeHandleZeroOrMinusOneIsInvalid = class(TCoreClrGenericImport<ICoreClrClass, ISafeHandleZeroOrMinusOneIsInvalid>);

	TSafeBuffer = class(TCoreClrGenericImport<ICoreClrClass, ISafeBuffer>);

	TSafeHandleMinusOneIsInvalid = class(TCoreClrGenericImport<ICoreClrClass, ISafeHandleMinusOneIsInvalid>);

	TSafeSerializationEventArgs = class(TCoreClrGenericImport<ICoreClrClass, ISafeSerializationEventArgs>);

	TSByte = class(TCoreClrGenericImport<ISByteClass, ISByte>);

	TScalar = class(TCoreClrGenericImport<ICoreClrClass, IScalar>);

	TSerializationEntry = class(TCoreClrGenericImport<ICoreClrClass, ISerializationEntry>);

	TSerializationInfoEnumerator = class(TCoreClrGenericImport<ICoreClrClass, ISerializationInfoEnumerator>);

	TSessionInfo = class(TCoreClrGenericImport<ICoreClrClass, ISessionInfo>);

	TSha1 = class(TCoreClrGenericImport<ISha1Class, ISha1>);

	TSha256 = class(TCoreClrGenericImport<ISha256Class, ISha256>);

	TSignatureHelper = class(TCoreClrGenericImport<ISignatureHelperClass, ISignatureHelper>);

	TSignatureToken = class(TCoreClrGenericImport<ISignatureTokenClass, ISignatureToken>);

	TSingle = class(TCoreClrGenericImport<ISingleClass, ISingle>);

	TSortKey = class(TCoreClrGenericImport<ISortKeyClass, ISortKey>);

	TSpanRuneEnumerator = class(TCoreClrGenericImport<ICoreClrClass, ISpanRuneEnumerator>);

	TSpinWait = class(TCoreClrGenericImport<ISpinWaitClass, ISpinWait>);

	TStandardOleMarshalObject = class(TCoreClrGenericImport<ICoreClrClass, IStandardOleMarshalObject>);

	TSTATSTG = class(TCoreClrGenericImport<ICoreClrClass, ISTATSTG>);

	TTextReader = class(TCoreClrGenericImport<ITextReaderClass, ITextReader>);

	TStringNormalizationExtensions = class(TCoreClrGenericImport<IStringNormalizationExtensionsClass, IStringNormalizationExtensions>);

	TStringRuneEnumerator = class(TCoreClrGenericImport<ICoreClrClass, IStringRuneEnumerator>);

	TStringToken = class(TCoreClrGenericImport<ICoreClrClass, IStringToken>);

	TTaskAsyncEnumerableExtensions = class(TCoreClrGenericImport<ITaskAsyncEnumerableExtensionsClass, ITaskAsyncEnumerableExtensions>);

	TTaskAwaiter = class(TCoreClrGenericImport<ICoreClrClass, ITaskAwaiter>);

	TTaskAwaiter<TResult> = class(TCoreClrGenericImport<ICoreClrClass, ITaskAwaiter<TResult>>);

	TTaskExtensions = class(TCoreClrGenericImport<ITaskExtensionsClass, ITaskExtensions>);

	TTasks = class(TCoreClrGenericImport<ITasksClass, ITasks>);

	TTasks_1 = class(TCoreClrGenericImport<ITasks_1Class, ITasks_1>);

	TTaskScheduler = class(TCoreClrGenericImport<ITaskSchedulerClass, ITaskScheduler>);

	TTextElementEnumerator = class(TCoreClrGenericImport<ICoreClrClass, ITextElementEnumerator>);

	TTextInfo = class(TCoreClrGenericImport<ITextInfoClass, ITextInfo>);

	TThreadAbortException = class(TCoreClrGenericImport<ICoreClrClass, IThreadAbortException>);

	TThreadPool = class(TCoreClrGenericImport<IThreadPoolClass, IThreadPool>);

	TThreadPoolBoundHandle = class(TCoreClrGenericImport<IThreadPoolBoundHandleClass, IThreadPoolBoundHandle>);

	TThreadStartException = class(TCoreClrGenericImport<ICoreClrClass, IThreadStartException>);

	TTimeout = class(TCoreClrGenericImport<ITimeoutClass, ITimeout>);

	TTimeZone = class(TCoreClrGenericImport<ITimeZoneClass, ITimeZone>);

	TTimeZoneInfo = class(TCoreClrGenericImport<ITimeZoneInfoClass, ITimeZoneInfo>);

	TTransitionTime = class(TCoreClrGenericImport<ITransitionTimeClass, ITransitionTime>);

	TTraceLoggingEventTypes = class(TCoreClrGenericImport<ICoreClrClass, ITraceLoggingEventTypes>);

	TTuple = class(TCoreClrGenericImport<ITupleClass, ITuple>);

	TTupleExtensions = class(TCoreClrGenericImport<ITupleExtensionsClass, ITupleExtensions>);

	TTYPEATTR = class(TCoreClrGenericImport<ITYPEATTRClass, ITYPEATTR>);

	TTypeBuilder = class(TCoreClrGenericImport<ITypeBuilderClass, ITypeBuilder>);

	TTYPEDESC = class(TCoreClrGenericImport<ICoreClrClass, ITYPEDESC>);

	TTypedReference = class(TCoreClrGenericImport<ITypedReferenceClass, ITypedReference>);

	TTYPELIBATTR = class(TCoreClrGenericImport<ICoreClrClass, ITYPELIBATTR>);

	TTypeToken = class(TCoreClrGenericImport<ITypeTokenClass, ITypeToken>);

	TUInt16 = class(TCoreClrGenericImport<IUInt16Class, IUInt16>);

	TUInt32 = class(TCoreClrGenericImport<IUInt32Class, IUInt32>);

	TUInt64 = class(TCoreClrGenericImport<IUInt64Class, IUInt64>);

	TUtf8 = class(TCoreClrGenericImport<IUtf8Class, IUtf8>);

	TUtf8Formatter = class(TCoreClrGenericImport<IUtf8FormatterClass, IUtf8Formatter>);

	TUtf8Parser = class(TCoreClrGenericImport<IUtf8ParserClass, IUtf8Parser>);

	TValueTaskAwaiter = class(TCoreClrGenericImport<ICoreClrClass, IValueTaskAwaiter>);

	TValueTaskAwaiter<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IValueTaskAwaiter<TResult>>);

	TValueTuple = class(TCoreClrGenericImport<IValueTupleClass, IValueTuple>);

	TVARDESC = class(TCoreClrGenericImport<ICoreClrClass, IVARDESC>);

	TVector = class(TCoreClrGenericImport<IVectorClass, IVector>);

	TVector128 = class(TCoreClrGenericImport<IVector128Class, IVector128>);

	TVector128<T> = class(TCoreClrGenericImport<IVector128Class<T>, IVector128<T>>);

	TVector256 = class(TCoreClrGenericImport<IVector256Class, IVector256>);

	TVector256<T> = class(TCoreClrGenericImport<IVector256Class<T>, IVector256<T>>);

	TVector64 = class(TCoreClrGenericImport<IVector64Class, IVector64>);

	TVector64<T> = class(TCoreClrGenericImport<IVector64Class<T>, IVector64<T>>);

	TVersioningHelper = class(TCoreClrGenericImport<IVersioningHelperClass, IVersioningHelper>);

	TVoid = class(TCoreClrGenericImport<ICoreClrClass, IVoid>);

	TVolatile = class(TCoreClrGenericImport<IVolatileClass, IVolatile>);

	TWaitHandleExtensions = class(TCoreClrGenericImport<IWaitHandleExtensionsClass, IWaitHandleExtensions>);

	TWebUtility = class(TCoreClrGenericImport<IWebUtilityClass, IWebUtility>);

	TYieldAwaitable = class(TCoreClrGenericImport<ICoreClrClass, IYieldAwaitable>);

	TYieldAwaiter = class(TCoreClrGenericImport<ICoreClrClass, IYieldAwaiter>);

	TObject = class(TCoreClrGenericImport<IObjectClass, IObject>)
	public
		class function Create: IObject;
	end;

	TException = class(TCoreClrGenericImport<ICoreClrClass, IException>)
	public
		class function Create: IException; overload;
		class function Create(message: String): IException; overload;
		class function Create(message: String; innerException: IException): IException; overload;
	end;

	TSystemException = class(TCoreClrGenericImport<ICoreClrClass, ISystemException>)
	public
		class function Create: ISystemException; overload;
		class function Create(message: String): ISystemException; overload;
		class function Create(message: String; innerException: IException): ISystemException; overload;
	end;

	TAbandonedMutexException = class(TCoreClrGenericImport<ICoreClrClass, IAbandonedMutexException>)
	public
		class function Create: IAbandonedMutexException; overload;
		class function Create(message: String): IAbandonedMutexException; overload;
		class function Create(message: String; inner: IException): IAbandonedMutexException; overload;
		class function Create(location: Integer; handle: IWaitHandle): IAbandonedMutexException; overload;
		class function Create(message: String; location: Integer; handle: IWaitHandle): IAbandonedMutexException; overload;
		class function Create(message: String; inner: IException; location: Integer; handle: IWaitHandle): IAbandonedMutexException; overload;
	end;

	TAccessedThroughPropertyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAccessedThroughPropertyAttribute>)
	public
		class function Create(propertyName: String): IAccessedThroughPropertyAttribute;
	end;

	TAccessViolationException = class(TCoreClrGenericImport<ICoreClrClass, IAccessViolationException>)
	public
		class function Create: IAccessViolationException; overload;
		class function Create(message: String): IAccessViolationException; overload;
		class function Create(message: String; innerException: IException): IAccessViolationException; overload;
	end;

	TAggregateException = class(TCoreClrGenericImport<ICoreClrClass, IAggregateException>)
	public
		class function Create: IAggregateException; overload;
		class function Create(message: String): IAggregateException; overload;
		class function Create(innerExceptions: IIEnumerable<IException>): IAggregateException; overload;
		class function Create(innerExceptions: ICoreClrBridgeArray<IException>): IAggregateException; overload;
		class function Create(message: String; innerException: IException): IAggregateException; overload;
		class function Create(message: String; innerExceptions: IIEnumerable<IException>): IAggregateException; overload;
		class function Create(message: String; innerExceptions: ICoreClrBridgeArray<IException>): IAggregateException; overload;
	end;

	TAllowNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAllowNullAttribute>)
	public
		class function Create: IAllowNullAttribute;
	end;

	TAllowPartiallyTrustedCallersAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAllowPartiallyTrustedCallersAttribute>)
	public
		class function Create: IAllowPartiallyTrustedCallersAttribute;
	end;

	TAllowReversePInvokeCallsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAllowReversePInvokeCallsAttribute>)
	public
		class function Create: IAllowReversePInvokeCallsAttribute;
	end;

	TAmbiguousImplementationException = class(TCoreClrGenericImport<ICoreClrClass, IAmbiguousImplementationException>)
	public
		class function Create: IAmbiguousImplementationException; overload;
		class function Create(message: String): IAmbiguousImplementationException; overload;
		class function Create(message: String; innerException: IException): IAmbiguousImplementationException; overload;
	end;

	TAmbiguousMatchException = class(TCoreClrGenericImport<ICoreClrClass, IAmbiguousMatchException>)
	public
		class function Create: IAmbiguousMatchException; overload;
		class function Create(message: String): IAmbiguousMatchException; overload;
		class function Create(message: String; inner: IException): IAmbiguousMatchException; overload;
	end;

	TAppDomainUnloadedException = class(TCoreClrGenericImport<ICoreClrClass, IAppDomainUnloadedException>)
	public
		class function Create: IAppDomainUnloadedException; overload;
		class function Create(message: String): IAppDomainUnloadedException; overload;
		class function Create(message: String; innerException: IException): IAppDomainUnloadedException; overload;
	end;

	TApplicationException = class(TCoreClrGenericImport<ICoreClrClass, IApplicationException>)
	public
		class function Create: IApplicationException; overload;
		class function Create(message: String): IApplicationException; overload;
		class function Create(message: String; innerException: IException): IApplicationException; overload;
	end;

	TApplicationId = class(TCoreClrGenericImport<ICoreClrClass, IApplicationId>)
	public
		class function Create(publicKeyToken: TArray<Byte>; name: String; version: IVersion; processorArchitecture: String; culture: String): IApplicationId;
	end;

	TArgIterator = class(TCoreClrGenericImport<ICoreClrClass, IArgIterator>)
	public
		class function Create(arglist: IRuntimeArgumentHandle): IArgIterator; overload;
		class function Create(arglist: IRuntimeArgumentHandle; ptr: ICoreClrInstance): IArgIterator; overload;
	end;

	TArgumentException = class(TCoreClrGenericImport<ICoreClrClass, IArgumentException>)
	public
		class function Create: IArgumentException; overload;
		class function Create(message: String): IArgumentException; overload;
		class function Create(message: String; innerException: IException): IArgumentException; overload;
		class function Create(message: String; paramName: String): IArgumentException; overload;
		class function Create(message: String; paramName: String; innerException: IException): IArgumentException; overload;
	end;

	TArgumentNullException = class(TCoreClrGenericImport<ICoreClrClass, IArgumentNullException>)
	public
		class function Create: IArgumentNullException; overload;
		class function Create(paramName: String): IArgumentNullException; overload;
		class function Create(message: String; innerException: IException): IArgumentNullException; overload;
		class function Create(paramName: String; message: String): IArgumentNullException; overload;
	end;

	TArgumentOutOfRangeException = class(TCoreClrGenericImport<ICoreClrClass, IArgumentOutOfRangeException>)
	public
		class function Create: IArgumentOutOfRangeException; overload;
		class function Create(paramName: String): IArgumentOutOfRangeException; overload;
		class function Create(paramName: String; message: String): IArgumentOutOfRangeException; overload;
		class function Create(message: String; innerException: IException): IArgumentOutOfRangeException; overload;
		class function Create(paramName: String; actualValue: Variant; message: String): IArgumentOutOfRangeException; overload;
	end;

	TArithmeticException = class(TCoreClrGenericImport<ICoreClrClass, IArithmeticException>)
	public
		class function Create: IArithmeticException; overload;
		class function Create(message: String): IArithmeticException; overload;
		class function Create(message: String; innerException: IException): IArithmeticException; overload;
	end;

	TArrayList = class(TCoreClrGenericImport<IArrayListClass, IArrayList>)
	public
		class function Create: IArrayList; overload;
		class function Create(capacity: Integer): IArrayList; overload;
		class function Create(c: IICollection): IArrayList; overload;
	end;

	TArraySegment<T> = class(TCoreClrGenericImport<IArraySegmentClass<T>, IArraySegment<T>>)
	public
		class function Create(array_: ICoreClrBridgeArray<T>): IArraySegment<T>; overload;
		class function Create(array_: ICoreClrBridgeArray<T>; offset: Integer; count: Integer): IArraySegment<T>; overload;
	end;

	TArrayTypeMismatchException = class(TCoreClrGenericImport<ICoreClrClass, IArrayTypeMismatchException>)
	public
		class function Create: IArrayTypeMismatchException; overload;
		class function Create(message: String): IArrayTypeMismatchException; overload;
		class function Create(message: String; innerException: IException): IArrayTypeMismatchException; overload;
	end;

	TArrayWithOffset = class(TCoreClrGenericImport<ICoreClrClass, IArrayWithOffset>)
	public
		class function Create(array_: Variant; offset: Integer): IArrayWithOffset;
	end;

	TASCIIEncoding = class(TCoreClrGenericImport<ICoreClrClass, IASCIIEncoding>)
	public
		class function Create: IASCIIEncoding;
	end;

	TAssemblyAlgorithmIdAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyAlgorithmIdAttribute>)
	public
		class function Create(algorithmId: TAssemblyHashAlgorithm): IAssemblyAlgorithmIdAttribute; overload;
		class function Create(algorithmId: longword): IAssemblyAlgorithmIdAttribute; overload;
	end;

	TAssemblyCompanyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyCompanyAttribute>)
	public
		class function Create(company: String): IAssemblyCompanyAttribute;
	end;

	TAssemblyConfigurationAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyConfigurationAttribute>)
	public
		class function Create(configuration: String): IAssemblyConfigurationAttribute;
	end;

	TAssemblyCopyrightAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyCopyrightAttribute>)
	public
		class function Create(copyright: String): IAssemblyCopyrightAttribute;
	end;

	TAssemblyCultureAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyCultureAttribute>)
	public
		class function Create(culture: String): IAssemblyCultureAttribute;
	end;

	TAssemblyDefaultAliasAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyDefaultAliasAttribute>)
	public
		class function Create(defaultAlias: String): IAssemblyDefaultAliasAttribute;
	end;

	TAssemblyDelaySignAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyDelaySignAttribute>)
	public
		class function Create(delaySign: Boolean): IAssemblyDelaySignAttribute;
	end;

	TAssemblyDependencyResolver = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyDependencyResolver>)
	public
		class function Create(componentAssemblyPath: String): IAssemblyDependencyResolver;
	end;

	TAssemblyDescriptionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyDescriptionAttribute>)
	public
		class function Create(description: String): IAssemblyDescriptionAttribute;
	end;

	TAssemblyFileVersionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyFileVersionAttribute>)
	public
		class function Create(version: String): IAssemblyFileVersionAttribute;
	end;

	TAssemblyFlagsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyFlagsAttribute>)
	public
		class function Create(flags: longword): IAssemblyFlagsAttribute; overload;
		class function Create(assemblyFlags: Integer): IAssemblyFlagsAttribute; overload;
		class function Create(assemblyFlags: TAssemblyNameFlags_Set): IAssemblyFlagsAttribute; overload;
	end;

	TAssemblyInformationalVersionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyInformationalVersionAttribute>)
	public
		class function Create(informationalVersion: String): IAssemblyInformationalVersionAttribute;
	end;

	TAssemblyKeyFileAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyKeyFileAttribute>)
	public
		class function Create(keyFile: String): IAssemblyKeyFileAttribute;
	end;

	TAssemblyKeyNameAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyKeyNameAttribute>)
	public
		class function Create(keyName: String): IAssemblyKeyNameAttribute;
	end;

	TAssemblyLoadContext = class(TCoreClrGenericImport<IAssemblyLoadContextClass, IAssemblyLoadContext>)
	public
		class function Create(name: String; isCollectible: Boolean): IAssemblyLoadContext;
	end;

	TEventArgs = class(TCoreClrGenericImport<IEventArgsClass, IEventArgs>)
	public
		class function Create: IEventArgs;
	end;

	TAssemblyLoadEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyLoadEventArgs>)
	public
		class function Create(loadedAssembly: IAssembly): IAssemblyLoadEventArgs;
	end;

	TAssemblyMetadataAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyMetadataAttribute>)
	public
		class function Create(key: String; value: String): IAssemblyMetadataAttribute;
	end;

	TAssemblyName = class(TCoreClrGenericImport<IAssemblyNameClass, IAssemblyName>)
	public
		class function Create(assemblyName: String): IAssemblyName; overload;
		class function Create: IAssemblyName; overload;
	end;

	TAssemblyNameProxy = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyNameProxy>)
	public
		class function Create: IAssemblyNameProxy;
	end;

	TAssemblyProductAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyProductAttribute>)
	public
		class function Create(product: String): IAssemblyProductAttribute;
	end;

	TAssemblySignatureKeyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblySignatureKeyAttribute>)
	public
		class function Create(publicKey: String; countersignature: String): IAssemblySignatureKeyAttribute;
	end;

	TAssemblyTargetedPatchBandAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyTargetedPatchBandAttribute>)
	public
		class function Create(targetedPatchBand: String): IAssemblyTargetedPatchBandAttribute;
	end;

	TAssemblyTitleAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyTitleAttribute>)
	public
		class function Create(title: String): IAssemblyTitleAttribute;
	end;

	TAssemblyTrademarkAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyTrademarkAttribute>)
	public
		class function Create(trademark: String): IAssemblyTrademarkAttribute;
	end;

	TAssemblyVersionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAssemblyVersionAttribute>)
	public
		class function Create(version: String): IAssemblyVersionAttribute;
	end;

	TStateMachineAttribute = class(TCoreClrGenericImport<ICoreClrClass, IStateMachineAttribute>)
	public
		class function Create(stateMachineType: IType): IStateMachineAttribute;
	end;

	TAsyncIteratorStateMachineAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAsyncIteratorStateMachineAttribute>)
	public
		class function Create(stateMachineType: IType): IAsyncIteratorStateMachineAttribute;
	end;

	TAsyncLocal<T> = class(TCoreClrGenericImport<ICoreClrClass, IAsyncLocal<T>>)
	public
		class function Create: IAsyncLocal<T>; overload;
		class function Create(valueChangedHandler: TClrAction<IAsyncLocalValueChangedArgs<T>>): IAsyncLocal<T>; overload;
	end;

	TAsyncMethodBuilderAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAsyncMethodBuilderAttribute>)
	public
		class function Create(builderType: IType): IAsyncMethodBuilderAttribute;
	end;

	TAsyncStateMachineAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAsyncStateMachineAttribute>)
	public
		class function Create(stateMachineType: IType): IAsyncStateMachineAttribute;
	end;

	TAttributeUsageAttribute = class(TCoreClrGenericImport<ICoreClrClass, IAttributeUsageAttribute>)
	public
		class function Create(validOn: TAttributeTargets_Set): IAttributeUsageAttribute;
	end;

	TEventWaitHandle = class(TCoreClrGenericImport<IEventWaitHandleClass, IEventWaitHandle>)
	public
		class function Create(initialState: Boolean; mode: TEventResetMode): IEventWaitHandle; overload;
		class function Create(initialState: Boolean; mode: TEventResetMode; name: String): IEventWaitHandle; overload;
		class function Create(initialState: Boolean; mode: TEventResetMode; name: String; var createdNew: Boolean): IEventWaitHandle; overload;
	end;

	TAutoResetEvent = class(TCoreClrGenericImport<ICoreClrClass, IAutoResetEvent>)
	public
		class function Create(initialState: Boolean): IAutoResetEvent;
	end;

	TBadImageFormatException = class(TCoreClrGenericImport<ICoreClrClass, IBadImageFormatException>)
	public
		class function Create: IBadImageFormatException; overload;
		class function Create(message: String): IBadImageFormatException; overload;
		class function Create(message: String; inner: IException): IBadImageFormatException; overload;
		class function Create(message: String; fileName: String): IBadImageFormatException; overload;
		class function Create(message: String; fileName: String; inner: IException): IBadImageFormatException; overload;
	end;

	TBestFitMappingAttribute = class(TCoreClrGenericImport<ICoreClrClass, IBestFitMappingAttribute>)
	public
		class function Create(BestFitMapping: Boolean): IBestFitMappingAttribute;
	end;

	TBinaryReader = class(TCoreClrGenericImport<ICoreClrClass, IBinaryReader>)
	public
		class function Create(input: IStream): IBinaryReader; overload;
		class function Create(input: IStream; encoding: IEncoding): IBinaryReader; overload;
		class function Create(input: IStream; encoding: IEncoding; leaveOpen: Boolean): IBinaryReader; overload;
	end;

	TBinaryWriter = class(TCoreClrGenericImport<IBinaryWriterClass, IBinaryWriter>)
	public
		class function Create(output: IStream): IBinaryWriter; overload;
		class function Create(output: IStream; encoding: IEncoding): IBinaryWriter; overload;
		class function Create(output: IStream; encoding: IEncoding; leaveOpen: Boolean): IBinaryWriter; overload;
	end;

	TBStrWrapper = class(TCoreClrGenericImport<ICoreClrClass, IBStrWrapper>)
	public
		class function Create(value: String): IBStrWrapper; overload;
		class function Create(value: Variant): IBStrWrapper; overload;
	end;

	TBufferedStream = class(TCoreClrGenericImport<ICoreClrClass, IBufferedStream>)
	public
		class function Create(stream: IStream): IBufferedStream; overload;
		class function Create(stream: IStream; bufferSize: Integer): IBufferedStream; overload;
	end;

	TByteEqualityComparer = class(TCoreClrGenericImport<ICoreClrClass, IByteEqualityComparer>)
	public
		class function Create: IByteEqualityComparer;
	end;

	TCallConvCdecl = class(TCoreClrGenericImport<ICoreClrClass, ICallConvCdecl>)
	public
		class function Create: ICallConvCdecl;
	end;

	TCallConvFastcall = class(TCoreClrGenericImport<ICoreClrClass, ICallConvFastcall>)
	public
		class function Create: ICallConvFastcall;
	end;

	TCallConvStdcall = class(TCoreClrGenericImport<ICoreClrClass, ICallConvStdcall>)
	public
		class function Create: ICallConvStdcall;
	end;

	TCallConvThiscall = class(TCoreClrGenericImport<ICoreClrClass, ICallConvThiscall>)
	public
		class function Create: ICallConvThiscall;
	end;

	TCallerArgumentExpressionAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICallerArgumentExpressionAttribute>)
	public
		class function Create(parameterName: String): ICallerArgumentExpressionAttribute;
	end;

	TCallerFilePathAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICallerFilePathAttribute>)
	public
		class function Create: ICallerFilePathAttribute;
	end;

	TCallerLineNumberAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICallerLineNumberAttribute>)
	public
		class function Create: ICallerLineNumberAttribute;
	end;

	TCallerMemberNameAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICallerMemberNameAttribute>)
	public
		class function Create: ICallerMemberNameAttribute;
	end;

	TCancellationToken = class(TCoreClrGenericImport<ICancellationTokenClass, ICancellationToken>)
	public
		class function Create(canceled: Boolean): ICancellationToken;
	end;

	TCancellationTokenSource = class(TCoreClrGenericImport<ICancellationTokenSourceClass, ICancellationTokenSource>)
	public
		class function Create: ICancellationTokenSource; overload;
		class function Create(delay: ITimeSpan): ICancellationTokenSource; overload;
		class function Create(millisecondsDelay: Integer): ICancellationTokenSource; overload;
	end;

	TCannotUnloadAppDomainException = class(TCoreClrGenericImport<ICoreClrClass, ICannotUnloadAppDomainException>)
	public
		class function Create: ICannotUnloadAppDomainException; overload;
		class function Create(message: String): ICannotUnloadAppDomainException; overload;
		class function Create(message: String; innerException: IException): ICannotUnloadAppDomainException; overload;
	end;

	TChineseLunisolarCalendar = class(TCoreClrGenericImport<IChineseLunisolarCalendarClass, IChineseLunisolarCalendar>)
	public
		class function Create: IChineseLunisolarCalendar;
	end;

	TClassInterfaceAttribute = class(TCoreClrGenericImport<ICoreClrClass, IClassInterfaceAttribute>)
	public
		class function Create(classInterfaceType: TClassInterfaceType): IClassInterfaceAttribute; overload;
		class function Create(classInterfaceType: SmallInt): IClassInterfaceAttribute; overload;
	end;

	TCLSCompliantAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICLSCompliantAttribute>)
	public
		class function Create(isCompliant: Boolean): ICLSCompliantAttribute;
	end;

	TCoClassAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICoClassAttribute>)
	public
		class function Create(coClass: IType): ICoClassAttribute;
	end;

	TCollection<T> = class(TCoreClrGenericImport<ICoreClrClass, ICollection<T>>)
	public
		class function Create: ICollection<T>; overload;
		class function Create(list: IIList<T>): ICollection<T>; overload;
	end;

	TComDefaultInterfaceAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComDefaultInterfaceAttribute>)
	public
		class function Create(defaultInterface: IType): IComDefaultInterfaceAttribute;
	end;

	TComEventInterfaceAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComEventInterfaceAttribute>)
	public
		class function Create(SourceInterface: IType; EventProvider: IType): IComEventInterfaceAttribute;
	end;

	TExternalException = class(TCoreClrGenericImport<ICoreClrClass, IExternalException>)
	public
		class function Create: IExternalException; overload;
		class function Create(message: String): IExternalException; overload;
		class function Create(message: String; inner: IException): IExternalException; overload;
		class function Create(message: String; errorCode: Integer): IExternalException; overload;
	end;

	TCOMException = class(TCoreClrGenericImport<ICoreClrClass, ICOMException>)
	public
		class function Create: ICOMException; overload;
		class function Create(message: String): ICOMException; overload;
		class function Create(message: String; inner: IException): ICOMException; overload;
		class function Create(message: String; errorCode: Integer): ICOMException; overload;
	end;

	TComImportAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComImportAttribute>)
	public
		class function Create: IComImportAttribute;
	end;

	TComparer = class(TCoreClrGenericImport<IComparerClass, IComparer>)
	public
		class function Create(culture: ICultureInfo): IComparer;
	end;

	TCompilationRelaxationsAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICompilationRelaxationsAttribute>)
	public
		class function Create(relaxations: Integer): ICompilationRelaxationsAttribute; overload;
		class function Create(relaxations: TCompilationRelaxations_Set): ICompilationRelaxationsAttribute; overload;
	end;

	TCompilerGeneratedAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICompilerGeneratedAttribute>)
	public
		class function Create: ICompilerGeneratedAttribute;
	end;

	TCompilerGlobalScopeAttribute = class(TCoreClrGenericImport<ICoreClrClass, ICompilerGlobalScopeAttribute>)
	public
		class function Create: ICompilerGlobalScopeAttribute;
	end;

	TComponentGuaranteesAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComponentGuaranteesAttribute>)
	public
		class function Create(guarantees: TComponentGuaranteesOptions_Set): IComponentGuaranteesAttribute;
	end;

	TComSourceInterfacesAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComSourceInterfacesAttribute>)
	public
		class function Create(sourceInterfaces: String): IComSourceInterfacesAttribute; overload;
		class function Create(sourceInterface: IType): IComSourceInterfacesAttribute; overload;
		class function Create(sourceInterface1: IType; sourceInterface2: IType): IComSourceInterfacesAttribute; overload;
		class function Create(sourceInterface1: IType; sourceInterface2: IType; sourceInterface3: IType): IComSourceInterfacesAttribute; overload;
		class function Create(sourceInterface1: IType; sourceInterface2: IType; sourceInterface3: IType; sourceInterface4: IType): IComSourceInterfacesAttribute; overload;
	end;

	TComVisibleAttribute = class(TCoreClrGenericImport<ICoreClrClass, IComVisibleAttribute>)
	public
		class function Create(visibility: Boolean): IComVisibleAttribute;
	end;

	TConcurrentExclusiveSchedulerPair = class(TCoreClrGenericImport<ICoreClrClass, IConcurrentExclusiveSchedulerPair>)
	public
		class function Create: IConcurrentExclusiveSchedulerPair; overload;
		class function Create(taskScheduler: ITaskScheduler): IConcurrentExclusiveSchedulerPair; overload;
		class function Create(taskScheduler: ITaskScheduler; maxConcurrencyLevel: Integer): IConcurrentExclusiveSchedulerPair; overload;
		class function Create(taskScheduler: ITaskScheduler; maxConcurrencyLevel: Integer; maxItemsPerTask: Integer): IConcurrentExclusiveSchedulerPair; overload;
	end;

	TConcurrentQueue<T> = class(TCoreClrGenericImport<ICoreClrClass, IConcurrentQueue<T>>)
	public
		class function Create: IConcurrentQueue<T>; overload;
		class function Create(collection: IIEnumerable<T>): IConcurrentQueue<T>; overload;
	end;

	TConditionalAttribute = class(TCoreClrGenericImport<ICoreClrClass, IConditionalAttribute>)
	public
		class function Create(conditionString: String): IConditionalAttribute;
	end;

	TConditionalWeakTable<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IConditionalWeakTable<TKey,TValue>>)
	public
		class function Create: IConditionalWeakTable<TKey,TValue>;
	end;

	TContextMarshalException = class(TCoreClrGenericImport<ICoreClrClass, IContextMarshalException>)
	public
		class function Create: IContextMarshalException; overload;
		class function Create(message: String): IContextMarshalException; overload;
		class function Create(message: String; inner: IException): IContextMarshalException; overload;
	end;

	TContextStaticAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContextStaticAttribute>)
	public
		class function Create: IContextStaticAttribute;
	end;

	TContractAbbreviatorAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractAbbreviatorAttribute>)
	public
		class function Create: IContractAbbreviatorAttribute;
	end;

	TContractArgumentValidatorAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractArgumentValidatorAttribute>)
	public
		class function Create: IContractArgumentValidatorAttribute;
	end;

	TContractClassAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractClassAttribute>)
	public
		class function Create(typeContainingContracts: IType): IContractClassAttribute;
	end;

	TContractClassForAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractClassForAttribute>)
	public
		class function Create(typeContractsAreFor: IType): IContractClassForAttribute;
	end;

	TContractException = class(TCoreClrGenericImport<ICoreClrClass, IContractException>)
	public
		class function Create(kind: TContractFailureKind; failure: String; userMessage: String; condition: String; innerException: IException): IContractException;
	end;

	TContractFailedEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IContractFailedEventArgs>)
	public
		class function Create(failureKind: TContractFailureKind; message: String; condition: String; originalException: IException): IContractFailedEventArgs;
	end;

	TContractInvariantMethodAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractInvariantMethodAttribute>)
	public
		class function Create: IContractInvariantMethodAttribute;
	end;

	TContractOptionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractOptionAttribute>)
	public
		class function Create(category: String; setting: String; enabled: Boolean): IContractOptionAttribute; overload;
		class function Create(category: String; setting: String; value: String): IContractOptionAttribute; overload;
	end;

	TContractPublicPropertyNameAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractPublicPropertyNameAttribute>)
	public
		class function Create(name: String): IContractPublicPropertyNameAttribute;
	end;

	TContractReferenceAssemblyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractReferenceAssemblyAttribute>)
	public
		class function Create: IContractReferenceAssemblyAttribute;
	end;

	TContractRuntimeIgnoredAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractRuntimeIgnoredAttribute>)
	public
		class function Create: IContractRuntimeIgnoredAttribute;
	end;

	TContractVerificationAttribute = class(TCoreClrGenericImport<ICoreClrClass, IContractVerificationAttribute>)
	public
		class function Create(value: Boolean): IContractVerificationAttribute;
	end;

	TCryptographicException = class(TCoreClrGenericImport<ICoreClrClass, ICryptographicException>)
	public
		class function Create: ICryptographicException; overload;
		class function Create(hr: Integer): ICryptographicException; overload;
		class function Create(message: String): ICryptographicException; overload;
		class function Create(message: String; inner: IException): ICryptographicException; overload;
		class function Create(format: String; insert: String): ICryptographicException; overload;
	end;

	TCultureInfo = class(TCoreClrGenericImport<ICultureInfoClass, ICultureInfo>)
	public
		class function Create(name: String): ICultureInfo; overload;
		class function Create(culture: Integer): ICultureInfo; overload;
		class function Create(name: String; useUserOverride: Boolean): ICultureInfo; overload;
		class function Create(culture: Integer; useUserOverride: Boolean): ICultureInfo; overload;
	end;

	TCultureNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, ICultureNotFoundException>)
	public
		class function Create: ICultureNotFoundException; overload;
		class function Create(message: String): ICultureNotFoundException; overload;
		class function Create(paramName: String; message: String): ICultureNotFoundException; overload;
		class function Create(message: String; innerException: IException): ICultureNotFoundException; overload;
		class function Create(paramName: String; invalidCultureName: String; message: String): ICultureNotFoundException; overload;
		class function Create(message: String; invalidCultureName: String; innerException: IException): ICultureNotFoundException; overload;
		class function Create(message: String; invalidCultureId: Integer; innerException: IException): ICultureNotFoundException; overload;
		class function Create(paramName: String; invalidCultureId: Integer; message: String): ICultureNotFoundException; overload;
	end;

	TCurrencyWrapper = class(TCoreClrGenericImport<ICoreClrClass, ICurrencyWrapper>)
	public
		class function Create(obj: IDecimal): ICurrencyWrapper; overload;
		class function Create(obj: Variant): ICurrencyWrapper; overload;
	end;

	TCustomAttributeBuilder = class(TCoreClrGenericImport<ICoreClrClass, ICustomAttributeBuilder>)
	public
		class function Create(con: IConstructorInfo; constructorArgs: TArray<Variant>): ICustomAttributeBuilder; overload;
		class function Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedProperties: ICoreClrBridgeArray<IPropertyInfo>; propertyValues: TArray<Variant>): ICustomAttributeBuilder; overload;
		class function Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedFields: ICoreClrBridgeArray<IFieldInfo>; fieldValues: TArray<Variant>): ICustomAttributeBuilder; overload;
		class function Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedProperties: ICoreClrBridgeArray<IPropertyInfo>; propertyValues: TArray<Variant>; namedFields: ICoreClrBridgeArray<IFieldInfo>; fieldValues: TArray<Variant>): ICustomAttributeBuilder; overload;
	end;

	TFormatException = class(TCoreClrGenericImport<ICoreClrClass, IFormatException>)
	public
		class function Create: IFormatException; overload;
		class function Create(message: String): IFormatException; overload;
		class function Create(message: String; innerException: IException): IFormatException; overload;
	end;

	TCustomAttributeFormatException = class(TCoreClrGenericImport<ICoreClrClass, ICustomAttributeFormatException>)
	public
		class function Create: ICustomAttributeFormatException; overload;
		class function Create(message: String): ICustomAttributeFormatException; overload;
		class function Create(message: String; inner: IException): ICustomAttributeFormatException; overload;
	end;

	TCustomAttributeNamedArgument = class(TCoreClrGenericImport<ICoreClrClass, ICustomAttributeNamedArgument>)
	public
		class function Create(memberInfo: IMemberInfo; value: Variant): ICustomAttributeNamedArgument; overload;
		class function Create(memberInfo: IMemberInfo; typedArgument: ICustomAttributeTypedArgument): ICustomAttributeNamedArgument; overload;
	end;

	TCustomAttributeTypedArgument = class(TCoreClrGenericImport<ICoreClrClass, ICustomAttributeTypedArgument>)
	public
		class function Create(argumentType: IType; value: Variant): ICustomAttributeTypedArgument; overload;
		class function Create(value: Variant): ICustomAttributeTypedArgument; overload;
	end;

	TDataMisalignedException = class(TCoreClrGenericImport<ICoreClrClass, IDataMisalignedException>)
	public
		class function Create: IDataMisalignedException; overload;
		class function Create(message: String): IDataMisalignedException; overload;
		class function Create(message: String; innerException: IException): IDataMisalignedException; overload;
	end;

	TDateTime_ = class(TCoreClrGenericImport<IDateTimeClass, IDateTime>)
	public
		class function Create(ticks: Int64): IDateTime; overload;
		class function Create(ticks: Int64; kind: TDateTimeKind): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; calendar: ICalendar): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; kind: TDateTimeKind): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; calendar: ICalendar): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; kind: TDateTimeKind): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar): IDateTime; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar; kind: TDateTimeKind): IDateTime; overload;
	end;

	TDateTimeConstantAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDateTimeConstantAttribute>)
	public
		class function Create(ticks: Int64): IDateTimeConstantAttribute;
	end;

	TDateTimeFormatInfo = class(TCoreClrGenericImport<IDateTimeFormatInfoClass, IDateTimeFormatInfo>)
	public
		class function Create: IDateTimeFormatInfo;
	end;

	TDateTimeOffset = class(TCoreClrGenericImport<IDateTimeOffsetClass, IDateTimeOffset>)
	public
		class function Create(ticks: Int64; offset: ITimeSpan): IDateTimeOffset; overload;
		class function Create(dateTime: TDateTime; offset: ITimeSpan): IDateTimeOffset; overload;
		class function Create(dateTime: TDateTime): IDateTimeOffset; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; offset: ITimeSpan): IDateTimeOffset; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; offset: ITimeSpan): IDateTimeOffset; overload;
		class function Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar; offset: ITimeSpan): IDateTimeOffset; overload;
	end;

	TDaylightTime = class(TCoreClrGenericImport<ICoreClrClass, IDaylightTime>)
	public
		class function Create(start: TDateTime; end_: TDateTime; delta: ITimeSpan): IDaylightTime;
	end;

	TDebuggableAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggableAttribute>)
	public
		class function Create(isJITTrackingEnabled: Boolean; isJITOptimizerDisabled: Boolean): IDebuggableAttribute; overload;
		class function Create(modes: TDebuggingModes_Set): IDebuggableAttribute; overload;
	end;

	TDebuggerBrowsableAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerBrowsableAttribute>)
	public
		class function Create(state: TDebuggerBrowsableState): IDebuggerBrowsableAttribute;
	end;

	TDebuggerDisplayAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerDisplayAttribute>)
	public
		class function Create(value: String): IDebuggerDisplayAttribute;
	end;

	TDebuggerHiddenAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerHiddenAttribute>)
	public
		class function Create: IDebuggerHiddenAttribute;
	end;

	TDebuggerNonUserCodeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerNonUserCodeAttribute>)
	public
		class function Create: IDebuggerNonUserCodeAttribute;
	end;

	TDebuggerStepperBoundaryAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerStepperBoundaryAttribute>)
	public
		class function Create: IDebuggerStepperBoundaryAttribute;
	end;

	TDebuggerStepThroughAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerStepThroughAttribute>)
	public
		class function Create: IDebuggerStepThroughAttribute;
	end;

	TDebuggerTypeProxyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerTypeProxyAttribute>)
	public
		class function Create(type_: IType): IDebuggerTypeProxyAttribute; overload;
		class function Create(typeName: String): IDebuggerTypeProxyAttribute; overload;
	end;

	TDebuggerVisualizerAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDebuggerVisualizerAttribute>)
	public
		class function Create(visualizerTypeName: String): IDebuggerVisualizerAttribute; overload;
		class function Create(visualizer: IType): IDebuggerVisualizerAttribute; overload;
		class function Create(visualizerTypeName: String; visualizerObjectSourceTypeName: String): IDebuggerVisualizerAttribute; overload;
		class function Create(visualizerTypeName: String; visualizerObjectSource: IType): IDebuggerVisualizerAttribute; overload;
		class function Create(visualizer: IType; visualizerObjectSource: IType): IDebuggerVisualizerAttribute; overload;
		class function Create(visualizer: IType; visualizerObjectSourceTypeName: String): IDebuggerVisualizerAttribute; overload;
	end;

	TDebugProvider = class(TCoreClrGenericImport<IDebugProviderClass, IDebugProvider>)
	public
		class function Create: IDebugProvider;
	end;

	TDecimal = class(TCoreClrGenericImport<IDecimalClass, IDecimal>)
	public
		class function Create(value: Integer): IDecimal; overload;
		class function Create(value: longword): IDecimal; overload;
		class function Create(value: Int64): IDecimal; overload;
		class function Create(value: UInt64): IDecimal; overload;
		class function Create(value: Single): IDecimal; overload;
		class function Create(value: Double): IDecimal; overload;
		class function Create(bits: TArray<Integer>): IDecimal; overload;
		class function Create(bits: IReadOnlySpan<Integer>): IDecimal; overload;
		class function Create(lo: Integer; mid: Integer; hi: Integer; isNegative: Boolean; scale: Byte): IDecimal; overload;
	end;

	TDecimalConstantAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDecimalConstantAttribute>)
	public
		class function Create(scale: Byte; sign: Byte; hi: longword; mid: longword; low: longword): IDecimalConstantAttribute; overload;
		class function Create(scale: Byte; sign: Byte; hi: Integer; mid: Integer; low: Integer): IDecimalConstantAttribute; overload;
	end;

	TDecoderExceptionFallback = class(TCoreClrGenericImport<ICoreClrClass, IDecoderExceptionFallback>)
	public
		class function Create: IDecoderExceptionFallback;
	end;

	TDecoderExceptionFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IDecoderExceptionFallbackBuffer>)
	public
		class function Create: IDecoderExceptionFallbackBuffer;
	end;

	TDecoderFallbackException = class(TCoreClrGenericImport<ICoreClrClass, IDecoderFallbackException>)
	public
		class function Create: IDecoderFallbackException; overload;
		class function Create(message: String): IDecoderFallbackException; overload;
		class function Create(message: String; innerException: IException): IDecoderFallbackException; overload;
		class function Create(message: String; bytesUnknown: TArray<Byte>; index: Integer): IDecoderFallbackException; overload;
	end;

	TDecoderReplacementFallback = class(TCoreClrGenericImport<ICoreClrClass, IDecoderReplacementFallback>)
	public
		class function Create: IDecoderReplacementFallback; overload;
		class function Create(replacement: String): IDecoderReplacementFallback; overload;
	end;

	TDecoderReplacementFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IDecoderReplacementFallbackBuffer>)
	public
		class function Create(fallback: IDecoderReplacementFallback): IDecoderReplacementFallbackBuffer;
	end;

	TDefaultCharSetAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultCharSetAttribute>)
	public
		class function Create(charSet: TCharSet): IDefaultCharSetAttribute;
	end;

	TDefaultDependencyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultDependencyAttribute>)
	public
		class function Create(loadHintArgument: TLoadHint): IDefaultDependencyAttribute;
	end;

	TDefaultDllImportSearchPathsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultDllImportSearchPathsAttribute>)
	public
		class function Create(paths: TDllImportSearchPath_Set): IDefaultDllImportSearchPathsAttribute;
	end;

	TDefaultMemberAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultMemberAttribute>)
	public
		class function Create(memberName: String): IDefaultMemberAttribute;
	end;

	TDefaultParameterValueAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultParameterValueAttribute>)
	public
		class function Create(value: Variant): IDefaultParameterValueAttribute;
	end;

	TDefaultValueAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDefaultValueAttribute>)
	public
		class function Create(type_: IType; value: String): IDefaultValueAttribute; overload;
		class function Create(value: Char): IDefaultValueAttribute; overload;
		class function Create(value: Byte): IDefaultValueAttribute; overload;
		class function Create(value: SmallInt): IDefaultValueAttribute; overload;
		class function Create(value: Integer): IDefaultValueAttribute; overload;
		class function Create(value: Int64): IDefaultValueAttribute; overload;
		class function Create(value: Single): IDefaultValueAttribute; overload;
		class function Create(value: Double): IDefaultValueAttribute; overload;
		class function Create(value: Boolean): IDefaultValueAttribute; overload;
		class function Create(value: String): IDefaultValueAttribute; overload;
		class function Create(value: Variant): IDefaultValueAttribute; overload;
		class function Create(value: Shortint): IDefaultValueAttribute; overload;
		class function Create(value: Word): IDefaultValueAttribute; overload;
		class function Create(value: longword): IDefaultValueAttribute; overload;
		class function Create(value: UInt64): IDefaultValueAttribute; overload;
	end;

	TDelegateWrapper = class(TCoreClrGenericImport<ICoreClrClass, IDelegateWrapper>)
	public
		class function Create(d: IDelegate; wrapArgs: Boolean): IDelegateWrapper;
	end;

	TDependencyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDependencyAttribute>)
	public
		class function Create(dependentAssemblyArgument: String; loadHintArgument: TLoadHint): IDependencyAttribute;
	end;

	TDictionary<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IDictionary<TKey,TValue>>)
	public
		class function Create: IDictionary<TKey,TValue>; overload;
		class function Create(capacity: Integer): IDictionary<TKey,TValue>; overload;
		class function Create(comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>; overload;
		class function Create(dictionary: IIDictionary<TKey,TValue>): IDictionary<TKey,TValue>; overload;
		class function Create(collection: IIEnumerable<IKeyValuePair<TKey,TValue>>): IDictionary<TKey,TValue>; overload;
		class function Create(capacity: Integer; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>; overload;
		class function Create(dictionary: IIDictionary<TKey,TValue>; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>; overload;
		class function Create(collection: IIEnumerable<IKeyValuePair<TKey,TValue>>; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>; overload;
	end;

	TDictionary_KeyCollection<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IDictionary_KeyCollection<TKey,TValue>>)
	public
		class function Create(dictionary: IDictionary<TKey,TValue>): IDictionary_KeyCollection<TKey,TValue>;
	end;

	TDictionary_ValueCollection<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IDictionary_ValueCollection<TKey,TValue>>)
	public
		class function Create(dictionary: IDictionary<TKey,TValue>): IDictionary_ValueCollection<TKey,TValue>;
	end;

	TDictionaryEntry = class(TCoreClrGenericImport<ICoreClrClass, IDictionaryEntry>)
	public
		class function Create(key: Variant; value: Variant): IDictionaryEntry;
	end;

	TIOException = class(TCoreClrGenericImport<ICoreClrClass, IIOException>)
	public
		class function Create: IIOException; overload;
		class function Create(message: String): IIOException; overload;
		class function Create(message: String; hresult: Integer): IIOException; overload;
		class function Create(message: String; innerException: IException): IIOException; overload;
	end;

	TDirectoryNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, IDirectoryNotFoundException>)
	public
		class function Create: IDirectoryNotFoundException; overload;
		class function Create(message: String): IDirectoryNotFoundException; overload;
		class function Create(message: String; innerException: IException): IDirectoryNotFoundException; overload;
	end;

	TDisablePrivateReflectionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDisablePrivateReflectionAttribute>)
	public
		class function Create: IDisablePrivateReflectionAttribute;
	end;

	TDisallowNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDisallowNullAttribute>)
	public
		class function Create: IDisallowNullAttribute;
	end;

	TDiscardableAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDiscardableAttribute>)
	public
		class function Create: IDiscardableAttribute;
	end;

	TDispatchWrapper = class(TCoreClrGenericImport<ICoreClrClass, IDispatchWrapper>)
	public
		class function Create(obj: Variant): IDispatchWrapper;
	end;

	TDispIdAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDispIdAttribute>)
	public
		class function Create(dispId_: Integer): IDispIdAttribute;
	end;

	TDivideByZeroException = class(TCoreClrGenericImport<ICoreClrClass, IDivideByZeroException>)
	public
		class function Create: IDivideByZeroException; overload;
		class function Create(message: String): IDivideByZeroException; overload;
		class function Create(message: String; innerException: IException): IDivideByZeroException; overload;
	end;

	TDllImportAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDllImportAttribute>)
	public
		class function Create(dllName: String): IDllImportAttribute;
	end;

	TTypeLoadException = class(TCoreClrGenericImport<ICoreClrClass, ITypeLoadException>)
	public
		class function Create: ITypeLoadException; overload;
		class function Create(message: String): ITypeLoadException; overload;
		class function Create(message: String; inner: IException): ITypeLoadException; overload;
	end;

	TDllNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, IDllNotFoundException>)
	public
		class function Create: IDllNotFoundException; overload;
		class function Create(message: String): IDllNotFoundException; overload;
		class function Create(message: String; inner: IException): IDllNotFoundException; overload;
	end;

	TDoesNotReturnAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDoesNotReturnAttribute>)
	public
		class function Create: IDoesNotReturnAttribute;
	end;

	TDoesNotReturnIfAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDoesNotReturnIfAttribute>)
	public
		class function Create(parameterValue: Boolean): IDoesNotReturnIfAttribute;
	end;

	TDuplicateWaitObjectException = class(TCoreClrGenericImport<ICoreClrClass, IDuplicateWaitObjectException>)
	public
		class function Create: IDuplicateWaitObjectException; overload;
		class function Create(parameterName: String): IDuplicateWaitObjectException; overload;
		class function Create(parameterName: String; message: String): IDuplicateWaitObjectException; overload;
		class function Create(message: String; innerException: IException): IDuplicateWaitObjectException; overload;
	end;

	TDynamicallyAccessedMembersAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDynamicallyAccessedMembersAttribute>)
	public
		class function Create(memberTypes: TDynamicallyAccessedMemberTypes_Set): IDynamicallyAccessedMembersAttribute;
	end;

	TDynamicDependencyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDynamicDependencyAttribute>)
	public
		class function Create(memberSignature: String): IDynamicDependencyAttribute; overload;
		class function Create(memberSignature: String; type_: IType): IDynamicDependencyAttribute; overload;
		class function Create(memberTypes: TDynamicallyAccessedMemberTypes_Set; type_: IType): IDynamicDependencyAttribute; overload;
		class function Create(memberSignature: String; typeName: String; assemblyName: String): IDynamicDependencyAttribute; overload;
		class function Create(memberTypes: TDynamicallyAccessedMemberTypes_Set; typeName: String; assemblyName: String): IDynamicDependencyAttribute; overload;
	end;

	TDynamicInterfaceCastableImplementationAttribute = class(TCoreClrGenericImport<ICoreClrClass, IDynamicInterfaceCastableImplementationAttribute>)
	public
		class function Create: IDynamicInterfaceCastableImplementationAttribute;
	end;

	TDynamicMethod = class(TCoreClrGenericImport<ICoreClrClass, IDynamicMethod>)
	public
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>): IDynamicMethod; overload;
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; restrictedSkipVisibility: Boolean): IDynamicMethod; overload;
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule): IDynamicMethod; overload;
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType): IDynamicMethod; overload;
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule; skipVisibility: Boolean): IDynamicMethod; overload;
		class function Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType; skipVisibility: Boolean): IDynamicMethod; overload;
		class function Create(name: String; attributes: TMethodAttributes_Set; callingConvention: TCallingConventions_Set; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule; skipVisibility: Boolean): IDynamicMethod; overload;
		class function Create(name: String; attributes: TMethodAttributes_Set; callingConvention: TCallingConventions_Set; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType; skipVisibility: Boolean): IDynamicMethod; overload;
	end;

	TEditorBrowsableAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEditorBrowsableAttribute>)
	public
		class function Create(state: TEditorBrowsableState): IEditorBrowsableAttribute; overload;
		class function Create: IEditorBrowsableAttribute; overload;
	end;

	TEncoderExceptionFallback = class(TCoreClrGenericImport<ICoreClrClass, IEncoderExceptionFallback>)
	public
		class function Create: IEncoderExceptionFallback;
	end;

	TEncoderExceptionFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IEncoderExceptionFallbackBuffer>)
	public
		class function Create: IEncoderExceptionFallbackBuffer;
	end;

	TEncoderFallbackException = class(TCoreClrGenericImport<ICoreClrClass, IEncoderFallbackException>)
	public
		class function Create: IEncoderFallbackException; overload;
		class function Create(message: String): IEncoderFallbackException; overload;
		class function Create(message: String; innerException: IException): IEncoderFallbackException; overload;
	end;

	TEncoderReplacementFallback = class(TCoreClrGenericImport<ICoreClrClass, IEncoderReplacementFallback>)
	public
		class function Create: IEncoderReplacementFallback; overload;
		class function Create(replacement: String): IEncoderReplacementFallback; overload;
	end;

	TEncoderReplacementFallbackBuffer = class(TCoreClrGenericImport<ICoreClrClass, IEncoderReplacementFallbackBuffer>)
	public
		class function Create(fallback: IEncoderReplacementFallback): IEncoderReplacementFallbackBuffer;
	end;

	TEncodingInfo = class(TCoreClrGenericImport<ICoreClrClass, IEncodingInfo>)
	public
		class function Create(provider: IEncodingProvider; codePage: Integer; name: String; displayName: String): IEncodingInfo;
	end;

	TEncodingProvider = class(TCoreClrGenericImport<ICoreClrClass, IEncodingProvider>)
	public
		class function Create: IEncodingProvider;
	end;

	TEndOfStreamException = class(TCoreClrGenericImport<ICoreClrClass, IEndOfStreamException>)
	public
		class function Create: IEndOfStreamException; overload;
		class function Create(message: String): IEndOfStreamException; overload;
		class function Create(message: String; innerException: IException): IEndOfStreamException; overload;
	end;

	TEntryPointNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, IEntryPointNotFoundException>)
	public
		class function Create: IEntryPointNotFoundException; overload;
		class function Create(message: String): IEntryPointNotFoundException; overload;
		class function Create(message: String; inner: IException): IEntryPointNotFoundException; overload;
	end;

	TEnumeratorCancellationAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEnumeratorCancellationAttribute>)
	public
		class function Create: IEnumeratorCancellationAttribute;
	end;

	TErrorWrapper = class(TCoreClrGenericImport<ICoreClrClass, IErrorWrapper>)
	public
		class function Create(errorCode: Integer): IErrorWrapper; overload;
		class function Create(errorCode: Variant): IErrorWrapper; overload;
		class function Create(e: IException): IErrorWrapper; overload;
	end;

	TEventAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEventAttribute>)
	public
		class function Create(eventId: Integer): IEventAttribute;
	end;

	TEventCounter = class(TCoreClrGenericImport<ICoreClrClass, IEventCounter>)
	public
		class function Create(name: String; eventSource: IEventSource): IEventCounter;
	end;

	TEventDataAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEventDataAttribute>)
	public
		class function Create: IEventDataAttribute;
	end;

	TEventFieldAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEventFieldAttribute>)
	public
		class function Create: IEventFieldAttribute;
	end;

	TEventIgnoreAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEventIgnoreAttribute>)
	public
		class function Create: IEventIgnoreAttribute;
	end;

	TEventListener = class(TCoreClrGenericImport<IEventListenerClass, IEventListener>)
	public
		class function Create: IEventListener;
	end;

	TEventSource = class(TCoreClrGenericImport<IEventSourceClass, IEventSource>)
	public
		class function Create(eventSourceName: String): IEventSource; overload;
		class function Create(eventSourceName: String; config: TEventSourceSettings_Set): IEventSource; overload;
		class function Create(eventSourceName: String; config: TEventSourceSettings_Set; traits: TArray<String>): IEventSource; overload;
	end;

	TEventSourceAttribute = class(TCoreClrGenericImport<ICoreClrClass, IEventSourceAttribute>)
	public
		class function Create: IEventSourceAttribute;
	end;

	TEventSourceCreatedEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IEventSourceCreatedEventArgs>)
	public
		class function Create: IEventSourceCreatedEventArgs;
	end;

	TEventSourceException = class(TCoreClrGenericImport<ICoreClrClass, IEventSourceException>)
	public
		class function Create: IEventSourceException; overload;
		class function Create(message: String): IEventSourceException; overload;
		class function Create(message: String; innerException: IException): IEventSourceException; overload;
	end;

	TExcludeFromCodeCoverageAttribute = class(TCoreClrGenericImport<ICoreClrClass, IExcludeFromCodeCoverageAttribute>)
	public
		class function Create: IExcludeFromCodeCoverageAttribute;
	end;

	TExecutionEngineException = class(TCoreClrGenericImport<ICoreClrClass, IExecutionEngineException>)
	public
		class function Create: IExecutionEngineException; overload;
		class function Create(message: String): IExecutionEngineException; overload;
		class function Create(message: String; innerException: IException): IExecutionEngineException; overload;
	end;

	TExtensionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IExtensionAttribute>)
	public
		class function Create: IExtensionAttribute;
	end;

	TMemberAccessException = class(TCoreClrGenericImport<ICoreClrClass, IMemberAccessException>)
	public
		class function Create: IMemberAccessException; overload;
		class function Create(message: String): IMemberAccessException; overload;
		class function Create(message: String; inner: IException): IMemberAccessException; overload;
	end;

	TFieldAccessException = class(TCoreClrGenericImport<ICoreClrClass, IFieldAccessException>)
	public
		class function Create: IFieldAccessException; overload;
		class function Create(message: String): IFieldAccessException; overload;
		class function Create(message: String; inner: IException): IFieldAccessException; overload;
	end;

	TFieldOffsetAttribute = class(TCoreClrGenericImport<ICoreClrClass, IFieldOffsetAttribute>)
	public
		class function Create(offset: Integer): IFieldOffsetAttribute;
	end;

	TFileLoadException = class(TCoreClrGenericImport<ICoreClrClass, IFileLoadException>)
	public
		class function Create: IFileLoadException; overload;
		class function Create(message: String): IFileLoadException; overload;
		class function Create(message: String; inner: IException): IFileLoadException; overload;
		class function Create(message: String; fileName: String): IFileLoadException; overload;
		class function Create(message: String; fileName: String; inner: IException): IFileLoadException; overload;
	end;

	TFileNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, IFileNotFoundException>)
	public
		class function Create: IFileNotFoundException; overload;
		class function Create(message: String): IFileNotFoundException; overload;
		class function Create(message: String; innerException: IException): IFileNotFoundException; overload;
		class function Create(message: String; fileName: String): IFileNotFoundException; overload;
		class function Create(message: String; fileName: String; innerException: IException): IFileNotFoundException; overload;
	end;

	TFileStream = class(TCoreClrGenericImport<ICoreClrClass, IFileStream>)
	public
		class function Create(handle: IIntPtr; access: TFileAccess_Set): IFileStream; overload;
		class function Create(handle: ISafeFileHandle; access: TFileAccess_Set): IFileStream; overload;
		class function Create(path: String; mode: TFileMode): IFileStream; overload;
		class function Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean): IFileStream; overload;
		class function Create(handle: ISafeFileHandle; access: TFileAccess_Set; bufferSize: Integer): IFileStream; overload;
		class function Create(path: String; mode: TFileMode; access: TFileAccess_Set): IFileStream; overload;
		class function Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean; bufferSize: Integer): IFileStream; overload;
		class function Create(handle: ISafeFileHandle; access: TFileAccess_Set; bufferSize: Integer; isAsync: Boolean): IFileStream; overload;
		class function Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set): IFileStream; overload;
		class function Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean; bufferSize: Integer; isAsync: Boolean): IFileStream; overload;
		class function Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer): IFileStream; overload;
		class function Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer; useAsync: Boolean): IFileStream; overload;
		class function Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer; options: TFileOptions_Set): IFileStream; overload;
	end;

	TFirstChanceExceptionEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IFirstChanceExceptionEventArgs>)
	public
		class function Create(exception: IException): IFirstChanceExceptionEventArgs;
	end;

	TFixedAddressValueTypeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IFixedAddressValueTypeAttribute>)
	public
		class function Create: IFixedAddressValueTypeAttribute;
	end;

	TFixedBufferAttribute = class(TCoreClrGenericImport<ICoreClrClass, IFixedBufferAttribute>)
	public
		class function Create(elementType: IType; length: Integer): IFixedBufferAttribute;
	end;

	TFlagsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IFlagsAttribute>)
	public
		class function Create: IFlagsAttribute;
	end;

	TFloatingPointInfo = class(TCoreClrGenericImport<IFloatingPointInfoClass, IFloatingPointInfo>)
	public
		class function Create(denormalMantissaBits: Word; exponentBits: Word; maxBinaryExponent: Integer; exponentBias: Integer; infinityBits: UInt64): IFloatingPointInfo;
	end;

	TFrameworkName = class(TCoreClrGenericImport<ICoreClrClass, IFrameworkName>)
	public
		class function Create(identifier: String; version: IVersion): IFrameworkName; overload;
		class function Create(identifier: String; version: IVersion; profile: String): IFrameworkName; overload;
		class function Create(frameworkName: String): IFrameworkName; overload;
	end;

	TGeneratedCodeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IGeneratedCodeAttribute>)
	public
		class function Create(tool: String; version: String): IGeneratedCodeAttribute;
	end;

	TGenericComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IGenericComparer<T>>)
	public
		class function Create: IGenericComparer<T>;
	end;

	TGenericEqualityComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IGenericEqualityComparer<T>>)
	public
		class function Create: IGenericEqualityComparer<T>;
	end;

	TGregorianCalendar = class(TCoreClrGenericImport<IGregorianCalendarClass, IGregorianCalendar>)
	public
		class function Create: IGregorianCalendar; overload;
		class function Create(type_: TGregorianCalendarTypes): IGregorianCalendar; overload;
	end;

	TGuid = class(TCoreClrGenericImport<IGuidClass, IGuid>)
	public
		class function Create(b: TArray<Byte>): IGuid; overload;
		class function Create(b: IReadOnlySpan<Byte>): IGuid; overload;
		class function Create(g: String): IGuid; overload;
		class function Create(a: longword; b: Word; c: Word; d: Byte; e: Byte; f: Byte; g: Byte; h: Byte; i: Byte; j: Byte; k: Byte): IGuid; overload;
		class function Create(a: Integer; b: SmallInt; c: SmallInt; d: Byte; e: Byte; f: Byte; g: Byte; h: Byte; i: Byte; j: Byte; k: Byte): IGuid; overload;
		class function Create(a: Integer; b: SmallInt; c: SmallInt; d: TArray<Byte>): IGuid; overload;
	end;

	TGuidAttribute = class(TCoreClrGenericImport<ICoreClrClass, IGuidAttribute>)
	public
		class function Create(guid: String): IGuidAttribute;
	end;

	THandleProcessCorruptedStateExceptionsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IHandleProcessCorruptedStateExceptionsAttribute>)
	public
		class function Create: IHandleProcessCorruptedStateExceptionsAttribute;
	end;

	THandleRef = class(TCoreClrGenericImport<IHandleRefClass, IHandleRef>)
	public
		class function Create(wrapper: Variant; handle: IIntPtr): IHandleRef;
	end;

	THashtable = class(TCoreClrGenericImport<IHashtableClass, IHashtable>)
	public
		class function Create: IHashtable; overload;
		class function Create(capacity: Integer): IHashtable; overload;
		class function Create(equalityComparer: IIEqualityComparer): IHashtable; overload;
		class function Create(d: IIDictionary): IHashtable; overload;
		class function Create(capacity: Integer; loadFactor: Single): IHashtable; overload;
		class function Create(hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable; overload;
		class function Create(capacity: Integer; equalityComparer: IIEqualityComparer): IHashtable; overload;
		class function Create(d: IIDictionary; loadFactor: Single): IHashtable; overload;
		class function Create(d: IIDictionary; equalityComparer: IIEqualityComparer): IHashtable; overload;
		class function Create(capacity: Integer; loadFactor: Single; equalityComparer: IIEqualityComparer): IHashtable; overload;
		class function Create(capacity: Integer; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable; overload;
		class function Create(d: IIDictionary; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable; overload;
		class function Create(d: IIDictionary; loadFactor: Single; equalityComparer: IIEqualityComparer): IHashtable; overload;
		class function Create(capacity: Integer; loadFactor: Single; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable; overload;
		class function Create(d: IIDictionary; loadFactor: Single; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable; overload;
	end;

	THebrewCalendar = class(TCoreClrGenericImport<IHebrewCalendarClass, IHebrewCalendar>)
	public
		class function Create: IHebrewCalendar;
	end;

	THijriCalendar = class(TCoreClrGenericImport<IHijriCalendarClass, IHijriCalendar>)
	public
		class function Create: IHijriCalendar;
	end;

	TIdnMapping = class(TCoreClrGenericImport<ICoreClrClass, IIdnMapping>)
	public
		class function Create: IIdnMapping;
	end;

	TInAttribute = class(TCoreClrGenericImport<ICoreClrClass, IInAttribute>)
	public
		class function Create: IInAttribute;
	end;

	TIncrementingEventCounter = class(TCoreClrGenericImport<ICoreClrClass, IIncrementingEventCounter>)
	public
		class function Create(name: String; eventSource: IEventSource): IIncrementingEventCounter;
	end;

	TIncrementingPollingCounter = class(TCoreClrGenericImport<ICoreClrClass, IIncrementingPollingCounter>)
	public
		class function Create(name: String; eventSource: IEventSource; totalValueProvider: TClrFunc<Double>): IIncrementingPollingCounter;
	end;

	TIndentedTextWriter = class(TCoreClrGenericImport<IIndentedTextWriterClass, IIndentedTextWriter>)
	public
		class function Create(writer: ITextWriter): IIndentedTextWriter; overload;
		class function Create(writer: ITextWriter; tabString: String): IIndentedTextWriter; overload;
	end;

	TIndex = class(TCoreClrGenericImport<IIndexClass, IIndex>)
	public
		class function Create(value: Integer; fromEnd: Boolean): IIndex;
	end;

	TIndexerNameAttribute = class(TCoreClrGenericImport<ICoreClrClass, IIndexerNameAttribute>)
	public
		class function Create(indexerName: String): IIndexerNameAttribute;
	end;

	TIndexOutOfRangeException = class(TCoreClrGenericImport<ICoreClrClass, IIndexOutOfRangeException>)
	public
		class function Create: IIndexOutOfRangeException; overload;
		class function Create(message: String): IIndexOutOfRangeException; overload;
		class function Create(message: String; innerException: IException): IIndexOutOfRangeException; overload;
	end;

	TInsufficientExecutionStackException = class(TCoreClrGenericImport<ICoreClrClass, IInsufficientExecutionStackException>)
	public
		class function Create: IInsufficientExecutionStackException; overload;
		class function Create(message: String): IInsufficientExecutionStackException; overload;
		class function Create(message: String; innerException: IException): IInsufficientExecutionStackException; overload;
	end;

	TOutOfMemoryException = class(TCoreClrGenericImport<ICoreClrClass, IOutOfMemoryException>)
	public
		class function Create: IOutOfMemoryException; overload;
		class function Create(message: String): IOutOfMemoryException; overload;
		class function Create(message: String; innerException: IException): IOutOfMemoryException; overload;
	end;

	TInsufficientMemoryException = class(TCoreClrGenericImport<ICoreClrClass, IInsufficientMemoryException>)
	public
		class function Create: IInsufficientMemoryException; overload;
		class function Create(message: String): IInsufficientMemoryException; overload;
		class function Create(message: String; innerException: IException): IInsufficientMemoryException; overload;
	end;

	TInterfaceTypeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IInterfaceTypeAttribute>)
	public
		class function Create(interfaceType: TComInterfaceType): IInterfaceTypeAttribute; overload;
		class function Create(interfaceType: SmallInt): IInterfaceTypeAttribute; overload;
	end;

	TInternalsVisibleToAttribute = class(TCoreClrGenericImport<ICoreClrClass, IInternalsVisibleToAttribute>)
	public
		class function Create(assemblyName: String): IInternalsVisibleToAttribute;
	end;

	TIntPtr = class(TCoreClrGenericImport<IIntPtrClass, IIntPtr>)
	public
		class function Create(value: Integer): IIntPtr; overload;
		class function Create(value: Int64): IIntPtr; overload;
		class function Create(value: ICoreClrInstance): IIntPtr; overload;
	end;

	TInvalidCastException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidCastException>)
	public
		class function Create: IInvalidCastException; overload;
		class function Create(message: String): IInvalidCastException; overload;
		class function Create(message: String; innerException: IException): IInvalidCastException; overload;
		class function Create(message: String; errorCode: Integer): IInvalidCastException; overload;
	end;

	TInvalidComObjectException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidComObjectException>)
	public
		class function Create: IInvalidComObjectException; overload;
		class function Create(message: String): IInvalidComObjectException; overload;
		class function Create(message: String; inner: IException): IInvalidComObjectException; overload;
	end;

	TInvalidDataException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidDataException>)
	public
		class function Create: IInvalidDataException; overload;
		class function Create(message: String): IInvalidDataException; overload;
		class function Create(message: String; innerException: IException): IInvalidDataException; overload;
	end;

	TInvalidFilterCriteriaException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidFilterCriteriaException>)
	public
		class function Create: IInvalidFilterCriteriaException; overload;
		class function Create(message: String): IInvalidFilterCriteriaException; overload;
		class function Create(message: String; inner: IException): IInvalidFilterCriteriaException; overload;
	end;

	TInvalidOleVariantTypeException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidOleVariantTypeException>)
	public
		class function Create: IInvalidOleVariantTypeException; overload;
		class function Create(message: String): IInvalidOleVariantTypeException; overload;
		class function Create(message: String; inner: IException): IInvalidOleVariantTypeException; overload;
	end;

	TInvalidOperationException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidOperationException>)
	public
		class function Create: IInvalidOperationException; overload;
		class function Create(message: String): IInvalidOperationException; overload;
		class function Create(message: String; innerException: IException): IInvalidOperationException; overload;
	end;

	TInvalidProgramException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidProgramException>)
	public
		class function Create: IInvalidProgramException; overload;
		class function Create(message: String): IInvalidProgramException; overload;
		class function Create(message: String; inner: IException): IInvalidProgramException; overload;
	end;

	TInvalidTimeZoneException = class(TCoreClrGenericImport<ICoreClrClass, IInvalidTimeZoneException>)
	public
		class function Create: IInvalidTimeZoneException; overload;
		class function Create(message: String): IInvalidTimeZoneException; overload;
		class function Create(message: String; innerException: IException): IInvalidTimeZoneException; overload;
	end;

	TIsByRefLikeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IIsByRefLikeAttribute>)
	public
		class function Create: IIsByRefLikeAttribute;
	end;

	TIsReadOnlyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IIsReadOnlyAttribute>)
	public
		class function Create: IIsReadOnlyAttribute;
	end;

	TIteratorStateMachineAttribute = class(TCoreClrGenericImport<ICoreClrClass, IIteratorStateMachineAttribute>)
	public
		class function Create(stateMachineType: IType): IIteratorStateMachineAttribute;
	end;

	TJapaneseCalendar = class(TCoreClrGenericImport<ICoreClrClass, IJapaneseCalendar>)
	public
		class function Create: IJapaneseCalendar;
	end;

	TJapaneseLunisolarCalendar = class(TCoreClrGenericImport<IJapaneseLunisolarCalendarClass, IJapaneseLunisolarCalendar>)
	public
		class function Create: IJapaneseLunisolarCalendar;
	end;

	TJulianCalendar = class(TCoreClrGenericImport<IJulianCalendarClass, IJulianCalendar>)
	public
		class function Create: IJulianCalendar;
	end;

	TKeyNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, IKeyNotFoundException>)
	public
		class function Create: IKeyNotFoundException; overload;
		class function Create(message: String): IKeyNotFoundException; overload;
		class function Create(message: String; innerException: IException): IKeyNotFoundException; overload;
	end;

	TKeyValuePair<TKey,TValue> = class(TCoreClrGenericImport<ICoreClrClass, IKeyValuePair<TKey,TValue>>)
	public
		class function Create(key: TKey; value: TValue): IKeyValuePair<TKey,TValue>;
	end;

	TKoreanCalendar = class(TCoreClrGenericImport<IKoreanCalendarClass, IKoreanCalendar>)
	public
		class function Create: IKoreanCalendar;
	end;

	TKoreanLunisolarCalendar = class(TCoreClrGenericImport<IKoreanLunisolarCalendarClass, IKoreanLunisolarCalendar>)
	public
		class function Create: IKoreanLunisolarCalendar;
	end;

	TLazy<T> = class(TCoreClrGenericImport<ICoreClrClass, ILazy<T>>)
	public
		class function Create: ILazy<T>; overload;
		class function Create(value: T): ILazy<T>; overload;
		class function Create(valueFactory: TClrFunc<T>): ILazy<T>; overload;
		class function Create(isThreadSafe: Boolean): ILazy<T>; overload;
		class function Create(mode: TLazyThreadSafetyMode): ILazy<T>; overload;
		class function Create(valueFactory: TClrFunc<T>; isThreadSafe: Boolean): ILazy<T>; overload;
		class function Create(valueFactory: TClrFunc<T>; mode: TLazyThreadSafetyMode): ILazy<T>; overload;
	end;

	TLazy<T,TMetadata> = class(TCoreClrGenericImport<ICoreClrClass, ILazy<T,TMetadata>>)
	public
		class function Create(valueFactory: TClrFunc<T>; metadata: TMetadata): ILazy<T,TMetadata>; overload;
		class function Create(metadata: TMetadata; isThreadSafe: Boolean): ILazy<T,TMetadata>; overload;
		class function Create(metadata: TMetadata; mode: TLazyThreadSafetyMode): ILazy<T,TMetadata>; overload;
		class function Create(metadata: TMetadata): ILazy<T,TMetadata>; overload;
		class function Create(valueFactory: TClrFunc<T>; metadata: TMetadata; isThreadSafe: Boolean): ILazy<T,TMetadata>; overload;
		class function Create(valueFactory: TClrFunc<T>; metadata: TMetadata; mode: TLazyThreadSafetyMode): ILazy<T,TMetadata>; overload;
	end;

	TLCIDConversionAttribute = class(TCoreClrGenericImport<ICoreClrClass, ILCIDConversionAttribute>)
	public
		class function Create(lcid: Integer): ILCIDConversionAttribute;
	end;

	TList<T> = class(TCoreClrGenericImport<ICoreClrClass, IList<T>>)
	public
		class function Create: IList<T>; overload;
		class function Create(capacity: Integer): IList<T>; overload;
		class function Create(collection: IIEnumerable<T>): IList<T>; overload;
	end;

	TListDictionaryInternal = class(TCoreClrGenericImport<ICoreClrClass, IListDictionaryInternal>)
	public
		class function Create: IListDictionaryInternal;
	end;

	TLoaderOptimizationAttribute = class(TCoreClrGenericImport<ICoreClrClass, ILoaderOptimizationAttribute>)
	public
		class function Create(value: Byte): ILoaderOptimizationAttribute; overload;
		class function Create(value: TLoaderOptimization): ILoaderOptimizationAttribute; overload;
	end;

	TLockRecursionException = class(TCoreClrGenericImport<ICoreClrClass, ILockRecursionException>)
	public
		class function Create: ILockRecursionException; overload;
		class function Create(message: String): ILockRecursionException; overload;
		class function Create(message: String; innerException: IException): ILockRecursionException; overload;
	end;

	TManifestResourceInfo = class(TCoreClrGenericImport<ICoreClrClass, IManifestResourceInfo>)
	public
		class function Create(containingAssembly: IAssembly; containingFileName: String; resourceLocation: TResourceLocation_Set): IManifestResourceInfo;
	end;

	TManualResetEvent = class(TCoreClrGenericImport<ICoreClrClass, IManualResetEvent>)
	public
		class function Create(initialState: Boolean): IManualResetEvent;
	end;

	TManualResetEventSlim = class(TCoreClrGenericImport<ICoreClrClass, IManualResetEventSlim>)
	public
		class function Create: IManualResetEventSlim; overload;
		class function Create(initialState: Boolean): IManualResetEventSlim; overload;
		class function Create(initialState: Boolean; spinCount: Integer): IManualResetEventSlim; overload;
	end;

	TMarshalAsAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMarshalAsAttribute>)
	public
		class function Create(unmanagedType: TUnmanagedType): IMarshalAsAttribute; overload;
		class function Create(unmanagedType: SmallInt): IMarshalAsAttribute; overload;
	end;

	TMarshalDirectiveException = class(TCoreClrGenericImport<ICoreClrClass, IMarshalDirectiveException>)
	public
		class function Create: IMarshalDirectiveException; overload;
		class function Create(message: String): IMarshalDirectiveException; overload;
		class function Create(message: String; inner: IException): IMarshalDirectiveException; overload;
	end;

	TMatrix3x2 = class(TCoreClrGenericImport<IMatrix3x2Class, IMatrix3x2>)
	public
		class function Create(m11: Single; m12: Single; m21: Single; m22: Single; m31: Single; m32: Single): IMatrix3x2;
	end;

	TMatrix4x4 = class(TCoreClrGenericImport<IMatrix4x4Class, IMatrix4x4>)
	public
		class function Create(m11: Single; m12: Single; m13: Single; m14: Single; m21: Single; m22: Single; m23: Single; m24: Single; m31: Single; m32: Single; m33: Single; m34: Single; m41: Single; m42: Single; m43: Single; m44: Single): IMatrix4x4; overload;
		class function Create(value: IMatrix3x2): IMatrix4x4; overload;
	end;

	TMaybeNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMaybeNullAttribute>)
	public
		class function Create: IMaybeNullAttribute;
	end;

	TMaybeNullWhenAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMaybeNullWhenAttribute>)
	public
		class function Create(returnValue: Boolean): IMaybeNullWhenAttribute;
	end;

	TMemberNotNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMemberNotNullAttribute>)
	public
		class function Create(member: String): IMemberNotNullAttribute; overload;
		class function Create(members: TArray<String>): IMemberNotNullAttribute; overload;
	end;

	TMemberNotNullWhenAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMemberNotNullWhenAttribute>)
	public
		class function Create(returnValue: Boolean; member: String): IMemberNotNullWhenAttribute; overload;
		class function Create(returnValue: Boolean; members: TArray<String>): IMemberNotNullWhenAttribute; overload;
	end;

	TMemory<T> = class(TCoreClrGenericImport<IMemoryClass<T>, IMemory<T>>)
	public
		class function Create(array_: ICoreClrBridgeArray<T>): IMemory<T>; overload;
		class function Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IMemory<T>; overload;
	end;

	TMemoryFailPoint = class(TCoreClrGenericImport<ICoreClrClass, IMemoryFailPoint>)
	public
		class function Create(sizeInMegabytes: Integer): IMemoryFailPoint;
	end;

	TMemoryHandle = class(TCoreClrGenericImport<ICoreClrClass, IMemoryHandle>)
	public
		class function Create(pointer: ICoreClrInstance; handle: IGCHandle; pinnable: IIPinnable): IMemoryHandle;
	end;

	TMemoryStream = class(TCoreClrGenericImport<ICoreClrClass, IMemoryStream>)
	public
		class function Create: IMemoryStream; overload;
		class function Create(capacity: Integer): IMemoryStream; overload;
		class function Create(buffer: TArray<Byte>): IMemoryStream; overload;
		class function Create(buffer: TArray<Byte>; writable: Boolean): IMemoryStream; overload;
		class function Create(buffer: TArray<Byte>; index: Integer; count: Integer): IMemoryStream; overload;
		class function Create(buffer: TArray<Byte>; index: Integer; count: Integer; writable: Boolean): IMemoryStream; overload;
		class function Create(buffer: TArray<Byte>; index: Integer; count: Integer; writable: Boolean; publiclyVisible: Boolean): IMemoryStream; overload;
	end;

	TMethodAccessException = class(TCoreClrGenericImport<ICoreClrClass, IMethodAccessException>)
	public
		class function Create: IMethodAccessException; overload;
		class function Create(message: String): IMethodAccessException; overload;
		class function Create(message: String; inner: IException): IMethodAccessException; overload;
	end;

	TMethodImplAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMethodImplAttribute>)
	public
		class function Create(methodImplOptions: TMethodImplOptions_Set): IMethodImplAttribute; overload;
		class function Create(value: SmallInt): IMethodImplAttribute; overload;
		class function Create: IMethodImplAttribute; overload;
	end;

	TMissingMemberException = class(TCoreClrGenericImport<ICoreClrClass, IMissingMemberException>)
	public
		class function Create: IMissingMemberException; overload;
		class function Create(message: String): IMissingMemberException; overload;
		class function Create(message: String; inner: IException): IMissingMemberException; overload;
		class function Create(className: String; memberName: String): IMissingMemberException; overload;
	end;

	TMissingFieldException = class(TCoreClrGenericImport<ICoreClrClass, IMissingFieldException>)
	public
		class function Create: IMissingFieldException; overload;
		class function Create(message: String): IMissingFieldException; overload;
		class function Create(message: String; inner: IException): IMissingFieldException; overload;
		class function Create(className: String; fieldName: String): IMissingFieldException; overload;
	end;

	TMissingManifestResourceException = class(TCoreClrGenericImport<ICoreClrClass, IMissingManifestResourceException>)
	public
		class function Create: IMissingManifestResourceException; overload;
		class function Create(message: String): IMissingManifestResourceException; overload;
		class function Create(message: String; inner: IException): IMissingManifestResourceException; overload;
	end;

	TMissingMethodException = class(TCoreClrGenericImport<ICoreClrClass, IMissingMethodException>)
	public
		class function Create: IMissingMethodException; overload;
		class function Create(message: String): IMissingMethodException; overload;
		class function Create(message: String; inner: IException): IMissingMethodException; overload;
		class function Create(className: String; methodName: String): IMissingMethodException; overload;
	end;

	TMissingSatelliteAssemblyException = class(TCoreClrGenericImport<ICoreClrClass, IMissingSatelliteAssemblyException>)
	public
		class function Create: IMissingSatelliteAssemblyException; overload;
		class function Create(message: String): IMissingSatelliteAssemblyException; overload;
		class function Create(message: String; cultureName: String): IMissingSatelliteAssemblyException; overload;
		class function Create(message: String; inner: IException): IMissingSatelliteAssemblyException; overload;
	end;

	TModuleInitializerAttribute = class(TCoreClrGenericImport<ICoreClrClass, IModuleInitializerAttribute>)
	public
		class function Create: IModuleInitializerAttribute;
	end;

	TMTAThreadAttribute = class(TCoreClrGenericImport<ICoreClrClass, IMTAThreadAttribute>)
	public
		class function Create: IMTAThreadAttribute;
	end;

	TMulticastNotSupportedException = class(TCoreClrGenericImport<ICoreClrClass, IMulticastNotSupportedException>)
	public
		class function Create: IMulticastNotSupportedException; overload;
		class function Create(message: String): IMulticastNotSupportedException; overload;
		class function Create(message: String; inner: IException): IMulticastNotSupportedException; overload;
	end;

	TMutex = class(TCoreClrGenericImport<IMutexClass, IMutex>)
	public
		class function Create(initiallyOwned: Boolean; name: String; var createdNew: Boolean): IMutex; overload;
		class function Create(initiallyOwned: Boolean; name: String): IMutex; overload;
		class function Create(initiallyOwned: Boolean): IMutex; overload;
		class function Create: IMutex; overload;
	end;

	TNeutralResourcesLanguageAttribute = class(TCoreClrGenericImport<ICoreClrClass, INeutralResourcesLanguageAttribute>)
	public
		class function Create(cultureName: String): INeutralResourcesLanguageAttribute; overload;
		class function Create(cultureName: String; location: TUltimateResourceFallbackLocation): INeutralResourcesLanguageAttribute; overload;
	end;

	TNonEventAttribute = class(TCoreClrGenericImport<ICoreClrClass, INonEventAttribute>)
	public
		class function Create: INonEventAttribute;
	end;

	TNonSerializedAttribute = class(TCoreClrGenericImport<ICoreClrClass, INonSerializedAttribute>)
	public
		class function Create: INonSerializedAttribute;
	end;

	TNotFiniteNumberException = class(TCoreClrGenericImport<ICoreClrClass, INotFiniteNumberException>)
	public
		class function Create: INotFiniteNumberException; overload;
		class function Create(offendingNumber: Double): INotFiniteNumberException; overload;
		class function Create(message: String): INotFiniteNumberException; overload;
		class function Create(message: String; offendingNumber: Double): INotFiniteNumberException; overload;
		class function Create(message: String; innerException: IException): INotFiniteNumberException; overload;
		class function Create(message: String; offendingNumber: Double; innerException: IException): INotFiniteNumberException; overload;
	end;

	TNotImplementedException = class(TCoreClrGenericImport<ICoreClrClass, INotImplementedException>)
	public
		class function Create: INotImplementedException; overload;
		class function Create(message: String): INotImplementedException; overload;
		class function Create(message: String; inner: IException): INotImplementedException; overload;
	end;

	TNotNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, INotNullAttribute>)
	public
		class function Create: INotNullAttribute;
	end;

	TNotNullIfNotNullAttribute = class(TCoreClrGenericImport<ICoreClrClass, INotNullIfNotNullAttribute>)
	public
		class function Create(parameterName: String): INotNullIfNotNullAttribute;
	end;

	TNotNullWhenAttribute = class(TCoreClrGenericImport<ICoreClrClass, INotNullWhenAttribute>)
	public
		class function Create(returnValue: Boolean): INotNullWhenAttribute;
	end;

	TNotSupportedException = class(TCoreClrGenericImport<ICoreClrClass, INotSupportedException>)
	public
		class function Create: INotSupportedException; overload;
		class function Create(message: String): INotSupportedException; overload;
		class function Create(message: String; innerException: IException): INotSupportedException; overload;
	end;

	TNullable<T> = class(TCoreClrGenericImport<ICoreClrClass, INullable<T>>)
	public
		class function Create(value: T): INullable<T>;
	end;

	TNullableComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, INullableComparer<T>>)
	public
		class function Create: INullableComparer<T>;
	end;

	TNullableEqualityComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, INullableEqualityComparer<T>>)
	public
		class function Create: INullableEqualityComparer<T>;
	end;

	TNullReferenceException = class(TCoreClrGenericImport<ICoreClrClass, INullReferenceException>)
	public
		class function Create: INullReferenceException; overload;
		class function Create(message: String): INullReferenceException; overload;
		class function Create(message: String; innerException: IException): INullReferenceException; overload;
	end;

	TNumberFormatInfo = class(TCoreClrGenericImport<INumberFormatInfoClass, INumberFormatInfo>)
	public
		class function Create: INumberFormatInfo;
	end;

	TObfuscateAssemblyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IObfuscateAssemblyAttribute>)
	public
		class function Create(assemblyIsPrivate: Boolean): IObfuscateAssemblyAttribute;
	end;

	TObfuscationAttribute = class(TCoreClrGenericImport<ICoreClrClass, IObfuscationAttribute>)
	public
		class function Create: IObfuscationAttribute;
	end;

	TObjectComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IObjectComparer<T>>)
	public
		class function Create: IObjectComparer<T>;
	end;

	TObjectDisposedException = class(TCoreClrGenericImport<ICoreClrClass, IObjectDisposedException>)
	public
		class function Create(objectName: String): IObjectDisposedException; overload;
		class function Create(objectName: String; message: String): IObjectDisposedException; overload;
		class function Create(message: String; innerException: IException): IObjectDisposedException; overload;
	end;

	TObjectEqualityComparer<T> = class(TCoreClrGenericImport<ICoreClrClass, IObjectEqualityComparer<T>>)
	public
		class function Create: IObjectEqualityComparer<T>;
	end;

	TObjectHandle = class(TCoreClrGenericImport<ICoreClrClass, IObjectHandle>)
	public
		class function Create(o: Variant): IObjectHandle;
	end;

	TObsoleteAttribute = class(TCoreClrGenericImport<ICoreClrClass, IObsoleteAttribute>)
	public
		class function Create: IObsoleteAttribute; overload;
		class function Create(message: String): IObsoleteAttribute; overload;
		class function Create(message: String; error: Boolean): IObsoleteAttribute; overload;
	end;

	TOnDeserializedAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOnDeserializedAttribute>)
	public
		class function Create: IOnDeserializedAttribute;
	end;

	TOnDeserializingAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOnDeserializingAttribute>)
	public
		class function Create: IOnDeserializingAttribute;
	end;

	TOnSerializedAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOnSerializedAttribute>)
	public
		class function Create: IOnSerializedAttribute;
	end;

	TOnSerializingAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOnSerializingAttribute>)
	public
		class function Create: IOnSerializingAttribute;
	end;

	TOperatingSystem = class(TCoreClrGenericImport<IOperatingSystemClass, IOperatingSystem>)
	public
		class function Create(platform_: TPlatformID; version: IVersion): IOperatingSystem;
	end;

	TOperationCanceledException = class(TCoreClrGenericImport<ICoreClrClass, IOperationCanceledException>)
	public
		class function Create: IOperationCanceledException; overload;
		class function Create(message: String): IOperationCanceledException; overload;
		class function Create(token: ICancellationToken): IOperationCanceledException; overload;
		class function Create(message: String; innerException: IException): IOperationCanceledException; overload;
		class function Create(message: String; token: ICancellationToken): IOperationCanceledException; overload;
		class function Create(message: String; innerException: IException; token: ICancellationToken): IOperationCanceledException; overload;
	end;

	TOptionalAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOptionalAttribute>)
	public
		class function Create: IOptionalAttribute;
	end;

	TOptionalFieldAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOptionalFieldAttribute>)
	public
		class function Create: IOptionalFieldAttribute;
	end;

	TOutAttribute = class(TCoreClrGenericImport<ICoreClrClass, IOutAttribute>)
	public
		class function Create: IOutAttribute;
	end;

	TOverflowException = class(TCoreClrGenericImport<ICoreClrClass, IOverflowException>)
	public
		class function Create: IOverflowException; overload;
		class function Create(message: String): IOverflowException; overload;
		class function Create(message: String; innerException: IException): IOverflowException; overload;
	end;

	TOverlapped = class(TCoreClrGenericImport<IOverlappedClass, IOverlapped>)
	public
		class function Create: IOverlapped; overload;
		class function Create(offsetLo: Integer; offsetHi: Integer; hEvent: IIntPtr; ar: IIAsyncResult): IOverlapped; overload;
		class function Create(offsetLo: Integer; offsetHi: Integer; hEvent: Integer; ar: IIAsyncResult): IOverlapped; overload;
	end;

	TParamArrayAttribute = class(TCoreClrGenericImport<ICoreClrClass, IParamArrayAttribute>)
	public
		class function Create: IParamArrayAttribute;
	end;

	TParameterModifier = class(TCoreClrGenericImport<ICoreClrClass, IParameterModifier>)
	public
		class function Create(parameterCount: Integer): IParameterModifier;
	end;

	TPathTooLongException = class(TCoreClrGenericImport<ICoreClrClass, IPathTooLongException>)
	public
		class function Create: IPathTooLongException; overload;
		class function Create(message: String): IPathTooLongException; overload;
		class function Create(message: String; innerException: IException): IPathTooLongException; overload;
	end;

	TPermissionSet = class(TCoreClrGenericImport<IPermissionSetClass, IPermissionSet>)
	public
		class function Create(state: TPermissionState): IPermissionSet; overload;
		class function Create(permSet: IPermissionSet): IPermissionSet; overload;
	end;

	TPersianCalendar = class(TCoreClrGenericImport<IPersianCalendarClass, IPersianCalendar>)
	public
		class function Create: IPersianCalendar;
	end;

	TPlane = class(TCoreClrGenericImport<IPlaneClass, IPlane>)
	public
		class function Create(x: Single; y: Single; z: Single; d: Single): IPlane; overload;
		class function Create(normal: IVector3; d: Single): IPlane; overload;
		class function Create(value: IVector4): IPlane; overload;
	end;

	TPlatformNotSupportedException = class(TCoreClrGenericImport<ICoreClrClass, IPlatformNotSupportedException>)
	public
		class function Create: IPlatformNotSupportedException; overload;
		class function Create(message: String): IPlatformNotSupportedException; overload;
		class function Create(message: String; inner: IException): IPlatformNotSupportedException; overload;
	end;

	TPollingCounter = class(TCoreClrGenericImport<ICoreClrClass, IPollingCounter>)
	public
		class function Create(name: String; eventSource: IEventSource; metricProvider: TClrFunc<Double>): IPollingCounter;
	end;

	TPreAllocatedOverlapped = class(TCoreClrGenericImport<ICoreClrClass, IPreAllocatedOverlapped>)
	public
		class function Create(callback: TIOCompletionCallback; state: Variant; pinData: Variant): IPreAllocatedOverlapped;
	end;

	TPrePrepareMethodAttribute = class(TCoreClrGenericImport<ICoreClrClass, IPrePrepareMethodAttribute>)
	public
		class function Create: IPrePrepareMethodAttribute;
	end;

	TPreserveBaseOverridesAttribute = class(TCoreClrGenericImport<ICoreClrClass, IPreserveBaseOverridesAttribute>)
	public
		class function Create: IPreserveBaseOverridesAttribute;
	end;

	TPreserveSigAttribute = class(TCoreClrGenericImport<ICoreClrClass, IPreserveSigAttribute>)
	public
		class function Create: IPreserveSigAttribute;
	end;

	TProgIdAttribute = class(TCoreClrGenericImport<ICoreClrClass, IProgIdAttribute>)
	public
		class function Create(progId: String): IProgIdAttribute;
	end;

	TProgress<T> = class(TCoreClrGenericImport<ICoreClrClass, IProgress<T>>)
	public
		class function Create: IProgress<T>; overload;
		class function Create(handler: TClrAction<T>): IProgress<T>; overload;
	end;

	TPureAttribute = class(TCoreClrGenericImport<ICoreClrClass, IPureAttribute>)
	public
		class function Create: IPureAttribute;
	end;

	TQuaternion = class(TCoreClrGenericImport<IQuaternionClass, IQuaternion>)
	public
		class function Create(x: Single; y: Single; z: Single; w: Single): IQuaternion; overload;
		class function Create(vectorPart: IVector3; scalarPart: Single): IQuaternion; overload;
	end;

	TRandom = class(TCoreClrGenericImport<ICoreClrClass, IRandom>)
	public
		class function Create: IRandom; overload;
		class function Create(Seed: Integer): IRandom; overload;
	end;

	TRange = class(TCoreClrGenericImport<IRangeClass, IRange>)
	public
		class function Create(start: IIndex; end_: IIndex): IRange;
	end;

	TRankException = class(TCoreClrGenericImport<ICoreClrClass, IRankException>)
	public
		class function Create: IRankException; overload;
		class function Create(message: String): IRankException; overload;
		class function Create(message: String; innerException: IException): IRankException; overload;
	end;

	TReaderWriterLockSlim = class(TCoreClrGenericImport<ICoreClrClass, IReaderWriterLockSlim>)
	public
		class function Create: IReaderWriterLockSlim; overload;
		class function Create(recursionPolicy: TLockRecursionPolicy): IReaderWriterLockSlim; overload;
	end;

	TReadOnlyCollection<T> = class(TCoreClrGenericImport<ICoreClrClass, IReadOnlyCollection<T>>)
	public
		class function Create(list: IIList<T>): IReadOnlyCollection<T>;
	end;

	TReadOnlyMemory<T> = class(TCoreClrGenericImport<IReadOnlyMemoryClass<T>, IReadOnlyMemory<T>>)
	public
		class function Create(array_: ICoreClrBridgeArray<T>): IReadOnlyMemory<T>; overload;
		class function Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IReadOnlyMemory<T>; overload;
	end;

	TReadOnlySpan<T> = class(TCoreClrGenericImport<IReadOnlySpanClass<T>, IReadOnlySpan<T>>)
	public
		class function Create(array_: ICoreClrBridgeArray<T>): IReadOnlySpan<T>; overload;
		class function Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IReadOnlySpan<T>; overload;
		class function Create(pointer: ICoreClrInstance; length: Integer): IReadOnlySpan<T>; overload;
	end;

	TReferenceAssemblyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IReferenceAssemblyAttribute>)
	public
		class function Create: IReferenceAssemblyAttribute; overload;
		class function Create(description: String): IReferenceAssemblyAttribute; overload;
	end;

	TReflectionTypeLoadException = class(TCoreClrGenericImport<ICoreClrClass, IReflectionTypeLoadException>)
	public
		class function Create(classes: ICoreClrBridgeArray<IType>; exceptions: ICoreClrBridgeArray<IException>): IReflectionTypeLoadException; overload;
		class function Create(classes: ICoreClrBridgeArray<IType>; exceptions: ICoreClrBridgeArray<IException>; message: String): IReflectionTypeLoadException; overload;
	end;

	TRegionInfo = class(TCoreClrGenericImport<IRegionInfoClass, IRegionInfo>)
	public
		class function Create(name: String): IRegionInfo; overload;
		class function Create(culture: Integer): IRegionInfo; overload;
	end;

	TReliabilityContractAttribute = class(TCoreClrGenericImport<ICoreClrClass, IReliabilityContractAttribute>)
	public
		class function Create(consistencyGuarantee: TConsistency; cer: TCer): IReliabilityContractAttribute;
	end;

	TRequiresUnreferencedCodeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IRequiresUnreferencedCodeAttribute>)
	public
		class function Create(message: String): IRequiresUnreferencedCodeAttribute;
	end;

	TResolveEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IResolveEventArgs>)
	public
		class function Create(name: String): IResolveEventArgs; overload;
		class function Create(name: String; requestingAssembly: IAssembly): IResolveEventArgs; overload;
	end;

	TResourceConsumptionAttribute = class(TCoreClrGenericImport<ICoreClrClass, IResourceConsumptionAttribute>)
	public
		class function Create(resourceScope: TResourceScope_Set): IResourceConsumptionAttribute; overload;
		class function Create(resourceScope: TResourceScope_Set; consumptionScope: TResourceScope_Set): IResourceConsumptionAttribute; overload;
	end;

	TResourceExposureAttribute = class(TCoreClrGenericImport<ICoreClrClass, IResourceExposureAttribute>)
	public
		class function Create(exposureLevel: TResourceScope_Set): IResourceExposureAttribute;
	end;

	TResourceManager = class(TCoreClrGenericImport<IResourceManagerClass, IResourceManager>)
	public
		class function Create(baseName: String; assembly: IAssembly): IResourceManager; overload;
		class function Create(baseName: String; assembly: IAssembly; usingResourceSet: IType): IResourceManager; overload;
		class function Create(resourceSource: IType): IResourceManager; overload;
	end;

	TResourceReader = class(TCoreClrGenericImport<ICoreClrClass, IResourceReader>)
	public
		class function Create(fileName: String): IResourceReader; overload;
		class function Create(stream: IStream): IResourceReader; overload;
	end;

	TResourceSet = class(TCoreClrGenericImport<ICoreClrClass, IResourceSet>)
	public
		class function Create(fileName: String): IResourceSet; overload;
		class function Create(stream: IStream): IResourceSet; overload;
		class function Create(reader: IIResourceReader): IResourceSet; overload;
	end;

	TRune = class(TCoreClrGenericImport<IRuneClass, IRune>)
	public
		class function Create(ch: Char): IRune; overload;
		class function Create(value: Integer): IRune; overload;
		class function Create(value: longword): IRune; overload;
		class function Create(highSurrogate: Char; lowSurrogate: Char): IRune; overload;
	end;

	TRuntimeCompatibilityAttribute = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeCompatibilityAttribute>)
	public
		class function Create: IRuntimeCompatibilityAttribute;
	end;

	TRuntimeWrappedException = class(TCoreClrGenericImport<ICoreClrClass, IRuntimeWrappedException>)
	public
		class function Create(thrownObject: Variant): IRuntimeWrappedException;
	end;

	TSafeArrayRankMismatchException = class(TCoreClrGenericImport<ICoreClrClass, ISafeArrayRankMismatchException>)
	public
		class function Create: ISafeArrayRankMismatchException; overload;
		class function Create(message: String): ISafeArrayRankMismatchException; overload;
		class function Create(message: String; inner: IException): ISafeArrayRankMismatchException; overload;
	end;

	TSafeArrayTypeMismatchException = class(TCoreClrGenericImport<ICoreClrClass, ISafeArrayTypeMismatchException>)
	public
		class function Create: ISafeArrayTypeMismatchException; overload;
		class function Create(message: String): ISafeArrayTypeMismatchException; overload;
		class function Create(message: String; inner: IException): ISafeArrayTypeMismatchException; overload;
	end;

	TSafeFileHandle = class(TCoreClrGenericImport<ICoreClrClass, ISafeFileHandle>)
	public
		class function Create(preexistingHandle: IIntPtr; ownsHandle: Boolean): ISafeFileHandle;
	end;

	TSafeWaitHandle = class(TCoreClrGenericImport<ICoreClrClass, ISafeWaitHandle>)
	public
		class function Create(existingHandle: IIntPtr; ownsHandle: Boolean): ISafeWaitHandle;
	end;

	TSatelliteContractVersionAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISatelliteContractVersionAttribute>)
	public
		class function Create(version: String): ISatelliteContractVersionAttribute;
	end;

	TSecureString = class(TCoreClrGenericImport<ICoreClrClass, ISecureString>)
	public
		class function Create: ISecureString; overload;
		class function Create(value: ICoreClrInstance; length: Integer): ISecureString; overload;
	end;

	TSecurityCriticalAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityCriticalAttribute>)
	public
		class function Create: ISecurityCriticalAttribute; overload;
		class function Create(scope: TSecurityCriticalScope): ISecurityCriticalAttribute; overload;
	end;

	TSecurityElement = class(TCoreClrGenericImport<ISecurityElementClass, ISecurityElement>)
	public
		class function Create(tag: String): ISecurityElement; overload;
		class function Create(tag: String; text: String): ISecurityElement; overload;
	end;

	TSecurityException = class(TCoreClrGenericImport<ICoreClrClass, ISecurityException>)
	public
		class function Create: ISecurityException; overload;
		class function Create(message: String): ISecurityException; overload;
		class function Create(message: String; inner: IException): ISecurityException; overload;
		class function Create(message: String; type_: IType): ISecurityException; overload;
		class function Create(message: String; type_: IType; state: String): ISecurityException; overload;
	end;

	TSecurityPermissionAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityPermissionAttribute>)
	public
		class function Create(action: TSecurityAction): ISecurityPermissionAttribute;
	end;

	TSecurityRulesAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityRulesAttribute>)
	public
		class function Create(ruleSet: TSecurityRuleSet): ISecurityRulesAttribute;
	end;

	TSecuritySafeCriticalAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecuritySafeCriticalAttribute>)
	public
		class function Create: ISecuritySafeCriticalAttribute;
	end;

	TSecurityTransparentAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityTransparentAttribute>)
	public
		class function Create: ISecurityTransparentAttribute;
	end;

	TSecurityTreatAsSafeAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISecurityTreatAsSafeAttribute>)
	public
		class function Create: ISecurityTreatAsSafeAttribute;
	end;

	TSEHException = class(TCoreClrGenericImport<ICoreClrClass, ISEHException>)
	public
		class function Create: ISEHException; overload;
		class function Create(message: String): ISEHException; overload;
		class function Create(message: String; inner: IException): ISEHException; overload;
	end;

	TSemaphore = class(TCoreClrGenericImport<ISemaphoreClass, ISemaphore>)
	public
		class function Create(initialCount: Integer; maximumCount: Integer): ISemaphore; overload;
		class function Create(initialCount: Integer; maximumCount: Integer; name: String): ISemaphore; overload;
		class function Create(initialCount: Integer; maximumCount: Integer; name: String; var createdNew: Boolean): ISemaphore; overload;
	end;

	TSemaphoreFullException = class(TCoreClrGenericImport<ICoreClrClass, ISemaphoreFullException>)
	public
		class function Create: ISemaphoreFullException; overload;
		class function Create(message: String): ISemaphoreFullException; overload;
		class function Create(message: String; innerException: IException): ISemaphoreFullException; overload;
	end;

	TSemaphoreSlim = class(TCoreClrGenericImport<ICoreClrClass, ISemaphoreSlim>)
	public
		class function Create(initialCount: Integer): ISemaphoreSlim; overload;
		class function Create(initialCount: Integer; maxCount: Integer): ISemaphoreSlim; overload;
	end;

	TSerializableAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISerializableAttribute>)
	public
		class function Create: ISerializableAttribute;
	end;

	TSerializationException = class(TCoreClrGenericImport<ICoreClrClass, ISerializationException>)
	public
		class function Create: ISerializationException; overload;
		class function Create(message: String): ISerializationException; overload;
		class function Create(message: String; innerException: IException): ISerializationException; overload;
	end;

	TSerializationInfo = class(TCoreClrGenericImport<ISerializationInfoClass, ISerializationInfo>)
	public
		class function Create(type_: IType; converter: IIFormatterConverter): ISerializationInfo; overload;
		class function Create(type_: IType; converter: IIFormatterConverter; requireSameTokenInPartialTrust: Boolean): ISerializationInfo; overload;
	end;

	TSkipLocalsInitAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISkipLocalsInitAttribute>)
	public
		class function Create: ISkipLocalsInitAttribute;
	end;

	TSortVersion = class(TCoreClrGenericImport<ICoreClrClass, ISortVersion>)
	public
		class function Create(fullVersion: Integer; sortId: IGuid): ISortVersion;
	end;

	TSpan<T> = class(TCoreClrGenericImport<ISpanClass<T>, ISpan<T>>)
	public
		class function Create(array_: ICoreClrBridgeArray<T>): ISpan<T>; overload;
		class function Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): ISpan<T>; overload;
		class function Create(pointer: ICoreClrInstance; length: Integer): ISpan<T>; overload;
	end;

	TSpecialNameAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISpecialNameAttribute>)
	public
		class function Create: ISpecialNameAttribute;
	end;

	TSpinLock = class(TCoreClrGenericImport<ICoreClrClass, ISpinLock>)
	public
		class function Create(enableThreadOwnerTracking: Boolean): ISpinLock;
	end;

	TStackFrame = class(TCoreClrGenericImport<IStackFrameClass, IStackFrame>)
	public
		class function Create: IStackFrame; overload;
		class function Create(needFileInfo: Boolean): IStackFrame; overload;
		class function Create(skipFrames: Integer): IStackFrame; overload;
		class function Create(skipFrames: Integer; needFileInfo: Boolean): IStackFrame; overload;
		class function Create(fileName: String; lineNumber: Integer): IStackFrame; overload;
		class function Create(fileName: String; lineNumber: Integer; colNumber: Integer): IStackFrame; overload;
	end;

	TStackOverflowException = class(TCoreClrGenericImport<ICoreClrClass, IStackOverflowException>)
	public
		class function Create: IStackOverflowException; overload;
		class function Create(message: String): IStackOverflowException; overload;
		class function Create(message: String; innerException: IException): IStackOverflowException; overload;
	end;

	TStackTrace = class(TCoreClrGenericImport<IStackTraceClass, IStackTrace>)
	public
		class function Create: IStackTrace; overload;
		class function Create(fNeedFileInfo: Boolean): IStackTrace; overload;
		class function Create(skipFrames: Integer): IStackTrace; overload;
		class function Create(e: IException): IStackTrace; overload;
		class function Create(frame: IStackFrame): IStackTrace; overload;
		class function Create(skipFrames: Integer; fNeedFileInfo: Boolean): IStackTrace; overload;
		class function Create(e: IException; fNeedFileInfo: Boolean): IStackTrace; overload;
		class function Create(e: IException; skipFrames: Integer): IStackTrace; overload;
		class function Create(e: IException; skipFrames: Integer; fNeedFileInfo: Boolean): IStackTrace; overload;
	end;

	TStandardFormat = class(TCoreClrGenericImport<IStandardFormatClass, IStandardFormat>)
	public
		class function Create(symbol: Char; precision: Byte): IStandardFormat;
	end;

	TSTAThreadAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISTAThreadAttribute>)
	public
		class function Create: ISTAThreadAttribute;
	end;

	TStopwatch = class(TCoreClrGenericImport<IStopwatchClass, IStopwatch>)
	public
		class function Create: IStopwatch;
	end;

	TStreamingContext = class(TCoreClrGenericImport<ICoreClrClass, IStreamingContext>)
	public
		class function Create(state: TStreamingContextStates_Set): IStreamingContext; overload;
		class function Create(state: TStreamingContextStates_Set; additional: Variant): IStreamingContext; overload;
	end;

	TStreamReader = class(TCoreClrGenericImport<IStreamReaderClass, IStreamReader>)
	public
		class function Create(stream: IStream): IStreamReader; overload;
		class function Create(path: String): IStreamReader; overload;
		class function Create(stream: IStream; detectEncodingFromByteOrderMarks: Boolean): IStreamReader; overload;
		class function Create(stream: IStream; encoding: IEncoding): IStreamReader; overload;
		class function Create(path: String; detectEncodingFromByteOrderMarks: Boolean): IStreamReader; overload;
		class function Create(path: String; encoding: IEncoding): IStreamReader; overload;
		class function Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean): IStreamReader; overload;
		class function Create(path: String; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean): IStreamReader; overload;
		class function Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer): IStreamReader; overload;
		class function Create(path: String; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer): IStreamReader; overload;
		class function Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer; leaveOpen: Boolean): IStreamReader; overload;
	end;

	TStreamWriter = class(TCoreClrGenericImport<IStreamWriterClass, IStreamWriter>)
	public
		class function Create(stream: IStream): IStreamWriter; overload;
		class function Create(path: String): IStreamWriter; overload;
		class function Create(stream: IStream; encoding: IEncoding): IStreamWriter; overload;
		class function Create(path: String; append: Boolean): IStreamWriter; overload;
		class function Create(stream: IStream; encoding: IEncoding; bufferSize: Integer): IStreamWriter; overload;
		class function Create(path: String; append: Boolean; encoding: IEncoding): IStreamWriter; overload;
		class function Create(stream: IStream; encoding: IEncoding; bufferSize: Integer; leaveOpen: Boolean): IStreamWriter; overload;
		class function Create(path: String; append: Boolean; encoding: IEncoding; bufferSize: Integer): IStreamWriter; overload;
	end;

	TString = class(TCoreClrGenericImport<IStringClass, IString>)
	public
		class function Create(value: TArray<Char>): IString; overload;
		class function Create(value: ICoreClrInstance): IString; overload;
		class function Create(value: IReadOnlySpan<Char>): IString; overload;
		class function Create(value: TArray<Char>; startIndex: Integer; length: Integer): IString; overload;
		class function Create(value: ICoreClrInstance; startIndex: Integer; length: Integer): IString; overload;
		class function Create(value: ICoreClrInstance; startIndex: Integer; length: Integer; enc: IEncoding): IString; overload;
		class function Create(c: Char; count: Integer): IString; overload;
	end;

	TStringBuilder = class(TCoreClrGenericImport<ICoreClrClass, IStringBuilder>)
	public
		class function Create: IStringBuilder; overload;
		class function Create(capacity: Integer): IStringBuilder; overload;
		class function Create(value: String): IStringBuilder; overload;
		class function Create(value: String; capacity: Integer): IStringBuilder; overload;
		class function Create(capacity: Integer; maxCapacity: Integer): IStringBuilder; overload;
		class function Create(value: String; startIndex: Integer; length: Integer; capacity: Integer): IStringBuilder; overload;
	end;

	TStringFreezingAttribute = class(TCoreClrGenericImport<ICoreClrClass, IStringFreezingAttribute>)
	public
		class function Create: IStringFreezingAttribute;
	end;

	TStringInfo = class(TCoreClrGenericImport<IStringInfoClass, IStringInfo>)
	public
		class function Create: IStringInfo; overload;
		class function Create(value: String): IStringInfo; overload;
	end;

	TStringReader = class(TCoreClrGenericImport<ICoreClrClass, IStringReader>)
	public
		class function Create(s: String): IStringReader;
	end;

	TStringWriter = class(TCoreClrGenericImport<ICoreClrClass, IStringWriter>)
	public
		class function Create: IStringWriter; overload;
		class function Create(formatProvider: IIFormatProvider): IStringWriter; overload;
		class function Create(sb: IStringBuilder): IStringWriter; overload;
		class function Create(sb: IStringBuilder; formatProvider: IIFormatProvider): IStringWriter; overload;
	end;

	TStrongBox<T> = class(TCoreClrGenericImport<ICoreClrClass, IStrongBox<T>>)
	public
		class function Create: IStrongBox<T>; overload;
		class function Create(value: T): IStrongBox<T>; overload;
	end;

	TStrongNameKeyPair = class(TCoreClrGenericImport<ICoreClrClass, IStrongNameKeyPair>)
	public
		class function Create(keyPairFile: IFileStream): IStrongNameKeyPair; overload;
		class function Create(keyPairArray: TArray<Byte>): IStrongNameKeyPair; overload;
		class function Create(keyPairContainer: String): IStrongNameKeyPair; overload;
	end;

	TStructLayoutAttribute = class(TCoreClrGenericImport<ICoreClrClass, IStructLayoutAttribute>)
	public
		class function Create(layoutKind: TLayoutKind): IStructLayoutAttribute; overload;
		class function Create(layoutKind: SmallInt): IStructLayoutAttribute; overload;
	end;

	TSupportedOSPlatformAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISupportedOSPlatformAttribute>)
	public
		class function Create(platformName: String): ISupportedOSPlatformAttribute;
	end;

	TSuppressGCTransitionAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISuppressGCTransitionAttribute>)
	public
		class function Create: ISuppressGCTransitionAttribute;
	end;

	TSuppressIldasmAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISuppressIldasmAttribute>)
	public
		class function Create: ISuppressIldasmAttribute;
	end;

	TSuppressMessageAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISuppressMessageAttribute>)
	public
		class function Create(category: String; checkId: String): ISuppressMessageAttribute;
	end;

	TSuppressUnmanagedCodeSecurityAttribute = class(TCoreClrGenericImport<ICoreClrClass, ISuppressUnmanagedCodeSecurityAttribute>)
	public
		class function Create: ISuppressUnmanagedCodeSecurityAttribute;
	end;

	TSwitchExpressionException = class(TCoreClrGenericImport<ICoreClrClass, ISwitchExpressionException>)
	public
		class function Create: ISwitchExpressionException; overload;
		class function Create(innerException: IException): ISwitchExpressionException; overload;
		class function Create(unmatchedValue: Variant): ISwitchExpressionException; overload;
		class function Create(message: String): ISwitchExpressionException; overload;
		class function Create(message: String; innerException: IException): ISwitchExpressionException; overload;
	end;

	TSynchronizationContext = class(TCoreClrGenericImport<ISynchronizationContextClass, ISynchronizationContext>)
	public
		class function Create: ISynchronizationContext;
	end;

	TSynchronizationLockException = class(TCoreClrGenericImport<ICoreClrClass, ISynchronizationLockException>)
	public
		class function Create: ISynchronizationLockException; overload;
		class function Create(message: String): ISynchronizationLockException; overload;
		class function Create(message: String; innerException: IException): ISynchronizationLockException; overload;
	end;

	TTaiwanCalendar = class(TCoreClrGenericImport<ICoreClrClass, ITaiwanCalendar>)
	public
		class function Create: ITaiwanCalendar;
	end;

	TTaiwanLunisolarCalendar = class(TCoreClrGenericImport<ICoreClrClass, ITaiwanLunisolarCalendar>)
	public
		class function Create: ITaiwanLunisolarCalendar;
	end;

	TTargetedPatchingOptOutAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITargetedPatchingOptOutAttribute>)
	public
		class function Create(reason: String): ITargetedPatchingOptOutAttribute;
	end;

	TTargetException = class(TCoreClrGenericImport<ICoreClrClass, ITargetException>)
	public
		class function Create: ITargetException; overload;
		class function Create(message: String): ITargetException; overload;
		class function Create(message: String; inner: IException): ITargetException; overload;
	end;

	TTargetFrameworkAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITargetFrameworkAttribute>)
	public
		class function Create(frameworkName: String): ITargetFrameworkAttribute;
	end;

	TTargetInvocationException = class(TCoreClrGenericImport<ICoreClrClass, ITargetInvocationException>)
	public
		class function Create(inner: IException): ITargetInvocationException; overload;
		class function Create(message: String; inner: IException): ITargetInvocationException; overload;
	end;

	TTargetParameterCountException = class(TCoreClrGenericImport<ICoreClrClass, ITargetParameterCountException>)
	public
		class function Create: ITargetParameterCountException; overload;
		class function Create(message: String): ITargetParameterCountException; overload;
		class function Create(message: String; inner: IException): ITargetParameterCountException; overload;
	end;

	TTargetPlatformAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITargetPlatformAttribute>)
	public
		class function Create(platformName: String): ITargetPlatformAttribute;
	end;

	TTask = class(TCoreClrGenericImport<ITaskClass, ITask>)
	public
		class function Create(action: TClrAction): ITask; overload;
		class function Create(action: TClrAction; cancellationToken: ICancellationToken): ITask; overload;
		class function Create(action: TClrAction; creationOptions: TTaskCreationOptions_Set): ITask; overload;
		class function Create(action: TClrAction<Variant>; state: Variant): ITask; overload;
		class function Create(action: TClrAction; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask; overload;
		class function Create(action: TClrAction<Variant>; state: Variant; cancellationToken: ICancellationToken): ITask; overload;
		class function Create(action: TClrAction<Variant>; state: Variant; creationOptions: TTaskCreationOptions_Set): ITask; overload;
		class function Create(action: TClrAction<Variant>; state: Variant; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask; overload;
	end;

	TTask<TResult> = class(TCoreClrGenericImport<ITaskClass<TResult>, ITask<TResult>>)
	public
		class function Create(function_: TClrFunc<TResult>): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<TResult>; cancellationToken: ICancellationToken): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<TResult>; creationOptions: TTaskCreationOptions_Set): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<Variant, TResult>; state: Variant): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<TResult>; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<Variant, TResult>; state: Variant; cancellationToken: ICancellationToken): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<Variant, TResult>; state: Variant; creationOptions: TTaskCreationOptions_Set): ITask<TResult>; overload;
		class function Create(function_: TClrFunc<Variant, TResult>; state: Variant; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask<TResult>; overload;
	end;

	TTaskCanceledException = class(TCoreClrGenericImport<ICoreClrClass, ITaskCanceledException>)
	public
		class function Create: ITaskCanceledException; overload;
		class function Create(message: String): ITaskCanceledException; overload;
		class function Create(task: ITask): ITaskCanceledException; overload;
		class function Create(message: String; innerException: IException): ITaskCanceledException; overload;
		class function Create(message: String; innerException: IException; token: ICancellationToken): ITaskCanceledException; overload;
	end;

	TTaskCompletionSource = class(TCoreClrGenericImport<ICoreClrClass, ITaskCompletionSource>)
	public
		class function Create: ITaskCompletionSource; overload;
		class function Create(creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource; overload;
		class function Create(state: Variant): ITaskCompletionSource; overload;
		class function Create(state: Variant; creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource; overload;
	end;

	TTaskCompletionSource<TResult> = class(TCoreClrGenericImport<ICoreClrClass, ITaskCompletionSource<TResult>>)
	public
		class function Create: ITaskCompletionSource<TResult>; overload;
		class function Create(creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource<TResult>; overload;
		class function Create(state: Variant): ITaskCompletionSource<TResult>; overload;
		class function Create(state: Variant; creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource<TResult>; overload;
	end;

	TTaskFactory = class(TCoreClrGenericImport<ICoreClrClass, ITaskFactory>)
	public
		class function Create: ITaskFactory; overload;
		class function Create(cancellationToken: ICancellationToken): ITaskFactory; overload;
		class function Create(scheduler: ITaskScheduler): ITaskFactory; overload;
		class function Create(creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set): ITaskFactory; overload;
		class function Create(cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set; scheduler: ITaskScheduler): ITaskFactory; overload;
	end;

	TTaskFactory<TResult> = class(TCoreClrGenericImport<ICoreClrClass, ITaskFactory<TResult>>)
	public
		class function Create: ITaskFactory<TResult>; overload;
		class function Create(cancellationToken: ICancellationToken): ITaskFactory<TResult>; overload;
		class function Create(scheduler: ITaskScheduler): ITaskFactory<TResult>; overload;
		class function Create(creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set): ITaskFactory<TResult>; overload;
		class function Create(cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set; scheduler: ITaskScheduler): ITaskFactory<TResult>; overload;
	end;

	TTaskSchedulerException = class(TCoreClrGenericImport<ICoreClrClass, ITaskSchedulerException>)
	public
		class function Create: ITaskSchedulerException; overload;
		class function Create(message: String): ITaskSchedulerException; overload;
		class function Create(innerException: IException): ITaskSchedulerException; overload;
		class function Create(message: String; innerException: IException): ITaskSchedulerException; overload;
	end;

	TThaiBuddhistCalendar = class(TCoreClrGenericImport<IThaiBuddhistCalendarClass, IThaiBuddhistCalendar>)
	public
		class function Create: IThaiBuddhistCalendar;
	end;

	TThread = class(TCoreClrGenericImport<IThreadClass, IThread>)
	public
		class function Create(start: TThreadStart): IThread; overload;
		class function Create(start: TParameterizedThreadStart): IThread; overload;
		class function Create(start: TThreadStart; maxStackSize: Integer): IThread; overload;
		class function Create(start: TParameterizedThreadStart; maxStackSize: Integer): IThread; overload;
	end;

	TThreadExceptionEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IThreadExceptionEventArgs>)
	public
		class function Create(t: IException): IThreadExceptionEventArgs;
	end;

	TThreadInterruptedException = class(TCoreClrGenericImport<ICoreClrClass, IThreadInterruptedException>)
	public
		class function Create: IThreadInterruptedException; overload;
		class function Create(message: String): IThreadInterruptedException; overload;
		class function Create(message: String; innerException: IException): IThreadInterruptedException; overload;
	end;

	TThreadLocal<T> = class(TCoreClrGenericImport<ICoreClrClass, IThreadLocal<T>>)
	public
		class function Create: IThreadLocal<T>; overload;
		class function Create(trackAllValues: Boolean): IThreadLocal<T>; overload;
		class function Create(valueFactory: TClrFunc<T>): IThreadLocal<T>; overload;
		class function Create(valueFactory: TClrFunc<T>; trackAllValues: Boolean): IThreadLocal<T>; overload;
	end;

	TThreadStateException = class(TCoreClrGenericImport<ICoreClrClass, IThreadStateException>)
	public
		class function Create: IThreadStateException; overload;
		class function Create(message: String): IThreadStateException; overload;
		class function Create(message: String; innerException: IException): IThreadStateException; overload;
	end;

	TThreadStaticAttribute = class(TCoreClrGenericImport<ICoreClrClass, IThreadStaticAttribute>)
	public
		class function Create: IThreadStaticAttribute;
	end;

	TTimeoutException = class(TCoreClrGenericImport<ICoreClrClass, ITimeoutException>)
	public
		class function Create: ITimeoutException; overload;
		class function Create(message: String): ITimeoutException; overload;
		class function Create(message: String; innerException: IException): ITimeoutException; overload;
	end;

	TTimer = class(TCoreClrGenericImport<ITimerClass, ITimer>)
	public
		class function Create(callback: TTimerCallback; state: Variant; dueTime: Integer; period: Integer): ITimer; overload;
		class function Create(callback: TTimerCallback; state: Variant; dueTime: ITimeSpan; period: ITimeSpan): ITimer; overload;
		class function Create(callback: TTimerCallback; state: Variant; dueTime: longword; period: longword): ITimer; overload;
		class function Create(callback: TTimerCallback; state: Variant; dueTime: Int64; period: Int64): ITimer; overload;
		class function Create(callback: TTimerCallback): ITimer; overload;
	end;

	TTimeSpan = class(TCoreClrGenericImport<ITimeSpanClass, ITimeSpan>)
	public
		class function Create(ticks: Int64): ITimeSpan; overload;
		class function Create(hours: Integer; minutes: Integer; seconds: Integer): ITimeSpan; overload;
		class function Create(days: Integer; hours: Integer; minutes: Integer; seconds: Integer): ITimeSpan; overload;
		class function Create(days: Integer; hours: Integer; minutes: Integer; seconds: Integer; milliseconds: Integer): ITimeSpan; overload;
	end;

	TTimeZoneNotFoundException = class(TCoreClrGenericImport<ICoreClrClass, ITimeZoneNotFoundException>)
	public
		class function Create: ITimeZoneNotFoundException; overload;
		class function Create(message: String): ITimeZoneNotFoundException; overload;
		class function Create(message: String; innerException: IException): ITimeZoneNotFoundException; overload;
	end;

	TTuple<T1> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1>>)
	public
		class function Create(item1: T1): ITuple<T1>;
	end;

	TTuple<T1,T2> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2>>)
	public
		class function Create(item1: T1; item2: T2): ITuple<T1,T2>;
	end;

	TTuple<T1,T2,T3> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3): ITuple<T1,T2,T3>;
	end;

	TTuple<T1,T2,T3,T4> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3,T4>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4): ITuple<T1,T2,T3,T4>;
	end;

	TTuple<T1,T2,T3,T4,T5> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3,T4,T5>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5): ITuple<T1,T2,T3,T4,T5>;
	end;

	TTuple<T1,T2,T3,T4,T5,T6> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3,T4,T5,T6>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6): ITuple<T1,T2,T3,T4,T5,T6>;
	end;

	TTuple<T1,T2,T3,T4,T5,T6,T7> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3,T4,T5,T6,T7>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7): ITuple<T1,T2,T3,T4,T5,T6,T7>;
	end;

	TTuple<T1,T2,T3,T4,T5,T6,T7,TRest> = class(TCoreClrGenericImport<ICoreClrClass, ITuple<T1,T2,T3,T4,T5,T6,T7,TRest>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7; rest: TRest): ITuple<T1,T2,T3,T4,T5,T6,T7,TRest>;
	end;

	TTupleElementNamesAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITupleElementNamesAttribute>)
	public
		class function Create(transformNames: TArray<String>): ITupleElementNamesAttribute;
	end;

	TTypeAccessException = class(TCoreClrGenericImport<ICoreClrClass, ITypeAccessException>)
	public
		class function Create: ITypeAccessException; overload;
		class function Create(message: String): ITypeAccessException; overload;
		class function Create(message: String; inner: IException): ITypeAccessException; overload;
	end;

	TTypeDelegator = class(TCoreClrGenericImport<ICoreClrClass, ITypeDelegator>)
	public
		class function Create(delegatingType: IType): ITypeDelegator;
	end;

	TTypeForwardedFromAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITypeForwardedFromAttribute>)
	public
		class function Create(assemblyFullName: String): ITypeForwardedFromAttribute;
	end;

	TTypeForwardedToAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITypeForwardedToAttribute>)
	public
		class function Create(destination: IType): ITypeForwardedToAttribute;
	end;

	TTypeIdentifierAttribute = class(TCoreClrGenericImport<ICoreClrClass, ITypeIdentifierAttribute>)
	public
		class function Create: ITypeIdentifierAttribute; overload;
		class function Create(scope: String; identifier: String): ITypeIdentifierAttribute; overload;
	end;

	TTypeInitializationException = class(TCoreClrGenericImport<ICoreClrClass, ITypeInitializationException>)
	public
		class function Create(fullTypeName: String; innerException: IException): ITypeInitializationException;
	end;

	TTypeUnloadedException = class(TCoreClrGenericImport<ICoreClrClass, ITypeUnloadedException>)
	public
		class function Create: ITypeUnloadedException; overload;
		class function Create(message: String): ITypeUnloadedException; overload;
		class function Create(message: String; innerException: IException): ITypeUnloadedException; overload;
	end;

	TUIntPtr = class(TCoreClrGenericImport<IUIntPtrClass, IUIntPtr>)
	public
		class function Create(value: longword): IUIntPtr; overload;
		class function Create(value: UInt64): IUIntPtr; overload;
		class function Create(value: ICoreClrInstance): IUIntPtr; overload;
	end;

	TUmAlQuraCalendar = class(TCoreClrGenericImport<IUmAlQuraCalendarClass, IUmAlQuraCalendar>)
	public
		class function Create: IUmAlQuraCalendar;
	end;

	TUnauthorizedAccessException = class(TCoreClrGenericImport<ICoreClrClass, IUnauthorizedAccessException>)
	public
		class function Create: IUnauthorizedAccessException; overload;
		class function Create(message: String): IUnauthorizedAccessException; overload;
		class function Create(message: String; inner: IException): IUnauthorizedAccessException; overload;
	end;

	TUnconditionalSuppressMessageAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnconditionalSuppressMessageAttribute>)
	public
		class function Create(category: String; checkId: String): IUnconditionalSuppressMessageAttribute;
	end;

	TUnhandledExceptionEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IUnhandledExceptionEventArgs>)
	public
		class function Create(exception: Variant; isTerminating: Boolean): IUnhandledExceptionEventArgs;
	end;

	TUnicodeEncoding = class(TCoreClrGenericImport<IUnicodeEncodingClass, IUnicodeEncoding>)
	public
		class function Create: IUnicodeEncoding; overload;
		class function Create(bigEndian: Boolean; byteOrderMark: Boolean): IUnicodeEncoding; overload;
		class function Create(bigEndian: Boolean; byteOrderMark: Boolean; throwOnInvalidBytes: Boolean): IUnicodeEncoding; overload;
	end;

	TUnitySerializationHolder = class(TCoreClrGenericImport<ICoreClrClass, IUnitySerializationHolder>)
	public
		class function Create(info: ISerializationInfo; context: IStreamingContext): IUnitySerializationHolder;
	end;

	TUnknownWrapper = class(TCoreClrGenericImport<ICoreClrClass, IUnknownWrapper>)
	public
		class function Create(obj: Variant): IUnknownWrapper;
	end;

	TUnmanagedCallersOnlyAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnmanagedCallersOnlyAttribute>)
	public
		class function Create: IUnmanagedCallersOnlyAttribute;
	end;

	TUnmanagedFunctionPointerAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnmanagedFunctionPointerAttribute>)
	public
		class function Create: IUnmanagedFunctionPointerAttribute; overload;
		class function Create(callingConvention: TCallingConvention): IUnmanagedFunctionPointerAttribute; overload;
	end;

	TUnmanagedMemoryAccessor = class(TCoreClrGenericImport<ICoreClrClass, IUnmanagedMemoryAccessor>)
	public
		class function Create(buffer: ISafeBuffer; offset: Int64; capacity: Int64): IUnmanagedMemoryAccessor; overload;
		class function Create(buffer: ISafeBuffer; offset: Int64; capacity: Int64; access: TFileAccess_Set): IUnmanagedMemoryAccessor; overload;
	end;

	TUnmanagedMemoryStream = class(TCoreClrGenericImport<ICoreClrClass, IUnmanagedMemoryStream>)
	public
		class function Create(buffer: ISafeBuffer; offset: Int64; length: Int64): IUnmanagedMemoryStream; overload;
		class function Create(buffer: ISafeBuffer; offset: Int64; length: Int64; access: TFileAccess_Set): IUnmanagedMemoryStream; overload;
		class function Create(pointer: ICoreClrInstance; length: Int64; capacity: Int64; access: TFileAccess_Set): IUnmanagedMemoryStream; overload;
		class function Create(pointer: ICoreClrInstance; length: Int64): IUnmanagedMemoryStream; overload;
	end;

	TUnobservedTaskExceptionEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IUnobservedTaskExceptionEventArgs>)
	public
		class function Create(exception: IAggregateException): IUnobservedTaskExceptionEventArgs;
	end;

	TUnsafeValueTypeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnsafeValueTypeAttribute>)
	public
		class function Create: IUnsafeValueTypeAttribute;
	end;

	TUnsupportedOSPlatformAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnsupportedOSPlatformAttribute>)
	public
		class function Create(platformName: String): IUnsupportedOSPlatformAttribute;
	end;

	TUnverifiableCodeAttribute = class(TCoreClrGenericImport<ICoreClrClass, IUnverifiableCodeAttribute>)
	public
		class function Create: IUnverifiableCodeAttribute;
	end;

	TUTF32Encoding = class(TCoreClrGenericImport<ICoreClrClass, IUTF32Encoding>)
	public
		class function Create: IUTF32Encoding; overload;
		class function Create(bigEndian: Boolean; byteOrderMark: Boolean): IUTF32Encoding; overload;
		class function Create(bigEndian: Boolean; byteOrderMark: Boolean; throwOnInvalidCharacters: Boolean): IUTF32Encoding; overload;
	end;

	TUTF7Encoding = class(TCoreClrGenericImport<ICoreClrClass, IUTF7Encoding>)
	public
		class function Create: IUTF7Encoding; overload;
		class function Create(allowOptionals: Boolean): IUTF7Encoding; overload;
	end;

	TUTF8Encoding = class(TCoreClrGenericImport<ICoreClrClass, IUTF8Encoding>)
	public
		class function Create: IUTF8Encoding; overload;
		class function Create(encoderShouldEmitUTF8Identifier: Boolean): IUTF8Encoding; overload;
		class function Create(encoderShouldEmitUTF8Identifier: Boolean; throwOnInvalidBytes: Boolean): IUTF8Encoding; overload;
	end;

	TValueTask = class(TCoreClrGenericImport<IValueTaskClass, IValueTask>)
	public
		class function Create(task: ITask): IValueTask; overload;
		class function Create(source: IIValueTaskSource; token: SmallInt): IValueTask; overload;
	end;

	TValueTask<TResult> = class(TCoreClrGenericImport<ICoreClrClass, IValueTask<TResult>>)
	public
		class function Create(result_: TResult): IValueTask<TResult>; overload;
		class function Create(task: ITask<TResult>): IValueTask<TResult>; overload;
		class function Create(source: IIValueTaskSource<TResult>; token: SmallInt): IValueTask<TResult>; overload;
	end;

	TValueTuple<T1> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1>>)
	public
		class function Create(item1: T1): IValueTuple<T1>;
	end;

	TValueTuple<T1,T2> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2>>)
	public
		class function Create(item1: T1; item2: T2): IValueTuple<T1,T2>;
	end;

	TValueTuple<T1,T2,T3> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3): IValueTuple<T1,T2,T3>;
	end;

	TValueTuple<T1,T2,T3,T4> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3,T4>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4): IValueTuple<T1,T2,T3,T4>;
	end;

	TValueTuple<T1,T2,T3,T4,T5> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3,T4,T5>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5): IValueTuple<T1,T2,T3,T4,T5>;
	end;

	TValueTuple<T1,T2,T3,T4,T5,T6> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3,T4,T5,T6>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6): IValueTuple<T1,T2,T3,T4,T5,T6>;
	end;

	TValueTuple<T1,T2,T3,T4,T5,T6,T7> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3,T4,T5,T6,T7>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7): IValueTuple<T1,T2,T3,T4,T5,T6,T7>;
	end;

	TValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest> = class(TCoreClrGenericImport<ICoreClrClass, IValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest>>)
	public
		class function Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7; rest: TRest): IValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest>;
	end;

	TVariantWrapper = class(TCoreClrGenericImport<ICoreClrClass, IVariantWrapper>)
	public
		class function Create(obj: Variant): IVariantWrapper;
	end;

	TVector<T> = class(TCoreClrGenericImport<IVectorClass<T>, IVector<T>>)
	public
		class function Create(value: T): IVector<T>; overload;
		class function Create(values: ICoreClrBridgeArray<T>): IVector<T>; overload;
		class function Create(values: IReadOnlySpan<Byte>): IVector<T>; overload;
		class function Create(values: IReadOnlySpan<T>): IVector<T>; overload;
		class function Create(values: ISpan<T>): IVector<T>; overload;
		class function Create(values: ICoreClrBridgeArray<T>; index: Integer): IVector<T>; overload;
	end;

	TVector2 = class(TCoreClrGenericImport<IVector2Class, IVector2>)
	public
		class function Create(value: Single): IVector2; overload;
		class function Create(x: Single; y: Single): IVector2; overload;
	end;

	TVector3 = class(TCoreClrGenericImport<IVector3Class, IVector3>)
	public
		class function Create(value: Single): IVector3; overload;
		class function Create(value: IVector2; z: Single): IVector3; overload;
		class function Create(x: Single; y: Single; z: Single): IVector3; overload;
	end;

	TVector4 = class(TCoreClrGenericImport<IVector4Class, IVector4>)
	public
		class function Create(value: Single): IVector4; overload;
		class function Create(x: Single; y: Single; z: Single; w: Single): IVector4; overload;
		class function Create(value: IVector2; z: Single; w: Single): IVector4; overload;
		class function Create(value: IVector3; w: Single): IVector4; overload;
	end;

	TVerificationException = class(TCoreClrGenericImport<ICoreClrClass, IVerificationException>)
	public
		class function Create: IVerificationException; overload;
		class function Create(message: String): IVerificationException; overload;
		class function Create(message: String; innerException: IException): IVerificationException; overload;
	end;

	TVersion = class(TCoreClrGenericImport<IVersionClass, IVersion>)
	public
		class function Create(major: Integer; minor: Integer; build: Integer; revision: Integer): IVersion; overload;
		class function Create(major: Integer; minor: Integer; build: Integer): IVersion; overload;
		class function Create(major: Integer; minor: Integer): IVersion; overload;
		class function Create(version: String): IVersion; overload;
		class function Create: IVersion; overload;
	end;

	TWaitHandleCannotBeOpenedException = class(TCoreClrGenericImport<ICoreClrClass, IWaitHandleCannotBeOpenedException>)
	public
		class function Create: IWaitHandleCannotBeOpenedException; overload;
		class function Create(message: String): IWaitHandleCannotBeOpenedException; overload;
		class function Create(message: String; innerException: IException): IWaitHandleCannotBeOpenedException; overload;
	end;

	TWeakReference = class(TCoreClrGenericImport<ICoreClrClass, IWeakReference>)
	public
		class function Create(target: Variant): IWeakReference; overload;
		class function Create(target: Variant; trackResurrection: Boolean): IWeakReference; overload;
	end;

	TWeakReference<T> = class(TCoreClrGenericImport<ICoreClrClass, IWeakReference<T>>)
	public
		class function Create(target: T): IWeakReference<T>; overload;
		class function Create(target: T; trackResurrection: Boolean): IWeakReference<T>; overload;
	end;

	THashSet<T> = class(TCoreClrGenericImport<IHashSetClass<T>, IHashSet<T>>)
	public
		class function Create: IHashSet<T>; overload;
		class function Create(comparer: IIEqualityComparer<T>): IHashSet<T>; overload;
		class function Create(capacity: Integer): IHashSet<T>; overload;
		class function Create(collection: IIEnumerable<T>): IHashSet<T>; overload;
		class function Create(collection: IIEnumerable<T>; comparer: IIEqualityComparer<T>): IHashSet<T>; overload;
		class function Create(capacity: Integer; comparer: IIEqualityComparer<T>): IHashSet<T>; overload;
	end;

implementation

{	TObject	}

class function TObject.Create: IObject;
begin
	Result := inherited Create([]);
end;

{	TException	}

class function TException.Create: IException;
begin
	Result := inherited Create([]);
end;

class function TException.Create(message: String): IException;
begin
	Result := inherited Create([message]);
end;

class function TException.Create(message: String; innerException: IException): IException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TSystemException	}

class function TSystemException.Create: ISystemException;
begin
	Result := inherited Create([]);
end;

class function TSystemException.Create(message: String): ISystemException;
begin
	Result := inherited Create([message]);
end;

class function TSystemException.Create(message: String; innerException: IException): ISystemException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TAbandonedMutexException	}

class function TAbandonedMutexException.Create: IAbandonedMutexException;
begin
	Result := inherited Create([]);
end;

class function TAbandonedMutexException.Create(message: String): IAbandonedMutexException;
begin
	Result := inherited Create([message]);
end;

class function TAbandonedMutexException.Create(message: String; inner: IException): IAbandonedMutexException;
begin
	Result := inherited Create([message, inner]);
end;

class function TAbandonedMutexException.Create(location: Integer; handle: IWaitHandle): IAbandonedMutexException;
begin
	Result := inherited Create([location, handle]);
end;

class function TAbandonedMutexException.Create(message: String; location: Integer; handle: IWaitHandle): IAbandonedMutexException;
begin
	Result := inherited Create([message, location, handle]);
end;

class function TAbandonedMutexException.Create(message: String; inner: IException; location: Integer; handle: IWaitHandle): IAbandonedMutexException;
begin
	Result := inherited Create([message, inner, location, handle]);
end;

{	TAccessedThroughPropertyAttribute	}

class function TAccessedThroughPropertyAttribute.Create(propertyName: String): IAccessedThroughPropertyAttribute;
begin
	Result := inherited Create([propertyName]);
end;

{	TAccessViolationException	}

class function TAccessViolationException.Create: IAccessViolationException;
begin
	Result := inherited Create([]);
end;

class function TAccessViolationException.Create(message: String): IAccessViolationException;
begin
	Result := inherited Create([message]);
end;

class function TAccessViolationException.Create(message: String; innerException: IException): IAccessViolationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TAggregateException	}

class function TAggregateException.Create: IAggregateException;
begin
	Result := inherited Create([]);
end;

class function TAggregateException.Create(message: String): IAggregateException;
begin
	Result := inherited Create([message]);
end;

class function TAggregateException.Create(innerExceptions: IIEnumerable<IException>): IAggregateException;
begin
	Result := inherited Create([innerExceptions]);
end;

class function TAggregateException.Create(innerExceptions: ICoreClrBridgeArray<IException>): IAggregateException;
begin
	Result := inherited Create([innerExceptions]);
end;

class function TAggregateException.Create(message: String; innerException: IException): IAggregateException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TAggregateException.Create(message: String; innerExceptions: IIEnumerable<IException>): IAggregateException;
begin
	Result := inherited Create([message, innerExceptions]);
end;

class function TAggregateException.Create(message: String; innerExceptions: ICoreClrBridgeArray<IException>): IAggregateException;
begin
	Result := inherited Create([message, innerExceptions]);
end;

{	TAllowNullAttribute	}

class function TAllowNullAttribute.Create: IAllowNullAttribute;
begin
	Result := inherited Create([]);
end;

{	TAllowPartiallyTrustedCallersAttribute	}

class function TAllowPartiallyTrustedCallersAttribute.Create: IAllowPartiallyTrustedCallersAttribute;
begin
	Result := inherited Create([]);
end;

{	TAllowReversePInvokeCallsAttribute	}

class function TAllowReversePInvokeCallsAttribute.Create: IAllowReversePInvokeCallsAttribute;
begin
	Result := inherited Create([]);
end;

{	TAmbiguousImplementationException	}

class function TAmbiguousImplementationException.Create: IAmbiguousImplementationException;
begin
	Result := inherited Create([]);
end;

class function TAmbiguousImplementationException.Create(message: String): IAmbiguousImplementationException;
begin
	Result := inherited Create([message]);
end;

class function TAmbiguousImplementationException.Create(message: String; innerException: IException): IAmbiguousImplementationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TAmbiguousMatchException	}

class function TAmbiguousMatchException.Create: IAmbiguousMatchException;
begin
	Result := inherited Create([]);
end;

class function TAmbiguousMatchException.Create(message: String): IAmbiguousMatchException;
begin
	Result := inherited Create([message]);
end;

class function TAmbiguousMatchException.Create(message: String; inner: IException): IAmbiguousMatchException;
begin
	Result := inherited Create([message, inner]);
end;

{	TAppDomainUnloadedException	}

class function TAppDomainUnloadedException.Create: IAppDomainUnloadedException;
begin
	Result := inherited Create([]);
end;

class function TAppDomainUnloadedException.Create(message: String): IAppDomainUnloadedException;
begin
	Result := inherited Create([message]);
end;

class function TAppDomainUnloadedException.Create(message: String; innerException: IException): IAppDomainUnloadedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TApplicationException	}

class function TApplicationException.Create: IApplicationException;
begin
	Result := inherited Create([]);
end;

class function TApplicationException.Create(message: String): IApplicationException;
begin
	Result := inherited Create([message]);
end;

class function TApplicationException.Create(message: String; innerException: IException): IApplicationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TApplicationId	}

class function TApplicationId.Create(publicKeyToken: TArray<Byte>; name: String; version: IVersion; processorArchitecture: String; culture: String): IApplicationId;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(publicKeyToken), name, version, processorArchitecture, culture]);
end;

{	TArgIterator	}

class function TArgIterator.Create(arglist: IRuntimeArgumentHandle): IArgIterator;
begin
	Result := inherited Create([arglist]);
end;

class function TArgIterator.Create(arglist: IRuntimeArgumentHandle; ptr: ICoreClrInstance): IArgIterator;
begin
	Result := inherited Create([arglist, ptr]);
end;

{	TArgumentException	}

class function TArgumentException.Create: IArgumentException;
begin
	Result := inherited Create([]);
end;

class function TArgumentException.Create(message: String): IArgumentException;
begin
	Result := inherited Create([message]);
end;

class function TArgumentException.Create(message: String; innerException: IException): IArgumentException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TArgumentException.Create(message: String; paramName: String): IArgumentException;
begin
	Result := inherited Create([message, paramName]);
end;

class function TArgumentException.Create(message: String; paramName: String; innerException: IException): IArgumentException;
begin
	Result := inherited Create([message, paramName, innerException]);
end;

{	TArgumentNullException	}

class function TArgumentNullException.Create: IArgumentNullException;
begin
	Result := inherited Create([]);
end;

class function TArgumentNullException.Create(paramName: String): IArgumentNullException;
begin
	Result := inherited Create([paramName]);
end;

class function TArgumentNullException.Create(message: String; innerException: IException): IArgumentNullException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TArgumentNullException.Create(paramName: String; message: String): IArgumentNullException;
begin
	Result := inherited Create([paramName, message]);
end;

{	TArgumentOutOfRangeException	}

class function TArgumentOutOfRangeException.Create: IArgumentOutOfRangeException;
begin
	Result := inherited Create([]);
end;

class function TArgumentOutOfRangeException.Create(paramName: String): IArgumentOutOfRangeException;
begin
	Result := inherited Create([paramName]);
end;

class function TArgumentOutOfRangeException.Create(paramName: String; message: String): IArgumentOutOfRangeException;
begin
	Result := inherited Create([paramName, message]);
end;

class function TArgumentOutOfRangeException.Create(message: String; innerException: IException): IArgumentOutOfRangeException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TArgumentOutOfRangeException.Create(paramName: String; actualValue: Variant; message: String): IArgumentOutOfRangeException;
begin
	Result := inherited Create([paramName, actualValue, message]);
end;

{	TArithmeticException	}

class function TArithmeticException.Create: IArithmeticException;
begin
	Result := inherited Create([]);
end;

class function TArithmeticException.Create(message: String): IArithmeticException;
begin
	Result := inherited Create([message]);
end;

class function TArithmeticException.Create(message: String; innerException: IException): IArithmeticException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TArrayList	}

class function TArrayList.Create: IArrayList;
begin
	Result := inherited Create([]);
end;

class function TArrayList.Create(capacity: Integer): IArrayList;
begin
	Result := inherited Create([capacity]);
end;

class function TArrayList.Create(c: IICollection): IArrayList;
begin
	Result := inherited Create([c]);
end;

{	TArraySegment<T>	}

class function TArraySegment<T>.Create(array_: ICoreClrBridgeArray<T>): IArraySegment<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_]);
end;

class function TArraySegment<T>.Create(array_: ICoreClrBridgeArray<T>; offset: Integer; count: Integer): IArraySegment<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_, offset, count]);
end;

{	TArrayTypeMismatchException	}

class function TArrayTypeMismatchException.Create: IArrayTypeMismatchException;
begin
	Result := inherited Create([]);
end;

class function TArrayTypeMismatchException.Create(message: String): IArrayTypeMismatchException;
begin
	Result := inherited Create([message]);
end;

class function TArrayTypeMismatchException.Create(message: String; innerException: IException): IArrayTypeMismatchException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TArrayWithOffset	}

class function TArrayWithOffset.Create(array_: Variant; offset: Integer): IArrayWithOffset;
begin
	Result := inherited Create([array_, offset]);
end;

{	TASCIIEncoding	}

class function TASCIIEncoding.Create: IASCIIEncoding;
begin
	Result := inherited Create([]);
end;

{	TAssemblyAlgorithmIdAttribute	}

class function TAssemblyAlgorithmIdAttribute.Create(algorithmId: TAssemblyHashAlgorithm): IAssemblyAlgorithmIdAttribute;
begin
	Result := inherited Create([AssemblyHashAlgorithmValues[algorithmId]]);
end;

class function TAssemblyAlgorithmIdAttribute.Create(algorithmId: longword): IAssemblyAlgorithmIdAttribute;
begin
	Result := inherited Create([algorithmId]);
end;

{	TAssemblyCompanyAttribute	}

class function TAssemblyCompanyAttribute.Create(company: String): IAssemblyCompanyAttribute;
begin
	Result := inherited Create([company]);
end;

{	TAssemblyConfigurationAttribute	}

class function TAssemblyConfigurationAttribute.Create(configuration: String): IAssemblyConfigurationAttribute;
begin
	Result := inherited Create([configuration]);
end;

{	TAssemblyCopyrightAttribute	}

class function TAssemblyCopyrightAttribute.Create(copyright: String): IAssemblyCopyrightAttribute;
begin
	Result := inherited Create([copyright]);
end;

{	TAssemblyCultureAttribute	}

class function TAssemblyCultureAttribute.Create(culture: String): IAssemblyCultureAttribute;
begin
	Result := inherited Create([culture]);
end;

{	TAssemblyDefaultAliasAttribute	}

class function TAssemblyDefaultAliasAttribute.Create(defaultAlias: String): IAssemblyDefaultAliasAttribute;
begin
	Result := inherited Create([defaultAlias]);
end;

{	TAssemblyDelaySignAttribute	}

class function TAssemblyDelaySignAttribute.Create(delaySign: Boolean): IAssemblyDelaySignAttribute;
begin
	Result := inherited Create([delaySign]);
end;

{	TAssemblyDependencyResolver	}

class function TAssemblyDependencyResolver.Create(componentAssemblyPath: String): IAssemblyDependencyResolver;
begin
	Result := inherited Create([componentAssemblyPath]);
end;

{	TAssemblyDescriptionAttribute	}

class function TAssemblyDescriptionAttribute.Create(description: String): IAssemblyDescriptionAttribute;
begin
	Result := inherited Create([description]);
end;

{	TAssemblyFileVersionAttribute	}

class function TAssemblyFileVersionAttribute.Create(version: String): IAssemblyFileVersionAttribute;
begin
	Result := inherited Create([version]);
end;

{	TAssemblyFlagsAttribute	}

class function TAssemblyFlagsAttribute.Create(flags: longword): IAssemblyFlagsAttribute;
begin
	Result := inherited Create([flags]);
end;

class function TAssemblyFlagsAttribute.Create(assemblyFlags: Integer): IAssemblyFlagsAttribute;
begin
	Result := inherited Create([assemblyFlags]);
end;

class function TAssemblyFlagsAttribute.Create(assemblyFlags: TAssemblyNameFlags_Set): IAssemblyFlagsAttribute;
begin
	Result := inherited Create([ToNCEnum(assemblyFlags)]);
end;

{	TAssemblyInformationalVersionAttribute	}

class function TAssemblyInformationalVersionAttribute.Create(informationalVersion: String): IAssemblyInformationalVersionAttribute;
begin
	Result := inherited Create([informationalVersion]);
end;

{	TAssemblyKeyFileAttribute	}

class function TAssemblyKeyFileAttribute.Create(keyFile: String): IAssemblyKeyFileAttribute;
begin
	Result := inherited Create([keyFile]);
end;

{	TAssemblyKeyNameAttribute	}

class function TAssemblyKeyNameAttribute.Create(keyName: String): IAssemblyKeyNameAttribute;
begin
	Result := inherited Create([keyName]);
end;

{	TAssemblyLoadContext	}

class function TAssemblyLoadContext.Create(name: String; isCollectible: Boolean): IAssemblyLoadContext;
begin
	Result := inherited Create([name, isCollectible]);
end;

{	TEventArgs	}

class function TEventArgs.Create: IEventArgs;
begin
	Result := inherited Create([]);
end;

{	TAssemblyLoadEventArgs	}

class function TAssemblyLoadEventArgs.Create(loadedAssembly: IAssembly): IAssemblyLoadEventArgs;
begin
	Result := inherited Create([loadedAssembly]);
end;

{	TAssemblyMetadataAttribute	}

class function TAssemblyMetadataAttribute.Create(key: String; value: String): IAssemblyMetadataAttribute;
begin
	Result := inherited Create([key, value]);
end;

{	TAssemblyName	}

class function TAssemblyName.Create(assemblyName: String): IAssemblyName;
begin
	Result := inherited Create([assemblyName]);
end;

class function TAssemblyName.Create: IAssemblyName;
begin
	Result := inherited Create([]);
end;

{	TAssemblyNameProxy	}

class function TAssemblyNameProxy.Create: IAssemblyNameProxy;
begin
	Result := inherited Create([]);
end;

{	TAssemblyProductAttribute	}

class function TAssemblyProductAttribute.Create(product: String): IAssemblyProductAttribute;
begin
	Result := inherited Create([product]);
end;

{	TAssemblySignatureKeyAttribute	}

class function TAssemblySignatureKeyAttribute.Create(publicKey: String; countersignature: String): IAssemblySignatureKeyAttribute;
begin
	Result := inherited Create([publicKey, countersignature]);
end;

{	TAssemblyTargetedPatchBandAttribute	}

class function TAssemblyTargetedPatchBandAttribute.Create(targetedPatchBand: String): IAssemblyTargetedPatchBandAttribute;
begin
	Result := inherited Create([targetedPatchBand]);
end;

{	TAssemblyTitleAttribute	}

class function TAssemblyTitleAttribute.Create(title: String): IAssemblyTitleAttribute;
begin
	Result := inherited Create([title]);
end;

{	TAssemblyTrademarkAttribute	}

class function TAssemblyTrademarkAttribute.Create(trademark: String): IAssemblyTrademarkAttribute;
begin
	Result := inherited Create([trademark]);
end;

{	TAssemblyVersionAttribute	}

class function TAssemblyVersionAttribute.Create(version: String): IAssemblyVersionAttribute;
begin
	Result := inherited Create([version]);
end;

{	TStateMachineAttribute	}

class function TStateMachineAttribute.Create(stateMachineType: IType): IStateMachineAttribute;
begin
	Result := inherited Create([stateMachineType]);
end;

{	TAsyncIteratorStateMachineAttribute	}

class function TAsyncIteratorStateMachineAttribute.Create(stateMachineType: IType): IAsyncIteratorStateMachineAttribute;
begin
	Result := inherited Create([stateMachineType]);
end;

{	TAsyncLocal<T>	}

class function TAsyncLocal<T>.Create: IAsyncLocal<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TAsyncLocal<T>.Create(valueChangedHandler: TClrAction<IAsyncLocalValueChangedArgs<T>>): IAsyncLocal<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrAction<IAsyncLocalValueChangedArgs<T>>.Wrap(valueChangedHandler), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TAsyncMethodBuilderAttribute	}

class function TAsyncMethodBuilderAttribute.Create(builderType: IType): IAsyncMethodBuilderAttribute;
begin
	Result := inherited Create([builderType]);
end;

{	TAsyncStateMachineAttribute	}

class function TAsyncStateMachineAttribute.Create(stateMachineType: IType): IAsyncStateMachineAttribute;
begin
	Result := inherited Create([stateMachineType]);
end;

{	TAttributeUsageAttribute	}

class function TAttributeUsageAttribute.Create(validOn: TAttributeTargets_Set): IAttributeUsageAttribute;
begin
	Result := inherited Create([ToNCEnum(validOn)]);
end;

{	TEventWaitHandle	}

class function TEventWaitHandle.Create(initialState: Boolean; mode: TEventResetMode): IEventWaitHandle;
begin
	Result := inherited Create([initialState, EventResetModeValues[mode]]);
end;

class function TEventWaitHandle.Create(initialState: Boolean; mode: TEventResetMode; name: String): IEventWaitHandle;
begin
	Result := inherited Create([initialState, EventResetModeValues[mode], name]);
end;

class function TEventWaitHandle.Create(initialState: Boolean; mode: TEventResetMode; name: String; var createdNew: Boolean): IEventWaitHandle;
begin
	Result := inherited Create([initialState, EventResetModeValues[mode], name, createdNew]);
end;

{	TAutoResetEvent	}

class function TAutoResetEvent.Create(initialState: Boolean): IAutoResetEvent;
begin
	Result := inherited Create([initialState]);
end;

{	TBadImageFormatException	}

class function TBadImageFormatException.Create: IBadImageFormatException;
begin
	Result := inherited Create([]);
end;

class function TBadImageFormatException.Create(message: String): IBadImageFormatException;
begin
	Result := inherited Create([message]);
end;

class function TBadImageFormatException.Create(message: String; inner: IException): IBadImageFormatException;
begin
	Result := inherited Create([message, inner]);
end;

class function TBadImageFormatException.Create(message: String; fileName: String): IBadImageFormatException;
begin
	Result := inherited Create([message, fileName]);
end;

class function TBadImageFormatException.Create(message: String; fileName: String; inner: IException): IBadImageFormatException;
begin
	Result := inherited Create([message, fileName, inner]);
end;

{	TBestFitMappingAttribute	}

class function TBestFitMappingAttribute.Create(BestFitMapping: Boolean): IBestFitMappingAttribute;
begin
	Result := inherited Create([BestFitMapping]);
end;

{	TBinaryReader	}

class function TBinaryReader.Create(input: IStream): IBinaryReader;
begin
	Result := inherited Create([input]);
end;

class function TBinaryReader.Create(input: IStream; encoding: IEncoding): IBinaryReader;
begin
	Result := inherited Create([input, encoding]);
end;

class function TBinaryReader.Create(input: IStream; encoding: IEncoding; leaveOpen: Boolean): IBinaryReader;
begin
	Result := inherited Create([input, encoding, leaveOpen]);
end;

{	TBinaryWriter	}

class function TBinaryWriter.Create(output: IStream): IBinaryWriter;
begin
	Result := inherited Create([output]);
end;

class function TBinaryWriter.Create(output: IStream; encoding: IEncoding): IBinaryWriter;
begin
	Result := inherited Create([output, encoding]);
end;

class function TBinaryWriter.Create(output: IStream; encoding: IEncoding; leaveOpen: Boolean): IBinaryWriter;
begin
	Result := inherited Create([output, encoding, leaveOpen]);
end;

{	TBStrWrapper	}

class function TBStrWrapper.Create(value: String): IBStrWrapper;
begin
	Result := inherited Create([value]);
end;

class function TBStrWrapper.Create(value: Variant): IBStrWrapper;
begin
	Result := inherited Create([value]);
end;

{	TBufferedStream	}

class function TBufferedStream.Create(stream: IStream): IBufferedStream;
begin
	Result := inherited Create([stream]);
end;

class function TBufferedStream.Create(stream: IStream; bufferSize: Integer): IBufferedStream;
begin
	Result := inherited Create([stream, bufferSize]);
end;

{	TByteEqualityComparer	}

class function TByteEqualityComparer.Create: IByteEqualityComparer;
begin
	Result := inherited Create([]);
end;

{	TCallConvCdecl	}

class function TCallConvCdecl.Create: ICallConvCdecl;
begin
	Result := inherited Create([]);
end;

{	TCallConvFastcall	}

class function TCallConvFastcall.Create: ICallConvFastcall;
begin
	Result := inherited Create([]);
end;

{	TCallConvStdcall	}

class function TCallConvStdcall.Create: ICallConvStdcall;
begin
	Result := inherited Create([]);
end;

{	TCallConvThiscall	}

class function TCallConvThiscall.Create: ICallConvThiscall;
begin
	Result := inherited Create([]);
end;

{	TCallerArgumentExpressionAttribute	}

class function TCallerArgumentExpressionAttribute.Create(parameterName: String): ICallerArgumentExpressionAttribute;
begin
	Result := inherited Create([parameterName]);
end;

{	TCallerFilePathAttribute	}

class function TCallerFilePathAttribute.Create: ICallerFilePathAttribute;
begin
	Result := inherited Create([]);
end;

{	TCallerLineNumberAttribute	}

class function TCallerLineNumberAttribute.Create: ICallerLineNumberAttribute;
begin
	Result := inherited Create([]);
end;

{	TCallerMemberNameAttribute	}

class function TCallerMemberNameAttribute.Create: ICallerMemberNameAttribute;
begin
	Result := inherited Create([]);
end;

{	TCancellationToken	}

class function TCancellationToken.Create(canceled: Boolean): ICancellationToken;
begin
	Result := inherited Create([canceled]);
end;

{	TCancellationTokenSource	}

class function TCancellationTokenSource.Create: ICancellationTokenSource;
begin
	Result := inherited Create([]);
end;

class function TCancellationTokenSource.Create(delay: ITimeSpan): ICancellationTokenSource;
begin
	Result := inherited Create([delay]);
end;

class function TCancellationTokenSource.Create(millisecondsDelay: Integer): ICancellationTokenSource;
begin
	Result := inherited Create([millisecondsDelay]);
end;

{	TCannotUnloadAppDomainException	}

class function TCannotUnloadAppDomainException.Create: ICannotUnloadAppDomainException;
begin
	Result := inherited Create([]);
end;

class function TCannotUnloadAppDomainException.Create(message: String): ICannotUnloadAppDomainException;
begin
	Result := inherited Create([message]);
end;

class function TCannotUnloadAppDomainException.Create(message: String; innerException: IException): ICannotUnloadAppDomainException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TChineseLunisolarCalendar	}

class function TChineseLunisolarCalendar.Create: IChineseLunisolarCalendar;
begin
	Result := inherited Create([]);
end;

{	TClassInterfaceAttribute	}

class function TClassInterfaceAttribute.Create(classInterfaceType: TClassInterfaceType): IClassInterfaceAttribute;
begin
	Result := inherited Create([ClassInterfaceTypeValues[classInterfaceType]]);
end;

class function TClassInterfaceAttribute.Create(classInterfaceType: SmallInt): IClassInterfaceAttribute;
begin
	Result := inherited Create([classInterfaceType]);
end;

{	TCLSCompliantAttribute	}

class function TCLSCompliantAttribute.Create(isCompliant: Boolean): ICLSCompliantAttribute;
begin
	Result := inherited Create([isCompliant]);
end;

{	TCoClassAttribute	}

class function TCoClassAttribute.Create(coClass: IType): ICoClassAttribute;
begin
	Result := inherited Create([coClass]);
end;

{	TCollection<T>	}

class function TCollection<T>.Create: ICollection<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TCollection<T>.Create(list: IIList<T>): ICollection<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [list]);
end;

{	TComDefaultInterfaceAttribute	}

class function TComDefaultInterfaceAttribute.Create(defaultInterface: IType): IComDefaultInterfaceAttribute;
begin
	Result := inherited Create([defaultInterface]);
end;

{	TComEventInterfaceAttribute	}

class function TComEventInterfaceAttribute.Create(SourceInterface: IType; EventProvider: IType): IComEventInterfaceAttribute;
begin
	Result := inherited Create([SourceInterface, EventProvider]);
end;

{	TExternalException	}

class function TExternalException.Create: IExternalException;
begin
	Result := inherited Create([]);
end;

class function TExternalException.Create(message: String): IExternalException;
begin
	Result := inherited Create([message]);
end;

class function TExternalException.Create(message: String; inner: IException): IExternalException;
begin
	Result := inherited Create([message, inner]);
end;

class function TExternalException.Create(message: String; errorCode: Integer): IExternalException;
begin
	Result := inherited Create([message, errorCode]);
end;

{	TCOMException	}

class function TCOMException.Create: ICOMException;
begin
	Result := inherited Create([]);
end;

class function TCOMException.Create(message: String): ICOMException;
begin
	Result := inherited Create([message]);
end;

class function TCOMException.Create(message: String; inner: IException): ICOMException;
begin
	Result := inherited Create([message, inner]);
end;

class function TCOMException.Create(message: String; errorCode: Integer): ICOMException;
begin
	Result := inherited Create([message, errorCode]);
end;

{	TComImportAttribute	}

class function TComImportAttribute.Create: IComImportAttribute;
begin
	Result := inherited Create([]);
end;

{	TComparer	}

class function TComparer.Create(culture: ICultureInfo): IComparer;
begin
	Result := inherited Create([culture]);
end;

{	TCompilationRelaxationsAttribute	}

class function TCompilationRelaxationsAttribute.Create(relaxations: Integer): ICompilationRelaxationsAttribute;
begin
	Result := inherited Create([relaxations]);
end;

class function TCompilationRelaxationsAttribute.Create(relaxations: TCompilationRelaxations_Set): ICompilationRelaxationsAttribute;
begin
	Result := inherited Create([ToNCEnum(relaxations)]);
end;

{	TCompilerGeneratedAttribute	}

class function TCompilerGeneratedAttribute.Create: ICompilerGeneratedAttribute;
begin
	Result := inherited Create([]);
end;

{	TCompilerGlobalScopeAttribute	}

class function TCompilerGlobalScopeAttribute.Create: ICompilerGlobalScopeAttribute;
begin
	Result := inherited Create([]);
end;

{	TComponentGuaranteesAttribute	}

class function TComponentGuaranteesAttribute.Create(guarantees: TComponentGuaranteesOptions_Set): IComponentGuaranteesAttribute;
begin
	Result := inherited Create([ToNCEnum(guarantees)]);
end;

{	TComSourceInterfacesAttribute	}

class function TComSourceInterfacesAttribute.Create(sourceInterfaces: String): IComSourceInterfacesAttribute;
begin
	Result := inherited Create([sourceInterfaces]);
end;

class function TComSourceInterfacesAttribute.Create(sourceInterface: IType): IComSourceInterfacesAttribute;
begin
	Result := inherited Create([sourceInterface]);
end;

class function TComSourceInterfacesAttribute.Create(sourceInterface1: IType; sourceInterface2: IType): IComSourceInterfacesAttribute;
begin
	Result := inherited Create([sourceInterface1, sourceInterface2]);
end;

class function TComSourceInterfacesAttribute.Create(sourceInterface1: IType; sourceInterface2: IType; sourceInterface3: IType): IComSourceInterfacesAttribute;
begin
	Result := inherited Create([sourceInterface1, sourceInterface2, sourceInterface3]);
end;

class function TComSourceInterfacesAttribute.Create(sourceInterface1: IType; sourceInterface2: IType; sourceInterface3: IType; sourceInterface4: IType): IComSourceInterfacesAttribute;
begin
	Result := inherited Create([sourceInterface1, sourceInterface2, sourceInterface3, sourceInterface4]);
end;

{	TComVisibleAttribute	}

class function TComVisibleAttribute.Create(visibility: Boolean): IComVisibleAttribute;
begin
	Result := inherited Create([visibility]);
end;

{	TConcurrentExclusiveSchedulerPair	}

class function TConcurrentExclusiveSchedulerPair.Create: IConcurrentExclusiveSchedulerPair;
begin
	Result := inherited Create([]);
end;

class function TConcurrentExclusiveSchedulerPair.Create(taskScheduler: ITaskScheduler): IConcurrentExclusiveSchedulerPair;
begin
	Result := inherited Create([taskScheduler]);
end;

class function TConcurrentExclusiveSchedulerPair.Create(taskScheduler: ITaskScheduler; maxConcurrencyLevel: Integer): IConcurrentExclusiveSchedulerPair;
begin
	Result := inherited Create([taskScheduler, maxConcurrencyLevel]);
end;

class function TConcurrentExclusiveSchedulerPair.Create(taskScheduler: ITaskScheduler; maxConcurrencyLevel: Integer; maxItemsPerTask: Integer): IConcurrentExclusiveSchedulerPair;
begin
	Result := inherited Create([taskScheduler, maxConcurrencyLevel, maxItemsPerTask]);
end;

{	TConcurrentQueue<T>	}

class function TConcurrentQueue<T>.Create: IConcurrentQueue<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TConcurrentQueue<T>.Create(collection: IIEnumerable<T>): IConcurrentQueue<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [collection]);
end;

{	TConditionalAttribute	}

class function TConditionalAttribute.Create(conditionString: String): IConditionalAttribute;
begin
	Result := inherited Create([conditionString]);
end;

{	TConditionalWeakTable<TKey,TValue>	}

class function TConditionalWeakTable<TKey,TValue>.Create: IConditionalWeakTable<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], []);
end;

{	TContextMarshalException	}

class function TContextMarshalException.Create: IContextMarshalException;
begin
	Result := inherited Create([]);
end;

class function TContextMarshalException.Create(message: String): IContextMarshalException;
begin
	Result := inherited Create([message]);
end;

class function TContextMarshalException.Create(message: String; inner: IException): IContextMarshalException;
begin
	Result := inherited Create([message, inner]);
end;

{	TContextStaticAttribute	}

class function TContextStaticAttribute.Create: IContextStaticAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractAbbreviatorAttribute	}

class function TContractAbbreviatorAttribute.Create: IContractAbbreviatorAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractArgumentValidatorAttribute	}

class function TContractArgumentValidatorAttribute.Create: IContractArgumentValidatorAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractClassAttribute	}

class function TContractClassAttribute.Create(typeContainingContracts: IType): IContractClassAttribute;
begin
	Result := inherited Create([typeContainingContracts]);
end;

{	TContractClassForAttribute	}

class function TContractClassForAttribute.Create(typeContractsAreFor: IType): IContractClassForAttribute;
begin
	Result := inherited Create([typeContractsAreFor]);
end;

{	TContractException	}

class function TContractException.Create(kind: TContractFailureKind; failure: String; userMessage: String; condition: String; innerException: IException): IContractException;
begin
	Result := inherited Create([ContractFailureKindValues[kind], failure, userMessage, condition, innerException]);
end;

{	TContractFailedEventArgs	}

class function TContractFailedEventArgs.Create(failureKind: TContractFailureKind; message: String; condition: String; originalException: IException): IContractFailedEventArgs;
begin
	Result := inherited Create([ContractFailureKindValues[failureKind], message, condition, originalException]);
end;

{	TContractInvariantMethodAttribute	}

class function TContractInvariantMethodAttribute.Create: IContractInvariantMethodAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractOptionAttribute	}

class function TContractOptionAttribute.Create(category: String; setting: String; enabled: Boolean): IContractOptionAttribute;
begin
	Result := inherited Create([category, setting, enabled]);
end;

class function TContractOptionAttribute.Create(category: String; setting: String; value: String): IContractOptionAttribute;
begin
	Result := inherited Create([category, setting, value]);
end;

{	TContractPublicPropertyNameAttribute	}

class function TContractPublicPropertyNameAttribute.Create(name: String): IContractPublicPropertyNameAttribute;
begin
	Result := inherited Create([name]);
end;

{	TContractReferenceAssemblyAttribute	}

class function TContractReferenceAssemblyAttribute.Create: IContractReferenceAssemblyAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractRuntimeIgnoredAttribute	}

class function TContractRuntimeIgnoredAttribute.Create: IContractRuntimeIgnoredAttribute;
begin
	Result := inherited Create([]);
end;

{	TContractVerificationAttribute	}

class function TContractVerificationAttribute.Create(value: Boolean): IContractVerificationAttribute;
begin
	Result := inherited Create([value]);
end;

{	TCryptographicException	}

class function TCryptographicException.Create: ICryptographicException;
begin
	Result := inherited Create([]);
end;

class function TCryptographicException.Create(hr: Integer): ICryptographicException;
begin
	Result := inherited Create([hr]);
end;

class function TCryptographicException.Create(message: String): ICryptographicException;
begin
	Result := inherited Create([message]);
end;

class function TCryptographicException.Create(message: String; inner: IException): ICryptographicException;
begin
	Result := inherited Create([message, inner]);
end;

class function TCryptographicException.Create(format: String; insert: String): ICryptographicException;
begin
	Result := inherited Create([format, insert]);
end;

{	TCultureInfo	}

class function TCultureInfo.Create(name: String): ICultureInfo;
begin
	Result := inherited Create([name]);
end;

class function TCultureInfo.Create(culture: Integer): ICultureInfo;
begin
	Result := inherited Create([culture]);
end;

class function TCultureInfo.Create(name: String; useUserOverride: Boolean): ICultureInfo;
begin
	Result := inherited Create([name, useUserOverride]);
end;

class function TCultureInfo.Create(culture: Integer; useUserOverride: Boolean): ICultureInfo;
begin
	Result := inherited Create([culture, useUserOverride]);
end;

{	TCultureNotFoundException	}

class function TCultureNotFoundException.Create: ICultureNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TCultureNotFoundException.Create(message: String): ICultureNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TCultureNotFoundException.Create(paramName: String; message: String): ICultureNotFoundException;
begin
	Result := inherited Create([paramName, message]);
end;

class function TCultureNotFoundException.Create(message: String; innerException: IException): ICultureNotFoundException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TCultureNotFoundException.Create(paramName: String; invalidCultureName: String; message: String): ICultureNotFoundException;
begin
	Result := inherited Create([paramName, invalidCultureName, message]);
end;

class function TCultureNotFoundException.Create(message: String; invalidCultureName: String; innerException: IException): ICultureNotFoundException;
begin
	Result := inherited Create([message, invalidCultureName, innerException]);
end;

class function TCultureNotFoundException.Create(message: String; invalidCultureId: Integer; innerException: IException): ICultureNotFoundException;
begin
	Result := inherited Create([message, invalidCultureId, innerException]);
end;

class function TCultureNotFoundException.Create(paramName: String; invalidCultureId: Integer; message: String): ICultureNotFoundException;
begin
	Result := inherited Create([paramName, invalidCultureId, message]);
end;

{	TCurrencyWrapper	}

class function TCurrencyWrapper.Create(obj: IDecimal): ICurrencyWrapper;
begin
	Result := inherited Create([obj]);
end;

class function TCurrencyWrapper.Create(obj: Variant): ICurrencyWrapper;
begin
	Result := inherited Create([obj]);
end;

{	TCustomAttributeBuilder	}

class function TCustomAttributeBuilder.Create(con: IConstructorInfo; constructorArgs: TArray<Variant>): ICustomAttributeBuilder;
begin
	Result := inherited Create([con, TCoreClrArray.DynArrayToVarArray<Variant>(constructorArgs)]);
end;

class function TCustomAttributeBuilder.Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedProperties: ICoreClrBridgeArray<IPropertyInfo>; propertyValues: TArray<Variant>): ICustomAttributeBuilder;
begin
	Result := inherited Create([con, TCoreClrArray.DynArrayToVarArray<Variant>(constructorArgs), namedProperties, TCoreClrArray.DynArrayToVarArray<Variant>(propertyValues)]);
end;

class function TCustomAttributeBuilder.Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedFields: ICoreClrBridgeArray<IFieldInfo>; fieldValues: TArray<Variant>): ICustomAttributeBuilder;
begin
	Result := inherited Create([con, TCoreClrArray.DynArrayToVarArray<Variant>(constructorArgs), namedFields, TCoreClrArray.DynArrayToVarArray<Variant>(fieldValues)]);
end;

class function TCustomAttributeBuilder.Create(con: IConstructorInfo; constructorArgs: TArray<Variant>; namedProperties: ICoreClrBridgeArray<IPropertyInfo>; propertyValues: TArray<Variant>; namedFields: ICoreClrBridgeArray<IFieldInfo>; fieldValues: TArray<Variant>): ICustomAttributeBuilder;
begin
	Result := inherited Create([con, TCoreClrArray.DynArrayToVarArray<Variant>(constructorArgs), namedProperties, TCoreClrArray.DynArrayToVarArray<Variant>(propertyValues), namedFields, TCoreClrArray.DynArrayToVarArray<Variant>(fieldValues)]);
end;

{	TFormatException	}

class function TFormatException.Create: IFormatException;
begin
	Result := inherited Create([]);
end;

class function TFormatException.Create(message: String): IFormatException;
begin
	Result := inherited Create([message]);
end;

class function TFormatException.Create(message: String; innerException: IException): IFormatException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TCustomAttributeFormatException	}

class function TCustomAttributeFormatException.Create: ICustomAttributeFormatException;
begin
	Result := inherited Create([]);
end;

class function TCustomAttributeFormatException.Create(message: String): ICustomAttributeFormatException;
begin
	Result := inherited Create([message]);
end;

class function TCustomAttributeFormatException.Create(message: String; inner: IException): ICustomAttributeFormatException;
begin
	Result := inherited Create([message, inner]);
end;

{	TCustomAttributeNamedArgument	}

class function TCustomAttributeNamedArgument.Create(memberInfo: IMemberInfo; value: Variant): ICustomAttributeNamedArgument;
begin
	Result := inherited Create([memberInfo, value]);
end;

class function TCustomAttributeNamedArgument.Create(memberInfo: IMemberInfo; typedArgument: ICustomAttributeTypedArgument): ICustomAttributeNamedArgument;
begin
	Result := inherited Create([memberInfo, typedArgument]);
end;

{	TCustomAttributeTypedArgument	}

class function TCustomAttributeTypedArgument.Create(argumentType: IType; value: Variant): ICustomAttributeTypedArgument;
begin
	Result := inherited Create([argumentType, value]);
end;

class function TCustomAttributeTypedArgument.Create(value: Variant): ICustomAttributeTypedArgument;
begin
	Result := inherited Create([value]);
end;

{	TDataMisalignedException	}

class function TDataMisalignedException.Create: IDataMisalignedException;
begin
	Result := inherited Create([]);
end;

class function TDataMisalignedException.Create(message: String): IDataMisalignedException;
begin
	Result := inherited Create([message]);
end;

class function TDataMisalignedException.Create(message: String; innerException: IException): IDataMisalignedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TDateTime_	}

class function TDateTime_.Create(ticks: Int64): IDateTime;
begin
	Result := inherited Create([ticks]);
end;

class function TDateTime_.Create(ticks: Int64; kind: TDateTimeKind): IDateTime;
begin
	Result := inherited Create([ticks, DateTimeKindValues[kind]]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer): IDateTime;
begin
	Result := inherited Create([year, month, day]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; calendar: ICalendar): IDateTime;
begin
	Result := inherited Create([year, month, day, calendar]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; kind: TDateTimeKind): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, DateTimeKindValues[kind]]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; calendar: ICalendar): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, calendar]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; kind: TDateTimeKind): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond, DateTimeKindValues[kind]]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond, calendar]);
end;

class function TDateTime_.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar; kind: TDateTimeKind): IDateTime;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond, calendar, DateTimeKindValues[kind]]);
end;

{	TDateTimeConstantAttribute	}

class function TDateTimeConstantAttribute.Create(ticks: Int64): IDateTimeConstantAttribute;
begin
	Result := inherited Create([ticks]);
end;

{	TDateTimeFormatInfo	}

class function TDateTimeFormatInfo.Create: IDateTimeFormatInfo;
begin
	Result := inherited Create([]);
end;

{	TDateTimeOffset	}

class function TDateTimeOffset.Create(ticks: Int64; offset: ITimeSpan): IDateTimeOffset;
begin
	Result := inherited Create([ticks, offset]);
end;

class function TDateTimeOffset.Create(dateTime: TDateTime; offset: ITimeSpan): IDateTimeOffset;
begin
	Result := inherited Create([dateTime, offset]);
end;

class function TDateTimeOffset.Create(dateTime: TDateTime): IDateTimeOffset;
begin
	Result := inherited Create([dateTime]);
end;

class function TDateTimeOffset.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; offset: ITimeSpan): IDateTimeOffset;
begin
	Result := inherited Create([year, month, day, hour, minute, second, offset]);
end;

class function TDateTimeOffset.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; offset: ITimeSpan): IDateTimeOffset;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond, offset]);
end;

class function TDateTimeOffset.Create(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer; millisecond: Integer; calendar: ICalendar; offset: ITimeSpan): IDateTimeOffset;
begin
	Result := inherited Create([year, month, day, hour, minute, second, millisecond, calendar, offset]);
end;

{	TDaylightTime	}

class function TDaylightTime.Create(start: TDateTime; end_: TDateTime; delta: ITimeSpan): IDaylightTime;
begin
	Result := inherited Create([start, end_, delta]);
end;

{	TDebuggableAttribute	}

class function TDebuggableAttribute.Create(isJITTrackingEnabled: Boolean; isJITOptimizerDisabled: Boolean): IDebuggableAttribute;
begin
	Result := inherited Create([isJITTrackingEnabled, isJITOptimizerDisabled]);
end;

class function TDebuggableAttribute.Create(modes: TDebuggingModes_Set): IDebuggableAttribute;
begin
	Result := inherited Create([ToNCEnum(modes)]);
end;

{	TDebuggerBrowsableAttribute	}

class function TDebuggerBrowsableAttribute.Create(state: TDebuggerBrowsableState): IDebuggerBrowsableAttribute;
begin
	Result := inherited Create([DebuggerBrowsableStateValues[state]]);
end;

{	TDebuggerDisplayAttribute	}

class function TDebuggerDisplayAttribute.Create(value: String): IDebuggerDisplayAttribute;
begin
	Result := inherited Create([value]);
end;

{	TDebuggerHiddenAttribute	}

class function TDebuggerHiddenAttribute.Create: IDebuggerHiddenAttribute;
begin
	Result := inherited Create([]);
end;

{	TDebuggerNonUserCodeAttribute	}

class function TDebuggerNonUserCodeAttribute.Create: IDebuggerNonUserCodeAttribute;
begin
	Result := inherited Create([]);
end;

{	TDebuggerStepperBoundaryAttribute	}

class function TDebuggerStepperBoundaryAttribute.Create: IDebuggerStepperBoundaryAttribute;
begin
	Result := inherited Create([]);
end;

{	TDebuggerStepThroughAttribute	}

class function TDebuggerStepThroughAttribute.Create: IDebuggerStepThroughAttribute;
begin
	Result := inherited Create([]);
end;

{	TDebuggerTypeProxyAttribute	}

class function TDebuggerTypeProxyAttribute.Create(type_: IType): IDebuggerTypeProxyAttribute;
begin
	Result := inherited Create([type_]);
end;

class function TDebuggerTypeProxyAttribute.Create(typeName: String): IDebuggerTypeProxyAttribute;
begin
	Result := inherited Create([typeName]);
end;

{	TDebuggerVisualizerAttribute	}

class function TDebuggerVisualizerAttribute.Create(visualizerTypeName: String): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizerTypeName]);
end;

class function TDebuggerVisualizerAttribute.Create(visualizer: IType): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizer]);
end;

class function TDebuggerVisualizerAttribute.Create(visualizerTypeName: String; visualizerObjectSourceTypeName: String): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizerTypeName, visualizerObjectSourceTypeName]);
end;

class function TDebuggerVisualizerAttribute.Create(visualizerTypeName: String; visualizerObjectSource: IType): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizerTypeName, visualizerObjectSource]);
end;

class function TDebuggerVisualizerAttribute.Create(visualizer: IType; visualizerObjectSource: IType): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizer, visualizerObjectSource]);
end;

class function TDebuggerVisualizerAttribute.Create(visualizer: IType; visualizerObjectSourceTypeName: String): IDebuggerVisualizerAttribute;
begin
	Result := inherited Create([visualizer, visualizerObjectSourceTypeName]);
end;

{	TDebugProvider	}

class function TDebugProvider.Create: IDebugProvider;
begin
	Result := inherited Create([]);
end;

{	TDecimal	}

class function TDecimal.Create(value: Integer): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(value: longword): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(value: Int64): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(value: UInt64): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(value: Single): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(value: Double): IDecimal;
begin
	Result := inherited Create([value]);
end;

class function TDecimal.Create(bits: TArray<Integer>): IDecimal;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Integer>(bits)]);
end;

class function TDecimal.Create(bits: IReadOnlySpan<Integer>): IDecimal;
begin
	Result := inherited Create([bits]);
end;

class function TDecimal.Create(lo: Integer; mid: Integer; hi: Integer; isNegative: Boolean; scale: Byte): IDecimal;
begin
	Result := inherited Create([lo, mid, hi, isNegative, scale]);
end;

{	TDecimalConstantAttribute	}

class function TDecimalConstantAttribute.Create(scale: Byte; sign: Byte; hi: longword; mid: longword; low: longword): IDecimalConstantAttribute;
begin
	Result := inherited Create([scale, sign, hi, mid, low]);
end;

class function TDecimalConstantAttribute.Create(scale: Byte; sign: Byte; hi: Integer; mid: Integer; low: Integer): IDecimalConstantAttribute;
begin
	Result := inherited Create([scale, sign, hi, mid, low]);
end;

{	TDecoderExceptionFallback	}

class function TDecoderExceptionFallback.Create: IDecoderExceptionFallback;
begin
	Result := inherited Create([]);
end;

{	TDecoderExceptionFallbackBuffer	}

class function TDecoderExceptionFallbackBuffer.Create: IDecoderExceptionFallbackBuffer;
begin
	Result := inherited Create([]);
end;

{	TDecoderFallbackException	}

class function TDecoderFallbackException.Create: IDecoderFallbackException;
begin
	Result := inherited Create([]);
end;

class function TDecoderFallbackException.Create(message: String): IDecoderFallbackException;
begin
	Result := inherited Create([message]);
end;

class function TDecoderFallbackException.Create(message: String; innerException: IException): IDecoderFallbackException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TDecoderFallbackException.Create(message: String; bytesUnknown: TArray<Byte>; index: Integer): IDecoderFallbackException;
begin
	Result := inherited Create([message, TCoreClrArray.DynArrayToVarArray<Byte>(bytesUnknown), index]);
end;

{	TDecoderReplacementFallback	}

class function TDecoderReplacementFallback.Create: IDecoderReplacementFallback;
begin
	Result := inherited Create([]);
end;

class function TDecoderReplacementFallback.Create(replacement: String): IDecoderReplacementFallback;
begin
	Result := inherited Create([replacement]);
end;

{	TDecoderReplacementFallbackBuffer	}

class function TDecoderReplacementFallbackBuffer.Create(fallback: IDecoderReplacementFallback): IDecoderReplacementFallbackBuffer;
begin
	Result := inherited Create([fallback]);
end;

{	TDefaultCharSetAttribute	}

class function TDefaultCharSetAttribute.Create(charSet: TCharSet): IDefaultCharSetAttribute;
begin
	Result := inherited Create([CharSetValues[charSet]]);
end;

{	TDefaultDependencyAttribute	}

class function TDefaultDependencyAttribute.Create(loadHintArgument: TLoadHint): IDefaultDependencyAttribute;
begin
	Result := inherited Create([LoadHintValues[loadHintArgument]]);
end;

{	TDefaultDllImportSearchPathsAttribute	}

class function TDefaultDllImportSearchPathsAttribute.Create(paths: TDllImportSearchPath_Set): IDefaultDllImportSearchPathsAttribute;
begin
	Result := inherited Create([ToNCEnum(paths)]);
end;

{	TDefaultMemberAttribute	}

class function TDefaultMemberAttribute.Create(memberName: String): IDefaultMemberAttribute;
begin
	Result := inherited Create([memberName]);
end;

{	TDefaultParameterValueAttribute	}

class function TDefaultParameterValueAttribute.Create(value: Variant): IDefaultParameterValueAttribute;
begin
	Result := inherited Create([value]);
end;

{	TDefaultValueAttribute	}

class function TDefaultValueAttribute.Create(type_: IType; value: String): IDefaultValueAttribute;
begin
	Result := inherited Create([type_, value]);
end;

class function TDefaultValueAttribute.Create(value: Char): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Byte): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: SmallInt): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Integer): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Int64): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Single): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Double): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Boolean): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: String): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Variant): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Shortint): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: Word): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: longword): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

class function TDefaultValueAttribute.Create(value: UInt64): IDefaultValueAttribute;
begin
	Result := inherited Create([value]);
end;

{	TDelegateWrapper	}

class function TDelegateWrapper.Create(d: IDelegate; wrapArgs: Boolean): IDelegateWrapper;
begin
	Result := inherited Create([d, wrapArgs]);
end;

{	TDependencyAttribute	}

class function TDependencyAttribute.Create(dependentAssemblyArgument: String; loadHintArgument: TLoadHint): IDependencyAttribute;
begin
	Result := inherited Create([dependentAssemblyArgument, LoadHintValues[loadHintArgument]]);
end;

{	TDictionary<TKey,TValue>	}

class function TDictionary<TKey,TValue>.Create: IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], []);
end;

class function TDictionary<TKey,TValue>.Create(capacity: Integer): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [capacity]);
end;

class function TDictionary<TKey,TValue>.Create(comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [comparer]);
end;

class function TDictionary<TKey,TValue>.Create(dictionary: IIDictionary<TKey,TValue>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [dictionary]);
end;

class function TDictionary<TKey,TValue>.Create(collection: IIEnumerable<IKeyValuePair<TKey,TValue>>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [collection]);
end;

class function TDictionary<TKey,TValue>.Create(capacity: Integer; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [capacity, comparer]);
end;

class function TDictionary<TKey,TValue>.Create(dictionary: IIDictionary<TKey,TValue>; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [dictionary, comparer]);
end;

class function TDictionary<TKey,TValue>.Create(collection: IIEnumerable<IKeyValuePair<TKey,TValue>>; comparer: IIEqualityComparer<TKey>): IDictionary<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [collection, comparer]);
end;

{	TDictionary_KeyCollection<TKey,TValue>	}

class function TDictionary_KeyCollection<TKey,TValue>.Create(dictionary: IDictionary<TKey,TValue>): IDictionary_KeyCollection<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [dictionary]);
end;

{	TDictionary_ValueCollection<TKey,TValue>	}

class function TDictionary_ValueCollection<TKey,TValue>.Create(dictionary: IDictionary<TKey,TValue>): IDictionary_ValueCollection<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [dictionary]);
end;

{	TDictionaryEntry	}

class function TDictionaryEntry.Create(key: Variant; value: Variant): IDictionaryEntry;
begin
	Result := inherited Create([key, value]);
end;

{	TIOException	}

class function TIOException.Create: IIOException;
begin
	Result := inherited Create([]);
end;

class function TIOException.Create(message: String): IIOException;
begin
	Result := inherited Create([message]);
end;

class function TIOException.Create(message: String; hresult: Integer): IIOException;
begin
	Result := inherited Create([message, hresult]);
end;

class function TIOException.Create(message: String; innerException: IException): IIOException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TDirectoryNotFoundException	}

class function TDirectoryNotFoundException.Create: IDirectoryNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TDirectoryNotFoundException.Create(message: String): IDirectoryNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TDirectoryNotFoundException.Create(message: String; innerException: IException): IDirectoryNotFoundException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TDisablePrivateReflectionAttribute	}

class function TDisablePrivateReflectionAttribute.Create: IDisablePrivateReflectionAttribute;
begin
	Result := inherited Create([]);
end;

{	TDisallowNullAttribute	}

class function TDisallowNullAttribute.Create: IDisallowNullAttribute;
begin
	Result := inherited Create([]);
end;

{	TDiscardableAttribute	}

class function TDiscardableAttribute.Create: IDiscardableAttribute;
begin
	Result := inherited Create([]);
end;

{	TDispatchWrapper	}

class function TDispatchWrapper.Create(obj: Variant): IDispatchWrapper;
begin
	Result := inherited Create([obj]);
end;

{	TDispIdAttribute	}

class function TDispIdAttribute.Create(dispId_: Integer): IDispIdAttribute;
begin
	Result := inherited Create([dispId_]);
end;

{	TDivideByZeroException	}

class function TDivideByZeroException.Create: IDivideByZeroException;
begin
	Result := inherited Create([]);
end;

class function TDivideByZeroException.Create(message: String): IDivideByZeroException;
begin
	Result := inherited Create([message]);
end;

class function TDivideByZeroException.Create(message: String; innerException: IException): IDivideByZeroException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TDllImportAttribute	}

class function TDllImportAttribute.Create(dllName: String): IDllImportAttribute;
begin
	Result := inherited Create([dllName]);
end;

{	TTypeLoadException	}

class function TTypeLoadException.Create: ITypeLoadException;
begin
	Result := inherited Create([]);
end;

class function TTypeLoadException.Create(message: String): ITypeLoadException;
begin
	Result := inherited Create([message]);
end;

class function TTypeLoadException.Create(message: String; inner: IException): ITypeLoadException;
begin
	Result := inherited Create([message, inner]);
end;

{	TDllNotFoundException	}

class function TDllNotFoundException.Create: IDllNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TDllNotFoundException.Create(message: String): IDllNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TDllNotFoundException.Create(message: String; inner: IException): IDllNotFoundException;
begin
	Result := inherited Create([message, inner]);
end;

{	TDoesNotReturnAttribute	}

class function TDoesNotReturnAttribute.Create: IDoesNotReturnAttribute;
begin
	Result := inherited Create([]);
end;

{	TDoesNotReturnIfAttribute	}

class function TDoesNotReturnIfAttribute.Create(parameterValue: Boolean): IDoesNotReturnIfAttribute;
begin
	Result := inherited Create([parameterValue]);
end;

{	TDuplicateWaitObjectException	}

class function TDuplicateWaitObjectException.Create: IDuplicateWaitObjectException;
begin
	Result := inherited Create([]);
end;

class function TDuplicateWaitObjectException.Create(parameterName: String): IDuplicateWaitObjectException;
begin
	Result := inherited Create([parameterName]);
end;

class function TDuplicateWaitObjectException.Create(parameterName: String; message: String): IDuplicateWaitObjectException;
begin
	Result := inherited Create([parameterName, message]);
end;

class function TDuplicateWaitObjectException.Create(message: String; innerException: IException): IDuplicateWaitObjectException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TDynamicallyAccessedMembersAttribute	}

class function TDynamicallyAccessedMembersAttribute.Create(memberTypes: TDynamicallyAccessedMemberTypes_Set): IDynamicallyAccessedMembersAttribute;
begin
	Result := inherited Create([ToNCEnum(memberTypes)]);
end;

{	TDynamicDependencyAttribute	}

class function TDynamicDependencyAttribute.Create(memberSignature: String): IDynamicDependencyAttribute;
begin
	Result := inherited Create([memberSignature]);
end;

class function TDynamicDependencyAttribute.Create(memberSignature: String; type_: IType): IDynamicDependencyAttribute;
begin
	Result := inherited Create([memberSignature, type_]);
end;

class function TDynamicDependencyAttribute.Create(memberTypes: TDynamicallyAccessedMemberTypes_Set; type_: IType): IDynamicDependencyAttribute;
begin
	Result := inherited Create([ToNCEnum(memberTypes), type_]);
end;

class function TDynamicDependencyAttribute.Create(memberSignature: String; typeName: String; assemblyName: String): IDynamicDependencyAttribute;
begin
	Result := inherited Create([memberSignature, typeName, assemblyName]);
end;

class function TDynamicDependencyAttribute.Create(memberTypes: TDynamicallyAccessedMemberTypes_Set; typeName: String; assemblyName: String): IDynamicDependencyAttribute;
begin
	Result := inherited Create([ToNCEnum(memberTypes), typeName, assemblyName]);
end;

{	TDynamicInterfaceCastableImplementationAttribute	}

class function TDynamicInterfaceCastableImplementationAttribute.Create: IDynamicInterfaceCastableImplementationAttribute;
begin
	Result := inherited Create([]);
end;

{	TDynamicMethod	}

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes]);
end;

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; restrictedSkipVisibility: Boolean): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes, restrictedSkipVisibility]);
end;

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes, m]);
end;

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes, owner]);
end;

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule; skipVisibility: Boolean): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes, m, skipVisibility]);
end;

class function TDynamicMethod.Create(name: String; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType; skipVisibility: Boolean): IDynamicMethod;
begin
	Result := inherited Create([name, returnType, parameterTypes, owner, skipVisibility]);
end;

class function TDynamicMethod.Create(name: String; attributes: TMethodAttributes_Set; callingConvention: TCallingConventions_Set; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; m: IModule; skipVisibility: Boolean): IDynamicMethod;
begin
	Result := inherited Create([name, ToNCEnum(attributes), ToNCEnum(callingConvention), returnType, parameterTypes, m, skipVisibility]);
end;

class function TDynamicMethod.Create(name: String; attributes: TMethodAttributes_Set; callingConvention: TCallingConventions_Set; returnType: IType; parameterTypes: ICoreClrBridgeArray<IType>; owner: IType; skipVisibility: Boolean): IDynamicMethod;
begin
	Result := inherited Create([name, ToNCEnum(attributes), ToNCEnum(callingConvention), returnType, parameterTypes, owner, skipVisibility]);
end;

{	TEditorBrowsableAttribute	}

class function TEditorBrowsableAttribute.Create(state: TEditorBrowsableState): IEditorBrowsableAttribute;
begin
	Result := inherited Create([EditorBrowsableStateValues[state]]);
end;

class function TEditorBrowsableAttribute.Create: IEditorBrowsableAttribute;
begin
	Result := inherited Create([]);
end;

{	TEncoderExceptionFallback	}

class function TEncoderExceptionFallback.Create: IEncoderExceptionFallback;
begin
	Result := inherited Create([]);
end;

{	TEncoderExceptionFallbackBuffer	}

class function TEncoderExceptionFallbackBuffer.Create: IEncoderExceptionFallbackBuffer;
begin
	Result := inherited Create([]);
end;

{	TEncoderFallbackException	}

class function TEncoderFallbackException.Create: IEncoderFallbackException;
begin
	Result := inherited Create([]);
end;

class function TEncoderFallbackException.Create(message: String): IEncoderFallbackException;
begin
	Result := inherited Create([message]);
end;

class function TEncoderFallbackException.Create(message: String; innerException: IException): IEncoderFallbackException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TEncoderReplacementFallback	}

class function TEncoderReplacementFallback.Create: IEncoderReplacementFallback;
begin
	Result := inherited Create([]);
end;

class function TEncoderReplacementFallback.Create(replacement: String): IEncoderReplacementFallback;
begin
	Result := inherited Create([replacement]);
end;

{	TEncoderReplacementFallbackBuffer	}

class function TEncoderReplacementFallbackBuffer.Create(fallback: IEncoderReplacementFallback): IEncoderReplacementFallbackBuffer;
begin
	Result := inherited Create([fallback]);
end;

{	TEncodingInfo	}

class function TEncodingInfo.Create(provider: IEncodingProvider; codePage: Integer; name: String; displayName: String): IEncodingInfo;
begin
	Result := inherited Create([provider, codePage, name, displayName]);
end;

{	TEncodingProvider	}

class function TEncodingProvider.Create: IEncodingProvider;
begin
	Result := inherited Create([]);
end;

{	TEndOfStreamException	}

class function TEndOfStreamException.Create: IEndOfStreamException;
begin
	Result := inherited Create([]);
end;

class function TEndOfStreamException.Create(message: String): IEndOfStreamException;
begin
	Result := inherited Create([message]);
end;

class function TEndOfStreamException.Create(message: String; innerException: IException): IEndOfStreamException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TEntryPointNotFoundException	}

class function TEntryPointNotFoundException.Create: IEntryPointNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TEntryPointNotFoundException.Create(message: String): IEntryPointNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TEntryPointNotFoundException.Create(message: String; inner: IException): IEntryPointNotFoundException;
begin
	Result := inherited Create([message, inner]);
end;

{	TEnumeratorCancellationAttribute	}

class function TEnumeratorCancellationAttribute.Create: IEnumeratorCancellationAttribute;
begin
	Result := inherited Create([]);
end;

{	TErrorWrapper	}

class function TErrorWrapper.Create(errorCode: Integer): IErrorWrapper;
begin
	Result := inherited Create([errorCode]);
end;

class function TErrorWrapper.Create(errorCode: Variant): IErrorWrapper;
begin
	Result := inherited Create([errorCode]);
end;

class function TErrorWrapper.Create(e: IException): IErrorWrapper;
begin
	Result := inherited Create([e]);
end;

{	TEventAttribute	}

class function TEventAttribute.Create(eventId: Integer): IEventAttribute;
begin
	Result := inherited Create([eventId]);
end;

{	TEventCounter	}

class function TEventCounter.Create(name: String; eventSource: IEventSource): IEventCounter;
begin
	Result := inherited Create([name, eventSource]);
end;

{	TEventDataAttribute	}

class function TEventDataAttribute.Create: IEventDataAttribute;
begin
	Result := inherited Create([]);
end;

{	TEventFieldAttribute	}

class function TEventFieldAttribute.Create: IEventFieldAttribute;
begin
	Result := inherited Create([]);
end;

{	TEventIgnoreAttribute	}

class function TEventIgnoreAttribute.Create: IEventIgnoreAttribute;
begin
	Result := inherited Create([]);
end;

{	TEventListener	}

class function TEventListener.Create: IEventListener;
begin
	Result := inherited Create([]);
end;

{	TEventSource	}

class function TEventSource.Create(eventSourceName: String): IEventSource;
begin
	Result := inherited Create([eventSourceName]);
end;

class function TEventSource.Create(eventSourceName: String; config: TEventSourceSettings_Set): IEventSource;
begin
	Result := inherited Create([eventSourceName, ToNCEnum(config)]);
end;

class function TEventSource.Create(eventSourceName: String; config: TEventSourceSettings_Set; traits: TArray<String>): IEventSource;
begin
	Result := inherited Create([eventSourceName, ToNCEnum(config), TCoreClrArray.DynArrayToVarArray<String>(traits)]);
end;

{	TEventSourceAttribute	}

class function TEventSourceAttribute.Create: IEventSourceAttribute;
begin
	Result := inherited Create([]);
end;

{	TEventSourceCreatedEventArgs	}

class function TEventSourceCreatedEventArgs.Create: IEventSourceCreatedEventArgs;
begin
	Result := inherited Create([]);
end;

{	TEventSourceException	}

class function TEventSourceException.Create: IEventSourceException;
begin
	Result := inherited Create([]);
end;

class function TEventSourceException.Create(message: String): IEventSourceException;
begin
	Result := inherited Create([message]);
end;

class function TEventSourceException.Create(message: String; innerException: IException): IEventSourceException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TExcludeFromCodeCoverageAttribute	}

class function TExcludeFromCodeCoverageAttribute.Create: IExcludeFromCodeCoverageAttribute;
begin
	Result := inherited Create([]);
end;

{	TExecutionEngineException	}

class function TExecutionEngineException.Create: IExecutionEngineException;
begin
	Result := inherited Create([]);
end;

class function TExecutionEngineException.Create(message: String): IExecutionEngineException;
begin
	Result := inherited Create([message]);
end;

class function TExecutionEngineException.Create(message: String; innerException: IException): IExecutionEngineException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TExtensionAttribute	}

class function TExtensionAttribute.Create: IExtensionAttribute;
begin
	Result := inherited Create([]);
end;

{	TMemberAccessException	}

class function TMemberAccessException.Create: IMemberAccessException;
begin
	Result := inherited Create([]);
end;

class function TMemberAccessException.Create(message: String): IMemberAccessException;
begin
	Result := inherited Create([message]);
end;

class function TMemberAccessException.Create(message: String; inner: IException): IMemberAccessException;
begin
	Result := inherited Create([message, inner]);
end;

{	TFieldAccessException	}

class function TFieldAccessException.Create: IFieldAccessException;
begin
	Result := inherited Create([]);
end;

class function TFieldAccessException.Create(message: String): IFieldAccessException;
begin
	Result := inherited Create([message]);
end;

class function TFieldAccessException.Create(message: String; inner: IException): IFieldAccessException;
begin
	Result := inherited Create([message, inner]);
end;

{	TFieldOffsetAttribute	}

class function TFieldOffsetAttribute.Create(offset: Integer): IFieldOffsetAttribute;
begin
	Result := inherited Create([offset]);
end;

{	TFileLoadException	}

class function TFileLoadException.Create: IFileLoadException;
begin
	Result := inherited Create([]);
end;

class function TFileLoadException.Create(message: String): IFileLoadException;
begin
	Result := inherited Create([message]);
end;

class function TFileLoadException.Create(message: String; inner: IException): IFileLoadException;
begin
	Result := inherited Create([message, inner]);
end;

class function TFileLoadException.Create(message: String; fileName: String): IFileLoadException;
begin
	Result := inherited Create([message, fileName]);
end;

class function TFileLoadException.Create(message: String; fileName: String; inner: IException): IFileLoadException;
begin
	Result := inherited Create([message, fileName, inner]);
end;

{	TFileNotFoundException	}

class function TFileNotFoundException.Create: IFileNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TFileNotFoundException.Create(message: String): IFileNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TFileNotFoundException.Create(message: String; innerException: IException): IFileNotFoundException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TFileNotFoundException.Create(message: String; fileName: String): IFileNotFoundException;
begin
	Result := inherited Create([message, fileName]);
end;

class function TFileNotFoundException.Create(message: String; fileName: String; innerException: IException): IFileNotFoundException;
begin
	Result := inherited Create([message, fileName, innerException]);
end;

{	TFileStream	}

class function TFileStream.Create(handle: IIntPtr; access: TFileAccess_Set): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access)]);
end;

class function TFileStream.Create(handle: ISafeFileHandle; access: TFileAccess_Set): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access)]);
end;

class function TFileStream.Create(path: String; mode: TFileMode): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode]]);
end;

class function TFileStream.Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access), ownsHandle]);
end;

class function TFileStream.Create(handle: ISafeFileHandle; access: TFileAccess_Set; bufferSize: Integer): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access), bufferSize]);
end;

class function TFileStream.Create(path: String; mode: TFileMode; access: TFileAccess_Set): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode], ToNCEnum(access)]);
end;

class function TFileStream.Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean; bufferSize: Integer): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access), ownsHandle, bufferSize]);
end;

class function TFileStream.Create(handle: ISafeFileHandle; access: TFileAccess_Set; bufferSize: Integer; isAsync: Boolean): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access), bufferSize, isAsync]);
end;

class function TFileStream.Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode], ToNCEnum(access), ToNCEnum(share)]);
end;

class function TFileStream.Create(handle: IIntPtr; access: TFileAccess_Set; ownsHandle: Boolean; bufferSize: Integer; isAsync: Boolean): IFileStream;
begin
	Result := inherited Create([handle, ToNCEnum(access), ownsHandle, bufferSize, isAsync]);
end;

class function TFileStream.Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode], ToNCEnum(access), ToNCEnum(share), bufferSize]);
end;

class function TFileStream.Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer; useAsync: Boolean): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode], ToNCEnum(access), ToNCEnum(share), bufferSize, useAsync]);
end;

class function TFileStream.Create(path: String; mode: TFileMode; access: TFileAccess_Set; share: TFileShare_Set; bufferSize: Integer; options: TFileOptions_Set): IFileStream;
begin
	Result := inherited Create([path, FileModeValues[mode], ToNCEnum(access), ToNCEnum(share), bufferSize, ToNCEnum(options)]);
end;

{	TFirstChanceExceptionEventArgs	}

class function TFirstChanceExceptionEventArgs.Create(exception: IException): IFirstChanceExceptionEventArgs;
begin
	Result := inherited Create([exception]);
end;

{	TFixedAddressValueTypeAttribute	}

class function TFixedAddressValueTypeAttribute.Create: IFixedAddressValueTypeAttribute;
begin
	Result := inherited Create([]);
end;

{	TFixedBufferAttribute	}

class function TFixedBufferAttribute.Create(elementType: IType; length: Integer): IFixedBufferAttribute;
begin
	Result := inherited Create([elementType, length]);
end;

{	TFlagsAttribute	}

class function TFlagsAttribute.Create: IFlagsAttribute;
begin
	Result := inherited Create([]);
end;

{	TFloatingPointInfo	}

class function TFloatingPointInfo.Create(denormalMantissaBits: Word; exponentBits: Word; maxBinaryExponent: Integer; exponentBias: Integer; infinityBits: UInt64): IFloatingPointInfo;
begin
	Result := inherited Create([denormalMantissaBits, exponentBits, maxBinaryExponent, exponentBias, infinityBits]);
end;

{	TFrameworkName	}

class function TFrameworkName.Create(identifier: String; version: IVersion): IFrameworkName;
begin
	Result := inherited Create([identifier, version]);
end;

class function TFrameworkName.Create(identifier: String; version: IVersion; profile: String): IFrameworkName;
begin
	Result := inherited Create([identifier, version, profile]);
end;

class function TFrameworkName.Create(frameworkName: String): IFrameworkName;
begin
	Result := inherited Create([frameworkName]);
end;

{	TGeneratedCodeAttribute	}

class function TGeneratedCodeAttribute.Create(tool: String; version: String): IGeneratedCodeAttribute;
begin
	Result := inherited Create([tool, version]);
end;

{	TGenericComparer<T>	}

class function TGenericComparer<T>.Create: IGenericComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TGenericEqualityComparer<T>	}

class function TGenericEqualityComparer<T>.Create: IGenericEqualityComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TGregorianCalendar	}

class function TGregorianCalendar.Create: IGregorianCalendar;
begin
	Result := inherited Create([]);
end;

class function TGregorianCalendar.Create(type_: TGregorianCalendarTypes): IGregorianCalendar;
begin
	Result := inherited Create([GregorianCalendarTypesValues[type_]]);
end;

{	TGuid	}

class function TGuid.Create(b: TArray<Byte>): IGuid;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(b)]);
end;

class function TGuid.Create(b: IReadOnlySpan<Byte>): IGuid;
begin
	Result := inherited Create([b]);
end;

class function TGuid.Create(g: String): IGuid;
begin
	Result := inherited Create([g]);
end;

class function TGuid.Create(a: longword; b: Word; c: Word; d: Byte; e: Byte; f: Byte; g: Byte; h: Byte; i: Byte; j: Byte; k: Byte): IGuid;
begin
	Result := inherited Create([a, b, c, d, e, f, g, h, i, j, k]);
end;

class function TGuid.Create(a: Integer; b: SmallInt; c: SmallInt; d: Byte; e: Byte; f: Byte; g: Byte; h: Byte; i: Byte; j: Byte; k: Byte): IGuid;
begin
	Result := inherited Create([a, b, c, d, e, f, g, h, i, j, k]);
end;

class function TGuid.Create(a: Integer; b: SmallInt; c: SmallInt; d: TArray<Byte>): IGuid;
begin
	Result := inherited Create([a, b, c, TCoreClrArray.DynArrayToVarArray<Byte>(d)]);
end;

{	TGuidAttribute	}

class function TGuidAttribute.Create(guid: String): IGuidAttribute;
begin
	Result := inherited Create([guid]);
end;

{	THandleProcessCorruptedStateExceptionsAttribute	}

class function THandleProcessCorruptedStateExceptionsAttribute.Create: IHandleProcessCorruptedStateExceptionsAttribute;
begin
	Result := inherited Create([]);
end;

{	THandleRef	}

class function THandleRef.Create(wrapper: Variant; handle: IIntPtr): IHandleRef;
begin
	Result := inherited Create([wrapper, handle]);
end;

{	THashtable	}

class function THashtable.Create: IHashtable;
begin
	Result := inherited Create([]);
end;

class function THashtable.Create(capacity: Integer): IHashtable;
begin
	Result := inherited Create([capacity]);
end;

class function THashtable.Create(equalityComparer: IIEqualityComparer): IHashtable;
begin
	Result := inherited Create([equalityComparer]);
end;

class function THashtable.Create(d: IIDictionary): IHashtable;
begin
	Result := inherited Create([d]);
end;

class function THashtable.Create(capacity: Integer; loadFactor: Single): IHashtable;
begin
	Result := inherited Create([capacity, loadFactor]);
end;

class function THashtable.Create(hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable;
begin
	Result := inherited Create([hcp, comparer]);
end;

class function THashtable.Create(capacity: Integer; equalityComparer: IIEqualityComparer): IHashtable;
begin
	Result := inherited Create([capacity, equalityComparer]);
end;

class function THashtable.Create(d: IIDictionary; loadFactor: Single): IHashtable;
begin
	Result := inherited Create([d, loadFactor]);
end;

class function THashtable.Create(d: IIDictionary; equalityComparer: IIEqualityComparer): IHashtable;
begin
	Result := inherited Create([d, equalityComparer]);
end;

class function THashtable.Create(capacity: Integer; loadFactor: Single; equalityComparer: IIEqualityComparer): IHashtable;
begin
	Result := inherited Create([capacity, loadFactor, equalityComparer]);
end;

class function THashtable.Create(capacity: Integer; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable;
begin
	Result := inherited Create([capacity, hcp, comparer]);
end;

class function THashtable.Create(d: IIDictionary; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable;
begin
	Result := inherited Create([d, hcp, comparer]);
end;

class function THashtable.Create(d: IIDictionary; loadFactor: Single; equalityComparer: IIEqualityComparer): IHashtable;
begin
	Result := inherited Create([d, loadFactor, equalityComparer]);
end;

class function THashtable.Create(capacity: Integer; loadFactor: Single; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable;
begin
	Result := inherited Create([capacity, loadFactor, hcp, comparer]);
end;

class function THashtable.Create(d: IIDictionary; loadFactor: Single; hcp: IIHashCodeProvider; comparer: IIComparer): IHashtable;
begin
	Result := inherited Create([d, loadFactor, hcp, comparer]);
end;

{	THebrewCalendar	}

class function THebrewCalendar.Create: IHebrewCalendar;
begin
	Result := inherited Create([]);
end;

{	THijriCalendar	}

class function THijriCalendar.Create: IHijriCalendar;
begin
	Result := inherited Create([]);
end;

{	TIdnMapping	}

class function TIdnMapping.Create: IIdnMapping;
begin
	Result := inherited Create([]);
end;

{	TInAttribute	}

class function TInAttribute.Create: IInAttribute;
begin
	Result := inherited Create([]);
end;

{	TIncrementingEventCounter	}

class function TIncrementingEventCounter.Create(name: String; eventSource: IEventSource): IIncrementingEventCounter;
begin
	Result := inherited Create([name, eventSource]);
end;

{	TIncrementingPollingCounter	}

class function TIncrementingPollingCounter.Create(name: String; eventSource: IEventSource; totalValueProvider: TClrFunc<Double>): IIncrementingPollingCounter;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([name, eventSource, GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Double>.Wrap(totalValueProvider), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TIndentedTextWriter	}

class function TIndentedTextWriter.Create(writer: ITextWriter): IIndentedTextWriter;
begin
	Result := inherited Create([writer]);
end;

class function TIndentedTextWriter.Create(writer: ITextWriter; tabString: String): IIndentedTextWriter;
begin
	Result := inherited Create([writer, tabString]);
end;

{	TIndex	}

class function TIndex.Create(value: Integer; fromEnd: Boolean): IIndex;
begin
	Result := inherited Create([value, fromEnd]);
end;

{	TIndexerNameAttribute	}

class function TIndexerNameAttribute.Create(indexerName: String): IIndexerNameAttribute;
begin
	Result := inherited Create([indexerName]);
end;

{	TIndexOutOfRangeException	}

class function TIndexOutOfRangeException.Create: IIndexOutOfRangeException;
begin
	Result := inherited Create([]);
end;

class function TIndexOutOfRangeException.Create(message: String): IIndexOutOfRangeException;
begin
	Result := inherited Create([message]);
end;

class function TIndexOutOfRangeException.Create(message: String; innerException: IException): IIndexOutOfRangeException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TInsufficientExecutionStackException	}

class function TInsufficientExecutionStackException.Create: IInsufficientExecutionStackException;
begin
	Result := inherited Create([]);
end;

class function TInsufficientExecutionStackException.Create(message: String): IInsufficientExecutionStackException;
begin
	Result := inherited Create([message]);
end;

class function TInsufficientExecutionStackException.Create(message: String; innerException: IException): IInsufficientExecutionStackException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TOutOfMemoryException	}

class function TOutOfMemoryException.Create: IOutOfMemoryException;
begin
	Result := inherited Create([]);
end;

class function TOutOfMemoryException.Create(message: String): IOutOfMemoryException;
begin
	Result := inherited Create([message]);
end;

class function TOutOfMemoryException.Create(message: String; innerException: IException): IOutOfMemoryException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TInsufficientMemoryException	}

class function TInsufficientMemoryException.Create: IInsufficientMemoryException;
begin
	Result := inherited Create([]);
end;

class function TInsufficientMemoryException.Create(message: String): IInsufficientMemoryException;
begin
	Result := inherited Create([message]);
end;

class function TInsufficientMemoryException.Create(message: String; innerException: IException): IInsufficientMemoryException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TInterfaceTypeAttribute	}

class function TInterfaceTypeAttribute.Create(interfaceType: TComInterfaceType): IInterfaceTypeAttribute;
begin
	Result := inherited Create([ComInterfaceTypeValues[interfaceType]]);
end;

class function TInterfaceTypeAttribute.Create(interfaceType: SmallInt): IInterfaceTypeAttribute;
begin
	Result := inherited Create([interfaceType]);
end;

{	TInternalsVisibleToAttribute	}

class function TInternalsVisibleToAttribute.Create(assemblyName: String): IInternalsVisibleToAttribute;
begin
	Result := inherited Create([assemblyName]);
end;

{	TIntPtr	}

class function TIntPtr.Create(value: Integer): IIntPtr;
begin
	Result := inherited Create([value]);
end;

class function TIntPtr.Create(value: Int64): IIntPtr;
begin
	Result := inherited Create([value]);
end;

class function TIntPtr.Create(value: ICoreClrInstance): IIntPtr;
begin
	Result := inherited Create([value]);
end;

{	TInvalidCastException	}

class function TInvalidCastException.Create: IInvalidCastException;
begin
	Result := inherited Create([]);
end;

class function TInvalidCastException.Create(message: String): IInvalidCastException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidCastException.Create(message: String; innerException: IException): IInvalidCastException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TInvalidCastException.Create(message: String; errorCode: Integer): IInvalidCastException;
begin
	Result := inherited Create([message, errorCode]);
end;

{	TInvalidComObjectException	}

class function TInvalidComObjectException.Create: IInvalidComObjectException;
begin
	Result := inherited Create([]);
end;

class function TInvalidComObjectException.Create(message: String): IInvalidComObjectException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidComObjectException.Create(message: String; inner: IException): IInvalidComObjectException;
begin
	Result := inherited Create([message, inner]);
end;

{	TInvalidDataException	}

class function TInvalidDataException.Create: IInvalidDataException;
begin
	Result := inherited Create([]);
end;

class function TInvalidDataException.Create(message: String): IInvalidDataException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidDataException.Create(message: String; innerException: IException): IInvalidDataException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TInvalidFilterCriteriaException	}

class function TInvalidFilterCriteriaException.Create: IInvalidFilterCriteriaException;
begin
	Result := inherited Create([]);
end;

class function TInvalidFilterCriteriaException.Create(message: String): IInvalidFilterCriteriaException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidFilterCriteriaException.Create(message: String; inner: IException): IInvalidFilterCriteriaException;
begin
	Result := inherited Create([message, inner]);
end;

{	TInvalidOleVariantTypeException	}

class function TInvalidOleVariantTypeException.Create: IInvalidOleVariantTypeException;
begin
	Result := inherited Create([]);
end;

class function TInvalidOleVariantTypeException.Create(message: String): IInvalidOleVariantTypeException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidOleVariantTypeException.Create(message: String; inner: IException): IInvalidOleVariantTypeException;
begin
	Result := inherited Create([message, inner]);
end;

{	TInvalidOperationException	}

class function TInvalidOperationException.Create: IInvalidOperationException;
begin
	Result := inherited Create([]);
end;

class function TInvalidOperationException.Create(message: String): IInvalidOperationException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidOperationException.Create(message: String; innerException: IException): IInvalidOperationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TInvalidProgramException	}

class function TInvalidProgramException.Create: IInvalidProgramException;
begin
	Result := inherited Create([]);
end;

class function TInvalidProgramException.Create(message: String): IInvalidProgramException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidProgramException.Create(message: String; inner: IException): IInvalidProgramException;
begin
	Result := inherited Create([message, inner]);
end;

{	TInvalidTimeZoneException	}

class function TInvalidTimeZoneException.Create: IInvalidTimeZoneException;
begin
	Result := inherited Create([]);
end;

class function TInvalidTimeZoneException.Create(message: String): IInvalidTimeZoneException;
begin
	Result := inherited Create([message]);
end;

class function TInvalidTimeZoneException.Create(message: String; innerException: IException): IInvalidTimeZoneException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TIsByRefLikeAttribute	}

class function TIsByRefLikeAttribute.Create: IIsByRefLikeAttribute;
begin
	Result := inherited Create([]);
end;

{	TIsReadOnlyAttribute	}

class function TIsReadOnlyAttribute.Create: IIsReadOnlyAttribute;
begin
	Result := inherited Create([]);
end;

{	TIteratorStateMachineAttribute	}

class function TIteratorStateMachineAttribute.Create(stateMachineType: IType): IIteratorStateMachineAttribute;
begin
	Result := inherited Create([stateMachineType]);
end;

{	TJapaneseCalendar	}

class function TJapaneseCalendar.Create: IJapaneseCalendar;
begin
	Result := inherited Create([]);
end;

{	TJapaneseLunisolarCalendar	}

class function TJapaneseLunisolarCalendar.Create: IJapaneseLunisolarCalendar;
begin
	Result := inherited Create([]);
end;

{	TJulianCalendar	}

class function TJulianCalendar.Create: IJulianCalendar;
begin
	Result := inherited Create([]);
end;

{	TKeyNotFoundException	}

class function TKeyNotFoundException.Create: IKeyNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TKeyNotFoundException.Create(message: String): IKeyNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TKeyNotFoundException.Create(message: String; innerException: IException): IKeyNotFoundException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TKeyValuePair<TKey,TValue>	}

class function TKeyValuePair<TKey,TValue>.Create(key: TKey; value: TValue): IKeyValuePair<TKey,TValue>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TKey>(True), TCoreClrType.GetTypeName<TValue>(True)], [TCNRttiManager.AsVariant<TKey>(key), TCNRttiManager.AsVariant<TValue>(value)]);
end;

{	TKoreanCalendar	}

class function TKoreanCalendar.Create: IKoreanCalendar;
begin
	Result := inherited Create([]);
end;

{	TKoreanLunisolarCalendar	}

class function TKoreanLunisolarCalendar.Create: IKoreanLunisolarCalendar;
begin
	Result := inherited Create([]);
end;

{	TLazy<T>	}

class function TLazy<T>.Create: ILazy<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TLazy<T>.Create(value: T): ILazy<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(value)]);
end;

class function TLazy<T>.Create(valueFactory: TClrFunc<T>): ILazy<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TLazy<T>.Create(isThreadSafe: Boolean): ILazy<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [isThreadSafe]);
end;

class function TLazy<T>.Create(mode: TLazyThreadSafetyMode): ILazy<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [LazyThreadSafetyModeValues[mode]]);
end;

class function TLazy<T>.Create(valueFactory: TClrFunc<T>; isThreadSafe: Boolean): ILazy<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), isThreadSafe]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TLazy<T>.Create(valueFactory: TClrFunc<T>; mode: TLazyThreadSafetyMode): ILazy<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), LazyThreadSafetyModeValues[mode]]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TLazy<T,TMetadata>	}

class function TLazy<T,TMetadata>.Create(valueFactory: TClrFunc<T>; metadata: TMetadata): ILazy<T,TMetadata>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), TCNRttiManager.AsVariant<TMetadata>(metadata)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TLazy<T,TMetadata>.Create(metadata: TMetadata; isThreadSafe: Boolean): ILazy<T,TMetadata>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [TCNRttiManager.AsVariant<TMetadata>(metadata), isThreadSafe]);
end;

class function TLazy<T,TMetadata>.Create(metadata: TMetadata; mode: TLazyThreadSafetyMode): ILazy<T,TMetadata>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [TCNRttiManager.AsVariant<TMetadata>(metadata), LazyThreadSafetyModeValues[mode]]);
end;

class function TLazy<T,TMetadata>.Create(metadata: TMetadata): ILazy<T,TMetadata>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [TCNRttiManager.AsVariant<TMetadata>(metadata)]);
end;

class function TLazy<T,TMetadata>.Create(valueFactory: TClrFunc<T>; metadata: TMetadata; isThreadSafe: Boolean): ILazy<T,TMetadata>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), TCNRttiManager.AsVariant<TMetadata>(metadata), isThreadSafe]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TLazy<T,TMetadata>.Create(valueFactory: TClrFunc<T>; metadata: TMetadata; mode: TLazyThreadSafetyMode): ILazy<T,TMetadata>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True), TCoreClrType.GetTypeName<TMetadata>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), TCNRttiManager.AsVariant<TMetadata>(metadata), LazyThreadSafetyModeValues[mode]]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TLCIDConversionAttribute	}

class function TLCIDConversionAttribute.Create(lcid: Integer): ILCIDConversionAttribute;
begin
	Result := inherited Create([lcid]);
end;

{	TList<T>	}

class function TList<T>.Create: IList<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TList<T>.Create(capacity: Integer): IList<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [capacity]);
end;

class function TList<T>.Create(collection: IIEnumerable<T>): IList<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [collection]);
end;

{	TListDictionaryInternal	}

class function TListDictionaryInternal.Create: IListDictionaryInternal;
begin
	Result := inherited Create([]);
end;

{	TLoaderOptimizationAttribute	}

class function TLoaderOptimizationAttribute.Create(value: Byte): ILoaderOptimizationAttribute;
begin
	Result := inherited Create([value]);
end;

class function TLoaderOptimizationAttribute.Create(value: TLoaderOptimization): ILoaderOptimizationAttribute;
begin
	Result := inherited Create([LoaderOptimizationValues[value]]);
end;

{	TLockRecursionException	}

class function TLockRecursionException.Create: ILockRecursionException;
begin
	Result := inherited Create([]);
end;

class function TLockRecursionException.Create(message: String): ILockRecursionException;
begin
	Result := inherited Create([message]);
end;

class function TLockRecursionException.Create(message: String; innerException: IException): ILockRecursionException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TManifestResourceInfo	}

class function TManifestResourceInfo.Create(containingAssembly: IAssembly; containingFileName: String; resourceLocation: TResourceLocation_Set): IManifestResourceInfo;
begin
	Result := inherited Create([containingAssembly, containingFileName, ToNCEnum(resourceLocation)]);
end;

{	TManualResetEvent	}

class function TManualResetEvent.Create(initialState: Boolean): IManualResetEvent;
begin
	Result := inherited Create([initialState]);
end;

{	TManualResetEventSlim	}

class function TManualResetEventSlim.Create: IManualResetEventSlim;
begin
	Result := inherited Create([]);
end;

class function TManualResetEventSlim.Create(initialState: Boolean): IManualResetEventSlim;
begin
	Result := inherited Create([initialState]);
end;

class function TManualResetEventSlim.Create(initialState: Boolean; spinCount: Integer): IManualResetEventSlim;
begin
	Result := inherited Create([initialState, spinCount]);
end;

{	TMarshalAsAttribute	}

class function TMarshalAsAttribute.Create(unmanagedType: TUnmanagedType): IMarshalAsAttribute;
begin
	Result := inherited Create([UnmanagedTypeValues[unmanagedType]]);
end;

class function TMarshalAsAttribute.Create(unmanagedType: SmallInt): IMarshalAsAttribute;
begin
	Result := inherited Create([unmanagedType]);
end;

{	TMarshalDirectiveException	}

class function TMarshalDirectiveException.Create: IMarshalDirectiveException;
begin
	Result := inherited Create([]);
end;

class function TMarshalDirectiveException.Create(message: String): IMarshalDirectiveException;
begin
	Result := inherited Create([message]);
end;

class function TMarshalDirectiveException.Create(message: String; inner: IException): IMarshalDirectiveException;
begin
	Result := inherited Create([message, inner]);
end;

{	TMatrix3x2	}

class function TMatrix3x2.Create(m11: Single; m12: Single; m21: Single; m22: Single; m31: Single; m32: Single): IMatrix3x2;
begin
	Result := inherited Create([m11, m12, m21, m22, m31, m32]);
end;

{	TMatrix4x4	}

class function TMatrix4x4.Create(m11: Single; m12: Single; m13: Single; m14: Single; m21: Single; m22: Single; m23: Single; m24: Single; m31: Single; m32: Single; m33: Single; m34: Single; m41: Single; m42: Single; m43: Single; m44: Single): IMatrix4x4;
begin
	Result := inherited Create([m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44]);
end;

class function TMatrix4x4.Create(value: IMatrix3x2): IMatrix4x4;
begin
	Result := inherited Create([value]);
end;

{	TMaybeNullAttribute	}

class function TMaybeNullAttribute.Create: IMaybeNullAttribute;
begin
	Result := inherited Create([]);
end;

{	TMaybeNullWhenAttribute	}

class function TMaybeNullWhenAttribute.Create(returnValue: Boolean): IMaybeNullWhenAttribute;
begin
	Result := inherited Create([returnValue]);
end;

{	TMemberNotNullAttribute	}

class function TMemberNotNullAttribute.Create(member: String): IMemberNotNullAttribute;
begin
	Result := inherited Create([member]);
end;

class function TMemberNotNullAttribute.Create(members: TArray<String>): IMemberNotNullAttribute;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<String>(members)]);
end;

{	TMemberNotNullWhenAttribute	}

class function TMemberNotNullWhenAttribute.Create(returnValue: Boolean; member: String): IMemberNotNullWhenAttribute;
begin
	Result := inherited Create([returnValue, member]);
end;

class function TMemberNotNullWhenAttribute.Create(returnValue: Boolean; members: TArray<String>): IMemberNotNullWhenAttribute;
begin
	Result := inherited Create([returnValue, TCoreClrArray.DynArrayToVarArray<String>(members)]);
end;

{	TMemory<T>	}

class function TMemory<T>.Create(array_: ICoreClrBridgeArray<T>): IMemory<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_]);
end;

class function TMemory<T>.Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IMemory<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_, start, length]);
end;

{	TMemoryFailPoint	}

class function TMemoryFailPoint.Create(sizeInMegabytes: Integer): IMemoryFailPoint;
begin
	Result := inherited Create([sizeInMegabytes]);
end;

{	TMemoryHandle	}

class function TMemoryHandle.Create(pointer: ICoreClrInstance; handle: IGCHandle; pinnable: IIPinnable): IMemoryHandle;
begin
	Result := inherited Create([pointer, handle, pinnable]);
end;

{	TMemoryStream	}

class function TMemoryStream.Create: IMemoryStream;
begin
	Result := inherited Create([]);
end;

class function TMemoryStream.Create(capacity: Integer): IMemoryStream;
begin
	Result := inherited Create([capacity]);
end;

class function TMemoryStream.Create(buffer: TArray<Byte>): IMemoryStream;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(buffer)]);
end;

class function TMemoryStream.Create(buffer: TArray<Byte>; writable: Boolean): IMemoryStream;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(buffer), writable]);
end;

class function TMemoryStream.Create(buffer: TArray<Byte>; index: Integer; count: Integer): IMemoryStream;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(buffer), index, count]);
end;

class function TMemoryStream.Create(buffer: TArray<Byte>; index: Integer; count: Integer; writable: Boolean): IMemoryStream;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(buffer), index, count, writable]);
end;

class function TMemoryStream.Create(buffer: TArray<Byte>; index: Integer; count: Integer; writable: Boolean; publiclyVisible: Boolean): IMemoryStream;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(buffer), index, count, writable, publiclyVisible]);
end;

{	TMethodAccessException	}

class function TMethodAccessException.Create: IMethodAccessException;
begin
	Result := inherited Create([]);
end;

class function TMethodAccessException.Create(message: String): IMethodAccessException;
begin
	Result := inherited Create([message]);
end;

class function TMethodAccessException.Create(message: String; inner: IException): IMethodAccessException;
begin
	Result := inherited Create([message, inner]);
end;

{	TMethodImplAttribute	}

class function TMethodImplAttribute.Create(methodImplOptions: TMethodImplOptions_Set): IMethodImplAttribute;
begin
	Result := inherited Create([ToNCEnum(methodImplOptions)]);
end;

class function TMethodImplAttribute.Create(value: SmallInt): IMethodImplAttribute;
begin
	Result := inherited Create([value]);
end;

class function TMethodImplAttribute.Create: IMethodImplAttribute;
begin
	Result := inherited Create([]);
end;

{	TMissingMemberException	}

class function TMissingMemberException.Create: IMissingMemberException;
begin
	Result := inherited Create([]);
end;

class function TMissingMemberException.Create(message: String): IMissingMemberException;
begin
	Result := inherited Create([message]);
end;

class function TMissingMemberException.Create(message: String; inner: IException): IMissingMemberException;
begin
	Result := inherited Create([message, inner]);
end;

class function TMissingMemberException.Create(className: String; memberName: String): IMissingMemberException;
begin
	Result := inherited Create([className, memberName]);
end;

{	TMissingFieldException	}

class function TMissingFieldException.Create: IMissingFieldException;
begin
	Result := inherited Create([]);
end;

class function TMissingFieldException.Create(message: String): IMissingFieldException;
begin
	Result := inherited Create([message]);
end;

class function TMissingFieldException.Create(message: String; inner: IException): IMissingFieldException;
begin
	Result := inherited Create([message, inner]);
end;

class function TMissingFieldException.Create(className: String; fieldName: String): IMissingFieldException;
begin
	Result := inherited Create([className, fieldName]);
end;

{	TMissingManifestResourceException	}

class function TMissingManifestResourceException.Create: IMissingManifestResourceException;
begin
	Result := inherited Create([]);
end;

class function TMissingManifestResourceException.Create(message: String): IMissingManifestResourceException;
begin
	Result := inherited Create([message]);
end;

class function TMissingManifestResourceException.Create(message: String; inner: IException): IMissingManifestResourceException;
begin
	Result := inherited Create([message, inner]);
end;

{	TMissingMethodException	}

class function TMissingMethodException.Create: IMissingMethodException;
begin
	Result := inherited Create([]);
end;

class function TMissingMethodException.Create(message: String): IMissingMethodException;
begin
	Result := inherited Create([message]);
end;

class function TMissingMethodException.Create(message: String; inner: IException): IMissingMethodException;
begin
	Result := inherited Create([message, inner]);
end;

class function TMissingMethodException.Create(className: String; methodName: String): IMissingMethodException;
begin
	Result := inherited Create([className, methodName]);
end;

{	TMissingSatelliteAssemblyException	}

class function TMissingSatelliteAssemblyException.Create: IMissingSatelliteAssemblyException;
begin
	Result := inherited Create([]);
end;

class function TMissingSatelliteAssemblyException.Create(message: String): IMissingSatelliteAssemblyException;
begin
	Result := inherited Create([message]);
end;

class function TMissingSatelliteAssemblyException.Create(message: String; cultureName: String): IMissingSatelliteAssemblyException;
begin
	Result := inherited Create([message, cultureName]);
end;

class function TMissingSatelliteAssemblyException.Create(message: String; inner: IException): IMissingSatelliteAssemblyException;
begin
	Result := inherited Create([message, inner]);
end;

{	TModuleInitializerAttribute	}

class function TModuleInitializerAttribute.Create: IModuleInitializerAttribute;
begin
	Result := inherited Create([]);
end;

{	TMTAThreadAttribute	}

class function TMTAThreadAttribute.Create: IMTAThreadAttribute;
begin
	Result := inherited Create([]);
end;

{	TMulticastNotSupportedException	}

class function TMulticastNotSupportedException.Create: IMulticastNotSupportedException;
begin
	Result := inherited Create([]);
end;

class function TMulticastNotSupportedException.Create(message: String): IMulticastNotSupportedException;
begin
	Result := inherited Create([message]);
end;

class function TMulticastNotSupportedException.Create(message: String; inner: IException): IMulticastNotSupportedException;
begin
	Result := inherited Create([message, inner]);
end;

{	TMutex	}

class function TMutex.Create(initiallyOwned: Boolean; name: String; var createdNew: Boolean): IMutex;
begin
	Result := inherited Create([initiallyOwned, name, createdNew]);
end;

class function TMutex.Create(initiallyOwned: Boolean; name: String): IMutex;
begin
	Result := inherited Create([initiallyOwned, name]);
end;

class function TMutex.Create(initiallyOwned: Boolean): IMutex;
begin
	Result := inherited Create([initiallyOwned]);
end;

class function TMutex.Create: IMutex;
begin
	Result := inherited Create([]);
end;

{	TNeutralResourcesLanguageAttribute	}

class function TNeutralResourcesLanguageAttribute.Create(cultureName: String): INeutralResourcesLanguageAttribute;
begin
	Result := inherited Create([cultureName]);
end;

class function TNeutralResourcesLanguageAttribute.Create(cultureName: String; location: TUltimateResourceFallbackLocation): INeutralResourcesLanguageAttribute;
begin
	Result := inherited Create([cultureName, UltimateResourceFallbackLocationValues[location]]);
end;

{	TNonEventAttribute	}

class function TNonEventAttribute.Create: INonEventAttribute;
begin
	Result := inherited Create([]);
end;

{	TNonSerializedAttribute	}

class function TNonSerializedAttribute.Create: INonSerializedAttribute;
begin
	Result := inherited Create([]);
end;

{	TNotFiniteNumberException	}

class function TNotFiniteNumberException.Create: INotFiniteNumberException;
begin
	Result := inherited Create([]);
end;

class function TNotFiniteNumberException.Create(offendingNumber: Double): INotFiniteNumberException;
begin
	Result := inherited Create([offendingNumber]);
end;

class function TNotFiniteNumberException.Create(message: String): INotFiniteNumberException;
begin
	Result := inherited Create([message]);
end;

class function TNotFiniteNumberException.Create(message: String; offendingNumber: Double): INotFiniteNumberException;
begin
	Result := inherited Create([message, offendingNumber]);
end;

class function TNotFiniteNumberException.Create(message: String; innerException: IException): INotFiniteNumberException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TNotFiniteNumberException.Create(message: String; offendingNumber: Double; innerException: IException): INotFiniteNumberException;
begin
	Result := inherited Create([message, offendingNumber, innerException]);
end;

{	TNotImplementedException	}

class function TNotImplementedException.Create: INotImplementedException;
begin
	Result := inherited Create([]);
end;

class function TNotImplementedException.Create(message: String): INotImplementedException;
begin
	Result := inherited Create([message]);
end;

class function TNotImplementedException.Create(message: String; inner: IException): INotImplementedException;
begin
	Result := inherited Create([message, inner]);
end;

{	TNotNullAttribute	}

class function TNotNullAttribute.Create: INotNullAttribute;
begin
	Result := inherited Create([]);
end;

{	TNotNullIfNotNullAttribute	}

class function TNotNullIfNotNullAttribute.Create(parameterName: String): INotNullIfNotNullAttribute;
begin
	Result := inherited Create([parameterName]);
end;

{	TNotNullWhenAttribute	}

class function TNotNullWhenAttribute.Create(returnValue: Boolean): INotNullWhenAttribute;
begin
	Result := inherited Create([returnValue]);
end;

{	TNotSupportedException	}

class function TNotSupportedException.Create: INotSupportedException;
begin
	Result := inherited Create([]);
end;

class function TNotSupportedException.Create(message: String): INotSupportedException;
begin
	Result := inherited Create([message]);
end;

class function TNotSupportedException.Create(message: String; innerException: IException): INotSupportedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TNullable<T>	}

class function TNullable<T>.Create(value: T): INullable<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(value)]);
end;

{	TNullableComparer<T>	}

class function TNullableComparer<T>.Create: INullableComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TNullableEqualityComparer<T>	}

class function TNullableEqualityComparer<T>.Create: INullableEqualityComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TNullReferenceException	}

class function TNullReferenceException.Create: INullReferenceException;
begin
	Result := inherited Create([]);
end;

class function TNullReferenceException.Create(message: String): INullReferenceException;
begin
	Result := inherited Create([message]);
end;

class function TNullReferenceException.Create(message: String; innerException: IException): INullReferenceException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TNumberFormatInfo	}

class function TNumberFormatInfo.Create: INumberFormatInfo;
begin
	Result := inherited Create([]);
end;

{	TObfuscateAssemblyAttribute	}

class function TObfuscateAssemblyAttribute.Create(assemblyIsPrivate: Boolean): IObfuscateAssemblyAttribute;
begin
	Result := inherited Create([assemblyIsPrivate]);
end;

{	TObfuscationAttribute	}

class function TObfuscationAttribute.Create: IObfuscationAttribute;
begin
	Result := inherited Create([]);
end;

{	TObjectComparer<T>	}

class function TObjectComparer<T>.Create: IObjectComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TObjectDisposedException	}

class function TObjectDisposedException.Create(objectName: String): IObjectDisposedException;
begin
	Result := inherited Create([objectName]);
end;

class function TObjectDisposedException.Create(objectName: String; message: String): IObjectDisposedException;
begin
	Result := inherited Create([objectName, message]);
end;

class function TObjectDisposedException.Create(message: String; innerException: IException): IObjectDisposedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TObjectEqualityComparer<T>	}

class function TObjectEqualityComparer<T>.Create: IObjectEqualityComparer<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

{	TObjectHandle	}

class function TObjectHandle.Create(o: Variant): IObjectHandle;
begin
	Result := inherited Create([o]);
end;

{	TObsoleteAttribute	}

class function TObsoleteAttribute.Create: IObsoleteAttribute;
begin
	Result := inherited Create([]);
end;

class function TObsoleteAttribute.Create(message: String): IObsoleteAttribute;
begin
	Result := inherited Create([message]);
end;

class function TObsoleteAttribute.Create(message: String; error: Boolean): IObsoleteAttribute;
begin
	Result := inherited Create([message, error]);
end;

{	TOnDeserializedAttribute	}

class function TOnDeserializedAttribute.Create: IOnDeserializedAttribute;
begin
	Result := inherited Create([]);
end;

{	TOnDeserializingAttribute	}

class function TOnDeserializingAttribute.Create: IOnDeserializingAttribute;
begin
	Result := inherited Create([]);
end;

{	TOnSerializedAttribute	}

class function TOnSerializedAttribute.Create: IOnSerializedAttribute;
begin
	Result := inherited Create([]);
end;

{	TOnSerializingAttribute	}

class function TOnSerializingAttribute.Create: IOnSerializingAttribute;
begin
	Result := inherited Create([]);
end;

{	TOperatingSystem	}

class function TOperatingSystem.Create(platform_: TPlatformID; version: IVersion): IOperatingSystem;
begin
	Result := inherited Create([PlatformIDValues[platform_], version]);
end;

{	TOperationCanceledException	}

class function TOperationCanceledException.Create: IOperationCanceledException;
begin
	Result := inherited Create([]);
end;

class function TOperationCanceledException.Create(message: String): IOperationCanceledException;
begin
	Result := inherited Create([message]);
end;

class function TOperationCanceledException.Create(token: ICancellationToken): IOperationCanceledException;
begin
	Result := inherited Create([token]);
end;

class function TOperationCanceledException.Create(message: String; innerException: IException): IOperationCanceledException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TOperationCanceledException.Create(message: String; token: ICancellationToken): IOperationCanceledException;
begin
	Result := inherited Create([message, token]);
end;

class function TOperationCanceledException.Create(message: String; innerException: IException; token: ICancellationToken): IOperationCanceledException;
begin
	Result := inherited Create([message, innerException, token]);
end;

{	TOptionalAttribute	}

class function TOptionalAttribute.Create: IOptionalAttribute;
begin
	Result := inherited Create([]);
end;

{	TOptionalFieldAttribute	}

class function TOptionalFieldAttribute.Create: IOptionalFieldAttribute;
begin
	Result := inherited Create([]);
end;

{	TOutAttribute	}

class function TOutAttribute.Create: IOutAttribute;
begin
	Result := inherited Create([]);
end;

{	TOverflowException	}

class function TOverflowException.Create: IOverflowException;
begin
	Result := inherited Create([]);
end;

class function TOverflowException.Create(message: String): IOverflowException;
begin
	Result := inherited Create([message]);
end;

class function TOverflowException.Create(message: String; innerException: IException): IOverflowException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TOverlapped	}

class function TOverlapped.Create: IOverlapped;
begin
	Result := inherited Create([]);
end;

class function TOverlapped.Create(offsetLo: Integer; offsetHi: Integer; hEvent: IIntPtr; ar: IIAsyncResult): IOverlapped;
begin
	Result := inherited Create([offsetLo, offsetHi, hEvent, ar]);
end;

class function TOverlapped.Create(offsetLo: Integer; offsetHi: Integer; hEvent: Integer; ar: IIAsyncResult): IOverlapped;
begin
	Result := inherited Create([offsetLo, offsetHi, hEvent, ar]);
end;

{	TParamArrayAttribute	}

class function TParamArrayAttribute.Create: IParamArrayAttribute;
begin
	Result := inherited Create([]);
end;

{	TParameterModifier	}

class function TParameterModifier.Create(parameterCount: Integer): IParameterModifier;
begin
	Result := inherited Create([parameterCount]);
end;

{	TPathTooLongException	}

class function TPathTooLongException.Create: IPathTooLongException;
begin
	Result := inherited Create([]);
end;

class function TPathTooLongException.Create(message: String): IPathTooLongException;
begin
	Result := inherited Create([message]);
end;

class function TPathTooLongException.Create(message: String; innerException: IException): IPathTooLongException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TPermissionSet	}

class function TPermissionSet.Create(state: TPermissionState): IPermissionSet;
begin
	Result := inherited Create([PermissionStateValues[state]]);
end;

class function TPermissionSet.Create(permSet: IPermissionSet): IPermissionSet;
begin
	Result := inherited Create([permSet]);
end;

{	TPersianCalendar	}

class function TPersianCalendar.Create: IPersianCalendar;
begin
	Result := inherited Create([]);
end;

{	TPlane	}

class function TPlane.Create(x: Single; y: Single; z: Single; d: Single): IPlane;
begin
	Result := inherited Create([x, y, z, d]);
end;

class function TPlane.Create(normal: IVector3; d: Single): IPlane;
begin
	Result := inherited Create([normal, d]);
end;

class function TPlane.Create(value: IVector4): IPlane;
begin
	Result := inherited Create([value]);
end;

{	TPlatformNotSupportedException	}

class function TPlatformNotSupportedException.Create: IPlatformNotSupportedException;
begin
	Result := inherited Create([]);
end;

class function TPlatformNotSupportedException.Create(message: String): IPlatformNotSupportedException;
begin
	Result := inherited Create([message]);
end;

class function TPlatformNotSupportedException.Create(message: String; inner: IException): IPlatformNotSupportedException;
begin
	Result := inherited Create([message, inner]);
end;

{	TPollingCounter	}

class function TPollingCounter.Create(name: String; eventSource: IEventSource; metricProvider: TClrFunc<Double>): IPollingCounter;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([name, eventSource, GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Double>.Wrap(metricProvider), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TPreAllocatedOverlapped	}

class function TPreAllocatedOverlapped.Create(callback: TIOCompletionCallback; state: Variant; pinData: Variant): IPreAllocatedOverlapped;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TIOCompletionCallback>(callback)), clrCallBack_1), state, pinData]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TPrePrepareMethodAttribute	}

class function TPrePrepareMethodAttribute.Create: IPrePrepareMethodAttribute;
begin
	Result := inherited Create([]);
end;

{	TPreserveBaseOverridesAttribute	}

class function TPreserveBaseOverridesAttribute.Create: IPreserveBaseOverridesAttribute;
begin
	Result := inherited Create([]);
end;

{	TPreserveSigAttribute	}

class function TPreserveSigAttribute.Create: IPreserveSigAttribute;
begin
	Result := inherited Create([]);
end;

{	TProgIdAttribute	}

class function TProgIdAttribute.Create(progId: String): IProgIdAttribute;
begin
	Result := inherited Create([progId]);
end;

{	TProgress<T>	}

class function TProgress<T>.Create: IProgress<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TProgress<T>.Create(handler: TClrAction<T>): IProgress<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrAction<T>.Wrap(handler), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TPureAttribute	}

class function TPureAttribute.Create: IPureAttribute;
begin
	Result := inherited Create([]);
end;

{	TQuaternion	}

class function TQuaternion.Create(x: Single; y: Single; z: Single; w: Single): IQuaternion;
begin
	Result := inherited Create([x, y, z, w]);
end;

class function TQuaternion.Create(vectorPart: IVector3; scalarPart: Single): IQuaternion;
begin
	Result := inherited Create([vectorPart, scalarPart]);
end;

{	TRandom	}

class function TRandom.Create: IRandom;
begin
	Result := inherited Create([]);
end;

class function TRandom.Create(Seed: Integer): IRandom;
begin
	Result := inherited Create([Seed]);
end;

{	TRange	}

class function TRange.Create(start: IIndex; end_: IIndex): IRange;
begin
	Result := inherited Create([start, end_]);
end;

{	TRankException	}

class function TRankException.Create: IRankException;
begin
	Result := inherited Create([]);
end;

class function TRankException.Create(message: String): IRankException;
begin
	Result := inherited Create([message]);
end;

class function TRankException.Create(message: String; innerException: IException): IRankException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TReaderWriterLockSlim	}

class function TReaderWriterLockSlim.Create: IReaderWriterLockSlim;
begin
	Result := inherited Create([]);
end;

class function TReaderWriterLockSlim.Create(recursionPolicy: TLockRecursionPolicy): IReaderWriterLockSlim;
begin
	Result := inherited Create([LockRecursionPolicyValues[recursionPolicy]]);
end;

{	TReadOnlyCollection<T>	}

class function TReadOnlyCollection<T>.Create(list: IIList<T>): IReadOnlyCollection<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [list]);
end;

{	TReadOnlyMemory<T>	}

class function TReadOnlyMemory<T>.Create(array_: ICoreClrBridgeArray<T>): IReadOnlyMemory<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_]);
end;

class function TReadOnlyMemory<T>.Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IReadOnlyMemory<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_, start, length]);
end;

{	TReadOnlySpan<T>	}

class function TReadOnlySpan<T>.Create(array_: ICoreClrBridgeArray<T>): IReadOnlySpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_]);
end;

class function TReadOnlySpan<T>.Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): IReadOnlySpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_, start, length]);
end;

class function TReadOnlySpan<T>.Create(pointer: ICoreClrInstance; length: Integer): IReadOnlySpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [pointer, length]);
end;

{	TReferenceAssemblyAttribute	}

class function TReferenceAssemblyAttribute.Create: IReferenceAssemblyAttribute;
begin
	Result := inherited Create([]);
end;

class function TReferenceAssemblyAttribute.Create(description: String): IReferenceAssemblyAttribute;
begin
	Result := inherited Create([description]);
end;

{	TReflectionTypeLoadException	}

class function TReflectionTypeLoadException.Create(classes: ICoreClrBridgeArray<IType>; exceptions: ICoreClrBridgeArray<IException>): IReflectionTypeLoadException;
begin
	Result := inherited Create([classes, exceptions]);
end;

class function TReflectionTypeLoadException.Create(classes: ICoreClrBridgeArray<IType>; exceptions: ICoreClrBridgeArray<IException>; message: String): IReflectionTypeLoadException;
begin
	Result := inherited Create([classes, exceptions, message]);
end;

{	TRegionInfo	}

class function TRegionInfo.Create(name: String): IRegionInfo;
begin
	Result := inherited Create([name]);
end;

class function TRegionInfo.Create(culture: Integer): IRegionInfo;
begin
	Result := inherited Create([culture]);
end;

{	TReliabilityContractAttribute	}

class function TReliabilityContractAttribute.Create(consistencyGuarantee: TConsistency; cer: TCer): IReliabilityContractAttribute;
begin
	Result := inherited Create([ConsistencyValues[consistencyGuarantee], CerValues[cer]]);
end;

{	TRequiresUnreferencedCodeAttribute	}

class function TRequiresUnreferencedCodeAttribute.Create(message: String): IRequiresUnreferencedCodeAttribute;
begin
	Result := inherited Create([message]);
end;

{	TResolveEventArgs	}

class function TResolveEventArgs.Create(name: String): IResolveEventArgs;
begin
	Result := inherited Create([name]);
end;

class function TResolveEventArgs.Create(name: String; requestingAssembly: IAssembly): IResolveEventArgs;
begin
	Result := inherited Create([name, requestingAssembly]);
end;

{	TResourceConsumptionAttribute	}

class function TResourceConsumptionAttribute.Create(resourceScope: TResourceScope_Set): IResourceConsumptionAttribute;
begin
	Result := inherited Create([ToNCEnum(resourceScope)]);
end;

class function TResourceConsumptionAttribute.Create(resourceScope: TResourceScope_Set; consumptionScope: TResourceScope_Set): IResourceConsumptionAttribute;
begin
	Result := inherited Create([ToNCEnum(resourceScope), ToNCEnum(consumptionScope)]);
end;

{	TResourceExposureAttribute	}

class function TResourceExposureAttribute.Create(exposureLevel: TResourceScope_Set): IResourceExposureAttribute;
begin
	Result := inherited Create([ToNCEnum(exposureLevel)]);
end;

{	TResourceManager	}

class function TResourceManager.Create(baseName: String; assembly: IAssembly): IResourceManager;
begin
	Result := inherited Create([baseName, assembly]);
end;

class function TResourceManager.Create(baseName: String; assembly: IAssembly; usingResourceSet: IType): IResourceManager;
begin
	Result := inherited Create([baseName, assembly, usingResourceSet]);
end;

class function TResourceManager.Create(resourceSource: IType): IResourceManager;
begin
	Result := inherited Create([resourceSource]);
end;

{	TResourceReader	}

class function TResourceReader.Create(fileName: String): IResourceReader;
begin
	Result := inherited Create([fileName]);
end;

class function TResourceReader.Create(stream: IStream): IResourceReader;
begin
	Result := inherited Create([stream]);
end;

{	TResourceSet	}

class function TResourceSet.Create(fileName: String): IResourceSet;
begin
	Result := inherited Create([fileName]);
end;

class function TResourceSet.Create(stream: IStream): IResourceSet;
begin
	Result := inherited Create([stream]);
end;

class function TResourceSet.Create(reader: IIResourceReader): IResourceSet;
begin
	Result := inherited Create([reader]);
end;

{	TRune	}

class function TRune.Create(ch: Char): IRune;
begin
	Result := inherited Create([ch]);
end;

class function TRune.Create(value: Integer): IRune;
begin
	Result := inherited Create([value]);
end;

class function TRune.Create(value: longword): IRune;
begin
	Result := inherited Create([value]);
end;

class function TRune.Create(highSurrogate: Char; lowSurrogate: Char): IRune;
begin
	Result := inherited Create([highSurrogate, lowSurrogate]);
end;

{	TRuntimeCompatibilityAttribute	}

class function TRuntimeCompatibilityAttribute.Create: IRuntimeCompatibilityAttribute;
begin
	Result := inherited Create([]);
end;

{	TRuntimeWrappedException	}

class function TRuntimeWrappedException.Create(thrownObject: Variant): IRuntimeWrappedException;
begin
	Result := inherited Create([thrownObject]);
end;

{	TSafeArrayRankMismatchException	}

class function TSafeArrayRankMismatchException.Create: ISafeArrayRankMismatchException;
begin
	Result := inherited Create([]);
end;

class function TSafeArrayRankMismatchException.Create(message: String): ISafeArrayRankMismatchException;
begin
	Result := inherited Create([message]);
end;

class function TSafeArrayRankMismatchException.Create(message: String; inner: IException): ISafeArrayRankMismatchException;
begin
	Result := inherited Create([message, inner]);
end;

{	TSafeArrayTypeMismatchException	}

class function TSafeArrayTypeMismatchException.Create: ISafeArrayTypeMismatchException;
begin
	Result := inherited Create([]);
end;

class function TSafeArrayTypeMismatchException.Create(message: String): ISafeArrayTypeMismatchException;
begin
	Result := inherited Create([message]);
end;

class function TSafeArrayTypeMismatchException.Create(message: String; inner: IException): ISafeArrayTypeMismatchException;
begin
	Result := inherited Create([message, inner]);
end;

{	TSafeFileHandle	}

class function TSafeFileHandle.Create(preexistingHandle: IIntPtr; ownsHandle: Boolean): ISafeFileHandle;
begin
	Result := inherited Create([preexistingHandle, ownsHandle]);
end;

{	TSafeWaitHandle	}

class function TSafeWaitHandle.Create(existingHandle: IIntPtr; ownsHandle: Boolean): ISafeWaitHandle;
begin
	Result := inherited Create([existingHandle, ownsHandle]);
end;

{	TSatelliteContractVersionAttribute	}

class function TSatelliteContractVersionAttribute.Create(version: String): ISatelliteContractVersionAttribute;
begin
	Result := inherited Create([version]);
end;

{	TSecureString	}

class function TSecureString.Create: ISecureString;
begin
	Result := inherited Create([]);
end;

class function TSecureString.Create(value: ICoreClrInstance; length: Integer): ISecureString;
begin
	Result := inherited Create([value, length]);
end;

{	TSecurityCriticalAttribute	}

class function TSecurityCriticalAttribute.Create: ISecurityCriticalAttribute;
begin
	Result := inherited Create([]);
end;

class function TSecurityCriticalAttribute.Create(scope: TSecurityCriticalScope): ISecurityCriticalAttribute;
begin
	Result := inherited Create([SecurityCriticalScopeValues[scope]]);
end;

{	TSecurityElement	}

class function TSecurityElement.Create(tag: String): ISecurityElement;
begin
	Result := inherited Create([tag]);
end;

class function TSecurityElement.Create(tag: String; text: String): ISecurityElement;
begin
	Result := inherited Create([tag, text]);
end;

{	TSecurityException	}

class function TSecurityException.Create: ISecurityException;
begin
	Result := inherited Create([]);
end;

class function TSecurityException.Create(message: String): ISecurityException;
begin
	Result := inherited Create([message]);
end;

class function TSecurityException.Create(message: String; inner: IException): ISecurityException;
begin
	Result := inherited Create([message, inner]);
end;

class function TSecurityException.Create(message: String; type_: IType): ISecurityException;
begin
	Result := inherited Create([message, type_]);
end;

class function TSecurityException.Create(message: String; type_: IType; state: String): ISecurityException;
begin
	Result := inherited Create([message, type_, state]);
end;

{	TSecurityPermissionAttribute	}

class function TSecurityPermissionAttribute.Create(action: TSecurityAction): ISecurityPermissionAttribute;
begin
	Result := inherited Create([SecurityActionValues[action]]);
end;

{	TSecurityRulesAttribute	}

class function TSecurityRulesAttribute.Create(ruleSet: TSecurityRuleSet): ISecurityRulesAttribute;
begin
	Result := inherited Create([SecurityRuleSetValues[ruleSet]]);
end;

{	TSecuritySafeCriticalAttribute	}

class function TSecuritySafeCriticalAttribute.Create: ISecuritySafeCriticalAttribute;
begin
	Result := inherited Create([]);
end;

{	TSecurityTransparentAttribute	}

class function TSecurityTransparentAttribute.Create: ISecurityTransparentAttribute;
begin
	Result := inherited Create([]);
end;

{	TSecurityTreatAsSafeAttribute	}

class function TSecurityTreatAsSafeAttribute.Create: ISecurityTreatAsSafeAttribute;
begin
	Result := inherited Create([]);
end;

{	TSEHException	}

class function TSEHException.Create: ISEHException;
begin
	Result := inherited Create([]);
end;

class function TSEHException.Create(message: String): ISEHException;
begin
	Result := inherited Create([message]);
end;

class function TSEHException.Create(message: String; inner: IException): ISEHException;
begin
	Result := inherited Create([message, inner]);
end;

{	TSemaphore	}

class function TSemaphore.Create(initialCount: Integer; maximumCount: Integer): ISemaphore;
begin
	Result := inherited Create([initialCount, maximumCount]);
end;

class function TSemaphore.Create(initialCount: Integer; maximumCount: Integer; name: String): ISemaphore;
begin
	Result := inherited Create([initialCount, maximumCount, name]);
end;

class function TSemaphore.Create(initialCount: Integer; maximumCount: Integer; name: String; var createdNew: Boolean): ISemaphore;
begin
	Result := inherited Create([initialCount, maximumCount, name, createdNew]);
end;

{	TSemaphoreFullException	}

class function TSemaphoreFullException.Create: ISemaphoreFullException;
begin
	Result := inherited Create([]);
end;

class function TSemaphoreFullException.Create(message: String): ISemaphoreFullException;
begin
	Result := inherited Create([message]);
end;

class function TSemaphoreFullException.Create(message: String; innerException: IException): ISemaphoreFullException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TSemaphoreSlim	}

class function TSemaphoreSlim.Create(initialCount: Integer): ISemaphoreSlim;
begin
	Result := inherited Create([initialCount]);
end;

class function TSemaphoreSlim.Create(initialCount: Integer; maxCount: Integer): ISemaphoreSlim;
begin
	Result := inherited Create([initialCount, maxCount]);
end;

{	TSerializableAttribute	}

class function TSerializableAttribute.Create: ISerializableAttribute;
begin
	Result := inherited Create([]);
end;

{	TSerializationException	}

class function TSerializationException.Create: ISerializationException;
begin
	Result := inherited Create([]);
end;

class function TSerializationException.Create(message: String): ISerializationException;
begin
	Result := inherited Create([message]);
end;

class function TSerializationException.Create(message: String; innerException: IException): ISerializationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TSerializationInfo	}

class function TSerializationInfo.Create(type_: IType; converter: IIFormatterConverter): ISerializationInfo;
begin
	Result := inherited Create([type_, converter]);
end;

class function TSerializationInfo.Create(type_: IType; converter: IIFormatterConverter; requireSameTokenInPartialTrust: Boolean): ISerializationInfo;
begin
	Result := inherited Create([type_, converter, requireSameTokenInPartialTrust]);
end;

{	TSkipLocalsInitAttribute	}

class function TSkipLocalsInitAttribute.Create: ISkipLocalsInitAttribute;
begin
	Result := inherited Create([]);
end;

{	TSortVersion	}

class function TSortVersion.Create(fullVersion: Integer; sortId: IGuid): ISortVersion;
begin
	Result := inherited Create([fullVersion, sortId]);
end;

{	TSpan<T>	}

class function TSpan<T>.Create(array_: ICoreClrBridgeArray<T>): ISpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_]);
end;

class function TSpan<T>.Create(array_: ICoreClrBridgeArray<T>; start: Integer; length: Integer): ISpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [array_, start, length]);
end;

class function TSpan<T>.Create(pointer: ICoreClrInstance; length: Integer): ISpan<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [pointer, length]);
end;

{	TSpecialNameAttribute	}

class function TSpecialNameAttribute.Create: ISpecialNameAttribute;
begin
	Result := inherited Create([]);
end;

{	TSpinLock	}

class function TSpinLock.Create(enableThreadOwnerTracking: Boolean): ISpinLock;
begin
	Result := inherited Create([enableThreadOwnerTracking]);
end;

{	TStackFrame	}

class function TStackFrame.Create: IStackFrame;
begin
	Result := inherited Create([]);
end;

class function TStackFrame.Create(needFileInfo: Boolean): IStackFrame;
begin
	Result := inherited Create([needFileInfo]);
end;

class function TStackFrame.Create(skipFrames: Integer): IStackFrame;
begin
	Result := inherited Create([skipFrames]);
end;

class function TStackFrame.Create(skipFrames: Integer; needFileInfo: Boolean): IStackFrame;
begin
	Result := inherited Create([skipFrames, needFileInfo]);
end;

class function TStackFrame.Create(fileName: String; lineNumber: Integer): IStackFrame;
begin
	Result := inherited Create([fileName, lineNumber]);
end;

class function TStackFrame.Create(fileName: String; lineNumber: Integer; colNumber: Integer): IStackFrame;
begin
	Result := inherited Create([fileName, lineNumber, colNumber]);
end;

{	TStackOverflowException	}

class function TStackOverflowException.Create: IStackOverflowException;
begin
	Result := inherited Create([]);
end;

class function TStackOverflowException.Create(message: String): IStackOverflowException;
begin
	Result := inherited Create([message]);
end;

class function TStackOverflowException.Create(message: String; innerException: IException): IStackOverflowException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TStackTrace	}

class function TStackTrace.Create: IStackTrace;
begin
	Result := inherited Create([]);
end;

class function TStackTrace.Create(fNeedFileInfo: Boolean): IStackTrace;
begin
	Result := inherited Create([fNeedFileInfo]);
end;

class function TStackTrace.Create(skipFrames: Integer): IStackTrace;
begin
	Result := inherited Create([skipFrames]);
end;

class function TStackTrace.Create(e: IException): IStackTrace;
begin
	Result := inherited Create([e]);
end;

class function TStackTrace.Create(frame: IStackFrame): IStackTrace;
begin
	Result := inherited Create([frame]);
end;

class function TStackTrace.Create(skipFrames: Integer; fNeedFileInfo: Boolean): IStackTrace;
begin
	Result := inherited Create([skipFrames, fNeedFileInfo]);
end;

class function TStackTrace.Create(e: IException; fNeedFileInfo: Boolean): IStackTrace;
begin
	Result := inherited Create([e, fNeedFileInfo]);
end;

class function TStackTrace.Create(e: IException; skipFrames: Integer): IStackTrace;
begin
	Result := inherited Create([e, skipFrames]);
end;

class function TStackTrace.Create(e: IException; skipFrames: Integer; fNeedFileInfo: Boolean): IStackTrace;
begin
	Result := inherited Create([e, skipFrames, fNeedFileInfo]);
end;

{	TStandardFormat	}

class function TStandardFormat.Create(symbol: Char; precision: Byte): IStandardFormat;
begin
	Result := inherited Create([symbol, precision]);
end;

{	TSTAThreadAttribute	}

class function TSTAThreadAttribute.Create: ISTAThreadAttribute;
begin
	Result := inherited Create([]);
end;

{	TStopwatch	}

class function TStopwatch.Create: IStopwatch;
begin
	Result := inherited Create([]);
end;

{	TStreamingContext	}

class function TStreamingContext.Create(state: TStreamingContextStates_Set): IStreamingContext;
begin
	Result := inherited Create([ToNCEnum(state)]);
end;

class function TStreamingContext.Create(state: TStreamingContextStates_Set; additional: Variant): IStreamingContext;
begin
	Result := inherited Create([ToNCEnum(state), additional]);
end;

{	TStreamReader	}

class function TStreamReader.Create(stream: IStream): IStreamReader;
begin
	Result := inherited Create([stream]);
end;

class function TStreamReader.Create(path: String): IStreamReader;
begin
	Result := inherited Create([path]);
end;

class function TStreamReader.Create(stream: IStream; detectEncodingFromByteOrderMarks: Boolean): IStreamReader;
begin
	Result := inherited Create([stream, detectEncodingFromByteOrderMarks]);
end;

class function TStreamReader.Create(stream: IStream; encoding: IEncoding): IStreamReader;
begin
	Result := inherited Create([stream, encoding]);
end;

class function TStreamReader.Create(path: String; detectEncodingFromByteOrderMarks: Boolean): IStreamReader;
begin
	Result := inherited Create([path, detectEncodingFromByteOrderMarks]);
end;

class function TStreamReader.Create(path: String; encoding: IEncoding): IStreamReader;
begin
	Result := inherited Create([path, encoding]);
end;

class function TStreamReader.Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean): IStreamReader;
begin
	Result := inherited Create([stream, encoding, detectEncodingFromByteOrderMarks]);
end;

class function TStreamReader.Create(path: String; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean): IStreamReader;
begin
	Result := inherited Create([path, encoding, detectEncodingFromByteOrderMarks]);
end;

class function TStreamReader.Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer): IStreamReader;
begin
	Result := inherited Create([stream, encoding, detectEncodingFromByteOrderMarks, bufferSize]);
end;

class function TStreamReader.Create(path: String; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer): IStreamReader;
begin
	Result := inherited Create([path, encoding, detectEncodingFromByteOrderMarks, bufferSize]);
end;

class function TStreamReader.Create(stream: IStream; encoding: IEncoding; detectEncodingFromByteOrderMarks: Boolean; bufferSize: Integer; leaveOpen: Boolean): IStreamReader;
begin
	Result := inherited Create([stream, encoding, detectEncodingFromByteOrderMarks, bufferSize, leaveOpen]);
end;

{	TStreamWriter	}

class function TStreamWriter.Create(stream: IStream): IStreamWriter;
begin
	Result := inherited Create([stream]);
end;

class function TStreamWriter.Create(path: String): IStreamWriter;
begin
	Result := inherited Create([path]);
end;

class function TStreamWriter.Create(stream: IStream; encoding: IEncoding): IStreamWriter;
begin
	Result := inherited Create([stream, encoding]);
end;

class function TStreamWriter.Create(path: String; append: Boolean): IStreamWriter;
begin
	Result := inherited Create([path, append]);
end;

class function TStreamWriter.Create(stream: IStream; encoding: IEncoding; bufferSize: Integer): IStreamWriter;
begin
	Result := inherited Create([stream, encoding, bufferSize]);
end;

class function TStreamWriter.Create(path: String; append: Boolean; encoding: IEncoding): IStreamWriter;
begin
	Result := inherited Create([path, append, encoding]);
end;

class function TStreamWriter.Create(stream: IStream; encoding: IEncoding; bufferSize: Integer; leaveOpen: Boolean): IStreamWriter;
begin
	Result := inherited Create([stream, encoding, bufferSize, leaveOpen]);
end;

class function TStreamWriter.Create(path: String; append: Boolean; encoding: IEncoding; bufferSize: Integer): IStreamWriter;
begin
	Result := inherited Create([path, append, encoding, bufferSize]);
end;

{	TString	}

class function TString.Create(value: TArray<Char>): IString;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Char>(value)]);
end;

class function TString.Create(value: ICoreClrInstance): IString;
begin
	Result := inherited Create([value]);
end;

class function TString.Create(value: IReadOnlySpan<Char>): IString;
begin
	Result := inherited Create([value]);
end;

class function TString.Create(value: TArray<Char>; startIndex: Integer; length: Integer): IString;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Char>(value), startIndex, length]);
end;

class function TString.Create(value: ICoreClrInstance; startIndex: Integer; length: Integer): IString;
begin
	Result := inherited Create([value, startIndex, length]);
end;

class function TString.Create(value: ICoreClrInstance; startIndex: Integer; length: Integer; enc: IEncoding): IString;
begin
	Result := inherited Create([value, startIndex, length, enc]);
end;

class function TString.Create(c: Char; count: Integer): IString;
begin
	Result := inherited Create([c, count]);
end;

{	TStringBuilder	}

class function TStringBuilder.Create: IStringBuilder;
begin
	Result := inherited Create([]);
end;

class function TStringBuilder.Create(capacity: Integer): IStringBuilder;
begin
	Result := inherited Create([capacity]);
end;

class function TStringBuilder.Create(value: String): IStringBuilder;
begin
	Result := inherited Create([value]);
end;

class function TStringBuilder.Create(value: String; capacity: Integer): IStringBuilder;
begin
	Result := inherited Create([value, capacity]);
end;

class function TStringBuilder.Create(capacity: Integer; maxCapacity: Integer): IStringBuilder;
begin
	Result := inherited Create([capacity, maxCapacity]);
end;

class function TStringBuilder.Create(value: String; startIndex: Integer; length: Integer; capacity: Integer): IStringBuilder;
begin
	Result := inherited Create([value, startIndex, length, capacity]);
end;

{	TStringFreezingAttribute	}

class function TStringFreezingAttribute.Create: IStringFreezingAttribute;
begin
	Result := inherited Create([]);
end;

{	TStringInfo	}

class function TStringInfo.Create: IStringInfo;
begin
	Result := inherited Create([]);
end;

class function TStringInfo.Create(value: String): IStringInfo;
begin
	Result := inherited Create([value]);
end;

{	TStringReader	}

class function TStringReader.Create(s: String): IStringReader;
begin
	Result := inherited Create([s]);
end;

{	TStringWriter	}

class function TStringWriter.Create: IStringWriter;
begin
	Result := inherited Create([]);
end;

class function TStringWriter.Create(formatProvider: IIFormatProvider): IStringWriter;
begin
	Result := inherited Create([formatProvider]);
end;

class function TStringWriter.Create(sb: IStringBuilder): IStringWriter;
begin
	Result := inherited Create([sb]);
end;

class function TStringWriter.Create(sb: IStringBuilder; formatProvider: IIFormatProvider): IStringWriter;
begin
	Result := inherited Create([sb, formatProvider]);
end;

{	TStrongBox<T>	}

class function TStrongBox<T>.Create: IStrongBox<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TStrongBox<T>.Create(value: T): IStrongBox<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(value)]);
end;

{	TStrongNameKeyPair	}

class function TStrongNameKeyPair.Create(keyPairFile: IFileStream): IStrongNameKeyPair;
begin
	Result := inherited Create([keyPairFile]);
end;

class function TStrongNameKeyPair.Create(keyPairArray: TArray<Byte>): IStrongNameKeyPair;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<Byte>(keyPairArray)]);
end;

class function TStrongNameKeyPair.Create(keyPairContainer: String): IStrongNameKeyPair;
begin
	Result := inherited Create([keyPairContainer]);
end;

{	TStructLayoutAttribute	}

class function TStructLayoutAttribute.Create(layoutKind: TLayoutKind): IStructLayoutAttribute;
begin
	Result := inherited Create([LayoutKindValues[layoutKind]]);
end;

class function TStructLayoutAttribute.Create(layoutKind: SmallInt): IStructLayoutAttribute;
begin
	Result := inherited Create([layoutKind]);
end;

{	TSupportedOSPlatformAttribute	}

class function TSupportedOSPlatformAttribute.Create(platformName: String): ISupportedOSPlatformAttribute;
begin
	Result := inherited Create([platformName]);
end;

{	TSuppressGCTransitionAttribute	}

class function TSuppressGCTransitionAttribute.Create: ISuppressGCTransitionAttribute;
begin
	Result := inherited Create([]);
end;

{	TSuppressIldasmAttribute	}

class function TSuppressIldasmAttribute.Create: ISuppressIldasmAttribute;
begin
	Result := inherited Create([]);
end;

{	TSuppressMessageAttribute	}

class function TSuppressMessageAttribute.Create(category: String; checkId: String): ISuppressMessageAttribute;
begin
	Result := inherited Create([category, checkId]);
end;

{	TSuppressUnmanagedCodeSecurityAttribute	}

class function TSuppressUnmanagedCodeSecurityAttribute.Create: ISuppressUnmanagedCodeSecurityAttribute;
begin
	Result := inherited Create([]);
end;

{	TSwitchExpressionException	}

class function TSwitchExpressionException.Create: ISwitchExpressionException;
begin
	Result := inherited Create([]);
end;

class function TSwitchExpressionException.Create(innerException: IException): ISwitchExpressionException;
begin
	Result := inherited Create([innerException]);
end;

class function TSwitchExpressionException.Create(unmatchedValue: Variant): ISwitchExpressionException;
begin
	Result := inherited Create([unmatchedValue]);
end;

class function TSwitchExpressionException.Create(message: String): ISwitchExpressionException;
begin
	Result := inherited Create([message]);
end;

class function TSwitchExpressionException.Create(message: String; innerException: IException): ISwitchExpressionException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TSynchronizationContext	}

class function TSynchronizationContext.Create: ISynchronizationContext;
begin
	Result := inherited Create([]);
end;

{	TSynchronizationLockException	}

class function TSynchronizationLockException.Create: ISynchronizationLockException;
begin
	Result := inherited Create([]);
end;

class function TSynchronizationLockException.Create(message: String): ISynchronizationLockException;
begin
	Result := inherited Create([message]);
end;

class function TSynchronizationLockException.Create(message: String; innerException: IException): ISynchronizationLockException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TTaiwanCalendar	}

class function TTaiwanCalendar.Create: ITaiwanCalendar;
begin
	Result := inherited Create([]);
end;

{	TTaiwanLunisolarCalendar	}

class function TTaiwanLunisolarCalendar.Create: ITaiwanLunisolarCalendar;
begin
	Result := inherited Create([]);
end;

{	TTargetedPatchingOptOutAttribute	}

class function TTargetedPatchingOptOutAttribute.Create(reason: String): ITargetedPatchingOptOutAttribute;
begin
	Result := inherited Create([reason]);
end;

{	TTargetException	}

class function TTargetException.Create: ITargetException;
begin
	Result := inherited Create([]);
end;

class function TTargetException.Create(message: String): ITargetException;
begin
	Result := inherited Create([message]);
end;

class function TTargetException.Create(message: String; inner: IException): ITargetException;
begin
	Result := inherited Create([message, inner]);
end;

{	TTargetFrameworkAttribute	}

class function TTargetFrameworkAttribute.Create(frameworkName: String): ITargetFrameworkAttribute;
begin
	Result := inherited Create([frameworkName]);
end;

{	TTargetInvocationException	}

class function TTargetInvocationException.Create(inner: IException): ITargetInvocationException;
begin
	Result := inherited Create([inner]);
end;

class function TTargetInvocationException.Create(message: String; inner: IException): ITargetInvocationException;
begin
	Result := inherited Create([message, inner]);
end;

{	TTargetParameterCountException	}

class function TTargetParameterCountException.Create: ITargetParameterCountException;
begin
	Result := inherited Create([]);
end;

class function TTargetParameterCountException.Create(message: String): ITargetParameterCountException;
begin
	Result := inherited Create([message]);
end;

class function TTargetParameterCountException.Create(message: String; inner: IException): ITargetParameterCountException;
begin
	Result := inherited Create([message, inner]);
end;

{	TTargetPlatformAttribute	}

class function TTargetPlatformAttribute.Create(platformName: String): ITargetPlatformAttribute;
begin
	Result := inherited Create([platformName]);
end;

{	TTask	}

class function TTask.Create(action: TClrAction): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction.Wrap(action), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction; cancellationToken: ICancellationToken): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction.Wrap(action), clrCallBack_1), cancellationToken]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction; creationOptions: TTaskCreationOptions_Set): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction.Wrap(action), clrCallBack_1), ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction<Variant>; state: Variant): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction<Variant>.Wrap(action), clrCallBack_1), state]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction.Wrap(action), clrCallBack_1), cancellationToken, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction<Variant>; state: Variant; cancellationToken: ICancellationToken): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction<Variant>.Wrap(action), clrCallBack_1), state, cancellationToken]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction<Variant>; state: Variant; creationOptions: TTaskCreationOptions_Set): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction<Variant>.Wrap(action), clrCallBack_1), state, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask.Create(action: TClrAction<Variant>; state: Variant; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousClrAction<Variant>.Wrap(action), clrCallBack_1), state, cancellationToken, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TTask<TResult>	}

class function TTask<TResult>.Create(function_: TClrFunc<TResult>): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<TResult>.Wrap(function_), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<TResult>; cancellationToken: ICancellationToken): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<TResult>.Wrap(function_), clrCallBack_1), cancellationToken]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<TResult>; creationOptions: TTaskCreationOptions_Set): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<TResult>.Wrap(function_), clrCallBack_1), ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<Variant, TResult>; state: Variant): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Variant, TResult>.Wrap(function_), clrCallBack_1), state]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<TResult>; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<TResult>.Wrap(function_), clrCallBack_1), cancellationToken, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<Variant, TResult>; state: Variant; cancellationToken: ICancellationToken): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Variant, TResult>.Wrap(function_), clrCallBack_1), state, cancellationToken]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<Variant, TResult>; state: Variant; creationOptions: TTaskCreationOptions_Set): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Variant, TResult>.Wrap(function_), clrCallBack_1), state, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTask<TResult>.Create(function_: TClrFunc<Variant, TResult>; state: Variant; cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set): ITask<TResult>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<Variant, TResult>.Wrap(function_), clrCallBack_1), state, cancellationToken, ToNCEnum(creationOptions)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TTaskCanceledException	}

class function TTaskCanceledException.Create: ITaskCanceledException;
begin
	Result := inherited Create([]);
end;

class function TTaskCanceledException.Create(message: String): ITaskCanceledException;
begin
	Result := inherited Create([message]);
end;

class function TTaskCanceledException.Create(task: ITask): ITaskCanceledException;
begin
	Result := inherited Create([task]);
end;

class function TTaskCanceledException.Create(message: String; innerException: IException): ITaskCanceledException;
begin
	Result := inherited Create([message, innerException]);
end;

class function TTaskCanceledException.Create(message: String; innerException: IException; token: ICancellationToken): ITaskCanceledException;
begin
	Result := inherited Create([message, innerException, token]);
end;

{	TTaskCompletionSource	}

class function TTaskCompletionSource.Create: ITaskCompletionSource;
begin
	Result := inherited Create([]);
end;

class function TTaskCompletionSource.Create(creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource;
begin
	Result := inherited Create([ToNCEnum(creationOptions)]);
end;

class function TTaskCompletionSource.Create(state: Variant): ITaskCompletionSource;
begin
	Result := inherited Create([state]);
end;

class function TTaskCompletionSource.Create(state: Variant; creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource;
begin
	Result := inherited Create([state, ToNCEnum(creationOptions)]);
end;

{	TTaskCompletionSource<TResult>	}

class function TTaskCompletionSource<TResult>.Create: ITaskCompletionSource<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], []);
end;

class function TTaskCompletionSource<TResult>.Create(creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [ToNCEnum(creationOptions)]);
end;

class function TTaskCompletionSource<TResult>.Create(state: Variant): ITaskCompletionSource<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [state]);
end;

class function TTaskCompletionSource<TResult>.Create(state: Variant; creationOptions: TTaskCreationOptions_Set): ITaskCompletionSource<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [state, ToNCEnum(creationOptions)]);
end;

{	TTaskFactory	}

class function TTaskFactory.Create: ITaskFactory;
begin
	Result := inherited Create([]);
end;

class function TTaskFactory.Create(cancellationToken: ICancellationToken): ITaskFactory;
begin
	Result := inherited Create([cancellationToken]);
end;

class function TTaskFactory.Create(scheduler: ITaskScheduler): ITaskFactory;
begin
	Result := inherited Create([scheduler]);
end;

class function TTaskFactory.Create(creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set): ITaskFactory;
begin
	Result := inherited Create([ToNCEnum(creationOptions), ToNCEnum(continuationOptions)]);
end;

class function TTaskFactory.Create(cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set; scheduler: ITaskScheduler): ITaskFactory;
begin
	Result := inherited Create([cancellationToken, ToNCEnum(creationOptions), ToNCEnum(continuationOptions), scheduler]);
end;

{	TTaskFactory<TResult>	}

class function TTaskFactory<TResult>.Create: ITaskFactory<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], []);
end;

class function TTaskFactory<TResult>.Create(cancellationToken: ICancellationToken): ITaskFactory<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [cancellationToken]);
end;

class function TTaskFactory<TResult>.Create(scheduler: ITaskScheduler): ITaskFactory<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [scheduler]);
end;

class function TTaskFactory<TResult>.Create(creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set): ITaskFactory<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [ToNCEnum(creationOptions), ToNCEnum(continuationOptions)]);
end;

class function TTaskFactory<TResult>.Create(cancellationToken: ICancellationToken; creationOptions: TTaskCreationOptions_Set; continuationOptions: TTaskContinuationOptions_Set; scheduler: ITaskScheduler): ITaskFactory<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [cancellationToken, ToNCEnum(creationOptions), ToNCEnum(continuationOptions), scheduler]);
end;

{	TTaskSchedulerException	}

class function TTaskSchedulerException.Create: ITaskSchedulerException;
begin
	Result := inherited Create([]);
end;

class function TTaskSchedulerException.Create(message: String): ITaskSchedulerException;
begin
	Result := inherited Create([message]);
end;

class function TTaskSchedulerException.Create(innerException: IException): ITaskSchedulerException;
begin
	Result := inherited Create([innerException]);
end;

class function TTaskSchedulerException.Create(message: String; innerException: IException): ITaskSchedulerException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TThaiBuddhistCalendar	}

class function TThaiBuddhistCalendar.Create: IThaiBuddhistCalendar;
begin
	Result := inherited Create([]);
end;

{	TThread	}

class function TThread.Create(start: TThreadStart): IThread;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TThreadStart>(start)), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TThread.Create(start: TParameterizedThreadStart): IThread;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TParameterizedThreadStart>(start)), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TThread.Create(start: TThreadStart; maxStackSize: Integer): IThread;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TThreadStart>(start)), clrCallBack_1), maxStackSize]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TThread.Create(start: TParameterizedThreadStart; maxStackSize: Integer): IThread;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TParameterizedThreadStart>(start)), clrCallBack_1), maxStackSize]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TThreadExceptionEventArgs	}

class function TThreadExceptionEventArgs.Create(t: IException): IThreadExceptionEventArgs;
begin
	Result := inherited Create([t]);
end;

{	TThreadInterruptedException	}

class function TThreadInterruptedException.Create: IThreadInterruptedException;
begin
	Result := inherited Create([]);
end;

class function TThreadInterruptedException.Create(message: String): IThreadInterruptedException;
begin
	Result := inherited Create([message]);
end;

class function TThreadInterruptedException.Create(message: String; innerException: IException): IThreadInterruptedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TThreadLocal<T>	}

class function TThreadLocal<T>.Create: IThreadLocal<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function TThreadLocal<T>.Create(trackAllValues: Boolean): IThreadLocal<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [trackAllValues]);
end;

class function TThreadLocal<T>.Create(valueFactory: TClrFunc<T>): IThreadLocal<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TThreadLocal<T>.Create(valueFactory: TClrFunc<T>; trackAllValues: Boolean): IThreadLocal<T>;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [GetManagedFunctionPointer('.ctor', TAnonymousClrFunc<T>.Wrap(valueFactory), clrCallBack_1), trackAllValues]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TThreadStateException	}

class function TThreadStateException.Create: IThreadStateException;
begin
	Result := inherited Create([]);
end;

class function TThreadStateException.Create(message: String): IThreadStateException;
begin
	Result := inherited Create([message]);
end;

class function TThreadStateException.Create(message: String; innerException: IException): IThreadStateException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TThreadStaticAttribute	}

class function TThreadStaticAttribute.Create: IThreadStaticAttribute;
begin
	Result := inherited Create([]);
end;

{	TTimeoutException	}

class function TTimeoutException.Create: ITimeoutException;
begin
	Result := inherited Create([]);
end;

class function TTimeoutException.Create(message: String): ITimeoutException;
begin
	Result := inherited Create([message]);
end;

class function TTimeoutException.Create(message: String; innerException: IException): ITimeoutException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TTimer	}

class function TTimer.Create(callback: TTimerCallback; state: Variant; dueTime: Integer; period: Integer): ITimer;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TTimerCallback>(callback)), clrCallBack_1), state, dueTime, period]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTimer.Create(callback: TTimerCallback; state: Variant; dueTime: ITimeSpan; period: ITimeSpan): ITimer;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TTimerCallback>(callback)), clrCallBack_1), state, dueTime, period]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTimer.Create(callback: TTimerCallback; state: Variant; dueTime: longword; period: longword): ITimer;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TTimerCallback>(callback)), clrCallBack_1), state, dueTime, period]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTimer.Create(callback: TTimerCallback; state: Variant; dueTime: Int64; period: Int64): ITimer;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TTimerCallback>(callback)), clrCallBack_1), state, dueTime, period]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

class function TTimer.Create(callback: TTimerCallback): ITimer;
var
	clrCallBack_1: IClrCallBack;
begin
	Result := inherited Create([GetManagedFunctionPointer('.ctor', TAnonymousGenericEventHandler.Wrap(TCNRttiManager.From<TTimerCallback>(callback)), clrCallBack_1)]);
	clrCallBack_1.Sender := TCoreClrObject(Result.GetClrObject);
end;

{	TTimeSpan	}

class function TTimeSpan.Create(ticks: Int64): ITimeSpan;
begin
	Result := inherited Create([ticks]);
end;

class function TTimeSpan.Create(hours: Integer; minutes: Integer; seconds: Integer): ITimeSpan;
begin
	Result := inherited Create([hours, minutes, seconds]);
end;

class function TTimeSpan.Create(days: Integer; hours: Integer; minutes: Integer; seconds: Integer): ITimeSpan;
begin
	Result := inherited Create([days, hours, minutes, seconds]);
end;

class function TTimeSpan.Create(days: Integer; hours: Integer; minutes: Integer; seconds: Integer; milliseconds: Integer): ITimeSpan;
begin
	Result := inherited Create([days, hours, minutes, seconds, milliseconds]);
end;

{	TTimeZoneNotFoundException	}

class function TTimeZoneNotFoundException.Create: ITimeZoneNotFoundException;
begin
	Result := inherited Create([]);
end;

class function TTimeZoneNotFoundException.Create(message: String): ITimeZoneNotFoundException;
begin
	Result := inherited Create([message]);
end;

class function TTimeZoneNotFoundException.Create(message: String; innerException: IException): ITimeZoneNotFoundException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TTuple<T1>	}

class function TTuple<T1>.Create(item1: T1): ITuple<T1>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True)], [TCNRttiManager.AsVariant<T1>(item1)]);
end;

{	TTuple<T1,T2>	}

class function TTuple<T1,T2>.Create(item1: T1; item2: T2): ITuple<T1,T2>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2)]);
end;

{	TTuple<T1,T2,T3>	}

class function TTuple<T1,T2,T3>.Create(item1: T1; item2: T2; item3: T3): ITuple<T1,T2,T3>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3)]);
end;

{	TTuple<T1,T2,T3,T4>	}

class function TTuple<T1,T2,T3,T4>.Create(item1: T1; item2: T2; item3: T3; item4: T4): ITuple<T1,T2,T3,T4>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4)]);
end;

{	TTuple<T1,T2,T3,T4,T5>	}

class function TTuple<T1,T2,T3,T4,T5>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5): ITuple<T1,T2,T3,T4,T5>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5)]);
end;

{	TTuple<T1,T2,T3,T4,T5,T6>	}

class function TTuple<T1,T2,T3,T4,T5,T6>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6): ITuple<T1,T2,T3,T4,T5,T6>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6)]);
end;

{	TTuple<T1,T2,T3,T4,T5,T6,T7>	}

class function TTuple<T1,T2,T3,T4,T5,T6,T7>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7): ITuple<T1,T2,T3,T4,T5,T6,T7>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True), TCoreClrType.GetTypeName<T7>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6), TCNRttiManager.AsVariant<T7>(item7)]);
end;

{	TTuple<T1,T2,T3,T4,T5,T6,T7,TRest>	}

class function TTuple<T1,T2,T3,T4,T5,T6,T7,TRest>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7; rest: TRest): ITuple<T1,T2,T3,T4,T5,T6,T7,TRest>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True), TCoreClrType.GetTypeName<T7>(True), TCoreClrType.GetTypeName<TRest>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6), TCNRttiManager.AsVariant<T7>(item7), TCNRttiManager.AsVariant<TRest>(rest)]);
end;

{	TTupleElementNamesAttribute	}

class function TTupleElementNamesAttribute.Create(transformNames: TArray<String>): ITupleElementNamesAttribute;
begin
	Result := inherited Create([TCoreClrArray.DynArrayToVarArray<String>(transformNames)]);
end;

{	TTypeAccessException	}

class function TTypeAccessException.Create: ITypeAccessException;
begin
	Result := inherited Create([]);
end;

class function TTypeAccessException.Create(message: String): ITypeAccessException;
begin
	Result := inherited Create([message]);
end;

class function TTypeAccessException.Create(message: String; inner: IException): ITypeAccessException;
begin
	Result := inherited Create([message, inner]);
end;

{	TTypeDelegator	}

class function TTypeDelegator.Create(delegatingType: IType): ITypeDelegator;
begin
	Result := inherited Create([delegatingType]);
end;

{	TTypeForwardedFromAttribute	}

class function TTypeForwardedFromAttribute.Create(assemblyFullName: String): ITypeForwardedFromAttribute;
begin
	Result := inherited Create([assemblyFullName]);
end;

{	TTypeForwardedToAttribute	}

class function TTypeForwardedToAttribute.Create(destination: IType): ITypeForwardedToAttribute;
begin
	Result := inherited Create([destination]);
end;

{	TTypeIdentifierAttribute	}

class function TTypeIdentifierAttribute.Create: ITypeIdentifierAttribute;
begin
	Result := inherited Create([]);
end;

class function TTypeIdentifierAttribute.Create(scope: String; identifier: String): ITypeIdentifierAttribute;
begin
	Result := inherited Create([scope, identifier]);
end;

{	TTypeInitializationException	}

class function TTypeInitializationException.Create(fullTypeName: String; innerException: IException): ITypeInitializationException;
begin
	Result := inherited Create([fullTypeName, innerException]);
end;

{	TTypeUnloadedException	}

class function TTypeUnloadedException.Create: ITypeUnloadedException;
begin
	Result := inherited Create([]);
end;

class function TTypeUnloadedException.Create(message: String): ITypeUnloadedException;
begin
	Result := inherited Create([message]);
end;

class function TTypeUnloadedException.Create(message: String; innerException: IException): ITypeUnloadedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TUIntPtr	}

class function TUIntPtr.Create(value: longword): IUIntPtr;
begin
	Result := inherited Create([value]);
end;

class function TUIntPtr.Create(value: UInt64): IUIntPtr;
begin
	Result := inherited Create([value]);
end;

class function TUIntPtr.Create(value: ICoreClrInstance): IUIntPtr;
begin
	Result := inherited Create([value]);
end;

{	TUmAlQuraCalendar	}

class function TUmAlQuraCalendar.Create: IUmAlQuraCalendar;
begin
	Result := inherited Create([]);
end;

{	TUnauthorizedAccessException	}

class function TUnauthorizedAccessException.Create: IUnauthorizedAccessException;
begin
	Result := inherited Create([]);
end;

class function TUnauthorizedAccessException.Create(message: String): IUnauthorizedAccessException;
begin
	Result := inherited Create([message]);
end;

class function TUnauthorizedAccessException.Create(message: String; inner: IException): IUnauthorizedAccessException;
begin
	Result := inherited Create([message, inner]);
end;

{	TUnconditionalSuppressMessageAttribute	}

class function TUnconditionalSuppressMessageAttribute.Create(category: String; checkId: String): IUnconditionalSuppressMessageAttribute;
begin
	Result := inherited Create([category, checkId]);
end;

{	TUnhandledExceptionEventArgs	}

class function TUnhandledExceptionEventArgs.Create(exception: Variant; isTerminating: Boolean): IUnhandledExceptionEventArgs;
begin
	Result := inherited Create([exception, isTerminating]);
end;

{	TUnicodeEncoding	}

class function TUnicodeEncoding.Create: IUnicodeEncoding;
begin
	Result := inherited Create([]);
end;

class function TUnicodeEncoding.Create(bigEndian: Boolean; byteOrderMark: Boolean): IUnicodeEncoding;
begin
	Result := inherited Create([bigEndian, byteOrderMark]);
end;

class function TUnicodeEncoding.Create(bigEndian: Boolean; byteOrderMark: Boolean; throwOnInvalidBytes: Boolean): IUnicodeEncoding;
begin
	Result := inherited Create([bigEndian, byteOrderMark, throwOnInvalidBytes]);
end;

{	TUnitySerializationHolder	}

class function TUnitySerializationHolder.Create(info: ISerializationInfo; context: IStreamingContext): IUnitySerializationHolder;
begin
	Result := inherited Create([info, context]);
end;

{	TUnknownWrapper	}

class function TUnknownWrapper.Create(obj: Variant): IUnknownWrapper;
begin
	Result := inherited Create([obj]);
end;

{	TUnmanagedCallersOnlyAttribute	}

class function TUnmanagedCallersOnlyAttribute.Create: IUnmanagedCallersOnlyAttribute;
begin
	Result := inherited Create([]);
end;

{	TUnmanagedFunctionPointerAttribute	}

class function TUnmanagedFunctionPointerAttribute.Create: IUnmanagedFunctionPointerAttribute;
begin
	Result := inherited Create([]);
end;

class function TUnmanagedFunctionPointerAttribute.Create(callingConvention: TCallingConvention): IUnmanagedFunctionPointerAttribute;
begin
	Result := inherited Create([CallingConventionValues[callingConvention]]);
end;

{	TUnmanagedMemoryAccessor	}

class function TUnmanagedMemoryAccessor.Create(buffer: ISafeBuffer; offset: Int64; capacity: Int64): IUnmanagedMemoryAccessor;
begin
	Result := inherited Create([buffer, offset, capacity]);
end;

class function TUnmanagedMemoryAccessor.Create(buffer: ISafeBuffer; offset: Int64; capacity: Int64; access: TFileAccess_Set): IUnmanagedMemoryAccessor;
begin
	Result := inherited Create([buffer, offset, capacity, ToNCEnum(access)]);
end;

{	TUnmanagedMemoryStream	}

class function TUnmanagedMemoryStream.Create(buffer: ISafeBuffer; offset: Int64; length: Int64): IUnmanagedMemoryStream;
begin
	Result := inherited Create([buffer, offset, length]);
end;

class function TUnmanagedMemoryStream.Create(buffer: ISafeBuffer; offset: Int64; length: Int64; access: TFileAccess_Set): IUnmanagedMemoryStream;
begin
	Result := inherited Create([buffer, offset, length, ToNCEnum(access)]);
end;

class function TUnmanagedMemoryStream.Create(pointer: ICoreClrInstance; length: Int64; capacity: Int64; access: TFileAccess_Set): IUnmanagedMemoryStream;
begin
	Result := inherited Create([pointer, length, capacity, ToNCEnum(access)]);
end;

class function TUnmanagedMemoryStream.Create(pointer: ICoreClrInstance; length: Int64): IUnmanagedMemoryStream;
begin
	Result := inherited Create([pointer, length]);
end;

{	TUnobservedTaskExceptionEventArgs	}

class function TUnobservedTaskExceptionEventArgs.Create(exception: IAggregateException): IUnobservedTaskExceptionEventArgs;
begin
	Result := inherited Create([exception]);
end;

{	TUnsafeValueTypeAttribute	}

class function TUnsafeValueTypeAttribute.Create: IUnsafeValueTypeAttribute;
begin
	Result := inherited Create([]);
end;

{	TUnsupportedOSPlatformAttribute	}

class function TUnsupportedOSPlatformAttribute.Create(platformName: String): IUnsupportedOSPlatformAttribute;
begin
	Result := inherited Create([platformName]);
end;

{	TUnverifiableCodeAttribute	}

class function TUnverifiableCodeAttribute.Create: IUnverifiableCodeAttribute;
begin
	Result := inherited Create([]);
end;

{	TUTF32Encoding	}

class function TUTF32Encoding.Create: IUTF32Encoding;
begin
	Result := inherited Create([]);
end;

class function TUTF32Encoding.Create(bigEndian: Boolean; byteOrderMark: Boolean): IUTF32Encoding;
begin
	Result := inherited Create([bigEndian, byteOrderMark]);
end;

class function TUTF32Encoding.Create(bigEndian: Boolean; byteOrderMark: Boolean; throwOnInvalidCharacters: Boolean): IUTF32Encoding;
begin
	Result := inherited Create([bigEndian, byteOrderMark, throwOnInvalidCharacters]);
end;

{	TUTF7Encoding	}

class function TUTF7Encoding.Create: IUTF7Encoding;
begin
	Result := inherited Create([]);
end;

class function TUTF7Encoding.Create(allowOptionals: Boolean): IUTF7Encoding;
begin
	Result := inherited Create([allowOptionals]);
end;

{	TUTF8Encoding	}

class function TUTF8Encoding.Create: IUTF8Encoding;
begin
	Result := inherited Create([]);
end;

class function TUTF8Encoding.Create(encoderShouldEmitUTF8Identifier: Boolean): IUTF8Encoding;
begin
	Result := inherited Create([encoderShouldEmitUTF8Identifier]);
end;

class function TUTF8Encoding.Create(encoderShouldEmitUTF8Identifier: Boolean; throwOnInvalidBytes: Boolean): IUTF8Encoding;
begin
	Result := inherited Create([encoderShouldEmitUTF8Identifier, throwOnInvalidBytes]);
end;

{	TValueTask	}

class function TValueTask.Create(task: ITask): IValueTask;
begin
	Result := inherited Create([task]);
end;

class function TValueTask.Create(source: IIValueTaskSource; token: SmallInt): IValueTask;
begin
	Result := inherited Create([source, token]);
end;

{	TValueTask<TResult>	}

class function TValueTask<TResult>.Create(result_: TResult): IValueTask<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [TCNRttiManager.AsVariant<TResult>(result_)]);
end;

class function TValueTask<TResult>.Create(task: ITask<TResult>): IValueTask<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [task]);
end;

class function TValueTask<TResult>.Create(source: IIValueTaskSource<TResult>; token: SmallInt): IValueTask<TResult>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<TResult>(True)], [source, token]);
end;

{	TValueTuple<T1>	}

class function TValueTuple<T1>.Create(item1: T1): IValueTuple<T1>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True)], [TCNRttiManager.AsVariant<T1>(item1)]);
end;

{	TValueTuple<T1,T2>	}

class function TValueTuple<T1,T2>.Create(item1: T1; item2: T2): IValueTuple<T1,T2>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2)]);
end;

{	TValueTuple<T1,T2,T3>	}

class function TValueTuple<T1,T2,T3>.Create(item1: T1; item2: T2; item3: T3): IValueTuple<T1,T2,T3>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3)]);
end;

{	TValueTuple<T1,T2,T3,T4>	}

class function TValueTuple<T1,T2,T3,T4>.Create(item1: T1; item2: T2; item3: T3; item4: T4): IValueTuple<T1,T2,T3,T4>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4)]);
end;

{	TValueTuple<T1,T2,T3,T4,T5>	}

class function TValueTuple<T1,T2,T3,T4,T5>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5): IValueTuple<T1,T2,T3,T4,T5>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5)]);
end;

{	TValueTuple<T1,T2,T3,T4,T5,T6>	}

class function TValueTuple<T1,T2,T3,T4,T5,T6>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6): IValueTuple<T1,T2,T3,T4,T5,T6>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6)]);
end;

{	TValueTuple<T1,T2,T3,T4,T5,T6,T7>	}

class function TValueTuple<T1,T2,T3,T4,T5,T6,T7>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7): IValueTuple<T1,T2,T3,T4,T5,T6,T7>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True), TCoreClrType.GetTypeName<T7>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6), TCNRttiManager.AsVariant<T7>(item7)]);
end;

{	TValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest>	}

class function TValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest>.Create(item1: T1; item2: T2; item3: T3; item4: T4; item5: T5; item6: T6; item7: T7; rest: TRest): IValueTuple<T1,T2,T3,T4,T5,T6,T7,TRest>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T1>(True), TCoreClrType.GetTypeName<T2>(True), TCoreClrType.GetTypeName<T3>(True), TCoreClrType.GetTypeName<T4>(True), TCoreClrType.GetTypeName<T5>(True), TCoreClrType.GetTypeName<T6>(True), TCoreClrType.GetTypeName<T7>(True), TCoreClrType.GetTypeName<TRest>(True)], [TCNRttiManager.AsVariant<T1>(item1), TCNRttiManager.AsVariant<T2>(item2), TCNRttiManager.AsVariant<T3>(item3), TCNRttiManager.AsVariant<T4>(item4), TCNRttiManager.AsVariant<T5>(item5), TCNRttiManager.AsVariant<T6>(item6), TCNRttiManager.AsVariant<T7>(item7), TCNRttiManager.AsVariant<TRest>(rest)]);
end;

{	TVariantWrapper	}

class function TVariantWrapper.Create(obj: Variant): IVariantWrapper;
begin
	Result := inherited Create([obj]);
end;

{	TVector<T>	}

class function TVector<T>.Create(value: T): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(value)]);
end;

class function TVector<T>.Create(values: ICoreClrBridgeArray<T>): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [values]);
end;

class function TVector<T>.Create(values: IReadOnlySpan<Byte>): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [values]);
end;

class function TVector<T>.Create(values: IReadOnlySpan<T>): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [values]);
end;

class function TVector<T>.Create(values: ISpan<T>): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [values]);
end;

class function TVector<T>.Create(values: ICoreClrBridgeArray<T>; index: Integer): IVector<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [values, index]);
end;

{	TVector2	}

class function TVector2.Create(value: Single): IVector2;
begin
	Result := inherited Create([value]);
end;

class function TVector2.Create(x: Single; y: Single): IVector2;
begin
	Result := inherited Create([x, y]);
end;

{	TVector3	}

class function TVector3.Create(value: Single): IVector3;
begin
	Result := inherited Create([value]);
end;

class function TVector3.Create(value: IVector2; z: Single): IVector3;
begin
	Result := inherited Create([value, z]);
end;

class function TVector3.Create(x: Single; y: Single; z: Single): IVector3;
begin
	Result := inherited Create([x, y, z]);
end;

{	TVector4	}

class function TVector4.Create(value: Single): IVector4;
begin
	Result := inherited Create([value]);
end;

class function TVector4.Create(x: Single; y: Single; z: Single; w: Single): IVector4;
begin
	Result := inherited Create([x, y, z, w]);
end;

class function TVector4.Create(value: IVector2; z: Single; w: Single): IVector4;
begin
	Result := inherited Create([value, z, w]);
end;

class function TVector4.Create(value: IVector3; w: Single): IVector4;
begin
	Result := inherited Create([value, w]);
end;

{	TVerificationException	}

class function TVerificationException.Create: IVerificationException;
begin
	Result := inherited Create([]);
end;

class function TVerificationException.Create(message: String): IVerificationException;
begin
	Result := inherited Create([message]);
end;

class function TVerificationException.Create(message: String; innerException: IException): IVerificationException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TVersion	}

class function TVersion.Create(major: Integer; minor: Integer; build: Integer; revision: Integer): IVersion;
begin
	Result := inherited Create([major, minor, build, revision]);
end;

class function TVersion.Create(major: Integer; minor: Integer; build: Integer): IVersion;
begin
	Result := inherited Create([major, minor, build]);
end;

class function TVersion.Create(major: Integer; minor: Integer): IVersion;
begin
	Result := inherited Create([major, minor]);
end;

class function TVersion.Create(version: String): IVersion;
begin
	Result := inherited Create([version]);
end;

class function TVersion.Create: IVersion;
begin
	Result := inherited Create([]);
end;

{	TWaitHandleCannotBeOpenedException	}

class function TWaitHandleCannotBeOpenedException.Create: IWaitHandleCannotBeOpenedException;
begin
	Result := inherited Create([]);
end;

class function TWaitHandleCannotBeOpenedException.Create(message: String): IWaitHandleCannotBeOpenedException;
begin
	Result := inherited Create([message]);
end;

class function TWaitHandleCannotBeOpenedException.Create(message: String; innerException: IException): IWaitHandleCannotBeOpenedException;
begin
	Result := inherited Create([message, innerException]);
end;

{	TWeakReference	}

class function TWeakReference.Create(target: Variant): IWeakReference;
begin
	Result := inherited Create([target]);
end;

class function TWeakReference.Create(target: Variant; trackResurrection: Boolean): IWeakReference;
begin
	Result := inherited Create([target, trackResurrection]);
end;

{	TWeakReference<T>	}

class function TWeakReference<T>.Create(target: T): IWeakReference<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(target)]);
end;

class function TWeakReference<T>.Create(target: T; trackResurrection: Boolean): IWeakReference<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [TCNRttiManager.AsVariant<T>(target), trackResurrection]);
end;

{	THashSet<T>	}

class function THashSet<T>.Create: IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], []);
end;

class function THashSet<T>.Create(comparer: IIEqualityComparer<T>): IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [comparer]);
end;

class function THashSet<T>.Create(capacity: Integer): IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [capacity]);
end;

class function THashSet<T>.Create(collection: IIEnumerable<T>): IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [collection]);
end;

class function THashSet<T>.Create(collection: IIEnumerable<T>; comparer: IIEqualityComparer<T>): IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [collection, comparer]);
end;

class function THashSet<T>.Create(capacity: Integer; comparer: IIEqualityComparer<T>): IHashSet<T>;
begin
	Result := inherited Create([TCoreClrType.GetTypeName<T>(True)], [capacity, comparer]);
end;

end.

