unit CrystalNet.Runtime.Enums;

interface

{$WARN BOUNDS_ERROR OFF}

uses
	CoreClrTypes, CNCoreClrLib.EnumMgr, CrystalNet.Runtime.Consts;

type
	ApartmentState = TNCEnum;
const
	ApartmentState_STA = $00000000;
	ApartmentState_MTA = $00000001;
	ApartmentState_Unknown = $00000002;

type
	AssemblyBuilderAccess = TNCEnum;
const
	AssemblyBuilderAccess_Run = $00000001;
	AssemblyBuilderAccess_RunAndCollect = $00000009;

type
	AssemblyContentType = TNCEnum;
const
	AssemblyContentType_Default = $00000000;
	AssemblyContentType_WindowsRuntime = $00000001;

type
	AssemblyHashAlgorithm = TNCEnum;
const
	AssemblyHashAlgorithm_None = $00000000;
	AssemblyHashAlgorithm_MD5 = $00008003;
	AssemblyHashAlgorithm_SHA1 = $00008004;
	AssemblyHashAlgorithm_SHA256 = $0000800C;
	AssemblyHashAlgorithm_SHA384 = $0000800D;
	AssemblyHashAlgorithm_SHA512 = $0000800E;

type
	AssemblyNameFlags = TNCEnum;
const
	AssemblyNameFlags_None = $00000000;
	AssemblyNameFlags_PublicKey = $00000001;
	AssemblyNameFlags_Retargetable = $00000100;
	AssemblyNameFlags_EnableJITcompileOptimizer = $00004000;
	AssemblyNameFlags_EnableJITcompileTracking = $00008000;

type
	AssemblyVersionCompatibility = TNCEnum;
const
	AssemblyVersionCompatibility_SameMachine = $00000001;
	AssemblyVersionCompatibility_SameProcess = $00000002;
	AssemblyVersionCompatibility_SameDomain = $00000003;

type
	AttributeTargets = TNCEnum;
const
	AttributeTargets_Assembly = $00000001;
	AttributeTargets_Module = $00000002;
	AttributeTargets_Class = $00000004;
	AttributeTargets_Struct = $00000008;
	AttributeTargets_Enum = $00000010;
	AttributeTargets_Constructor = $00000020;
	AttributeTargets_Method = $00000040;
	AttributeTargets_Property = $00000080;
	AttributeTargets_Field = $00000100;
	AttributeTargets_Event = $00000200;
	AttributeTargets_Interface = $00000400;
	AttributeTargets_Parameter = $00000800;
	AttributeTargets_Delegate = $00001000;
	AttributeTargets_ReturnValue = $00002000;
	AttributeTargets_GenericParameter = $00004000;
	AttributeTargets_All = $00007FFF;

type
	Base64FormattingOptions = TNCEnum;
const
	Base64FormattingOptions_None = $00000000;
	Base64FormattingOptions_InsertLineBreaks = $00000001;

type
	BindingFlags = TNCEnum;
const
	BindingFlags_Default = $00000000;
	BindingFlags_IgnoreCase = $00000001;
	BindingFlags_DeclaredOnly = $00000002;
	BindingFlags_Instance = $00000004;
	BindingFlags_Static = $00000008;
	BindingFlags_Public = $00000010;
	BindingFlags_NonPublic = $00000020;
	BindingFlags_FlattenHierarchy = $00000040;
	BindingFlags_InvokeMethod = $00000100;
	BindingFlags_CreateInstance = $00000200;
	BindingFlags_GetField = $00000400;
	BindingFlags_SetField = $00000800;
	BindingFlags_GetProperty = $00001000;
	BindingFlags_SetProperty = $00002000;
	BindingFlags_PutDispProperty = $00004000;
	BindingFlags_PutRefDispProperty = $00008000;
	BindingFlags_ExactBinding = $00010000;
	BindingFlags_SuppressChangeType = $00020000;
	BindingFlags_OptionalParamBinding = $00040000;
	BindingFlags_IgnoreReturn = $01000000;
	BindingFlags_DoNotWrapExceptions = $02000000;

type
	CalendarAlgorithmType = TNCEnum;
const
	CalendarAlgorithmType_Unknown = $00000000;
	CalendarAlgorithmType_SolarCalendar = $00000001;
	CalendarAlgorithmType_LunarCalendar = $00000002;
	CalendarAlgorithmType_LunisolarCalendar = $00000003;

type
	CalendarWeekRule = TNCEnum;
const
	CalendarWeekRule_FirstDay = $00000000;
	CalendarWeekRule_FirstFullWeek = $00000001;
	CalendarWeekRule_FirstFourDayWeek = $00000002;

type
	CALLCONV = TNCEnum;
const
	CALLCONV_CC_CDECL = $00000001;
	CALLCONV_CC_MSCPASCAL = $00000002;
	CALLCONV_CC_MSCPASCAL_0 = $00000002;
	CALLCONV_CC_MACPASCAL = $00000003;
	CALLCONV_CC_STDCALL = $00000004;
	CALLCONV_CC_RESERVED = $00000005;
	CALLCONV_CC_SYSCALL = $00000006;
	CALLCONV_CC_MPWCDECL = $00000007;
	CALLCONV_CC_MPWPASCAL = $00000008;
	CALLCONV_CC_MAX = $00000009;

type
	CallingConvention = TNCEnum;
const
	CallingConvention_Winapi = $00000001;
	CallingConvention_Cdecl = $00000002;
	CallingConvention_StdCall = $00000003;
	CallingConvention_ThisCall = $00000004;
	CallingConvention_FastCall = $00000005;

type
	CallingConventions = TNCEnum;
const
	CallingConventions_Standard = $00000001;
	CallingConventions_VarArgs = $00000002;
	CallingConventions_Any = $00000003;
	CallingConventions_HasThis = $00000020;
	CallingConventions_ExplicitThis = $00000040;

type
	Cer = TNCEnum;
const
	Cer_None = $00000000;
	Cer_MayFail = $00000001;
	Cer_Success = $00000002;

type
	CharSet = TNCEnum;
const
	CharSet_None = $00000001;
	CharSet_Ansi = $00000002;
	CharSet_Unicode = $00000003;
	CharSet_Auto = $00000004;

type
	ClassInterfaceType = TNCEnum;
const
	ClassInterfaceType_None = $00000000;
	ClassInterfaceType_AutoDispatch = $00000001;
	ClassInterfaceType_AutoDual = $00000002;

type
	ComInterfaceType = TNCEnum;
const
	ComInterfaceType_InterfaceIsDual = $00000000;
	ComInterfaceType_InterfaceIsIUnknown = $00000001;
	ComInterfaceType_InterfaceIsIDispatch = $00000002;
	ComInterfaceType_InterfaceIsIInspectable = $00000003;

type
	ComMemberType = TNCEnum;
const
	ComMemberType_Method = $00000000;
	ComMemberType_PropGet = $00000001;
	ComMemberType_PropSet = $00000002;

type
	CompareOptions = TNCEnum;
const
	CompareOptions_None = $00000000;
	CompareOptions_IgnoreCase = $00000001;
	CompareOptions_IgnoreNonSpace = $00000002;
	CompareOptions_IgnoreSymbols = $00000004;
	CompareOptions_IgnoreKanaType = $00000008;
	CompareOptions_IgnoreWidth = $00000010;
	CompareOptions_OrdinalIgnoreCase = $10000000;
	CompareOptions_StringSort = $20000000;
	CompareOptions_Ordinal_0 = $40000000;

type
	CompilationRelaxations = TNCEnum;
const
	CompilationRelaxations_NoStringInterning = $00000008;

type
	ComponentGuaranteesOptions = TNCEnum;
const
	ComponentGuaranteesOptions_None = $00000000;
	ComponentGuaranteesOptions_Exchange = $00000001;
	ComponentGuaranteesOptions_Stable = $00000002;
	ComponentGuaranteesOptions_SideBySide = $00000004;

type
	Consistency = TNCEnum;
const
	Consistency_MayCorruptProcess = $00000000;
	Consistency_MayCorruptAppDomain = $00000001;
	Consistency_MayCorruptInstance = $00000002;
	Consistency_WillNotCorruptState = $00000003;

type
	ContractFailureKind = TNCEnum;
const
	ContractFailureKind_Precondition = $00000000;
	ContractFailureKind_Postcondition = $00000001;
	ContractFailureKind_PostconditionOnException = $00000002;
	ContractFailureKind_Invariant = $00000003;
	ContractFailureKind_Assert = $00000004;
	ContractFailureKind_Assume = $00000005;

type
	CreateComInterfaceFlags = TNCEnum;
const
	CreateComInterfaceFlags_None = $00000000;
	CreateComInterfaceFlags_CallerDefinedIUnknown = $00000001;
	CreateComInterfaceFlags_TrackerSupport = $00000002;

type
	CreateObjectFlags = TNCEnum;
const
	CreateObjectFlags_None = $00000000;
	CreateObjectFlags_TrackerObject = $00000001;
	CreateObjectFlags_UniqueInstance = $00000002;

type
	CultureTypes = TNCEnum;
const
	CultureTypes_NeutralCultures = $00000001;
	CultureTypes_SpecificCultures = $00000002;
	CultureTypes_InstalledWin32Cultures = $00000004;
	CultureTypes_AllCultures = $00000007;
	CultureTypes_UserCustomCulture = $00000008;
	CultureTypes_ReplacementCultures = $00000010;
	CultureTypes_WindowsOnlyCultures = $00000020;
	CultureTypes_FrameworkCultures = $00000040;

type
	CustomQueryInterfaceMode = TNCEnum;
const
	CustomQueryInterfaceMode_Ignore = $00000000;
	CustomQueryInterfaceMode_Allow = $00000001;

type
	CustomQueryInterfaceResult = TNCEnum;
const
	CustomQueryInterfaceResult_Handled = $00000000;
	CustomQueryInterfaceResult_NotHandled = $00000001;
	CustomQueryInterfaceResult_Failed = $00000002;

type
	DateTimeKind = TNCEnum;
const
	DateTimeKind_Unspecified = $00000000;
	DateTimeKind_Utc = $00000001;
	DateTimeKind_Local = $00000002;

type
	DateTimeStyles = TNCEnum;
const
	DateTimeStyles_None = $00000000;
	DateTimeStyles_AllowLeadingWhite = $00000001;
	DateTimeStyles_AllowTrailingWhite = $00000002;
	DateTimeStyles_AllowInnerWhite = $00000004;
	DateTimeStyles_AllowWhiteSpaces = $00000007;
	DateTimeStyles_NoCurrentDateDefault = $00000008;
	DateTimeStyles_AdjustToUniversal = $00000010;
	DateTimeStyles_AssumeLocal = $00000020;
	DateTimeStyles_AssumeUniversal = $00000040;
	DateTimeStyles_RoundtripKind = $00000080;

type
	DayOfWeek = TNCEnum;
const
	DayOfWeek_Sunday = $00000000;
	DayOfWeek_Monday = $00000001;
	DayOfWeek_Tuesday = $00000002;
	DayOfWeek_Wednesday = $00000003;
	DayOfWeek_Thursday = $00000004;
	DayOfWeek_Friday = $00000005;
	DayOfWeek_Saturday = $00000006;

type
	DebuggerBrowsableState = TNCEnum;
const
	DebuggerBrowsableState_Never = $00000000;
	DebuggerBrowsableState_Collapsed = $00000002;
	DebuggerBrowsableState_RootHidden = $00000003;

type
	DebuggingModes = TNCEnum;
const
	DebuggingModes_None = $00000000;
	DebuggingModes_Default = $00000001;
	DebuggingModes_IgnoreSymbolStoreSequencePoints = $00000002;
	DebuggingModes_EnableEditAndContinue = $00000004;
	DebuggingModes_DisableOptimizations = $00000100;

type
	DESCKIND = TNCEnum;
const
	DESCKIND_DESCKIND_NONE = $00000000;
	DESCKIND_DESCKIND_FUNCDESC = $00000001;
	DESCKIND_DESCKIND_VARDESC = $00000002;
	DESCKIND_DESCKIND_TYPECOMP = $00000003;
	DESCKIND_DESCKIND_IMPLICITAPPOBJ = $00000004;
	DESCKIND_DESCKIND_MAX = $00000005;

type
	DigitShapes = TNCEnum;
const
	DigitShapes_Context = $00000000;
	DigitShapes_None = $00000001;
	DigitShapes_NativeNational = $00000002;

type
	DllImportSearchPath = TNCEnum;
const
	DllImportSearchPath_LegacyBehavior = $00000000;
	DllImportSearchPath_AssemblyDirectory = $00000002;
	DllImportSearchPath_UseDllDirectoryForDependencies = $00000100;
	DllImportSearchPath_ApplicationDirectory = $00000200;
	DllImportSearchPath_UserDirectories = $00000400;
	DllImportSearchPath_System32 = $00000800;
	DllImportSearchPath_SafeDirectories = $00001000;

type
	DynamicallyAccessedMemberTypes = TNCEnum;
const
	DynamicallyAccessedMemberTypes_None = $00000000;
	DynamicallyAccessedMemberTypes_PublicParameterlessConstructor = $00000001;
	DynamicallyAccessedMemberTypes_PublicConstructors = $00000003;
	DynamicallyAccessedMemberTypes_NonPublicConstructors = $00000004;
	DynamicallyAccessedMemberTypes_PublicMethods = $00000008;
	DynamicallyAccessedMemberTypes_NonPublicMethods = $00000010;
	DynamicallyAccessedMemberTypes_PublicFields = $00000020;
	DynamicallyAccessedMemberTypes_NonPublicFields = $00000040;
	DynamicallyAccessedMemberTypes_PublicNestedTypes = $00000080;
	DynamicallyAccessedMemberTypes_NonPublicNestedTypes = $00000100;
	DynamicallyAccessedMemberTypes_PublicProperties = $00000200;
	DynamicallyAccessedMemberTypes_NonPublicProperties = $00000400;
	DynamicallyAccessedMemberTypes_PublicEvents = $00000800;
	DynamicallyAccessedMemberTypes_NonPublicEvents = $00001000;
	DynamicallyAccessedMemberTypes_All = $FFFFFFFF;

type
	EditorBrowsableState = TNCEnum;
const
	EditorBrowsableState_Always = $00000000;
	EditorBrowsableState_Never = $00000001;
	EditorBrowsableState_Advanced = $00000002;

type
	EnvironmentVariableTarget = TNCEnum;
const
	EnvironmentVariableTarget_Process = $00000000;
	EnvironmentVariableTarget_User = $00000001;
	EnvironmentVariableTarget_Machine = $00000002;

type
	EventActivityOptions = TNCEnum;
const
	EventActivityOptions_None = $00000000;
	EventActivityOptions_Disable = $00000002;
	EventActivityOptions_Recursive = $00000004;
	EventActivityOptions_Detachable = $00000008;

type
	EventAttributes = TNCEnum;
const
	EventAttributes_None = $00000000;
	EventAttributes_SpecialName = $00000200;
	EventAttributes_ReservedMask = $00000400;
	EventAttributes_ReservedMask_0 = $00000400;

type
	EventChannel = TNCEnum;
const
	EventChannel_None = $00;
	EventChannel_Admin = $10;
	EventChannel_Operational = $11;
	EventChannel_Analytic = $12;
	EventChannel_Debug = $13;

type
	EventCommand = TNCEnum;
const
	EventCommand_Update = $00000000;
	EventCommand_Disable = $FFFFFFFD;
	EventCommand_Enable = $FFFFFFFE;
	EventCommand_SendManifest = $FFFFFFFF;

type
	EventFieldFormat = TNCEnum;
const
	EventFieldFormat_Default = $00000000;
	EventFieldFormat_String = $00000002;
	EventFieldFormat_Boolean = $00000003;
	EventFieldFormat_Hexadecimal = $00000004;
	EventFieldFormat_Xml = $0000000B;
	EventFieldFormat_Json = $0000000C;
	EventFieldFormat_HResult = $0000000F;

type
	EventFieldTags = TNCEnum;
const
	EventFieldTags_None = $00000000;

type
	EventKeywords = TNCEnum;
const
	EventKeywords_None = $0000000000000000;
	EventKeywords_WdiContext = $0002000000000000;
	EventKeywords_WdiContext_0 = $0002000000000000;
	EventKeywords_WdiDiagnostic = $0004000000000000;
	EventKeywords_Sqm = $0008000000000000;
	EventKeywords_CorrelationHint = $0010000000000000;
	EventKeywords_CorrelationHint_0 = $0010000000000000;
	EventKeywords_AuditSuccess = $0020000000000000;
	EventKeywords_EventLogClassic = $0080000000000000;
	EventKeywords_All = $FFFFFFFFFFFFFFFF;

type
	EventLevel = TNCEnum;
const
	EventLevel_LogAlways = $00000000;
	EventLevel_Critical = $00000001;
	EventLevel_Error = $00000002;
	EventLevel_Warning = $00000003;
	EventLevel_Informational = $00000004;
	EventLevel_Verbose = $00000005;

type
	EventManifestOptions = TNCEnum;
const
	EventManifestOptions_None = $00000000;
	EventManifestOptions_Strict = $00000001;
	EventManifestOptions_AllCultures = $00000002;
	EventManifestOptions_OnlyIfNeededForRegistration = $00000004;
	EventManifestOptions_AllowEventSourceOverride = $00000008;

type
	EventOpcode = TNCEnum;
const
	EventOpcode_Info = $00000000;
	EventOpcode_Start = $00000001;
	EventOpcode_Stop = $00000002;
	EventOpcode_DataCollectionStart = $00000003;
	EventOpcode_DataCollectionStop = $00000004;
	EventOpcode_Extension = $00000005;
	EventOpcode_Reply = $00000006;
	EventOpcode_Resume = $00000007;
	EventOpcode_Suspend = $00000008;
	EventOpcode_Send = $00000009;
	EventOpcode_Receive = $000000F0;

type
	EventResetMode = TNCEnum;
const
	EventResetMode_AutoReset = $00000000;
	EventResetMode_ManualReset = $00000001;

type
	EventSourceSettings = TNCEnum;
const
	EventSourceSettings_Default = $00000000;
	EventSourceSettings_ThrowOnEventWriteErrors = $00000001;
	EventSourceSettings_EtwManifestEventFormat = $00000004;
	EventSourceSettings_EtwSelfDescribingEventFormat = $00000008;

type
	EventTags = TNCEnum;
const
	EventTags_None = $00000000;

type
	EventTask = TNCEnum;
const
	EventTask_None = $00000000;

type
	ExceptionHandlingClauseOptions = TNCEnum;
const
	ExceptionHandlingClauseOptions_Clause = $00000000;
	ExceptionHandlingClauseOptions_Filter = $00000001;
	ExceptionHandlingClauseOptions_Finally = $00000002;
	ExceptionHandlingClauseOptions_Fault = $00000004;

type
	FieldAttributes = TNCEnum;
const
	FieldAttributes_PrivateScope = $00000000;
	FieldAttributes_Private_0 = $00000001;
	FieldAttributes_FamANDAssem = $00000002;
	FieldAttributes_Assembly = $00000003;
	FieldAttributes_Family = $00000004;
	FieldAttributes_FamORAssem = $00000005;
	FieldAttributes_Public = $00000006;
	FieldAttributes_FieldAccessMask = $00000007;
	FieldAttributes_Static = $00000010;
	FieldAttributes_InitOnly = $00000020;
	FieldAttributes_Literal = $00000040;
	FieldAttributes_NotSerialized = $00000080;
	FieldAttributes_HasFieldRVA = $00000100;
	FieldAttributes_SpecialName = $00000200;
	FieldAttributes_RTSpecialName = $00000400;
	FieldAttributes_HasFieldMarshal = $00001000;
	FieldAttributes_PinvokeImpl = $00002000;
	FieldAttributes_HasDefault = $00008000;
	FieldAttributes_ReservedMask = $00009500;

type
	FileAccess = TNCEnum;
const
	FileAccess_Read = $00000001;
	FileAccess_Write = $00000002;
	FileAccess_ReadWrite = $00000003;

type
	FileAttributes = TNCEnum;
const
	FileAttributes_ReadOnly = $00000001;
	FileAttributes_Hidden = $00000002;
	FileAttributes_System = $00000004;
	FileAttributes_Directory = $00000010;
	FileAttributes_Archive = $00000020;
	FileAttributes_Device = $00000040;
	FileAttributes_Normal = $00000080;
	FileAttributes_Temporary = $00000100;
	FileAttributes_SparseFile = $00000200;
	FileAttributes_ReparsePoint = $00000400;
	FileAttributes_Compressed = $00000800;
	FileAttributes_Offline = $00001000;
	FileAttributes_NotContentIndexed = $00002000;
	FileAttributes_Encrypted = $00004000;
	FileAttributes_IntegrityStream = $00008000;
	FileAttributes_NoScrubData = $00020000;

type
	FileMode = TNCEnum;
const
	FileMode_CreateNew = $00000001;
	FileMode_Create_0 = $00000002;
	FileMode_Open = $00000003;
	FileMode_OpenOrCreate = $00000004;
	FileMode_Truncate = $00000005;
	FileMode_Append = $00000006;

type
	FileOptions = TNCEnum;
const
	FileOptions_None = $00000000;
	FileOptions_Encrypted = $00004000;
	FileOptions_DeleteOnClose = $04000000;
	FileOptions_SequentialScan = $08000000;
	FileOptions_RandomAccess = $10000000;
	FileOptions_Asynchronous = $40000000;
	FileOptions_WriteThrough = $80000000;

type
	FileShare = TNCEnum;
const
	FileShare_None = $00000000;
	FileShare_Read = $00000001;
	FileShare_Write = $00000002;
	FileShare_ReadWrite = $00000003;
	FileShare_Delete = $00000004;
	FileShare_Inheritable = $00000010;

type
	FloatComparisonMode = TNCEnum;
const
	FloatComparisonMode_OrderedEqualNonSignaling = $00;
	FloatComparisonMode_OrderedLessThanSignaling = $01;
	FloatComparisonMode_OrderedLessThanOrEqualSignaling = $02;
	FloatComparisonMode_UnorderedNonSignaling = $03;
	FloatComparisonMode_UnorderedNotEqualNonSignaling = $04;
	FloatComparisonMode_UnorderedNotLessThanSignaling = $05;
	FloatComparisonMode_UnorderedNotLessThanOrEqualSignaling = $06;
	FloatComparisonMode_OrderedNonSignaling = $07;
	FloatComparisonMode_UnorderedEqualNonSignaling = $08;
	FloatComparisonMode_UnorderedNotGreaterThanOrEqualSignaling = $09;
	FloatComparisonMode_UnorderedNotGreaterThanSignaling = $0A;
	FloatComparisonMode_OrderedFalseNonSignaling = $0B;
	FloatComparisonMode_OrderedNotEqualNonSignaling = $0C;
	FloatComparisonMode_OrderedGreaterThanOrEqualSignaling = $0D;
	FloatComparisonMode_OrderedGreaterThanSignaling = $0E;
	FloatComparisonMode_UnorderedTrueNonSignaling = $0F;
	FloatComparisonMode_OrderedEqualSignaling = $10;
	FloatComparisonMode_OrderedLessThanNonSignaling = $11;
	FloatComparisonMode_OrderedLessThanOrEqualNonSignaling = $12;
	FloatComparisonMode_UnorderedSignaling = $13;
	FloatComparisonMode_UnorderedNotEqualSignaling = $14;
	FloatComparisonMode_UnorderedNotLessThanNonSignaling = $15;
	FloatComparisonMode_UnorderedNotLessThanOrEqualNonSignaling = $16;
	FloatComparisonMode_OrderedSignaling = $17;
	FloatComparisonMode_UnorderedEqualSignaling = $18;
	FloatComparisonMode_UnorderedNotGreaterThanOrEqualNonSignaling = $19;
	FloatComparisonMode_UnorderedNotGreaterThanNonSignaling = $1A;
	FloatComparisonMode_OrderedFalseSignaling = $1B;
	FloatComparisonMode_OrderedNotEqualSignaling = $1C;
	FloatComparisonMode_OrderedGreaterThanOrEqualNonSignaling = $1D;
	FloatComparisonMode_OrderedGreaterThanNonSignaling = $1E;
	FloatComparisonMode_UnorderedTrueSignaling = $1F;

type
	FlowControl = TNCEnum;
const
	FlowControl_Branch = $00000000;
	FlowControl_Break = $00000001;
	FlowControl_Call = $00000002;
	FlowControl_Cond_Branch = $00000003;
	FlowControl_Meta = $00000004;
	FlowControl_Next = $00000005;
	FlowControl_Phi = $00000006;
	FlowControl_Return = $00000007;
	FlowControl_Throw = $00000008;

type
	FUNCFLAGS = TNCEnum;
const
	FUNCFLAGS_FUNCFLAG_FRESTRICTED = $0001;
	FUNCFLAGS_FUNCFLAG_FSOURCE = $0002;
	FUNCFLAGS_FUNCFLAG_FBINDABLE = $0004;
	FUNCFLAGS_FUNCFLAG_FREQUESTEDIT = $0008;
	FUNCFLAGS_FUNCFLAG_FDISPLAYBIND = $0010;
	FUNCFLAGS_FUNCFLAG_FDEFAULTBIND = $0020;
	FUNCFLAGS_FUNCFLAG_FHIDDEN = $0040;
	FUNCFLAGS_FUNCFLAG_FUSESGETLASTERROR = $0080;
	FUNCFLAGS_FUNCFLAG_FDEFAULTCOLLELEM = $0100;
	FUNCFLAGS_FUNCFLAG_FUIDEFAULT = $0200;
	FUNCFLAGS_FUNCFLAG_FNONBROWSABLE = $0400;
	FUNCFLAGS_FUNCFLAG_FREPLACEABLE = $0800;
	FUNCFLAGS_FUNCFLAG_FIMMEDIATEBIND = $1000;

type
	FUNCKIND = TNCEnum;
const
	FUNCKIND_FUNC_VIRTUAL = $00000000;
	FUNCKIND_FUNC_PUREVIRTUAL = $00000001;
	FUNCKIND_FUNC_NONVIRTUAL = $00000002;
	FUNCKIND_FUNC_STATIC = $00000003;
	FUNCKIND_FUNC_DISPATCH = $00000004;

type
	GCCollectionMode = TNCEnum;
const
	GCCollectionMode_Default = $00000000;
	GCCollectionMode_Forced = $00000001;
	GCCollectionMode_Optimized = $00000002;

type
	GCHandleType = TNCEnum;
const
	GCHandleType_Weak = $00000000;
	GCHandleType_WeakTrackResurrection = $00000001;
	GCHandleType_Normal = $00000002;
	GCHandleType_Pinned = $00000003;

type
	GCKind = TNCEnum;
const
	GCKind_Any = $00000000;
	GCKind_Ephemeral = $00000001;
	GCKind_FullBlocking = $00000002;
	GCKind_Background = $00000003;

type
	GCLargeObjectHeapCompactionMode = TNCEnum;
const
	GCLargeObjectHeapCompactionMode_Default = $00000001;
	GCLargeObjectHeapCompactionMode_CompactOnce = $00000002;

type
	GCLatencyMode = TNCEnum;
const
	GCLatencyMode_Batch = $00000000;
	GCLatencyMode_Interactive = $00000001;
	GCLatencyMode_LowLatency = $00000002;
	GCLatencyMode_SustainedLowLatency = $00000003;
	GCLatencyMode_NoGCRegion = $00000004;

type
	GCNotificationStatus = TNCEnum;
const
	GCNotificationStatus_Succeeded = $00000000;
	GCNotificationStatus_Failed = $00000001;
	GCNotificationStatus_Canceled = $00000002;
	GCNotificationStatus_Timeout = $00000003;
	GCNotificationStatus_NotApplicable = $00000004;

type
	GenericParameterAttributes = TNCEnum;
const
	GenericParameterAttributes_None = $00000000;
	GenericParameterAttributes_Covariant = $00000001;
	GenericParameterAttributes_Contravariant = $00000002;
	GenericParameterAttributes_VarianceMask = $00000003;
	GenericParameterAttributes_ReferenceTypeConstraint = $00000004;
	GenericParameterAttributes_NotNullableValueTypeConstraint = $00000008;
	GenericParameterAttributes_DefaultConstructorConstraint = $00000010;
	GenericParameterAttributes_SpecialConstraintMask = $0000001C;

type
	GregorianCalendarTypes = TNCEnum;
const
	GregorianCalendarTypes_Localized = $00000001;
	GregorianCalendarTypes_USEnglish = $00000002;
	GregorianCalendarTypes_MiddleEastFrench = $00000009;
	GregorianCalendarTypes_Arabic = $0000000A;
	GregorianCalendarTypes_TransliteratedEnglish = $0000000B;
	GregorianCalendarTypes_TransliteratedFrench = $0000000C;

type
	HandleInheritability = TNCEnum;
const
	HandleInheritability_None = $00000000;
	HandleInheritability_Inheritable = $00000001;

type
	IDLFLAG = TNCEnum;
const
	IDLFLAG_IDLFLAG_NONE = $0000;
	IDLFLAG_IDLFLAG_FIN = $0001;
	IDLFLAG_IDLFLAG_FOUT = $0002;
	IDLFLAG_IDLFLAG_FLCID = $0004;
	IDLFLAG_IDLFLAG_FRETVAL = $0008;

type
	ImageFileMachine = TNCEnum;
const
	ImageFileMachine_I386 = $0000014C;
	ImageFileMachine_ARM = $000001C4;
	ImageFileMachine_IA64 = $00000200;
	ImageFileMachine_AMD64 = $00008664;

type
	IMPLTYPEFLAGS = TNCEnum;
const
	IMPLTYPEFLAGS_IMPLTYPEFLAG_FDEFAULT = $00000001;
	IMPLTYPEFLAGS_IMPLTYPEFLAG_FSOURCE = $00000002;
	IMPLTYPEFLAGS_IMPLTYPEFLAG_FRESTRICTED = $00000004;
	IMPLTYPEFLAGS_IMPLTYPEFLAG_FDEFAULTVTABLE = $00000008;

type
	INVOKEKIND = TNCEnum;
const
	INVOKEKIND_INVOKE_FUNC = $00000001;
	INVOKEKIND_INVOKE_PROPERTYGET = $00000002;
	INVOKEKIND_INVOKE_PROPERTYPUT = $00000004;
	INVOKEKIND_INVOKE_PROPERTYPUTREF = $00000008;

type
	LayoutKind = TNCEnum;
const
	LayoutKind_Sequential = $00000000;
	LayoutKind_Explicit = $00000002;
	LayoutKind_Auto = $00000003;

type
	LazyThreadSafetyMode = TNCEnum;
const
	LazyThreadSafetyMode_None = $00000000;
	LazyThreadSafetyMode_PublicationOnly = $00000001;
	LazyThreadSafetyMode_ExecutionAndPublication = $00000002;

type
	LIBFLAGS = TNCEnum;
const
	LIBFLAGS_LIBFLAG_FRESTRICTED = $0001;
	LIBFLAGS_LIBFLAG_FCONTROL = $0002;
	LIBFLAGS_LIBFLAG_FHIDDEN = $0004;
	LIBFLAGS_LIBFLAG_FHASDISKIMAGE = $0008;

type
	LoaderOptimization = TNCEnum;
const
	LoaderOptimization_NotSpecified = $00000000;
	LoaderOptimization_SingleDomain = $00000001;
	LoaderOptimization_MultiDomain = $00000002;
	LoaderOptimization_MultiDomainHost = $00000003;
	LoaderOptimization_MultiDomainHost_0 = $00000003;
	LoaderOptimization_DisallowBindings = $00000004;

type
	LoadHint = TNCEnum;
const
	LoadHint_Default = $00000000;
	LoadHint_Always = $00000001;
	LoadHint_Sometimes = $00000002;

type
	LockRecursionPolicy = TNCEnum;
const
	LockRecursionPolicy_NoRecursion = $00000000;
	LockRecursionPolicy_SupportsRecursion = $00000001;

type
	MemberTypes = TNCEnum;
const
	MemberTypes_Constructor = $00000001;
	MemberTypes_Event = $00000002;
	MemberTypes_Field = $00000004;
	MemberTypes_Method = $00000008;
	MemberTypes_Property = $00000010;
	MemberTypes_TypeInfo = $00000020;
	MemberTypes_Custom = $00000040;
	MemberTypes_NestedType = $00000080;
	MemberTypes_All_0 = $000000BF;

type
	MethodAttributes = TNCEnum;
const
	MethodAttributes_ReuseSlot = $00000000;
	MethodAttributes_ReuseSlot_0 = $00000000;
	MethodAttributes_Private = $00000001;
	MethodAttributes_FamANDAssem = $00000002;
	MethodAttributes_Assembly = $00000003;
	MethodAttributes_Family = $00000004;
	MethodAttributes_FamORAssem = $00000005;
	MethodAttributes_Public = $00000006;
	MethodAttributes_MemberAccessMask = $00000007;
	MethodAttributes_UnmanagedExport = $00000008;
	MethodAttributes_Static = $00000010;
	MethodAttributes_Final = $00000020;
	MethodAttributes_Virtual = $00000040;
	MethodAttributes_HideBySig = $00000080;
	MethodAttributes_VtableLayoutMask = $00000100;
	MethodAttributes_VtableLayoutMask_0 = $00000100;
	MethodAttributes_CheckAccessOnOverride = $00000200;
	MethodAttributes_Abstract = $00000400;
	MethodAttributes_SpecialName = $00000800;
	MethodAttributes_RTSpecialName = $00001000;
	MethodAttributes_PinvokeImpl = $00002000;
	MethodAttributes_HasSecurity = $00004000;
	MethodAttributes_RequireSecObject = $00008000;
	MethodAttributes_ReservedMask = $0000D000;

type
	MethodCodeType = TNCEnum;
const
	MethodCodeType_IL = $00000000;
	MethodCodeType_Native = $00000001;
	MethodCodeType_OPTIL = $00000002;
	MethodCodeType_Runtime = $00000003;

type
	MethodImplAttributes = TNCEnum;
const
	MethodImplAttributes_Managed = $00000000;
	MethodImplAttributes_Managed_0 = $00000000;
	MethodImplAttributes_Native = $00000001;
	MethodImplAttributes_OPTIL = $00000002;
	MethodImplAttributes_CodeTypeMask = $00000003;
	MethodImplAttributes_CodeTypeMask_0 = $00000003;
	MethodImplAttributes_Unmanaged = $00000004;
	MethodImplAttributes_Unmanaged_0 = $00000004;
	MethodImplAttributes_NoInlining = $00000008;
	MethodImplAttributes_ForwardRef = $00000010;
	MethodImplAttributes_Synchronized = $00000020;
	MethodImplAttributes_NoOptimization = $00000040;
	MethodImplAttributes_PreserveSig = $00000080;
	MethodImplAttributes_AggressiveInlining = $00000100;
	MethodImplAttributes_AggressiveOptimization = $00000200;
	MethodImplAttributes_InternalCall = $00001000;
	MethodImplAttributes_MaxMethodImplVal = $0000FFFF;

type
	MethodImplOptions = TNCEnum;
const
	MethodImplOptions_Unmanaged = $00000004;
	MethodImplOptions_NoInlining = $00000008;
	MethodImplOptions_ForwardRef = $00000010;
	MethodImplOptions_Synchronized = $00000020;
	MethodImplOptions_NoOptimization = $00000040;
	MethodImplOptions_PreserveSig = $00000080;
	MethodImplOptions_AggressiveInlining = $00000100;
	MethodImplOptions_AggressiveOptimization = $00000200;
	MethodImplOptions_InternalCall = $00001000;

type
	MidpointRounding = TNCEnum;
const
	MidpointRounding_ToEven = $00000000;
	MidpointRounding_AwayFromZero = $00000001;
	MidpointRounding_ToZero = $00000002;
	MidpointRounding_ToNegativeInfinity = $00000003;
	MidpointRounding_ToPositiveInfinity = $00000004;

type
	NormalizationForm = TNCEnum;
const
	NormalizationForm_FormC = $00000001;
	NormalizationForm_FormD = $00000002;
	NormalizationForm_FormKC = $00000005;
	NormalizationForm_FormKD = $00000006;

type
	NumberStyles = TNCEnum;
const
	NumberStyles_None = $00000000;
	NumberStyles_AllowLeadingWhite = $00000001;
	NumberStyles_AllowTrailingWhite = $00000002;
	NumberStyles_AllowLeadingSign = $00000004;
	NumberStyles_Integer = $00000007;
	NumberStyles_AllowTrailingSign = $00000008;
	NumberStyles_AllowParentheses = $00000010;
	NumberStyles_AllowDecimalPoint = $00000020;
	NumberStyles_AllowThousands = $00000040;
	NumberStyles_Number = $0000006F;
	NumberStyles_AllowExponent = $00000080;
	NumberStyles_Float = $000000A7;
	NumberStyles_AllowCurrencySymbol = $00000100;
	NumberStyles_Currency = $0000017F;
	NumberStyles_Any = $000001FF;
	NumberStyles_AllowHexSpecifier = $00000200;
	NumberStyles_HexNumber = $00000203;

type
	OpCodeType = TNCEnum;
const
	OpCodeType_Annotation = $00000000;
	OpCodeType_Macro = $00000001;
	OpCodeType_Nternal = $00000002;
	OpCodeType_Objmodel = $00000003;
	OpCodeType_Prefix = $00000004;
	OpCodeType_Primitive = $00000005;

type
	OperandType = TNCEnum;
const
	OperandType_InlineBrTarget = $00000000;
	OperandType_InlineField = $00000001;
	OperandType_InlineI = $00000002;
	OperandType_InlineI8 = $00000003;
	OperandType_InlineMethod = $00000004;
	OperandType_InlineNone = $00000005;
	OperandType_InlinePhi = $00000006;
	OperandType_InlineR = $00000007;
	OperandType_InlineSig = $00000009;
	OperandType_InlineString = $0000000A;
	OperandType_InlineSwitch = $0000000B;
	OperandType_InlineTok = $0000000C;
	OperandType_InlineType = $0000000D;
	OperandType_InlineVar = $0000000E;
	OperandType_ShortInlineBrTarget = $0000000F;
	OperandType_ShortInlineI = $00000010;
	OperandType_ShortInlineR = $00000011;
	OperandType_ShortInlineVar = $00000012;

type
	OperationStatus = TNCEnum;
const
	OperationStatus_Done = $00000000;
	OperationStatus_DestinationTooSmall = $00000001;
	OperationStatus_NeedMoreData = $00000002;
	OperationStatus_InvalidData = $00000003;

type
	PackingSize = TNCEnum;
const
	PackingSize_Unspecified = $00000000;
	PackingSize_Size1 = $00000001;
	PackingSize_Size2 = $00000002;
	PackingSize_Size4 = $00000004;
	PackingSize_Size8 = $00000008;
	PackingSize_Size16 = $00000010;
	PackingSize_Size32 = $00000020;
	PackingSize_Size64 = $00000040;
	PackingSize_Size128 = $00000080;

type
	ParameterAttributes = TNCEnum;
const
	ParameterAttributes_None_0 = $00000000;
	ParameterAttributes_In = $00000001;
	ParameterAttributes_Out = $00000002;
	ParameterAttributes_Lcid = $00000004;
	ParameterAttributes_Retval = $00000008;
	ParameterAttributes_Optional = $00000010;
	ParameterAttributes_HasDefault = $00001000;
	ParameterAttributes_HasFieldMarshal = $00002000;
	ParameterAttributes_Reserved3 = $00004000;
	ParameterAttributes_Reserved4 = $00008000;
	ParameterAttributes_ReservedMask = $0000F000;

type
	PARAMFLAG = TNCEnum;
const
	PARAMFLAG_PARAMFLAG_NONE = $0000;
	PARAMFLAG_PARAMFLAG_FIN = $0001;
	PARAMFLAG_PARAMFLAG_FOUT = $0002;
	PARAMFLAG_PARAMFLAG_FLCID = $0004;
	PARAMFLAG_PARAMFLAG_FRETVAL = $0008;
	PARAMFLAG_PARAMFLAG_FOPT = $0010;
	PARAMFLAG_PARAMFLAG_FHASDEFAULT = $0020;
	PARAMFLAG_PARAMFLAG_FHASCUSTDATA = $0040;

type
	PartialTrustVisibilityLevel = TNCEnum;
const
	PartialTrustVisibilityLevel_VisibleToAllHosts = $00000000;
	PartialTrustVisibilityLevel_NotVisibleByDefault = $00000001;

type
	PEFileKinds = TNCEnum;
const
	PEFileKinds_Dll = $00000001;
	PEFileKinds_ConsoleApplication = $00000002;
	PEFileKinds_WindowApplication = $00000003;

type
	PermissionState = TNCEnum;
const
	PermissionState_None = $00000000;
	PermissionState_Unrestricted = $00000001;

type
	PlatformID = TNCEnum;
const
	PlatformID_Win32S = $00000000;
	PlatformID_Win32Windows = $00000001;
	PlatformID_Win32NT = $00000002;
	PlatformID_WinCE = $00000003;
	PlatformID_Unix = $00000004;
	PlatformID_Xbox = $00000005;
	PlatformID_MacOSX = $00000006;
	PlatformID_Other = $00000007;

type
	PortableExecutableKinds = TNCEnum;
const
	PortableExecutableKinds_NotAPortableExecutableImage = $00000000;
	PortableExecutableKinds_ILOnly = $00000001;
	PortableExecutableKinds_Required32Bit = $00000002;
	PortableExecutableKinds_PE32Plus = $00000004;
	PortableExecutableKinds_Unmanaged32Bit = $00000008;
	PortableExecutableKinds_Preferred32Bit = $00000010;

type
	PrincipalPolicy = TNCEnum;
const
	PrincipalPolicy_UnauthenticatedPrincipal = $00000000;
	PrincipalPolicy_NoPrincipal = $00000001;
	PrincipalPolicy_WindowsPrincipal = $00000002;

type
	ProcessorArchitecture = TNCEnum;
const
	ProcessorArchitecture_None = $00000000;
	ProcessorArchitecture_MSIL = $00000001;
	ProcessorArchitecture_X86 = $00000002;
	ProcessorArchitecture_IA64 = $00000003;
	ProcessorArchitecture_Amd64 = $00000004;
	ProcessorArchitecture_Arm = $00000005;

type
	PropertyAttributes = TNCEnum;
const
	PropertyAttributes_None = $00000000;
	PropertyAttributes_SpecialName = $00000200;
	PropertyAttributes_RTSpecialName = $00000400;
	PropertyAttributes_HasDefault = $00001000;
	PropertyAttributes_Reserved2 = $00002000;
	PropertyAttributes_Reserved3 = $00004000;
	PropertyAttributes_Reserved4 = $00008000;
	PropertyAttributes_ReservedMask = $0000F400;

type
	ResourceAttributes = TNCEnum;
const
	ResourceAttributes_Public = $00000001;
	ResourceAttributes_Private = $00000002;

type
	ResourceLocation = TNCEnum;
const
	ResourceLocation_Embedded = $00000001;
	ResourceLocation_ContainedInAnotherAssembly = $00000002;
	ResourceLocation_ContainedInManifestFile = $00000004;

type
	ResourceScope = TNCEnum;
const
	ResourceScope_None = $00000000;
	ResourceScope_Machine = $00000001;
	ResourceScope_Process = $00000002;
	ResourceScope_AppDomain = $00000004;
	ResourceScope_Library = $00000008;
	ResourceScope_Private = $00000010;
	ResourceScope_Assembly = $00000020;

type
	SecurityAction = TNCEnum;
const
	SecurityAction_Demand = $00000002;
	SecurityAction_Assert = $00000003;
	SecurityAction_Deny = $00000004;
	SecurityAction_PermitOnly = $00000005;
	SecurityAction_LinkDemand = $00000006;
	SecurityAction_InheritanceDemand = $00000007;
	SecurityAction_RequestMinimum = $00000008;
	SecurityAction_RequestOptional = $00000009;
	SecurityAction_RequestRefuse = $0000000A;

type
	SecurityCriticalScope = TNCEnum;
const
	SecurityCriticalScope_Explicit = $00000000;
	SecurityCriticalScope_Everything = $00000001;

type
	SecurityPermissionFlag = TNCEnum;
const
	SecurityPermissionFlag_NoFlags = $00000000;
	SecurityPermissionFlag_Assertion = $00000001;
	SecurityPermissionFlag_UnmanagedCode = $00000002;
	SecurityPermissionFlag_SkipVerification = $00000004;
	SecurityPermissionFlag_Execution = $00000008;
	SecurityPermissionFlag_ControlThread = $00000010;
	SecurityPermissionFlag_ControlEvidence = $00000020;
	SecurityPermissionFlag_ControlPolicy = $00000040;
	SecurityPermissionFlag_SerializationFormatter = $00000080;
	SecurityPermissionFlag_ControlDomainPolicy = $00000100;
	SecurityPermissionFlag_ControlPrincipal = $00000200;
	SecurityPermissionFlag_ControlAppDomain = $00000400;
	SecurityPermissionFlag_RemotingConfiguration = $00000800;
	SecurityPermissionFlag_Infrastructure = $00001000;
	SecurityPermissionFlag_BindingRedirects = $00002000;
	SecurityPermissionFlag_AllFlags = $00003FFF;

type
	SecurityRuleSet = TNCEnum;
const
	SecurityRuleSet_None = $00;
	SecurityRuleSet_Level1 = $01;
	SecurityRuleSet_Level2 = $02;

type
	SeekOrigin = TNCEnum;
const
	SeekOrigin_Begin = $00000000;
	SeekOrigin_Current = $00000001;
	SeekOrigin_End = $00000002;

type
	SpecialFolder = TNCEnum;
const
	SpecialFolder_Desktop = $00000000;
	SpecialFolder_Programs = $00000002;
	SpecialFolder_MyDocuments = $00000005;
	SpecialFolder_MyDocuments_0 = $00000005;
	SpecialFolder_Favorites = $00000006;
	SpecialFolder_Startup = $00000007;
	SpecialFolder_Recent = $00000008;
	SpecialFolder_SendTo = $00000009;
	SpecialFolder_StartMenu = $0000000B;
	SpecialFolder_MyMusic = $0000000D;
	SpecialFolder_MyVideos = $0000000E;
	SpecialFolder_DesktopDirectory = $00000010;
	SpecialFolder_MyComputer = $00000011;
	SpecialFolder_NetworkShortcuts = $00000013;
	SpecialFolder_Fonts = $00000014;
	SpecialFolder_Templates = $00000015;
	SpecialFolder_CommonStartMenu = $00000016;
	SpecialFolder_CommonPrograms = $00000017;
	SpecialFolder_CommonStartup = $00000018;
	SpecialFolder_CommonDesktopDirectory = $00000019;
	SpecialFolder_ApplicationData = $0000001A;
	SpecialFolder_PrinterShortcuts = $0000001B;
	SpecialFolder_LocalApplicationData = $0000001C;
	SpecialFolder_InternetCache = $00000020;
	SpecialFolder_Cookies = $00000021;
	SpecialFolder_History = $00000022;
	SpecialFolder_CommonApplicationData = $00000023;
	SpecialFolder_Windows = $00000024;
	SpecialFolder_System = $00000025;
	SpecialFolder_ProgramFiles = $00000026;
	SpecialFolder_MyPictures = $00000027;
	SpecialFolder_UserProfile = $00000028;
	SpecialFolder_SystemX86 = $00000029;
	SpecialFolder_ProgramFilesX86 = $0000002A;
	SpecialFolder_CommonProgramFiles = $0000002B;
	SpecialFolder_CommonProgramFilesX86 = $0000002C;
	SpecialFolder_CommonTemplates = $0000002D;
	SpecialFolder_CommonDocuments = $0000002E;
	SpecialFolder_CommonAdminTools = $0000002F;
	SpecialFolder_AdminTools = $00000030;
	SpecialFolder_CommonMusic = $00000035;
	SpecialFolder_CommonPictures = $00000036;
	SpecialFolder_CommonVideos = $00000037;
	SpecialFolder_Resources = $00000038;
	SpecialFolder_LocalizedResources = $00000039;
	SpecialFolder_CommonOemLinks = $0000003A;
	SpecialFolder_CDBurning = $0000003B;

type
	SpecialFolderOption = TNCEnum;
const
	SpecialFolderOption_None = $00000000;
	SpecialFolderOption_DoNotVerify = $00004000;
	SpecialFolderOption_Create = $00008000;

type
	StackBehaviour = TNCEnum;
const
	StackBehaviour_Pop0 = $00000000;
	StackBehaviour_Pop1 = $00000001;
	StackBehaviour_Pop1_pop1 = $00000002;
	StackBehaviour_Popi = $00000003;
	StackBehaviour_Popi_pop1 = $00000004;
	StackBehaviour_Popi_popi = $00000005;
	StackBehaviour_Popi_popi8 = $00000006;
	StackBehaviour_Popi_popi_popi = $00000007;
	StackBehaviour_Popi_popr4 = $00000008;
	StackBehaviour_Popi_popr8 = $00000009;
	StackBehaviour_Popref = $0000000A;
	StackBehaviour_Popref_pop1 = $0000000B;
	StackBehaviour_Popref_popi = $0000000C;
	StackBehaviour_Popref_popi_popi = $0000000D;
	StackBehaviour_Popref_popi_popi8 = $0000000E;
	StackBehaviour_Popref_popi_popr4 = $0000000F;
	StackBehaviour_Popref_popi_popr8 = $00000010;
	StackBehaviour_Popref_popi_popref = $00000011;
	StackBehaviour_Push0 = $00000012;
	StackBehaviour_Push1 = $00000013;
	StackBehaviour_Push1_push1 = $00000014;
	StackBehaviour_Pushi = $00000015;
	StackBehaviour_Pushi8 = $00000016;
	StackBehaviour_Pushr4 = $00000017;
	StackBehaviour_Pushr8 = $00000018;
	StackBehaviour_Pushref = $00000019;
	StackBehaviour_Varpop = $0000001A;
	StackBehaviour_Varpush = $0000001B;
	StackBehaviour_Popref_popi_pop1 = $0000001C;

type
	StreamingContextStates = TNCEnum;
const
	StreamingContextStates_CrossProcess = $00000001;
	StreamingContextStates_CrossMachine = $00000002;
	StreamingContextStates_File = $00000004;
	StreamingContextStates_Persistence = $00000008;
	StreamingContextStates_Remoting = $00000010;
	StreamingContextStates_Other = $00000020;
	StreamingContextStates_Clone = $00000040;
	StreamingContextStates_CrossAppDomain = $00000080;
	StreamingContextStates_All = $000000FF;

type
	StringComparison = TNCEnum;
const
	StringComparison_CurrentCulture = $00000000;
	StringComparison_CurrentCultureIgnoreCase = $00000001;
	StringComparison_InvariantCulture = $00000002;
	StringComparison_InvariantCultureIgnoreCase = $00000003;
	StringComparison_Ordinal = $00000004;
	StringComparison_OrdinalIgnoreCase = $00000005;

type
	StringSplitOptions = TNCEnum;
const
	StringSplitOptions_None = $00000000;
	StringSplitOptions_RemoveEmptyEntries = $00000001;
	StringSplitOptions_TrimEntries = $00000002;

type
	SYSKIND = TNCEnum;
const
	SYSKIND_SYS_WIN16 = $00000000;
	SYSKIND_SYS_WIN32 = $00000001;
	SYSKIND_SYS_MAC = $00000002;
	SYSKIND_SYS_WIN64 = $00000003;

type
	TaskContinuationOptions = TNCEnum;
const
	TaskContinuationOptions_None = $00000000;
	TaskContinuationOptions_PreferFairness = $00000001;
	TaskContinuationOptions_LongRunning = $00000002;
	TaskContinuationOptions_AttachedToParent = $00000004;
	TaskContinuationOptions_DenyChildAttach = $00000008;
	TaskContinuationOptions_HideScheduler = $00000010;
	TaskContinuationOptions_LazyCancellation = $00000020;
	TaskContinuationOptions_RunContinuationsAsynchronously = $00000040;
	TaskContinuationOptions_NotOnRanToCompletion = $00010000;
	TaskContinuationOptions_NotOnFaulted = $00020000;
	TaskContinuationOptions_OnlyOnCanceled = $00030000;
	TaskContinuationOptions_NotOnCanceled = $00040000;
	TaskContinuationOptions_OnlyOnFaulted = $00050000;
	TaskContinuationOptions_OnlyOnRanToCompletion = $00060000;
	TaskContinuationOptions_ExecuteSynchronously = $00080000;

type
	TaskCreationOptions = TNCEnum;
const
	TaskCreationOptions_None = $00000000;
	TaskCreationOptions_PreferFairness = $00000001;
	TaskCreationOptions_LongRunning = $00000002;
	TaskCreationOptions_AttachedToParent = $00000004;
	TaskCreationOptions_DenyChildAttach = $00000008;
	TaskCreationOptions_HideScheduler = $00000010;
	TaskCreationOptions_RunContinuationsAsynchronously = $00000040;

type
	TaskStatus = TNCEnum;
const
	TaskStatus_Created = $00000000;
	TaskStatus_WaitingForActivation = $00000001;
	TaskStatus_WaitingToRun = $00000002;
	TaskStatus_Running = $00000003;
	TaskStatus_WaitingForChildrenToComplete = $00000004;
	TaskStatus_RanToCompletion = $00000005;
	TaskStatus_Canceled = $00000006;
	TaskStatus_Faulted = $00000007;

type
	ThreadPriority = TNCEnum;
const
	ThreadPriority_Lowest = $00000000;
	ThreadPriority_BelowNormal = $00000001;
	ThreadPriority_Normal = $00000002;
	ThreadPriority_AboveNormal = $00000003;
	ThreadPriority_Highest = $00000004;

type
	ThreadState = TNCEnum;
const
	ThreadState_Running = $00000000;
	ThreadState_StopRequested = $00000001;
	ThreadState_SuspendRequested = $00000002;
	ThreadState_Background = $00000004;
	ThreadState_Unstarted = $00000008;
	ThreadState_Stopped = $00000010;
	ThreadState_WaitSleepJoin = $00000020;
	ThreadState_Suspended = $00000040;
	ThreadState_AbortRequested = $00000080;
	ThreadState_Aborted = $00000100;

type
	TimeSpanStyles = TNCEnum;
const
	TimeSpanStyles_None = $00000000;
	TimeSpanStyles_AssumeNegative = $00000001;

type
	TokenImpersonationLevel = TNCEnum;
const
	TokenImpersonationLevel_None = $00000000;
	TokenImpersonationLevel_Anonymous = $00000001;
	TokenImpersonationLevel_Identification = $00000002;
	TokenImpersonationLevel_Impersonation = $00000003;
	TokenImpersonationLevel_Delegation = $00000004;

type
	TypeAttributes = TNCEnum;
const
	TypeAttributes_NotPublic = $00000000;
	TypeAttributes_NotPublic_0 = $00000000;
	TypeAttributes_NotPublic_1 = $00000000;
	TypeAttributes_NotPublic_2 = $00000000;
	TypeAttributes_Public = $00000001;
	TypeAttributes_NestedPublic = $00000002;
	TypeAttributes_NestedPrivate = $00000003;
	TypeAttributes_NestedFamily = $00000004;
	TypeAttributes_NestedAssembly = $00000005;
	TypeAttributes_NestedFamANDAssem = $00000006;
	TypeAttributes_VisibilityMask = $00000007;
	TypeAttributes_VisibilityMask_0 = $00000007;
	TypeAttributes_SequentialLayout = $00000008;
	TypeAttributes_ExplicitLayout = $00000010;
	TypeAttributes_LayoutMask = $00000018;
	TypeAttributes_ClassSemanticsMask = $00000020;
	TypeAttributes_ClassSemanticsMask_0 = $00000020;
	TypeAttributes_Abstract = $00000080;
	TypeAttributes_Sealed = $00000100;
	TypeAttributes_SpecialName = $00000400;
	TypeAttributes_RTSpecialName = $00000800;
	TypeAttributes_Import = $00001000;
	TypeAttributes_Serializable = $00002000;
	TypeAttributes_WindowsRuntime = $00004000;
	TypeAttributes_UnicodeClass = $00010000;
	TypeAttributes_AutoClass = $00020000;
	TypeAttributes_StringFormatMask = $00030000;
	TypeAttributes_StringFormatMask_0 = $00030000;
	TypeAttributes_HasSecurity = $00040000;
	TypeAttributes_ReservedMask = $00040800;
	TypeAttributes_BeforeFieldInit = $00100000;
	TypeAttributes_CustomFormatMask = $00C00000;

type
	TypeCode = TNCEnum;
const
	TypeCode_Empty = $00000000;
	TypeCode_Object = $00000001;
	TypeCode_DBNull = $00000002;
	TypeCode_Boolean = $00000003;
	TypeCode_Char = $00000004;
	TypeCode_SByte = $00000005;
	TypeCode_Byte = $00000006;
	TypeCode_Int16 = $00000007;
	TypeCode_UInt16 = $00000008;
	TypeCode_Int32 = $00000009;
	TypeCode_UInt32 = $0000000A;
	TypeCode_Int64 = $0000000B;
	TypeCode_UInt64 = $0000000C;
	TypeCode_Single = $0000000D;
	TypeCode_Double = $0000000E;
	TypeCode_Decimal = $0000000F;
	TypeCode_DateTime = $00000010;
	TypeCode_String = $00000012;

type
	TYPEFLAGS = TNCEnum;
const
	TYPEFLAGS_TYPEFLAG_FAPPOBJECT = $0001;
	TYPEFLAGS_TYPEFLAG_FCANCREATE = $0002;
	TYPEFLAGS_TYPEFLAG_FLICENSED = $0004;
	TYPEFLAGS_TYPEFLAG_FPREDECLID = $0008;
	TYPEFLAGS_TYPEFLAG_FHIDDEN = $0010;
	TYPEFLAGS_TYPEFLAG_FCONTROL = $0020;
	TYPEFLAGS_TYPEFLAG_FDUAL = $0040;
	TYPEFLAGS_TYPEFLAG_FNONEXTENSIBLE = $0080;
	TYPEFLAGS_TYPEFLAG_FOLEAUTOMATION = $0100;
	TYPEFLAGS_TYPEFLAG_FRESTRICTED = $0200;
	TYPEFLAGS_TYPEFLAG_FAGGREGATABLE = $0400;
	TYPEFLAGS_TYPEFLAG_FREPLACEABLE = $0800;
	TYPEFLAGS_TYPEFLAG_FDISPATCHABLE = $1000;
	TYPEFLAGS_TYPEFLAG_FREVERSEBIND = $2000;
	TYPEFLAGS_TYPEFLAG_FPROXY = $4000;

type
	TYPEKIND = TNCEnum;
const
	TYPEKIND_TKIND_ENUM = $00000000;
	TYPEKIND_TKIND_RECORD = $00000001;
	TYPEKIND_TKIND_MODULE = $00000002;
	TYPEKIND_TKIND_INTERFACE = $00000003;
	TYPEKIND_TKIND_DISPATCH = $00000004;
	TYPEKIND_TKIND_COCLASS = $00000005;
	TYPEKIND_TKIND_ALIAS = $00000006;
	TYPEKIND_TKIND_UNION = $00000007;
	TYPEKIND_TKIND_MAX = $00000008;

type
	UltimateResourceFallbackLocation = TNCEnum;
const
	UltimateResourceFallbackLocation_MainAssembly = $00000000;
	UltimateResourceFallbackLocation_Satellite = $00000001;

type
	UnicodeCategory = TNCEnum;
const
	UnicodeCategory_UppercaseLetter = $00000000;
	UnicodeCategory_LowercaseLetter = $00000001;
	UnicodeCategory_TitlecaseLetter = $00000002;
	UnicodeCategory_ModifierLetter = $00000003;
	UnicodeCategory_OtherLetter = $00000004;
	UnicodeCategory_NonSpacingMark = $00000005;
	UnicodeCategory_SpacingCombiningMark = $00000006;
	UnicodeCategory_EnclosingMark = $00000007;
	UnicodeCategory_DecimalDigitNumber = $00000008;
	UnicodeCategory_LetterNumber = $00000009;
	UnicodeCategory_OtherNumber = $0000000A;
	UnicodeCategory_SpaceSeparator = $0000000B;
	UnicodeCategory_LineSeparator = $0000000C;
	UnicodeCategory_ParagraphSeparator = $0000000D;
	UnicodeCategory_Control = $0000000E;
	UnicodeCategory_Format = $0000000F;
	UnicodeCategory_Surrogate = $00000010;
	UnicodeCategory_PrivateUse = $00000011;
	UnicodeCategory_ConnectorPunctuation = $00000012;
	UnicodeCategory_DashPunctuation = $00000013;
	UnicodeCategory_OpenPunctuation = $00000014;
	UnicodeCategory_ClosePunctuation = $00000015;
	UnicodeCategory_InitialQuotePunctuation = $00000016;
	UnicodeCategory_FinalQuotePunctuation = $00000017;
	UnicodeCategory_OtherPunctuation = $00000018;
	UnicodeCategory_MathSymbol = $00000019;
	UnicodeCategory_CurrencySymbol = $0000001A;
	UnicodeCategory_ModifierSymbol = $0000001B;
	UnicodeCategory_OtherSymbol = $0000001C;
	UnicodeCategory_OtherNotAssigned = $0000001D;

type
	UnmanagedType = TNCEnum;
const
	UnmanagedType_Bool = $00000002;
	UnmanagedType_I1 = $00000003;
	UnmanagedType_U1 = $00000004;
	UnmanagedType_I2 = $00000005;
	UnmanagedType_U2 = $00000006;
	UnmanagedType_I4 = $00000007;
	UnmanagedType_U4 = $00000008;
	UnmanagedType_I8 = $00000009;
	UnmanagedType_U8 = $0000000A;
	UnmanagedType_R4 = $0000000B;
	UnmanagedType_R8 = $0000000C;
	UnmanagedType_Currency = $0000000F;
	UnmanagedType_BStr = $00000013;
	UnmanagedType_LPStr = $00000014;
	UnmanagedType_LPWStr = $00000015;
	UnmanagedType_LPTStr = $00000016;
	UnmanagedType_ByValTStr = $00000017;
	UnmanagedType_IUnknown = $00000019;
	UnmanagedType_IDispatch = $0000001A;
	UnmanagedType_Struct = $0000001B;
	UnmanagedType_Interface = $0000001C;
	UnmanagedType_SafeArray = $0000001D;
	UnmanagedType_ByValArray = $0000001E;
	UnmanagedType_SysInt = $0000001F;
	UnmanagedType_SysUInt = $00000020;
	UnmanagedType_VBByRefStr = $00000022;
	UnmanagedType_AnsiBStr = $00000023;
	UnmanagedType_TBStr = $00000024;
	UnmanagedType_VariantBool = $00000025;
	UnmanagedType_FunctionPtr = $00000026;
	UnmanagedType_AsAny = $00000028;
	UnmanagedType_LPArray = $0000002A;
	UnmanagedType_LPStruct = $0000002B;
	UnmanagedType_CustomMarshaler = $0000002C;
	UnmanagedType_Error = $0000002D;
	UnmanagedType_IInspectable = $0000002E;
	UnmanagedType_HString = $0000002F;
	UnmanagedType_LPUTF8Str = $00000030;

type
	ValueTaskSourceOnCompletedFlags = TNCEnum;
const
	ValueTaskSourceOnCompletedFlags_None = $00000000;
	ValueTaskSourceOnCompletedFlags_UseSchedulingContext = $00000001;
	ValueTaskSourceOnCompletedFlags_FlowExecutionContext = $00000002;

type
	ValueTaskSourceStatus = TNCEnum;
const
	ValueTaskSourceStatus_Pending = $00000000;
	ValueTaskSourceStatus_Succeeded = $00000001;
	ValueTaskSourceStatus_Faulted = $00000002;
	ValueTaskSourceStatus_Canceled = $00000003;

type
	VarEnum = TNCEnum;
const
	VarEnum_VT_EMPTY = $00000000;
	VarEnum_VT_NULL = $00000001;
	VarEnum_VT_I2 = $00000002;
	VarEnum_VT_I4 = $00000003;
	VarEnum_VT_R4 = $00000004;
	VarEnum_VT_R8 = $00000005;
	VarEnum_VT_CY = $00000006;
	VarEnum_VT_DATE = $00000007;
	VarEnum_VT_BSTR = $00000008;
	VarEnum_VT_DISPATCH = $00000009;
	VarEnum_VT_ERROR = $0000000A;
	VarEnum_VT_BOOL = $0000000B;
	VarEnum_VT_VARIANT = $0000000C;
	VarEnum_VT_UNKNOWN = $0000000D;
	VarEnum_VT_DECIMAL = $0000000E;
	VarEnum_VT_I1 = $00000010;
	VarEnum_VT_UI1 = $00000011;
	VarEnum_VT_UI2 = $00000012;
	VarEnum_VT_UI4 = $00000013;
	VarEnum_VT_I8 = $00000014;
	VarEnum_VT_UI8 = $00000015;
	VarEnum_VT_INT = $00000016;
	VarEnum_VT_UINT = $00000017;
	VarEnum_VT_VOID = $00000018;
	VarEnum_VT_HRESULT = $00000019;
	VarEnum_VT_PTR = $0000001A;
	VarEnum_VT_SAFEARRAY = $0000001B;
	VarEnum_VT_CARRAY = $0000001C;
	VarEnum_VT_USERDEFINED = $0000001D;
	VarEnum_VT_LPSTR = $0000001E;
	VarEnum_VT_LPWSTR = $0000001F;
	VarEnum_VT_RECORD = $00000024;
	VarEnum_VT_FILETIME = $00000040;
	VarEnum_VT_BLOB = $00000041;
	VarEnum_VT_STREAM = $00000042;
	VarEnum_VT_STORAGE = $00000043;
	VarEnum_VT_STREAMED_OBJECT = $00000044;
	VarEnum_VT_STORED_OBJECT = $00000045;
	VarEnum_VT_BLOB_OBJECT = $00000046;
	VarEnum_VT_CF = $00000047;
	VarEnum_VT_CLSID = $00000048;
	VarEnum_VT_VECTOR = $00001000;
	VarEnum_VT_ARRAY = $00002000;
	VarEnum_VT_BYREF = $00004000;

type
	VARFLAGS = TNCEnum;
const
	VARFLAGS_VARFLAG_FREADONLY = $0001;
	VARFLAGS_VARFLAG_FSOURCE = $0002;
	VARFLAGS_VARFLAG_FBINDABLE = $0004;
	VARFLAGS_VARFLAG_FREQUESTEDIT = $0008;
	VARFLAGS_VARFLAG_FDISPLAYBIND = $0010;
	VARFLAGS_VARFLAG_FDEFAULTBIND = $0020;
	VARFLAGS_VARFLAG_FHIDDEN = $0040;
	VARFLAGS_VARFLAG_FRESTRICTED = $0080;
	VARFLAGS_VARFLAG_FDEFAULTCOLLELEM = $0100;
	VARFLAGS_VARFLAG_FUIDEFAULT = $0200;
	VARFLAGS_VARFLAG_FNONBROWSABLE = $0400;
	VARFLAGS_VARFLAG_FREPLACEABLE = $0800;
	VARFLAGS_VARFLAG_FIMMEDIATEBIND = $1000;

type
	VARKIND = TNCEnum;
const
	VARKIND_VAR_PERINSTANCE = $00000000;
	VARKIND_VAR_STATIC = $00000001;
	VARKIND_VAR_CONST = $00000002;
	VARKIND_VAR_DISPATCH = $00000003;

type
	TApartmentState = 
	(
		asSTA, 
		asMTA, 
		asUnknown
	);

	TAssemblyBuilderAccess = 
	(
		abaRun, 
		abaRunAndCollect
	);
	TAssemblyBuilderAccess_Set = Set of TAssemblyBuilderAccess;

	TAssemblyContentType = 
	(
		actDefault, 
		actWindowsRuntime
	);

	TAssemblyHashAlgorithm = 
	(
		ahaNone, 
		ahaMD5, 
		ahaSHA1, 
		ahaSHA256, 
		ahaSHA384, 
		ahaSHA512
	);

	TAssemblyNameFlags = 
	(
		anfNone, 
		anfPublicKey, 
		anfRetargetable, 
		anfEnableJITcompileOptimizer, 
		anfEnableJITcompileTracking
	);
	TAssemblyNameFlags_Set = Set of TAssemblyNameFlags;

	TAssemblyVersionCompatibility = 
	(
		avcSameMachine, 
		avcSameProcess, 
		avcSameDomain
	);

	TAttributeTargets = 
	(
		atAssembly, 
		atModule, 
		atClass, 
		atStruct, 
		atEnum, 
		atConstructor, 
		atMethod, 
		atProperty, 
		atField, 
		atEvent, 
		atInterface, 
		atParameter, 
		atDelegate, 
		atReturnValue, 
		atGenericParameter, 
		atAll
	);
	TAttributeTargets_Set = Set of TAttributeTargets;

	TBase64FormattingOptions = 
	(
		bfoNone, 
		bfoInsertLineBreaks
	);
	TBase64FormattingOptions_Set = Set of TBase64FormattingOptions;

	TBindingFlags = 
	(
		bfDefault, 
		bfIgnoreCase, 
		bfDeclaredOnly, 
		bfInstance, 
		bfStatic, 
		bfPublic, 
		bfNonPublic, 
		bfFlattenHierarchy, 
		bfInvokeMethod, 
		bfCreateInstance, 
		bfGetField, 
		bfSetField, 
		bfGetProperty, 
		bfSetProperty, 
		bfPutDispProperty, 
		bfPutRefDispProperty, 
		bfExactBinding, 
		bfSuppressChangeType, 
		bfOptionalParamBinding, 
		bfIgnoreReturn, 
		bfDoNotWrapExceptions
	);
	TBindingFlags_Set = Set of TBindingFlags;

	TCalendarAlgorithmType = 
	(
		catUnknown, 
		catSolarCalendar, 
		catLunarCalendar, 
		catLunisolarCalendar
	);

	TCalendarWeekRule = 
	(
		cwrFirstDay, 
		cwrFirstFullWeek, 
		cwrFirstFourDayWeek
	);

	TCALLCONV = 
	(
		callconvCC_CDECL, 
		callconvCC_MSCPASCAL, 
		callconvCC_MSCPASCAL_0, 
		callconvCC_MACPASCAL, 
		callconvCC_STDCALL, 
		callconvCC_RESERVED, 
		callconvCC_SYSCALL, 
		callconvCC_MPWCDECL, 
		callconvCC_MPWPASCAL, 
		callconvCC_MAX
	);

	TCallingConvention = 
	(
		ccWinapi, 
		ccCdecl, 
		ccStdCall, 
		ccThisCall, 
		ccFastCall
	);

	TCallingConventions = 
	(
		ccStandard, 
		ccVarArgs, 
		ccAny, 
		ccHasThis, 
		ccExplicitThis
	);
	TCallingConventions_Set = Set of TCallingConventions;

	TCer = 
	(
		cerNone, 
		cerMayFail, 
		cerSuccess
	);

	TCharSet = 
	(
		csNone, 
		csAnsi, 
		csUnicode, 
		csAuto
	);

	TClassInterfaceType = 
	(
		citNone, 
		citAutoDispatch, 
		citAutoDual
	);

	TComInterfaceType = 
	(
		citInterfaceIsDual, 
		citInterfaceIsIUnknown, 
		citInterfaceIsIDispatch, 
		citInterfaceIsIInspectable
	);

	TComMemberType = 
	(
		cmtMethod, 
		cmtPropGet, 
		cmtPropSet
	);

	TCompareOptions = 
	(
		coNone, 
		coIgnoreCase, 
		coIgnoreNonSpace, 
		coIgnoreSymbols, 
		coIgnoreKanaType, 
		coIgnoreWidth, 
		coOrdinalIgnoreCase, 
		coStringSort, 
		coOrdinal_0
	);
	TCompareOptions_Set = Set of TCompareOptions;

	TCompilationRelaxations = 
	(
		crNoStringInterning
	);
	TCompilationRelaxations_Set = Set of TCompilationRelaxations;

	TComponentGuaranteesOptions = 
	(
		cgoNone, 
		cgoExchange, 
		cgoStable, 
		cgoSideBySide
	);
	TComponentGuaranteesOptions_Set = Set of TComponentGuaranteesOptions;

	TConsistency = 
	(
		consistencyMayCorruptProcess, 
		consistencyMayCorruptAppDomain, 
		consistencyMayCorruptInstance, 
		consistencyWillNotCorruptState
	);

	TContractFailureKind = 
	(
		cfkPrecondition, 
		cfkPostcondition, 
		cfkPostconditionOnException, 
		cfkInvariant, 
		cfkAssert, 
		cfkAssume
	);

	TCreateComInterfaceFlags = 
	(
		ccifNone, 
		ccifCallerDefinedIUnknown, 
		ccifTrackerSupport
	);
	TCreateComInterfaceFlags_Set = Set of TCreateComInterfaceFlags;

	TCreateObjectFlags = 
	(
		cofNone, 
		cofTrackerObject, 
		cofUniqueInstance
	);
	TCreateObjectFlags_Set = Set of TCreateObjectFlags;

	TCultureTypes = 
	(
		ctNeutralCultures, 
		ctSpecificCultures, 
		ctInstalledWin32Cultures, 
		ctAllCultures, 
		ctUserCustomCulture, 
		ctReplacementCultures, 
		ctWindowsOnlyCultures, 
		ctFrameworkCultures
	);
	TCultureTypes_Set = Set of TCultureTypes;

	TCustomQueryInterfaceMode = 
	(
		cqimIgnore, 
		cqimAllow
	);

	TCustomQueryInterfaceResult = 
	(
		cqirHandled, 
		cqirNotHandled, 
		cqirFailed
	);

	TDateTimeKind = 
	(
		dtkUnspecified, 
		dtkUtc, 
		dtkLocal
	);

	TDateTimeStyles = 
	(
		dtsNone, 
		dtsAllowLeadingWhite, 
		dtsAllowTrailingWhite, 
		dtsAllowInnerWhite, 
		dtsAllowWhiteSpaces, 
		dtsNoCurrentDateDefault, 
		dtsAdjustToUniversal, 
		dtsAssumeLocal, 
		dtsAssumeUniversal, 
		dtsRoundtripKind
	);
	TDateTimeStyles_Set = Set of TDateTimeStyles;

	TDayOfWeek = 
	(
		dowSunday, 
		dowMonday, 
		dowTuesday, 
		dowWednesday, 
		dowThursday, 
		dowFriday, 
		dowSaturday
	);

	TDebuggerBrowsableState = 
	(
		dbsNever, 
		dbsCollapsed, 
		dbsRootHidden
	);

	TDebuggingModes = 
	(
		dmNone, 
		dmDefault, 
		dmIgnoreSymbolStoreSequencePoints, 
		dmEnableEditAndContinue, 
		dmDisableOptimizations
	);
	TDebuggingModes_Set = Set of TDebuggingModes;

	TDESCKIND = 
	(
		desckindDESCKIND_NONE, 
		desckindDESCKIND_FUNCDESC, 
		desckindDESCKIND_VARDESC, 
		desckindDESCKIND_TYPECOMP, 
		desckindDESCKIND_IMPLICITAPPOBJ, 
		desckindDESCKIND_MAX
	);

	TDigitShapes = 
	(
		dsContext, 
		dsNone, 
		dsNativeNational
	);

	TDllImportSearchPath = 
	(
		dispLegacyBehavior, 
		dispAssemblyDirectory, 
		dispUseDllDirectoryForDependencies, 
		dispApplicationDirectory, 
		dispUserDirectories, 
		dispSystem32, 
		dispSafeDirectories
	);
	TDllImportSearchPath_Set = Set of TDllImportSearchPath;

	TDynamicallyAccessedMemberTypes = 
	(
		damtNone, 
		damtPublicParameterlessConstructor, 
		damtPublicConstructors, 
		damtNonPublicConstructors, 
		damtPublicMethods, 
		damtNonPublicMethods, 
		damtPublicFields, 
		damtNonPublicFields, 
		damtPublicNestedTypes, 
		damtNonPublicNestedTypes, 
		damtPublicProperties, 
		damtNonPublicProperties, 
		damtPublicEvents, 
		damtNonPublicEvents, 
		damtAll
	);
	TDynamicallyAccessedMemberTypes_Set = Set of TDynamicallyAccessedMemberTypes;

	TEditorBrowsableState = 
	(
		ebsAlways, 
		ebsNever, 
		ebsAdvanced
	);

	TEnvironmentVariableTarget = 
	(
		evtProcess, 
		evtUser, 
		evtMachine
	);

	TEventActivityOptions = 
	(
		eaoNone, 
		eaoDisable, 
		eaoRecursive, 
		eaoDetachable
	);
	TEventActivityOptions_Set = Set of TEventActivityOptions;

	TEventAttributes = 
	(
		eaNone, 
		eaSpecialName, 
		eaReservedMask, 
		eaReservedMask_0
	);
	TEventAttributes_Set = Set of TEventAttributes;

	TEventChannel = 
	(
		ecNone, 
		ecAdmin, 
		ecOperational, 
		ecAnalytic, 
		ecDebug
	);

	TEventCommand = 
	(
		ecUpdate, 
		ecDisable, 
		ecEnable, 
		ecSendManifest
	);

	TEventFieldFormat = 
	(
		effDefault, 
		effString, 
		effBoolean, 
		effHexadecimal, 
		effXml, 
		effJson, 
		effHResult
	);

	TEventFieldTags = 
	(
		eftNone
	);
	TEventFieldTags_Set = Set of TEventFieldTags;

	TEventKeywords = 
	(
		ekNone, 
		ekWdiContext, 
		ekWdiContext_0, 
		ekWdiDiagnostic, 
		ekSqm, 
		ekCorrelationHint, 
		ekCorrelationHint_0, 
		ekAuditSuccess, 
		ekEventLogClassic, 
		ekAll
	);
	TEventKeywords_Set = Set of TEventKeywords;

	TEventLevel = 
	(
		elLogAlways, 
		elCritical, 
		elError, 
		elWarning, 
		elInformational, 
		elVerbose
	);

	TEventManifestOptions = 
	(
		emoNone, 
		emoStrict, 
		emoAllCultures, 
		emoOnlyIfNeededForRegistration, 
		emoAllowEventSourceOverride
	);
	TEventManifestOptions_Set = Set of TEventManifestOptions;

	TEventOpcode = 
	(
		eoInfo, 
		eoStart, 
		eoStop, 
		eoDataCollectionStart, 
		eoDataCollectionStop, 
		eoExtension, 
		eoReply, 
		eoResume, 
		eoSuspend, 
		eoSend, 
		eoReceive
	);

	TEventResetMode = 
	(
		ermAutoReset, 
		ermManualReset
	);

	TEventSourceSettings = 
	(
		essDefault, 
		essThrowOnEventWriteErrors, 
		essEtwManifestEventFormat, 
		essEtwSelfDescribingEventFormat
	);
	TEventSourceSettings_Set = Set of TEventSourceSettings;

	TEventTags = 
	(
		etNone
	);
	TEventTags_Set = Set of TEventTags;

	TEventTask = 
	(
		etEventTask_1None
	);

	TExceptionHandlingClauseOptions = 
	(
		ehcoClause, 
		ehcoFilter, 
		ehcoFinally, 
		ehcoFault
	);
	TExceptionHandlingClauseOptions_Set = Set of TExceptionHandlingClauseOptions;

	TFieldAttributes = 
	(
		faPrivateScope, 
		faPrivate_0, 
		faFamANDAssem, 
		faAssembly, 
		faFamily, 
		faFamORAssem, 
		faPublic, 
		faFieldAccessMask, 
		faStatic, 
		faInitOnly, 
		faLiteral, 
		faNotSerialized, 
		faHasFieldRVA, 
		faSpecialName, 
		faRTSpecialName, 
		faHasFieldMarshal, 
		faPinvokeImpl, 
		faHasDefault, 
		faReservedMask
	);
	TFieldAttributes_Set = Set of TFieldAttributes;

	TFileAccess = 
	(
		faRead, 
		faWrite, 
		faReadWrite
	);
	TFileAccess_Set = Set of TFileAccess;

	TFileAttributes = 
	(
		faReadOnly, 
		faHidden, 
		faSystem, 
		faDirectory, 
		faArchive, 
		faDevice, 
		faNormal, 
		faTemporary, 
		faSparseFile, 
		faReparsePoint, 
		faCompressed, 
		faOffline, 
		faNotContentIndexed, 
		faEncrypted, 
		faIntegrityStream, 
		faNoScrubData
	);
	TFileAttributes_Set = Set of TFileAttributes;

	TFileMode = 
	(
		fmCreateNew, 
		fmCreate_0, 
		fmOpen, 
		fmOpenOrCreate, 
		fmTruncate, 
		fmAppend
	);

	TFileOptions = 
	(
		foNone, 
		foEncrypted, 
		foDeleteOnClose, 
		foSequentialScan, 
		foRandomAccess, 
		foAsynchronous, 
		foWriteThrough
	);
	TFileOptions_Set = Set of TFileOptions;

	TFileShare = 
	(
		fsNone, 
		fsRead, 
		fsWrite, 
		fsReadWrite, 
		fsDelete, 
		fsInheritable
	);
	TFileShare_Set = Set of TFileShare;

	TFloatComparisonMode = 
	(
		fcmOrderedEqualNonSignaling, 
		fcmOrderedLessThanSignaling, 
		fcmOrderedLessThanOrEqualSignaling, 
		fcmUnorderedNonSignaling, 
		fcmUnorderedNotEqualNonSignaling, 
		fcmUnorderedNotLessThanSignaling, 
		fcmUnorderedNotLessThanOrEqualSignaling, 
		fcmOrderedNonSignaling, 
		fcmUnorderedEqualNonSignaling, 
		fcmUnorderedNotGreaterThanOrEqualSignaling, 
		fcmUnorderedNotGreaterThanSignaling, 
		fcmOrderedFalseNonSignaling, 
		fcmOrderedNotEqualNonSignaling, 
		fcmOrderedGreaterThanOrEqualSignaling, 
		fcmOrderedGreaterThanSignaling, 
		fcmUnorderedTrueNonSignaling, 
		fcmOrderedEqualSignaling, 
		fcmOrderedLessThanNonSignaling, 
		fcmOrderedLessThanOrEqualNonSignaling, 
		fcmUnorderedSignaling, 
		fcmUnorderedNotEqualSignaling, 
		fcmUnorderedNotLessThanNonSignaling, 
		fcmUnorderedNotLessThanOrEqualNonSignaling, 
		fcmOrderedSignaling, 
		fcmUnorderedEqualSignaling, 
		fcmUnorderedNotGreaterThanOrEqualNonSignaling, 
		fcmUnorderedNotGreaterThanNonSignaling, 
		fcmOrderedFalseSignaling, 
		fcmOrderedNotEqualSignaling, 
		fcmOrderedGreaterThanOrEqualNonSignaling, 
		fcmOrderedGreaterThanNonSignaling, 
		fcmUnorderedTrueSignaling
	);

	TFlowControl = 
	(
		fcBranch, 
		fcBreak, 
		fcCall, 
		fcCond_Branch, 
		fcMeta, 
		fcNext, 
		fcPhi, 
		fcReturn, 
		fcThrow
	);

	TFUNCFLAGS = 
	(
		funcflagsFUNCFLAG_FRESTRICTED, 
		funcflagsFUNCFLAG_FSOURCE, 
		funcflagsFUNCFLAG_FBINDABLE, 
		funcflagsFUNCFLAG_FREQUESTEDIT, 
		funcflagsFUNCFLAG_FDISPLAYBIND, 
		funcflagsFUNCFLAG_FDEFAULTBIND, 
		funcflagsFUNCFLAG_FHIDDEN, 
		funcflagsFUNCFLAG_FUSESGETLASTERROR, 
		funcflagsFUNCFLAG_FDEFAULTCOLLELEM, 
		funcflagsFUNCFLAG_FUIDEFAULT, 
		funcflagsFUNCFLAG_FNONBROWSABLE, 
		funcflagsFUNCFLAG_FREPLACEABLE, 
		funcflagsFUNCFLAG_FIMMEDIATEBIND
	);
	TFUNCFLAGS_Set = Set of TFUNCFLAGS;

	TFUNCKIND = 
	(
		funckindFUNC_VIRTUAL, 
		funckindFUNC_PUREVIRTUAL, 
		funckindFUNC_NONVIRTUAL, 
		funckindFUNC_STATIC, 
		funckindFUNC_DISPATCH
	);

	TGCCollectionMode = 
	(
		gccmDefault, 
		gccmForced, 
		gccmOptimized
	);

	TGCHandleType = 
	(
		gchtWeak, 
		gchtWeakTrackResurrection, 
		gchtNormal, 
		gchtPinned
	);

	TGCKind = 
	(
		gckAny, 
		gckEphemeral, 
		gckFullBlocking, 
		gckBackground
	);

	TGCLargeObjectHeapCompactionMode = 
	(
		gclohcmDefault, 
		gclohcmCompactOnce
	);

	TGCLatencyMode = 
	(
		gclmBatch, 
		gclmInteractive, 
		gclmLowLatency, 
		gclmSustainedLowLatency, 
		gclmNoGCRegion
	);

	TGCNotificationStatus = 
	(
		gcnsSucceeded, 
		gcnsFailed, 
		gcnsCanceled, 
		gcnsTimeout, 
		gcnsNotApplicable
	);

	TGenericParameterAttributes = 
	(
		gpaNone, 
		gpaCovariant, 
		gpaContravariant, 
		gpaVarianceMask, 
		gpaReferenceTypeConstraint, 
		gpaNotNullableValueTypeConstraint, 
		gpaDefaultConstructorConstraint, 
		gpaSpecialConstraintMask
	);
	TGenericParameterAttributes_Set = Set of TGenericParameterAttributes;

	TGregorianCalendarTypes = 
	(
		gctLocalized, 
		gctUSEnglish, 
		gctMiddleEastFrench, 
		gctArabic, 
		gctTransliteratedEnglish, 
		gctTransliteratedFrench
	);

	THandleInheritability = 
	(
		hiNone, 
		hiInheritable
	);

	TIDLFLAG = 
	(
		idlflagIDLFLAG_NONE, 
		idlflagIDLFLAG_FIN, 
		idlflagIDLFLAG_FOUT, 
		idlflagIDLFLAG_FLCID, 
		idlflagIDLFLAG_FRETVAL
	);
	TIDLFLAG_Set = Set of TIDLFLAG;

	TImageFileMachine = 
	(
		ifmI386, 
		ifmARM, 
		ifmIA64, 
		ifmAMD64
	);

	TIMPLTYPEFLAGS = 
	(
		impltypeflagsIMPLTYPEFLAG_FDEFAULT, 
		impltypeflagsIMPLTYPEFLAG_FSOURCE, 
		impltypeflagsIMPLTYPEFLAG_FRESTRICTED, 
		impltypeflagsIMPLTYPEFLAG_FDEFAULTVTABLE
	);
	TIMPLTYPEFLAGS_Set = Set of TIMPLTYPEFLAGS;

	TINVOKEKIND = 
	(
		invokekindINVOKE_FUNC, 
		invokekindINVOKE_PROPERTYGET, 
		invokekindINVOKE_PROPERTYPUT, 
		invokekindINVOKE_PROPERTYPUTREF
	);
	TINVOKEKIND_Set = Set of TINVOKEKIND;

	TLayoutKind = 
	(
		lkSequential, 
		lkExplicit, 
		lkAuto
	);

	TLazyThreadSafetyMode = 
	(
		ltsmNone, 
		ltsmPublicationOnly, 
		ltsmExecutionAndPublication
	);

	TLIBFLAGS = 
	(
		libflagsLIBFLAG_FRESTRICTED, 
		libflagsLIBFLAG_FCONTROL, 
		libflagsLIBFLAG_FHIDDEN, 
		libflagsLIBFLAG_FHASDISKIMAGE
	);
	TLIBFLAGS_Set = Set of TLIBFLAGS;

	TLoaderOptimization = 
	(
		loNotSpecified, 
		loSingleDomain, 
		loMultiDomain, 
		loMultiDomainHost, 
		loMultiDomainHost_0, 
		loDisallowBindings
	);

	TLoadHint = 
	(
		lhDefault, 
		lhAlways, 
		lhSometimes
	);

	TLockRecursionPolicy = 
	(
		lrpNoRecursion, 
		lrpSupportsRecursion
	);

	TMemberTypes = 
	(
		mtConstructor, 
		mtEvent, 
		mtField, 
		mtMethod, 
		mtProperty, 
		mtTypeInfo, 
		mtCustom, 
		mtNestedType, 
		mtAll_0
	);
	TMemberTypes_Set = Set of TMemberTypes;

	TMethodAttributes = 
	(
		maReuseSlot, 
		maReuseSlot_0, 
		maPrivate, 
		maFamANDAssem, 
		maAssembly, 
		maFamily, 
		maFamORAssem, 
		maPublic, 
		maMemberAccessMask, 
		maUnmanagedExport, 
		maStatic, 
		maFinal, 
		maVirtual, 
		maHideBySig, 
		maVtableLayoutMask, 
		maVtableLayoutMask_0, 
		maCheckAccessOnOverride, 
		maAbstract, 
		maSpecialName, 
		maRTSpecialName, 
		maPinvokeImpl, 
		maHasSecurity, 
		maRequireSecObject, 
		maReservedMask
	);
	TMethodAttributes_Set = Set of TMethodAttributes;

	TMethodCodeType = 
	(
		mctIL, 
		mctNative, 
		mctOPTIL, 
		mctRuntime
	);

	TMethodImplAttributes = 
	(
		miaManaged, 
		miaManaged_0, 
		miaNative, 
		miaOPTIL, 
		miaCodeTypeMask, 
		miaCodeTypeMask_0, 
		miaUnmanaged, 
		miaUnmanaged_0, 
		miaNoInlining, 
		miaForwardRef, 
		miaSynchronized, 
		miaNoOptimization, 
		miaPreserveSig, 
		miaAggressiveInlining, 
		miaAggressiveOptimization, 
		miaInternalCall, 
		miaMaxMethodImplVal
	);

	TMethodImplOptions = 
	(
		mioUnmanaged, 
		mioNoInlining, 
		mioForwardRef, 
		mioSynchronized, 
		mioNoOptimization, 
		mioPreserveSig, 
		mioAggressiveInlining, 
		mioAggressiveOptimization, 
		mioInternalCall
	);
	TMethodImplOptions_Set = Set of TMethodImplOptions;

	TMidpointRounding = 
	(
		mrToEven, 
		mrAwayFromZero, 
		mrToZero, 
		mrToNegativeInfinity, 
		mrToPositiveInfinity
	);

	TNormalizationForm = 
	(
		nfFormC, 
		nfFormD, 
		nfFormKC, 
		nfFormKD
	);

	TNumberStyles = 
	(
		nsNone, 
		nsAllowLeadingWhite, 
		nsAllowTrailingWhite, 
		nsAllowLeadingSign, 
		nsInteger, 
		nsAllowTrailingSign, 
		nsAllowParentheses, 
		nsAllowDecimalPoint, 
		nsAllowThousands, 
		nsNumber, 
		nsAllowExponent, 
		nsFloat, 
		nsAllowCurrencySymbol, 
		nsCurrency, 
		nsAny, 
		nsAllowHexSpecifier, 
		nsHexNumber
	);
	TNumberStyles_Set = Set of TNumberStyles;

	TOpCodeType = 
	(
		octAnnotation, 
		octMacro, 
		octNternal, 
		octObjmodel, 
		octPrefix, 
		octPrimitive
	);

	TOperandType = 
	(
		otInlineBrTarget, 
		otInlineField, 
		otInlineI, 
		otInlineI8, 
		otInlineMethod, 
		otInlineNone, 
		otInlinePhi, 
		otInlineR, 
		otInlineSig, 
		otInlineString, 
		otInlineSwitch, 
		otInlineTok, 
		otInlineType, 
		otInlineVar, 
		otShortInlineBrTarget, 
		otShortInlineI, 
		otShortInlineR, 
		otShortInlineVar
	);

	TOperationStatus = 
	(
		osDone, 
		osDestinationTooSmall, 
		osNeedMoreData, 
		osInvalidData
	);

	TPackingSize = 
	(
		psUnspecified, 
		psSize1, 
		psSize2, 
		psSize4, 
		psSize8, 
		psSize16, 
		psSize32, 
		psSize64, 
		psSize128
	);

	TParameterAttributes = 
	(
		paNone_0, 
		paIn, 
		paOut, 
		paLcid, 
		paRetval, 
		paOptional, 
		paHasDefault, 
		paHasFieldMarshal, 
		paReserved3, 
		paReserved4, 
		paReservedMask
	);
	TParameterAttributes_Set = Set of TParameterAttributes;

	TPARAMFLAG = 
	(
		paramflagPARAMFLAG_NONE, 
		paramflagPARAMFLAG_FIN, 
		paramflagPARAMFLAG_FOUT, 
		paramflagPARAMFLAG_FLCID, 
		paramflagPARAMFLAG_FRETVAL, 
		paramflagPARAMFLAG_FOPT, 
		paramflagPARAMFLAG_FHASDEFAULT, 
		paramflagPARAMFLAG_FHASCUSTDATA
	);
	TPARAMFLAG_Set = Set of TPARAMFLAG;

	TPartialTrustVisibilityLevel = 
	(
		ptvlVisibleToAllHosts, 
		ptvlNotVisibleByDefault
	);

	TPEFileKinds = 
	(
		pefkDll, 
		pefkConsoleApplication, 
		pefkWindowApplication
	);

	TPermissionState = 
	(
		psNone, 
		psUnrestricted
	);

	TPlatformID = 
	(
		pidWin32S, 
		pidWin32Windows, 
		pidWin32NT, 
		pidWinCE, 
		pidUnix, 
		pidXbox, 
		pidMacOSX, 
		pidOther
	);

	TPortableExecutableKinds = 
	(
		pekNotAPortableExecutableImage, 
		pekILOnly, 
		pekRequired32Bit, 
		pekPE32Plus, 
		pekUnmanaged32Bit, 
		pekPreferred32Bit
	);
	TPortableExecutableKinds_Set = Set of TPortableExecutableKinds;

	TPrincipalPolicy = 
	(
		ppUnauthenticatedPrincipal, 
		ppNoPrincipal, 
		ppWindowsPrincipal
	);

	TProcessorArchitecture = 
	(
		paNone, 
		paMSIL, 
		paX86, 
		paIA64, 
		paAmd64, 
		paArm
	);

	TPropertyAttributes = 
	(
		paPropertyAttributes_3None, 
		paSpecialName, 
		paRTSpecialName, 
		paPropertyAttributes_1HasDefault, 
		paReserved2, 
		paPropertyAttributes_1Reserved3, 
		paPropertyAttributes_1Reserved4, 
		paPropertyAttributes_1ReservedMask
	);
	TPropertyAttributes_Set = Set of TPropertyAttributes;

	TResourceAttributes = 
	(
		raPublic, 
		raPrivate
	);
	TResourceAttributes_Set = Set of TResourceAttributes;

	TResourceLocation = 
	(
		rlEmbedded, 
		rlContainedInAnotherAssembly, 
		rlContainedInManifestFile
	);
	TResourceLocation_Set = Set of TResourceLocation;

	TResourceScope = 
	(
		rsNone, 
		rsMachine, 
		rsProcess, 
		rsAppDomain, 
		rsLibrary, 
		rsPrivate, 
		rsAssembly
	);
	TResourceScope_Set = Set of TResourceScope;

	TSecurityAction = 
	(
		saDemand, 
		saAssert, 
		saDeny, 
		saPermitOnly, 
		saLinkDemand, 
		saInheritanceDemand, 
		saRequestMinimum, 
		saRequestOptional, 
		saRequestRefuse
	);

	TSecurityCriticalScope = 
	(
		scsExplicit, 
		scsEverything
	);

	TSecurityPermissionFlag = 
	(
		spfNoFlags, 
		spfAssertion, 
		spfUnmanagedCode, 
		spfSkipVerification, 
		spfExecution, 
		spfControlThread, 
		spfControlEvidence, 
		spfControlPolicy, 
		spfSerializationFormatter, 
		spfControlDomainPolicy, 
		spfControlPrincipal, 
		spfControlAppDomain, 
		spfRemotingConfiguration, 
		spfInfrastructure, 
		spfBindingRedirects, 
		spfAllFlags
	);
	TSecurityPermissionFlag_Set = Set of TSecurityPermissionFlag;

	TSecurityRuleSet = 
	(
		srsNone, 
		srsLevel1, 
		srsLevel2
	);

	TSeekOrigin = 
	(
		soBegin, 
		soCurrent, 
		soEnd
	);

	TSpecialFolder = 
	(
		sfDesktop, 
		sfPrograms, 
		sfMyDocuments, 
		sfMyDocuments_0, 
		sfFavorites, 
		sfStartup, 
		sfRecent, 
		sfSendTo, 
		sfStartMenu, 
		sfMyMusic, 
		sfMyVideos, 
		sfDesktopDirectory, 
		sfMyComputer, 
		sfNetworkShortcuts, 
		sfFonts, 
		sfTemplates, 
		sfCommonStartMenu, 
		sfCommonPrograms, 
		sfCommonStartup, 
		sfCommonDesktopDirectory, 
		sfApplicationData, 
		sfPrinterShortcuts, 
		sfLocalApplicationData, 
		sfInternetCache, 
		sfCookies, 
		sfHistory, 
		sfCommonApplicationData, 
		sfWindows, 
		sfSystem, 
		sfProgramFiles, 
		sfMyPictures, 
		sfUserProfile, 
		sfSystemX86, 
		sfProgramFilesX86, 
		sfCommonProgramFiles, 
		sfCommonProgramFilesX86, 
		sfCommonTemplates, 
		sfCommonDocuments, 
		sfCommonAdminTools, 
		sfAdminTools, 
		sfCommonMusic, 
		sfCommonPictures, 
		sfCommonVideos, 
		sfResources, 
		sfLocalizedResources, 
		sfCommonOemLinks, 
		sfCDBurning
	);

	TSpecialFolderOption = 
	(
		sfoNone, 
		sfoDoNotVerify, 
		sfoCreate
	);

	TStackBehaviour = 
	(
		sbPop0, 
		sbPop1, 
		sbPop1_pop1, 
		sbPopi, 
		sbPopi_pop1, 
		sbPopi_popi, 
		sbPopi_popi8, 
		sbPopi_popi_popi, 
		sbPopi_popr4, 
		sbPopi_popr8, 
		sbPopref, 
		sbPopref_pop1, 
		sbPopref_popi, 
		sbPopref_popi_popi, 
		sbPopref_popi_popi8, 
		sbPopref_popi_popr4, 
		sbPopref_popi_popr8, 
		sbPopref_popi_popref, 
		sbPush0, 
		sbPush1, 
		sbPush1_push1, 
		sbPushi, 
		sbPushi8, 
		sbPushr4, 
		sbPushr8, 
		sbPushref, 
		sbVarpop, 
		sbVarpush, 
		sbPopref_popi_pop1
	);

	TStreamingContextStates = 
	(
		scsCrossProcess, 
		scsCrossMachine, 
		scsFile, 
		scsPersistence, 
		scsRemoting, 
		scsOther, 
		scsClone, 
		scsCrossAppDomain, 
		scsAll
	);
	TStreamingContextStates_Set = Set of TStreamingContextStates;

	TStringComparison = 
	(
		scCurrentCulture, 
		scCurrentCultureIgnoreCase, 
		scInvariantCulture, 
		scInvariantCultureIgnoreCase, 
		scOrdinal, 
		scOrdinalIgnoreCase
	);

	TStringSplitOptions = 
	(
		ssoNone, 
		ssoRemoveEmptyEntries, 
		ssoTrimEntries
	);
	TStringSplitOptions_Set = Set of TStringSplitOptions;

	TSYSKIND = 
	(
		syskindSYS_WIN16, 
		syskindSYS_WIN32, 
		syskindSYS_MAC, 
		syskindSYS_WIN64
	);

	TTaskContinuationOptions = 
	(
		tcoNone, 
		tcoPreferFairness, 
		tcoLongRunning, 
		tcoAttachedToParent, 
		tcoDenyChildAttach, 
		tcoHideScheduler, 
		tcoLazyCancellation, 
		tcoRunContinuationsAsynchronously, 
		tcoNotOnRanToCompletion, 
		tcoNotOnFaulted, 
		tcoOnlyOnCanceled, 
		tcoNotOnCanceled, 
		tcoOnlyOnFaulted, 
		tcoOnlyOnRanToCompletion, 
		tcoExecuteSynchronously
	);
	TTaskContinuationOptions_Set = Set of TTaskContinuationOptions;

	TTaskCreationOptions = 
	(
		tcoTaskCreationOptions_1None, 
		tcoTaskCreationOptions_1PreferFairness, 
		tcoTaskCreationOptions_1LongRunning, 
		tcoTaskCreationOptions_1AttachedToParent, 
		tcoTaskCreationOptions_1DenyChildAttach, 
		tcoTaskCreationOptions_1HideScheduler, 
		tcoTaskCreationOptions_1RunContinuationsAsynchronously
	);
	TTaskCreationOptions_Set = Set of TTaskCreationOptions;

	TTaskStatus = 
	(
		tsCreated, 
		tsWaitingForActivation, 
		tsWaitingToRun, 
		tsRunning, 
		tsWaitingForChildrenToComplete, 
		tsRanToCompletion, 
		tsCanceled, 
		tsFaulted
	);

	TThreadPriority = 
	(
		tpLowest, 
		tpBelowNormal, 
		tpNormal, 
		tpAboveNormal, 
		tpHighest
	);

	TThreadState = 
	(
		tsThreadState_1Running, 
		tsStopRequested, 
		tsSuspendRequested, 
		tsBackground, 
		tsUnstarted, 
		tsStopped, 
		tsWaitSleepJoin, 
		tsSuspended, 
		tsAbortRequested, 
		tsAborted
	);
	TThreadState_Set = Set of TThreadState;

	TTimeSpanStyles = 
	(
		tssNone, 
		tssAssumeNegative
	);
	TTimeSpanStyles_Set = Set of TTimeSpanStyles;

	TTokenImpersonationLevel = 
	(
		tilNone, 
		tilAnonymous, 
		tilIdentification, 
		tilImpersonation, 
		tilDelegation
	);

	TTypeAttributes = 
	(
		taNotPublic, 
		taNotPublic_0, 
		taNotPublic_1, 
		taNotPublic_2, 
		taPublic, 
		taNestedPublic, 
		taNestedPrivate, 
		taNestedFamily, 
		taNestedAssembly, 
		taNestedFamANDAssem, 
		taVisibilityMask, 
		taVisibilityMask_0, 
		taSequentialLayout, 
		taExplicitLayout, 
		taLayoutMask, 
		taClassSemanticsMask, 
		taClassSemanticsMask_0, 
		taAbstract, 
		taSealed, 
		taSpecialName, 
		taRTSpecialName, 
		taImport, 
		taSerializable, 
		taWindowsRuntime, 
		taUnicodeClass, 
		taAutoClass, 
		taStringFormatMask, 
		taStringFormatMask_0, 
		taHasSecurity, 
		taReservedMask, 
		taBeforeFieldInit, 
		taCustomFormatMask
	);
	TTypeAttributes_Set = Set of TTypeAttributes;

	TTypeCode = 
	(
		tcEmpty, 
		tcObject, 
		tcDBNull, 
		tcBoolean, 
		tcChar, 
		tcSByte, 
		tcByte, 
		tcInt16, 
		tcUInt16, 
		tcInt32, 
		tcUInt32, 
		tcInt64, 
		tcUInt64, 
		tcSingle, 
		tcDouble, 
		tcDecimal, 
		tcDateTime, 
		tcString
	);

	TTYPEFLAGS = 
	(
		typeflagsTYPEFLAG_FAPPOBJECT, 
		typeflagsTYPEFLAG_FCANCREATE, 
		typeflagsTYPEFLAG_FLICENSED, 
		typeflagsTYPEFLAG_FPREDECLID, 
		typeflagsTYPEFLAG_FHIDDEN, 
		typeflagsTYPEFLAG_FCONTROL, 
		typeflagsTYPEFLAG_FDUAL, 
		typeflagsTYPEFLAG_FNONEXTENSIBLE, 
		typeflagsTYPEFLAG_FOLEAUTOMATION, 
		typeflagsTYPEFLAG_FRESTRICTED, 
		typeflagsTYPEFLAG_FAGGREGATABLE, 
		typeflagsTYPEFLAG_FREPLACEABLE, 
		typeflagsTYPEFLAG_FDISPATCHABLE, 
		typeflagsTYPEFLAG_FREVERSEBIND, 
		typeflagsTYPEFLAG_FPROXY
	);
	TTYPEFLAGS_Set = Set of TTYPEFLAGS;

	TTYPEKIND = 
	(
		typekindTKIND_ENUM, 
		typekindTKIND_RECORD, 
		typekindTKIND_MODULE, 
		typekindTKIND_INTERFACE, 
		typekindTKIND_DISPATCH, 
		typekindTKIND_COCLASS, 
		typekindTKIND_ALIAS, 
		typekindTKIND_UNION, 
		typekindTKIND_MAX
	);

	TUltimateResourceFallbackLocation = 
	(
		urflMainAssembly, 
		urflSatellite
	);

	TUnicodeCategory = 
	(
		ucUppercaseLetter, 
		ucLowercaseLetter, 
		ucTitlecaseLetter, 
		ucModifierLetter, 
		ucOtherLetter, 
		ucNonSpacingMark, 
		ucSpacingCombiningMark, 
		ucEnclosingMark, 
		ucDecimalDigitNumber, 
		ucLetterNumber, 
		ucOtherNumber, 
		ucSpaceSeparator, 
		ucLineSeparator, 
		ucParagraphSeparator, 
		ucControl, 
		ucFormat, 
		ucSurrogate, 
		ucPrivateUse, 
		ucConnectorPunctuation, 
		ucDashPunctuation, 
		ucOpenPunctuation, 
		ucClosePunctuation, 
		ucInitialQuotePunctuation, 
		ucFinalQuotePunctuation, 
		ucOtherPunctuation, 
		ucMathSymbol, 
		ucCurrencySymbol, 
		ucModifierSymbol, 
		ucOtherSymbol, 
		ucOtherNotAssigned
	);

	TUnmanagedType = 
	(
		utBool, 
		utI1, 
		utU1, 
		utI2, 
		utU2, 
		utI4, 
		utU4, 
		utI8, 
		utU8, 
		utR4, 
		utR8, 
		utCurrency, 
		utBStr, 
		utLPStr, 
		utLPWStr, 
		utLPTStr, 
		utByValTStr, 
		utIUnknown, 
		utIDispatch, 
		utStruct, 
		utInterface, 
		utSafeArray, 
		utByValArray, 
		utSysInt, 
		utSysUInt, 
		utVBByRefStr, 
		utAnsiBStr, 
		utTBStr, 
		utVariantBool, 
		utFunctionPtr, 
		utAsAny, 
		utLPArray, 
		utLPStruct, 
		utCustomMarshaler, 
		utError, 
		utIInspectable, 
		utHString, 
		utLPUTF8Str
	);

	TValueTaskSourceOnCompletedFlags = 
	(
		vtsocfNone, 
		vtsocfUseSchedulingContext, 
		vtsocfFlowExecutionContext
	);
	TValueTaskSourceOnCompletedFlags_Set = Set of TValueTaskSourceOnCompletedFlags;

	TValueTaskSourceStatus = 
	(
		vtssPending, 
		vtssSucceeded, 
		vtssFaulted, 
		vtssCanceled
	);

	TVarEnum = 
	(
		veVT_EMPTY, 
		veVT_NULL, 
		veVT_I2, 
		veVT_I4, 
		veVT_R4, 
		veVT_R8, 
		veVT_CY, 
		veVT_DATE, 
		veVT_BSTR, 
		veVT_DISPATCH, 
		veVT_ERROR, 
		veVT_BOOL, 
		veVT_VARIANT, 
		veVT_UNKNOWN, 
		veVT_DECIMAL, 
		veVT_I1, 
		veVT_UI1, 
		veVT_UI2, 
		veVT_UI4, 
		veVT_I8, 
		veVT_UI8, 
		veVT_INT, 
		veVT_UINT, 
		veVT_VOID, 
		veVT_HRESULT, 
		veVT_PTR, 
		veVT_SAFEARRAY, 
		veVT_CARRAY, 
		veVT_USERDEFINED, 
		veVT_LPSTR, 
		veVT_LPWSTR, 
		veVT_RECORD, 
		veVT_FILETIME, 
		veVT_BLOB, 
		veVT_STREAM, 
		veVT_STORAGE, 
		veVT_STREAMED_OBJECT, 
		veVT_STORED_OBJECT, 
		veVT_BLOB_OBJECT, 
		veVT_CF, 
		veVT_CLSID, 
		veVT_VECTOR, 
		veVT_ARRAY, 
		veVT_BYREF
	);

	TVARFLAGS = 
	(
		varflagsVARFLAG_FREADONLY, 
		varflagsVARFLAG_FSOURCE, 
		varflagsVARFLAG_FBINDABLE, 
		varflagsVARFLAG_FREQUESTEDIT, 
		varflagsVARFLAG_FDISPLAYBIND, 
		varflagsVARFLAG_FDEFAULTBIND, 
		varflagsVARFLAG_FHIDDEN, 
		varflagsVARFLAG_FRESTRICTED, 
		varflagsVARFLAG_FDEFAULTCOLLELEM, 
		varflagsVARFLAG_FUIDEFAULT, 
		varflagsVARFLAG_FNONBROWSABLE, 
		varflagsVARFLAG_FREPLACEABLE, 
		varflagsVARFLAG_FIMMEDIATEBIND
	);
	TVARFLAGS_Set = Set of TVARFLAGS;

	TVARKIND = 
	(
		varkindVAR_PERINSTANCE, 
		varkindVAR_STATIC, 
		varkindVAR_CONST, 
		varkindVAR_DISPATCH
	);

const

	ApartmentStateValues: array[TApartmentState] of TNCEnum =
	(
		ApartmentState_STA, 
		ApartmentState_MTA, 
		ApartmentState_Unknown
	);

	AssemblyBuilderAccessValues: array[TAssemblyBuilderAccess] of TNCEnum =
	(
		AssemblyBuilderAccess_Run, 
		AssemblyBuilderAccess_RunAndCollect
	);

	AssemblyContentTypeValues: array[TAssemblyContentType] of TNCEnum =
	(
		AssemblyContentType_Default, 
		AssemblyContentType_WindowsRuntime
	);

	AssemblyHashAlgorithmValues: array[TAssemblyHashAlgorithm] of TNCEnum =
	(
		AssemblyHashAlgorithm_None, 
		AssemblyHashAlgorithm_MD5, 
		AssemblyHashAlgorithm_SHA1, 
		AssemblyHashAlgorithm_SHA256, 
		AssemblyHashAlgorithm_SHA384, 
		AssemblyHashAlgorithm_SHA512
	);

	AssemblyNameFlagsValues: array[TAssemblyNameFlags] of TNCEnum =
	(
		AssemblyNameFlags_None, 
		AssemblyNameFlags_PublicKey, 
		AssemblyNameFlags_Retargetable, 
		AssemblyNameFlags_EnableJITcompileOptimizer, 
		AssemblyNameFlags_EnableJITcompileTracking
	);

	AssemblyVersionCompatibilityValues: array[TAssemblyVersionCompatibility] of TNCEnum =
	(
		AssemblyVersionCompatibility_SameMachine, 
		AssemblyVersionCompatibility_SameProcess, 
		AssemblyVersionCompatibility_SameDomain
	);

	AttributeTargetsValues: array[TAttributeTargets] of TNCEnum =
	(
		AttributeTargets_Assembly, 
		AttributeTargets_Module, 
		AttributeTargets_Class, 
		AttributeTargets_Struct, 
		AttributeTargets_Enum, 
		AttributeTargets_Constructor, 
		AttributeTargets_Method, 
		AttributeTargets_Property, 
		AttributeTargets_Field, 
		AttributeTargets_Event, 
		AttributeTargets_Interface, 
		AttributeTargets_Parameter, 
		AttributeTargets_Delegate, 
		AttributeTargets_ReturnValue, 
		AttributeTargets_GenericParameter, 
		AttributeTargets_All
	);

	Base64FormattingOptionsValues: array[TBase64FormattingOptions] of TNCEnum =
	(
		Base64FormattingOptions_None, 
		Base64FormattingOptions_InsertLineBreaks
	);

	BindingFlagsValues: array[TBindingFlags] of TNCEnum =
	(
		BindingFlags_Default, 
		BindingFlags_IgnoreCase, 
		BindingFlags_DeclaredOnly, 
		BindingFlags_Instance, 
		BindingFlags_Static, 
		BindingFlags_Public, 
		BindingFlags_NonPublic, 
		BindingFlags_FlattenHierarchy, 
		BindingFlags_InvokeMethod, 
		BindingFlags_CreateInstance, 
		BindingFlags_GetField, 
		BindingFlags_SetField, 
		BindingFlags_GetProperty, 
		BindingFlags_SetProperty, 
		BindingFlags_PutDispProperty, 
		BindingFlags_PutRefDispProperty, 
		BindingFlags_ExactBinding, 
		BindingFlags_SuppressChangeType, 
		BindingFlags_OptionalParamBinding, 
		BindingFlags_IgnoreReturn, 
		BindingFlags_DoNotWrapExceptions
	);

	CalendarAlgorithmTypeValues: array[TCalendarAlgorithmType] of TNCEnum =
	(
		CalendarAlgorithmType_Unknown, 
		CalendarAlgorithmType_SolarCalendar, 
		CalendarAlgorithmType_LunarCalendar, 
		CalendarAlgorithmType_LunisolarCalendar
	);

	CalendarWeekRuleValues: array[TCalendarWeekRule] of TNCEnum =
	(
		CalendarWeekRule_FirstDay, 
		CalendarWeekRule_FirstFullWeek, 
		CalendarWeekRule_FirstFourDayWeek
	);

	CALLCONVValues: array[TCALLCONV] of TNCEnum =
	(
		CALLCONV_CC_CDECL, 
		CALLCONV_CC_MSCPASCAL, 
		CALLCONV_CC_MSCPASCAL_0, 
		CALLCONV_CC_MACPASCAL, 
		CALLCONV_CC_STDCALL, 
		CALLCONV_CC_RESERVED, 
		CALLCONV_CC_SYSCALL, 
		CALLCONV_CC_MPWCDECL, 
		CALLCONV_CC_MPWPASCAL, 
		CALLCONV_CC_MAX
	);

	CallingConventionValues: array[TCallingConvention] of TNCEnum =
	(
		CallingConvention_Winapi, 
		CallingConvention_Cdecl, 
		CallingConvention_StdCall, 
		CallingConvention_ThisCall, 
		CallingConvention_FastCall
	);

	CallingConventionsValues: array[TCallingConventions] of TNCEnum =
	(
		CallingConventions_Standard, 
		CallingConventions_VarArgs, 
		CallingConventions_Any, 
		CallingConventions_HasThis, 
		CallingConventions_ExplicitThis
	);

	CerValues: array[TCer] of TNCEnum =
	(
		Cer_None, 
		Cer_MayFail, 
		Cer_Success
	);

	CharSetValues: array[TCharSet] of TNCEnum =
	(
		CharSet_None, 
		CharSet_Ansi, 
		CharSet_Unicode, 
		CharSet_Auto
	);

	ClassInterfaceTypeValues: array[TClassInterfaceType] of TNCEnum =
	(
		ClassInterfaceType_None, 
		ClassInterfaceType_AutoDispatch, 
		ClassInterfaceType_AutoDual
	);

	ComInterfaceTypeValues: array[TComInterfaceType] of TNCEnum =
	(
		ComInterfaceType_InterfaceIsDual, 
		ComInterfaceType_InterfaceIsIUnknown, 
		ComInterfaceType_InterfaceIsIDispatch, 
		ComInterfaceType_InterfaceIsIInspectable
	);

	ComMemberTypeValues: array[TComMemberType] of TNCEnum =
	(
		ComMemberType_Method, 
		ComMemberType_PropGet, 
		ComMemberType_PropSet
	);

	CompareOptionsValues: array[TCompareOptions] of TNCEnum =
	(
		CompareOptions_None, 
		CompareOptions_IgnoreCase, 
		CompareOptions_IgnoreNonSpace, 
		CompareOptions_IgnoreSymbols, 
		CompareOptions_IgnoreKanaType, 
		CompareOptions_IgnoreWidth, 
		CompareOptions_OrdinalIgnoreCase, 
		CompareOptions_StringSort, 
		CompareOptions_Ordinal_0
	);

	CompilationRelaxationsValues: array[TCompilationRelaxations] of TNCEnum =
	(
		CompilationRelaxations_NoStringInterning
	);

	ComponentGuaranteesOptionsValues: array[TComponentGuaranteesOptions] of TNCEnum =
	(
		ComponentGuaranteesOptions_None, 
		ComponentGuaranteesOptions_Exchange, 
		ComponentGuaranteesOptions_Stable, 
		ComponentGuaranteesOptions_SideBySide
	);

	ConsistencyValues: array[TConsistency] of TNCEnum =
	(
		Consistency_MayCorruptProcess, 
		Consistency_MayCorruptAppDomain, 
		Consistency_MayCorruptInstance, 
		Consistency_WillNotCorruptState
	);

	ContractFailureKindValues: array[TContractFailureKind] of TNCEnum =
	(
		ContractFailureKind_Precondition, 
		ContractFailureKind_Postcondition, 
		ContractFailureKind_PostconditionOnException, 
		ContractFailureKind_Invariant, 
		ContractFailureKind_Assert, 
		ContractFailureKind_Assume
	);

	CreateComInterfaceFlagsValues: array[TCreateComInterfaceFlags] of TNCEnum =
	(
		CreateComInterfaceFlags_None, 
		CreateComInterfaceFlags_CallerDefinedIUnknown, 
		CreateComInterfaceFlags_TrackerSupport
	);

	CreateObjectFlagsValues: array[TCreateObjectFlags] of TNCEnum =
	(
		CreateObjectFlags_None, 
		CreateObjectFlags_TrackerObject, 
		CreateObjectFlags_UniqueInstance
	);

	CultureTypesValues: array[TCultureTypes] of TNCEnum =
	(
		CultureTypes_NeutralCultures, 
		CultureTypes_SpecificCultures, 
		CultureTypes_InstalledWin32Cultures, 
		CultureTypes_AllCultures, 
		CultureTypes_UserCustomCulture, 
		CultureTypes_ReplacementCultures, 
		CultureTypes_WindowsOnlyCultures, 
		CultureTypes_FrameworkCultures
	);

	CustomQueryInterfaceModeValues: array[TCustomQueryInterfaceMode] of TNCEnum =
	(
		CustomQueryInterfaceMode_Ignore, 
		CustomQueryInterfaceMode_Allow
	);

	CustomQueryInterfaceResultValues: array[TCustomQueryInterfaceResult] of TNCEnum =
	(
		CustomQueryInterfaceResult_Handled, 
		CustomQueryInterfaceResult_NotHandled, 
		CustomQueryInterfaceResult_Failed
	);

	DateTimeKindValues: array[TDateTimeKind] of TNCEnum =
	(
		DateTimeKind_Unspecified, 
		DateTimeKind_Utc, 
		DateTimeKind_Local
	);

	DateTimeStylesValues: array[TDateTimeStyles] of TNCEnum =
	(
		DateTimeStyles_None, 
		DateTimeStyles_AllowLeadingWhite, 
		DateTimeStyles_AllowTrailingWhite, 
		DateTimeStyles_AllowInnerWhite, 
		DateTimeStyles_AllowWhiteSpaces, 
		DateTimeStyles_NoCurrentDateDefault, 
		DateTimeStyles_AdjustToUniversal, 
		DateTimeStyles_AssumeLocal, 
		DateTimeStyles_AssumeUniversal, 
		DateTimeStyles_RoundtripKind
	);

	DayOfWeekValues: array[TDayOfWeek] of TNCEnum =
	(
		DayOfWeek_Sunday, 
		DayOfWeek_Monday, 
		DayOfWeek_Tuesday, 
		DayOfWeek_Wednesday, 
		DayOfWeek_Thursday, 
		DayOfWeek_Friday, 
		DayOfWeek_Saturday
	);

	DebuggerBrowsableStateValues: array[TDebuggerBrowsableState] of TNCEnum =
	(
		DebuggerBrowsableState_Never, 
		DebuggerBrowsableState_Collapsed, 
		DebuggerBrowsableState_RootHidden
	);

	DebuggingModesValues: array[TDebuggingModes] of TNCEnum =
	(
		DebuggingModes_None, 
		DebuggingModes_Default, 
		DebuggingModes_IgnoreSymbolStoreSequencePoints, 
		DebuggingModes_EnableEditAndContinue, 
		DebuggingModes_DisableOptimizations
	);

	DESCKINDValues: array[TDESCKIND] of TNCEnum =
	(
		DESCKIND_DESCKIND_NONE, 
		DESCKIND_DESCKIND_FUNCDESC, 
		DESCKIND_DESCKIND_VARDESC, 
		DESCKIND_DESCKIND_TYPECOMP, 
		DESCKIND_DESCKIND_IMPLICITAPPOBJ, 
		DESCKIND_DESCKIND_MAX
	);

	DigitShapesValues: array[TDigitShapes] of TNCEnum =
	(
		DigitShapes_Context, 
		DigitShapes_None, 
		DigitShapes_NativeNational
	);

	DllImportSearchPathValues: array[TDllImportSearchPath] of TNCEnum =
	(
		DllImportSearchPath_LegacyBehavior, 
		DllImportSearchPath_AssemblyDirectory, 
		DllImportSearchPath_UseDllDirectoryForDependencies, 
		DllImportSearchPath_ApplicationDirectory, 
		DllImportSearchPath_UserDirectories, 
		DllImportSearchPath_System32, 
		DllImportSearchPath_SafeDirectories
	);

	DynamicallyAccessedMemberTypesValues: array[TDynamicallyAccessedMemberTypes] of TNCEnum =
	(
		DynamicallyAccessedMemberTypes_None, 
		DynamicallyAccessedMemberTypes_PublicParameterlessConstructor, 
		DynamicallyAccessedMemberTypes_PublicConstructors, 
		DynamicallyAccessedMemberTypes_NonPublicConstructors, 
		DynamicallyAccessedMemberTypes_PublicMethods, 
		DynamicallyAccessedMemberTypes_NonPublicMethods, 
		DynamicallyAccessedMemberTypes_PublicFields, 
		DynamicallyAccessedMemberTypes_NonPublicFields, 
		DynamicallyAccessedMemberTypes_PublicNestedTypes, 
		DynamicallyAccessedMemberTypes_NonPublicNestedTypes, 
		DynamicallyAccessedMemberTypes_PublicProperties, 
		DynamicallyAccessedMemberTypes_NonPublicProperties, 
		DynamicallyAccessedMemberTypes_PublicEvents, 
		DynamicallyAccessedMemberTypes_NonPublicEvents, 
		DynamicallyAccessedMemberTypes_All
	);

	EditorBrowsableStateValues: array[TEditorBrowsableState] of TNCEnum =
	(
		EditorBrowsableState_Always, 
		EditorBrowsableState_Never, 
		EditorBrowsableState_Advanced
	);

	EnvironmentVariableTargetValues: array[TEnvironmentVariableTarget] of TNCEnum =
	(
		EnvironmentVariableTarget_Process, 
		EnvironmentVariableTarget_User, 
		EnvironmentVariableTarget_Machine
	);

	EventActivityOptionsValues: array[TEventActivityOptions] of TNCEnum =
	(
		EventActivityOptions_None, 
		EventActivityOptions_Disable, 
		EventActivityOptions_Recursive, 
		EventActivityOptions_Detachable
	);

	EventAttributesValues: array[TEventAttributes] of TNCEnum =
	(
		EventAttributes_None, 
		EventAttributes_SpecialName, 
		EventAttributes_ReservedMask, 
		EventAttributes_ReservedMask_0
	);

	EventChannelValues: array[TEventChannel] of TNCEnum =
	(
		EventChannel_None, 
		EventChannel_Admin, 
		EventChannel_Operational, 
		EventChannel_Analytic, 
		EventChannel_Debug
	);

	EventCommandValues: array[TEventCommand] of TNCEnum =
	(
		EventCommand_Update, 
		EventCommand_Disable, 
		EventCommand_Enable, 
		EventCommand_SendManifest
	);

	EventFieldFormatValues: array[TEventFieldFormat] of TNCEnum =
	(
		EventFieldFormat_Default, 
		EventFieldFormat_String, 
		EventFieldFormat_Boolean, 
		EventFieldFormat_Hexadecimal, 
		EventFieldFormat_Xml, 
		EventFieldFormat_Json, 
		EventFieldFormat_HResult
	);

	EventFieldTagsValues: array[TEventFieldTags] of TNCEnum =
	(
		EventFieldTags_None
	);

	EventKeywordsValues: array[TEventKeywords] of TNCEnum =
	(
		EventKeywords_None, 
		EventKeywords_WdiContext, 
		EventKeywords_WdiContext_0, 
		EventKeywords_WdiDiagnostic, 
		EventKeywords_Sqm, 
		EventKeywords_CorrelationHint, 
		EventKeywords_CorrelationHint_0, 
		EventKeywords_AuditSuccess, 
		EventKeywords_EventLogClassic, 
		EventKeywords_All
	);

	EventLevelValues: array[TEventLevel] of TNCEnum =
	(
		EventLevel_LogAlways, 
		EventLevel_Critical, 
		EventLevel_Error, 
		EventLevel_Warning, 
		EventLevel_Informational, 
		EventLevel_Verbose
	);

	EventManifestOptionsValues: array[TEventManifestOptions] of TNCEnum =
	(
		EventManifestOptions_None, 
		EventManifestOptions_Strict, 
		EventManifestOptions_AllCultures, 
		EventManifestOptions_OnlyIfNeededForRegistration, 
		EventManifestOptions_AllowEventSourceOverride
	);

	EventOpcodeValues: array[TEventOpcode] of TNCEnum =
	(
		EventOpcode_Info, 
		EventOpcode_Start, 
		EventOpcode_Stop, 
		EventOpcode_DataCollectionStart, 
		EventOpcode_DataCollectionStop, 
		EventOpcode_Extension, 
		EventOpcode_Reply, 
		EventOpcode_Resume, 
		EventOpcode_Suspend, 
		EventOpcode_Send, 
		EventOpcode_Receive
	);

	EventResetModeValues: array[TEventResetMode] of TNCEnum =
	(
		EventResetMode_AutoReset, 
		EventResetMode_ManualReset
	);

	EventSourceSettingsValues: array[TEventSourceSettings] of TNCEnum =
	(
		EventSourceSettings_Default, 
		EventSourceSettings_ThrowOnEventWriteErrors, 
		EventSourceSettings_EtwManifestEventFormat, 
		EventSourceSettings_EtwSelfDescribingEventFormat
	);

	EventTagsValues: array[TEventTags] of TNCEnum =
	(
		EventTags_None
	);

	EventTaskValues: array[TEventTask] of TNCEnum =
	(
		EventTask_None
	);

	ExceptionHandlingClauseOptionsValues: array[TExceptionHandlingClauseOptions] of TNCEnum =
	(
		ExceptionHandlingClauseOptions_Clause, 
		ExceptionHandlingClauseOptions_Filter, 
		ExceptionHandlingClauseOptions_Finally, 
		ExceptionHandlingClauseOptions_Fault
	);

	FieldAttributesValues: array[TFieldAttributes] of TNCEnum =
	(
		FieldAttributes_PrivateScope, 
		FieldAttributes_Private_0, 
		FieldAttributes_FamANDAssem, 
		FieldAttributes_Assembly, 
		FieldAttributes_Family, 
		FieldAttributes_FamORAssem, 
		FieldAttributes_Public, 
		FieldAttributes_FieldAccessMask, 
		FieldAttributes_Static, 
		FieldAttributes_InitOnly, 
		FieldAttributes_Literal, 
		FieldAttributes_NotSerialized, 
		FieldAttributes_HasFieldRVA, 
		FieldAttributes_SpecialName, 
		FieldAttributes_RTSpecialName, 
		FieldAttributes_HasFieldMarshal, 
		FieldAttributes_PinvokeImpl, 
		FieldAttributes_HasDefault, 
		FieldAttributes_ReservedMask
	);

	FileAccessValues: array[TFileAccess] of TNCEnum =
	(
		FileAccess_Read, 
		FileAccess_Write, 
		FileAccess_ReadWrite
	);

	FileAttributesValues: array[TFileAttributes] of TNCEnum =
	(
		FileAttributes_ReadOnly, 
		FileAttributes_Hidden, 
		FileAttributes_System, 
		FileAttributes_Directory, 
		FileAttributes_Archive, 
		FileAttributes_Device, 
		FileAttributes_Normal, 
		FileAttributes_Temporary, 
		FileAttributes_SparseFile, 
		FileAttributes_ReparsePoint, 
		FileAttributes_Compressed, 
		FileAttributes_Offline, 
		FileAttributes_NotContentIndexed, 
		FileAttributes_Encrypted, 
		FileAttributes_IntegrityStream, 
		FileAttributes_NoScrubData
	);

	FileModeValues: array[TFileMode] of TNCEnum =
	(
		FileMode_CreateNew, 
		FileMode_Create_0, 
		FileMode_Open, 
		FileMode_OpenOrCreate, 
		FileMode_Truncate, 
		FileMode_Append
	);

	FileOptionsValues: array[TFileOptions] of TNCEnum =
	(
		FileOptions_None, 
		FileOptions_Encrypted, 
		FileOptions_DeleteOnClose, 
		FileOptions_SequentialScan, 
		FileOptions_RandomAccess, 
		FileOptions_Asynchronous, 
		FileOptions_WriteThrough
	);

	FileShareValues: array[TFileShare] of TNCEnum =
	(
		FileShare_None, 
		FileShare_Read, 
		FileShare_Write, 
		FileShare_ReadWrite, 
		FileShare_Delete, 
		FileShare_Inheritable
	);

	FloatComparisonModeValues: array[TFloatComparisonMode] of TNCEnum =
	(
		FloatComparisonMode_OrderedEqualNonSignaling, 
		FloatComparisonMode_OrderedLessThanSignaling, 
		FloatComparisonMode_OrderedLessThanOrEqualSignaling, 
		FloatComparisonMode_UnorderedNonSignaling, 
		FloatComparisonMode_UnorderedNotEqualNonSignaling, 
		FloatComparisonMode_UnorderedNotLessThanSignaling, 
		FloatComparisonMode_UnorderedNotLessThanOrEqualSignaling, 
		FloatComparisonMode_OrderedNonSignaling, 
		FloatComparisonMode_UnorderedEqualNonSignaling, 
		FloatComparisonMode_UnorderedNotGreaterThanOrEqualSignaling, 
		FloatComparisonMode_UnorderedNotGreaterThanSignaling, 
		FloatComparisonMode_OrderedFalseNonSignaling, 
		FloatComparisonMode_OrderedNotEqualNonSignaling, 
		FloatComparisonMode_OrderedGreaterThanOrEqualSignaling, 
		FloatComparisonMode_OrderedGreaterThanSignaling, 
		FloatComparisonMode_UnorderedTrueNonSignaling, 
		FloatComparisonMode_OrderedEqualSignaling, 
		FloatComparisonMode_OrderedLessThanNonSignaling, 
		FloatComparisonMode_OrderedLessThanOrEqualNonSignaling, 
		FloatComparisonMode_UnorderedSignaling, 
		FloatComparisonMode_UnorderedNotEqualSignaling, 
		FloatComparisonMode_UnorderedNotLessThanNonSignaling, 
		FloatComparisonMode_UnorderedNotLessThanOrEqualNonSignaling, 
		FloatComparisonMode_OrderedSignaling, 
		FloatComparisonMode_UnorderedEqualSignaling, 
		FloatComparisonMode_UnorderedNotGreaterThanOrEqualNonSignaling, 
		FloatComparisonMode_UnorderedNotGreaterThanNonSignaling, 
		FloatComparisonMode_OrderedFalseSignaling, 
		FloatComparisonMode_OrderedNotEqualSignaling, 
		FloatComparisonMode_OrderedGreaterThanOrEqualNonSignaling, 
		FloatComparisonMode_OrderedGreaterThanNonSignaling, 
		FloatComparisonMode_UnorderedTrueSignaling
	);

	FlowControlValues: array[TFlowControl] of TNCEnum =
	(
		FlowControl_Branch, 
		FlowControl_Break, 
		FlowControl_Call, 
		FlowControl_Cond_Branch, 
		FlowControl_Meta, 
		FlowControl_Next, 
		FlowControl_Phi, 
		FlowControl_Return, 
		FlowControl_Throw
	);

	FUNCFLAGSValues: array[TFUNCFLAGS] of TNCEnum =
	(
		FUNCFLAGS_FUNCFLAG_FRESTRICTED, 
		FUNCFLAGS_FUNCFLAG_FSOURCE, 
		FUNCFLAGS_FUNCFLAG_FBINDABLE, 
		FUNCFLAGS_FUNCFLAG_FREQUESTEDIT, 
		FUNCFLAGS_FUNCFLAG_FDISPLAYBIND, 
		FUNCFLAGS_FUNCFLAG_FDEFAULTBIND, 
		FUNCFLAGS_FUNCFLAG_FHIDDEN, 
		FUNCFLAGS_FUNCFLAG_FUSESGETLASTERROR, 
		FUNCFLAGS_FUNCFLAG_FDEFAULTCOLLELEM, 
		FUNCFLAGS_FUNCFLAG_FUIDEFAULT, 
		FUNCFLAGS_FUNCFLAG_FNONBROWSABLE, 
		FUNCFLAGS_FUNCFLAG_FREPLACEABLE, 
		FUNCFLAGS_FUNCFLAG_FIMMEDIATEBIND
	);

	FUNCKINDValues: array[TFUNCKIND] of TNCEnum =
	(
		FUNCKIND_FUNC_VIRTUAL, 
		FUNCKIND_FUNC_PUREVIRTUAL, 
		FUNCKIND_FUNC_NONVIRTUAL, 
		FUNCKIND_FUNC_STATIC, 
		FUNCKIND_FUNC_DISPATCH
	);

	GCCollectionModeValues: array[TGCCollectionMode] of TNCEnum =
	(
		GCCollectionMode_Default, 
		GCCollectionMode_Forced, 
		GCCollectionMode_Optimized
	);

	GCHandleTypeValues: array[TGCHandleType] of TNCEnum =
	(
		GCHandleType_Weak, 
		GCHandleType_WeakTrackResurrection, 
		GCHandleType_Normal, 
		GCHandleType_Pinned
	);

	GCKindValues: array[TGCKind] of TNCEnum =
	(
		GCKind_Any, 
		GCKind_Ephemeral, 
		GCKind_FullBlocking, 
		GCKind_Background
	);

	GCLargeObjectHeapCompactionModeValues: array[TGCLargeObjectHeapCompactionMode] of TNCEnum =
	(
		GCLargeObjectHeapCompactionMode_Default, 
		GCLargeObjectHeapCompactionMode_CompactOnce
	);

	GCLatencyModeValues: array[TGCLatencyMode] of TNCEnum =
	(
		GCLatencyMode_Batch, 
		GCLatencyMode_Interactive, 
		GCLatencyMode_LowLatency, 
		GCLatencyMode_SustainedLowLatency, 
		GCLatencyMode_NoGCRegion
	);

	GCNotificationStatusValues: array[TGCNotificationStatus] of TNCEnum =
	(
		GCNotificationStatus_Succeeded, 
		GCNotificationStatus_Failed, 
		GCNotificationStatus_Canceled, 
		GCNotificationStatus_Timeout, 
		GCNotificationStatus_NotApplicable
	);

	GenericParameterAttributesValues: array[TGenericParameterAttributes] of TNCEnum =
	(
		GenericParameterAttributes_None, 
		GenericParameterAttributes_Covariant, 
		GenericParameterAttributes_Contravariant, 
		GenericParameterAttributes_VarianceMask, 
		GenericParameterAttributes_ReferenceTypeConstraint, 
		GenericParameterAttributes_NotNullableValueTypeConstraint, 
		GenericParameterAttributes_DefaultConstructorConstraint, 
		GenericParameterAttributes_SpecialConstraintMask
	);

	GregorianCalendarTypesValues: array[TGregorianCalendarTypes] of TNCEnum =
	(
		GregorianCalendarTypes_Localized, 
		GregorianCalendarTypes_USEnglish, 
		GregorianCalendarTypes_MiddleEastFrench, 
		GregorianCalendarTypes_Arabic, 
		GregorianCalendarTypes_TransliteratedEnglish, 
		GregorianCalendarTypes_TransliteratedFrench
	);

	HandleInheritabilityValues: array[THandleInheritability] of TNCEnum =
	(
		HandleInheritability_None, 
		HandleInheritability_Inheritable
	);

	IDLFLAGValues: array[TIDLFLAG] of TNCEnum =
	(
		IDLFLAG_IDLFLAG_NONE, 
		IDLFLAG_IDLFLAG_FIN, 
		IDLFLAG_IDLFLAG_FOUT, 
		IDLFLAG_IDLFLAG_FLCID, 
		IDLFLAG_IDLFLAG_FRETVAL
	);

	ImageFileMachineValues: array[TImageFileMachine] of TNCEnum =
	(
		ImageFileMachine_I386, 
		ImageFileMachine_ARM, 
		ImageFileMachine_IA64, 
		ImageFileMachine_AMD64
	);

	IMPLTYPEFLAGSValues: array[TIMPLTYPEFLAGS] of TNCEnum =
	(
		IMPLTYPEFLAGS_IMPLTYPEFLAG_FDEFAULT, 
		IMPLTYPEFLAGS_IMPLTYPEFLAG_FSOURCE, 
		IMPLTYPEFLAGS_IMPLTYPEFLAG_FRESTRICTED, 
		IMPLTYPEFLAGS_IMPLTYPEFLAG_FDEFAULTVTABLE
	);

	INVOKEKINDValues: array[TINVOKEKIND] of TNCEnum =
	(
		INVOKEKIND_INVOKE_FUNC, 
		INVOKEKIND_INVOKE_PROPERTYGET, 
		INVOKEKIND_INVOKE_PROPERTYPUT, 
		INVOKEKIND_INVOKE_PROPERTYPUTREF
	);

	LayoutKindValues: array[TLayoutKind] of TNCEnum =
	(
		LayoutKind_Sequential, 
		LayoutKind_Explicit, 
		LayoutKind_Auto
	);

	LazyThreadSafetyModeValues: array[TLazyThreadSafetyMode] of TNCEnum =
	(
		LazyThreadSafetyMode_None, 
		LazyThreadSafetyMode_PublicationOnly, 
		LazyThreadSafetyMode_ExecutionAndPublication
	);

	LIBFLAGSValues: array[TLIBFLAGS] of TNCEnum =
	(
		LIBFLAGS_LIBFLAG_FRESTRICTED, 
		LIBFLAGS_LIBFLAG_FCONTROL, 
		LIBFLAGS_LIBFLAG_FHIDDEN, 
		LIBFLAGS_LIBFLAG_FHASDISKIMAGE
	);

	LoaderOptimizationValues: array[TLoaderOptimization] of TNCEnum =
	(
		LoaderOptimization_NotSpecified, 
		LoaderOptimization_SingleDomain, 
		LoaderOptimization_MultiDomain, 
		LoaderOptimization_MultiDomainHost, 
		LoaderOptimization_MultiDomainHost_0, 
		LoaderOptimization_DisallowBindings
	);

	LoadHintValues: array[TLoadHint] of TNCEnum =
	(
		LoadHint_Default, 
		LoadHint_Always, 
		LoadHint_Sometimes
	);

	LockRecursionPolicyValues: array[TLockRecursionPolicy] of TNCEnum =
	(
		LockRecursionPolicy_NoRecursion, 
		LockRecursionPolicy_SupportsRecursion
	);

	MemberTypesValues: array[TMemberTypes] of TNCEnum =
	(
		MemberTypes_Constructor, 
		MemberTypes_Event, 
		MemberTypes_Field, 
		MemberTypes_Method, 
		MemberTypes_Property, 
		MemberTypes_TypeInfo, 
		MemberTypes_Custom, 
		MemberTypes_NestedType, 
		MemberTypes_All_0
	);

	MethodAttributesValues: array[TMethodAttributes] of TNCEnum =
	(
		MethodAttributes_ReuseSlot, 
		MethodAttributes_ReuseSlot_0, 
		MethodAttributes_Private, 
		MethodAttributes_FamANDAssem, 
		MethodAttributes_Assembly, 
		MethodAttributes_Family, 
		MethodAttributes_FamORAssem, 
		MethodAttributes_Public, 
		MethodAttributes_MemberAccessMask, 
		MethodAttributes_UnmanagedExport, 
		MethodAttributes_Static, 
		MethodAttributes_Final, 
		MethodAttributes_Virtual, 
		MethodAttributes_HideBySig, 
		MethodAttributes_VtableLayoutMask, 
		MethodAttributes_VtableLayoutMask_0, 
		MethodAttributes_CheckAccessOnOverride, 
		MethodAttributes_Abstract, 
		MethodAttributes_SpecialName, 
		MethodAttributes_RTSpecialName, 
		MethodAttributes_PinvokeImpl, 
		MethodAttributes_HasSecurity, 
		MethodAttributes_RequireSecObject, 
		MethodAttributes_ReservedMask
	);

	MethodCodeTypeValues: array[TMethodCodeType] of TNCEnum =
	(
		MethodCodeType_IL, 
		MethodCodeType_Native, 
		MethodCodeType_OPTIL, 
		MethodCodeType_Runtime
	);

	MethodImplAttributesValues: array[TMethodImplAttributes] of TNCEnum =
	(
		MethodImplAttributes_Managed, 
		MethodImplAttributes_Managed_0, 
		MethodImplAttributes_Native, 
		MethodImplAttributes_OPTIL, 
		MethodImplAttributes_CodeTypeMask, 
		MethodImplAttributes_CodeTypeMask_0, 
		MethodImplAttributes_Unmanaged, 
		MethodImplAttributes_Unmanaged_0, 
		MethodImplAttributes_NoInlining, 
		MethodImplAttributes_ForwardRef, 
		MethodImplAttributes_Synchronized, 
		MethodImplAttributes_NoOptimization, 
		MethodImplAttributes_PreserveSig, 
		MethodImplAttributes_AggressiveInlining, 
		MethodImplAttributes_AggressiveOptimization, 
		MethodImplAttributes_InternalCall, 
		MethodImplAttributes_MaxMethodImplVal
	);

	MethodImplOptionsValues: array[TMethodImplOptions] of TNCEnum =
	(
		MethodImplOptions_Unmanaged, 
		MethodImplOptions_NoInlining, 
		MethodImplOptions_ForwardRef, 
		MethodImplOptions_Synchronized, 
		MethodImplOptions_NoOptimization, 
		MethodImplOptions_PreserveSig, 
		MethodImplOptions_AggressiveInlining, 
		MethodImplOptions_AggressiveOptimization, 
		MethodImplOptions_InternalCall
	);

	MidpointRoundingValues: array[TMidpointRounding] of TNCEnum =
	(
		MidpointRounding_ToEven, 
		MidpointRounding_AwayFromZero, 
		MidpointRounding_ToZero, 
		MidpointRounding_ToNegativeInfinity, 
		MidpointRounding_ToPositiveInfinity
	);

	NormalizationFormValues: array[TNormalizationForm] of TNCEnum =
	(
		NormalizationForm_FormC, 
		NormalizationForm_FormD, 
		NormalizationForm_FormKC, 
		NormalizationForm_FormKD
	);

	NumberStylesValues: array[TNumberStyles] of TNCEnum =
	(
		NumberStyles_None, 
		NumberStyles_AllowLeadingWhite, 
		NumberStyles_AllowTrailingWhite, 
		NumberStyles_AllowLeadingSign, 
		NumberStyles_Integer, 
		NumberStyles_AllowTrailingSign, 
		NumberStyles_AllowParentheses, 
		NumberStyles_AllowDecimalPoint, 
		NumberStyles_AllowThousands, 
		NumberStyles_Number, 
		NumberStyles_AllowExponent, 
		NumberStyles_Float, 
		NumberStyles_AllowCurrencySymbol, 
		NumberStyles_Currency, 
		NumberStyles_Any, 
		NumberStyles_AllowHexSpecifier, 
		NumberStyles_HexNumber
	);

	OpCodeTypeValues: array[TOpCodeType] of TNCEnum =
	(
		OpCodeType_Annotation, 
		OpCodeType_Macro, 
		OpCodeType_Nternal, 
		OpCodeType_Objmodel, 
		OpCodeType_Prefix, 
		OpCodeType_Primitive
	);

	OperandTypeValues: array[TOperandType] of TNCEnum =
	(
		OperandType_InlineBrTarget, 
		OperandType_InlineField, 
		OperandType_InlineI, 
		OperandType_InlineI8, 
		OperandType_InlineMethod, 
		OperandType_InlineNone, 
		OperandType_InlinePhi, 
		OperandType_InlineR, 
		OperandType_InlineSig, 
		OperandType_InlineString, 
		OperandType_InlineSwitch, 
		OperandType_InlineTok, 
		OperandType_InlineType, 
		OperandType_InlineVar, 
		OperandType_ShortInlineBrTarget, 
		OperandType_ShortInlineI, 
		OperandType_ShortInlineR, 
		OperandType_ShortInlineVar
	);

	OperationStatusValues: array[TOperationStatus] of TNCEnum =
	(
		OperationStatus_Done, 
		OperationStatus_DestinationTooSmall, 
		OperationStatus_NeedMoreData, 
		OperationStatus_InvalidData
	);

	PackingSizeValues: array[TPackingSize] of TNCEnum =
	(
		PackingSize_Unspecified, 
		PackingSize_Size1, 
		PackingSize_Size2, 
		PackingSize_Size4, 
		PackingSize_Size8, 
		PackingSize_Size16, 
		PackingSize_Size32, 
		PackingSize_Size64, 
		PackingSize_Size128
	);

	ParameterAttributesValues: array[TParameterAttributes] of TNCEnum =
	(
		ParameterAttributes_None_0, 
		ParameterAttributes_In, 
		ParameterAttributes_Out, 
		ParameterAttributes_Lcid, 
		ParameterAttributes_Retval, 
		ParameterAttributes_Optional, 
		ParameterAttributes_HasDefault, 
		ParameterAttributes_HasFieldMarshal, 
		ParameterAttributes_Reserved3, 
		ParameterAttributes_Reserved4, 
		ParameterAttributes_ReservedMask
	);

	PARAMFLAGValues: array[TPARAMFLAG] of TNCEnum =
	(
		PARAMFLAG_PARAMFLAG_NONE, 
		PARAMFLAG_PARAMFLAG_FIN, 
		PARAMFLAG_PARAMFLAG_FOUT, 
		PARAMFLAG_PARAMFLAG_FLCID, 
		PARAMFLAG_PARAMFLAG_FRETVAL, 
		PARAMFLAG_PARAMFLAG_FOPT, 
		PARAMFLAG_PARAMFLAG_FHASDEFAULT, 
		PARAMFLAG_PARAMFLAG_FHASCUSTDATA
	);

	PartialTrustVisibilityLevelValues: array[TPartialTrustVisibilityLevel] of TNCEnum =
	(
		PartialTrustVisibilityLevel_VisibleToAllHosts, 
		PartialTrustVisibilityLevel_NotVisibleByDefault
	);

	PEFileKindsValues: array[TPEFileKinds] of TNCEnum =
	(
		PEFileKinds_Dll, 
		PEFileKinds_ConsoleApplication, 
		PEFileKinds_WindowApplication
	);

	PermissionStateValues: array[TPermissionState] of TNCEnum =
	(
		PermissionState_None, 
		PermissionState_Unrestricted
	);

	PlatformIDValues: array[TPlatformID] of TNCEnum =
	(
		PlatformID_Win32S, 
		PlatformID_Win32Windows, 
		PlatformID_Win32NT, 
		PlatformID_WinCE, 
		PlatformID_Unix, 
		PlatformID_Xbox, 
		PlatformID_MacOSX, 
		PlatformID_Other
	);

	PortableExecutableKindsValues: array[TPortableExecutableKinds] of TNCEnum =
	(
		PortableExecutableKinds_NotAPortableExecutableImage, 
		PortableExecutableKinds_ILOnly, 
		PortableExecutableKinds_Required32Bit, 
		PortableExecutableKinds_PE32Plus, 
		PortableExecutableKinds_Unmanaged32Bit, 
		PortableExecutableKinds_Preferred32Bit
	);

	PrincipalPolicyValues: array[TPrincipalPolicy] of TNCEnum =
	(
		PrincipalPolicy_UnauthenticatedPrincipal, 
		PrincipalPolicy_NoPrincipal, 
		PrincipalPolicy_WindowsPrincipal
	);

	ProcessorArchitectureValues: array[TProcessorArchitecture] of TNCEnum =
	(
		ProcessorArchitecture_None, 
		ProcessorArchitecture_MSIL, 
		ProcessorArchitecture_X86, 
		ProcessorArchitecture_IA64, 
		ProcessorArchitecture_Amd64, 
		ProcessorArchitecture_Arm
	);

	PropertyAttributesValues: array[TPropertyAttributes] of TNCEnum =
	(
		PropertyAttributes_None, 
		PropertyAttributes_SpecialName, 
		PropertyAttributes_RTSpecialName, 
		PropertyAttributes_HasDefault, 
		PropertyAttributes_Reserved2, 
		PropertyAttributes_Reserved3, 
		PropertyAttributes_Reserved4, 
		PropertyAttributes_ReservedMask
	);

	ResourceAttributesValues: array[TResourceAttributes] of TNCEnum =
	(
		ResourceAttributes_Public, 
		ResourceAttributes_Private
	);

	ResourceLocationValues: array[TResourceLocation] of TNCEnum =
	(
		ResourceLocation_Embedded, 
		ResourceLocation_ContainedInAnotherAssembly, 
		ResourceLocation_ContainedInManifestFile
	);

	ResourceScopeValues: array[TResourceScope] of TNCEnum =
	(
		ResourceScope_None, 
		ResourceScope_Machine, 
		ResourceScope_Process, 
		ResourceScope_AppDomain, 
		ResourceScope_Library, 
		ResourceScope_Private, 
		ResourceScope_Assembly
	);

	SecurityActionValues: array[TSecurityAction] of TNCEnum =
	(
		SecurityAction_Demand, 
		SecurityAction_Assert, 
		SecurityAction_Deny, 
		SecurityAction_PermitOnly, 
		SecurityAction_LinkDemand, 
		SecurityAction_InheritanceDemand, 
		SecurityAction_RequestMinimum, 
		SecurityAction_RequestOptional, 
		SecurityAction_RequestRefuse
	);

	SecurityCriticalScopeValues: array[TSecurityCriticalScope] of TNCEnum =
	(
		SecurityCriticalScope_Explicit, 
		SecurityCriticalScope_Everything
	);

	SecurityPermissionFlagValues: array[TSecurityPermissionFlag] of TNCEnum =
	(
		SecurityPermissionFlag_NoFlags, 
		SecurityPermissionFlag_Assertion, 
		SecurityPermissionFlag_UnmanagedCode, 
		SecurityPermissionFlag_SkipVerification, 
		SecurityPermissionFlag_Execution, 
		SecurityPermissionFlag_ControlThread, 
		SecurityPermissionFlag_ControlEvidence, 
		SecurityPermissionFlag_ControlPolicy, 
		SecurityPermissionFlag_SerializationFormatter, 
		SecurityPermissionFlag_ControlDomainPolicy, 
		SecurityPermissionFlag_ControlPrincipal, 
		SecurityPermissionFlag_ControlAppDomain, 
		SecurityPermissionFlag_RemotingConfiguration, 
		SecurityPermissionFlag_Infrastructure, 
		SecurityPermissionFlag_BindingRedirects, 
		SecurityPermissionFlag_AllFlags
	);

	SecurityRuleSetValues: array[TSecurityRuleSet] of TNCEnum =
	(
		SecurityRuleSet_None, 
		SecurityRuleSet_Level1, 
		SecurityRuleSet_Level2
	);

	SeekOriginValues: array[TSeekOrigin] of TNCEnum =
	(
		SeekOrigin_Begin, 
		SeekOrigin_Current, 
		SeekOrigin_End
	);

	SpecialFolderValues: array[TSpecialFolder] of TNCEnum =
	(
		SpecialFolder_Desktop, 
		SpecialFolder_Programs, 
		SpecialFolder_MyDocuments, 
		SpecialFolder_MyDocuments_0, 
		SpecialFolder_Favorites, 
		SpecialFolder_Startup, 
		SpecialFolder_Recent, 
		SpecialFolder_SendTo, 
		SpecialFolder_StartMenu, 
		SpecialFolder_MyMusic, 
		SpecialFolder_MyVideos, 
		SpecialFolder_DesktopDirectory, 
		SpecialFolder_MyComputer, 
		SpecialFolder_NetworkShortcuts, 
		SpecialFolder_Fonts, 
		SpecialFolder_Templates, 
		SpecialFolder_CommonStartMenu, 
		SpecialFolder_CommonPrograms, 
		SpecialFolder_CommonStartup, 
		SpecialFolder_CommonDesktopDirectory, 
		SpecialFolder_ApplicationData, 
		SpecialFolder_PrinterShortcuts, 
		SpecialFolder_LocalApplicationData, 
		SpecialFolder_InternetCache, 
		SpecialFolder_Cookies, 
		SpecialFolder_History, 
		SpecialFolder_CommonApplicationData, 
		SpecialFolder_Windows, 
		SpecialFolder_System, 
		SpecialFolder_ProgramFiles, 
		SpecialFolder_MyPictures, 
		SpecialFolder_UserProfile, 
		SpecialFolder_SystemX86, 
		SpecialFolder_ProgramFilesX86, 
		SpecialFolder_CommonProgramFiles, 
		SpecialFolder_CommonProgramFilesX86, 
		SpecialFolder_CommonTemplates, 
		SpecialFolder_CommonDocuments, 
		SpecialFolder_CommonAdminTools, 
		SpecialFolder_AdminTools, 
		SpecialFolder_CommonMusic, 
		SpecialFolder_CommonPictures, 
		SpecialFolder_CommonVideos, 
		SpecialFolder_Resources, 
		SpecialFolder_LocalizedResources, 
		SpecialFolder_CommonOemLinks, 
		SpecialFolder_CDBurning
	);

	SpecialFolderOptionValues: array[TSpecialFolderOption] of TNCEnum =
	(
		SpecialFolderOption_None, 
		SpecialFolderOption_DoNotVerify, 
		SpecialFolderOption_Create
	);

	StackBehaviourValues: array[TStackBehaviour] of TNCEnum =
	(
		StackBehaviour_Pop0, 
		StackBehaviour_Pop1, 
		StackBehaviour_Pop1_pop1, 
		StackBehaviour_Popi, 
		StackBehaviour_Popi_pop1, 
		StackBehaviour_Popi_popi, 
		StackBehaviour_Popi_popi8, 
		StackBehaviour_Popi_popi_popi, 
		StackBehaviour_Popi_popr4, 
		StackBehaviour_Popi_popr8, 
		StackBehaviour_Popref, 
		StackBehaviour_Popref_pop1, 
		StackBehaviour_Popref_popi, 
		StackBehaviour_Popref_popi_popi, 
		StackBehaviour_Popref_popi_popi8, 
		StackBehaviour_Popref_popi_popr4, 
		StackBehaviour_Popref_popi_popr8, 
		StackBehaviour_Popref_popi_popref, 
		StackBehaviour_Push0, 
		StackBehaviour_Push1, 
		StackBehaviour_Push1_push1, 
		StackBehaviour_Pushi, 
		StackBehaviour_Pushi8, 
		StackBehaviour_Pushr4, 
		StackBehaviour_Pushr8, 
		StackBehaviour_Pushref, 
		StackBehaviour_Varpop, 
		StackBehaviour_Varpush, 
		StackBehaviour_Popref_popi_pop1
	);

	StreamingContextStatesValues: array[TStreamingContextStates] of TNCEnum =
	(
		StreamingContextStates_CrossProcess, 
		StreamingContextStates_CrossMachine, 
		StreamingContextStates_File, 
		StreamingContextStates_Persistence, 
		StreamingContextStates_Remoting, 
		StreamingContextStates_Other, 
		StreamingContextStates_Clone, 
		StreamingContextStates_CrossAppDomain, 
		StreamingContextStates_All
	);

	StringComparisonValues: array[TStringComparison] of TNCEnum =
	(
		StringComparison_CurrentCulture, 
		StringComparison_CurrentCultureIgnoreCase, 
		StringComparison_InvariantCulture, 
		StringComparison_InvariantCultureIgnoreCase, 
		StringComparison_Ordinal, 
		StringComparison_OrdinalIgnoreCase
	);

	StringSplitOptionsValues: array[TStringSplitOptions] of TNCEnum =
	(
		StringSplitOptions_None, 
		StringSplitOptions_RemoveEmptyEntries, 
		StringSplitOptions_TrimEntries
	);

	SYSKINDValues: array[TSYSKIND] of TNCEnum =
	(
		SYSKIND_SYS_WIN16, 
		SYSKIND_SYS_WIN32, 
		SYSKIND_SYS_MAC, 
		SYSKIND_SYS_WIN64
	);

	TaskContinuationOptionsValues: array[TTaskContinuationOptions] of TNCEnum =
	(
		TaskContinuationOptions_None, 
		TaskContinuationOptions_PreferFairness, 
		TaskContinuationOptions_LongRunning, 
		TaskContinuationOptions_AttachedToParent, 
		TaskContinuationOptions_DenyChildAttach, 
		TaskContinuationOptions_HideScheduler, 
		TaskContinuationOptions_LazyCancellation, 
		TaskContinuationOptions_RunContinuationsAsynchronously, 
		TaskContinuationOptions_NotOnRanToCompletion, 
		TaskContinuationOptions_NotOnFaulted, 
		TaskContinuationOptions_OnlyOnCanceled, 
		TaskContinuationOptions_NotOnCanceled, 
		TaskContinuationOptions_OnlyOnFaulted, 
		TaskContinuationOptions_OnlyOnRanToCompletion, 
		TaskContinuationOptions_ExecuteSynchronously
	);

	TaskCreationOptionsValues: array[TTaskCreationOptions] of TNCEnum =
	(
		TaskCreationOptions_None, 
		TaskCreationOptions_PreferFairness, 
		TaskCreationOptions_LongRunning, 
		TaskCreationOptions_AttachedToParent, 
		TaskCreationOptions_DenyChildAttach, 
		TaskCreationOptions_HideScheduler, 
		TaskCreationOptions_RunContinuationsAsynchronously
	);

	TaskStatusValues: array[TTaskStatus] of TNCEnum =
	(
		TaskStatus_Created, 
		TaskStatus_WaitingForActivation, 
		TaskStatus_WaitingToRun, 
		TaskStatus_Running, 
		TaskStatus_WaitingForChildrenToComplete, 
		TaskStatus_RanToCompletion, 
		TaskStatus_Canceled, 
		TaskStatus_Faulted
	);

	ThreadPriorityValues: array[TThreadPriority] of TNCEnum =
	(
		ThreadPriority_Lowest, 
		ThreadPriority_BelowNormal, 
		ThreadPriority_Normal, 
		ThreadPriority_AboveNormal, 
		ThreadPriority_Highest
	);

	ThreadStateValues: array[TThreadState] of TNCEnum =
	(
		ThreadState_Running, 
		ThreadState_StopRequested, 
		ThreadState_SuspendRequested, 
		ThreadState_Background, 
		ThreadState_Unstarted, 
		ThreadState_Stopped, 
		ThreadState_WaitSleepJoin, 
		ThreadState_Suspended, 
		ThreadState_AbortRequested, 
		ThreadState_Aborted
	);

	TimeSpanStylesValues: array[TTimeSpanStyles] of TNCEnum =
	(
		TimeSpanStyles_None, 
		TimeSpanStyles_AssumeNegative
	);

	TokenImpersonationLevelValues: array[TTokenImpersonationLevel] of TNCEnum =
	(
		TokenImpersonationLevel_None, 
		TokenImpersonationLevel_Anonymous, 
		TokenImpersonationLevel_Identification, 
		TokenImpersonationLevel_Impersonation, 
		TokenImpersonationLevel_Delegation
	);

	TypeAttributesValues: array[TTypeAttributes] of TNCEnum =
	(
		TypeAttributes_NotPublic, 
		TypeAttributes_NotPublic_0, 
		TypeAttributes_NotPublic_1, 
		TypeAttributes_NotPublic_2, 
		TypeAttributes_Public, 
		TypeAttributes_NestedPublic, 
		TypeAttributes_NestedPrivate, 
		TypeAttributes_NestedFamily, 
		TypeAttributes_NestedAssembly, 
		TypeAttributes_NestedFamANDAssem, 
		TypeAttributes_VisibilityMask, 
		TypeAttributes_VisibilityMask_0, 
		TypeAttributes_SequentialLayout, 
		TypeAttributes_ExplicitLayout, 
		TypeAttributes_LayoutMask, 
		TypeAttributes_ClassSemanticsMask, 
		TypeAttributes_ClassSemanticsMask_0, 
		TypeAttributes_Abstract, 
		TypeAttributes_Sealed, 
		TypeAttributes_SpecialName, 
		TypeAttributes_RTSpecialName, 
		TypeAttributes_Import, 
		TypeAttributes_Serializable, 
		TypeAttributes_WindowsRuntime, 
		TypeAttributes_UnicodeClass, 
		TypeAttributes_AutoClass, 
		TypeAttributes_StringFormatMask, 
		TypeAttributes_StringFormatMask_0, 
		TypeAttributes_HasSecurity, 
		TypeAttributes_ReservedMask, 
		TypeAttributes_BeforeFieldInit, 
		TypeAttributes_CustomFormatMask
	);

	TypeCodeValues: array[TTypeCode] of TNCEnum =
	(
		TypeCode_Empty, 
		TypeCode_Object, 
		TypeCode_DBNull, 
		TypeCode_Boolean, 
		TypeCode_Char, 
		TypeCode_SByte, 
		TypeCode_Byte, 
		TypeCode_Int16, 
		TypeCode_UInt16, 
		TypeCode_Int32, 
		TypeCode_UInt32, 
		TypeCode_Int64, 
		TypeCode_UInt64, 
		TypeCode_Single, 
		TypeCode_Double, 
		TypeCode_Decimal, 
		TypeCode_DateTime, 
		TypeCode_String
	);

	TYPEFLAGSValues: array[TTYPEFLAGS] of TNCEnum =
	(
		TYPEFLAGS_TYPEFLAG_FAPPOBJECT, 
		TYPEFLAGS_TYPEFLAG_FCANCREATE, 
		TYPEFLAGS_TYPEFLAG_FLICENSED, 
		TYPEFLAGS_TYPEFLAG_FPREDECLID, 
		TYPEFLAGS_TYPEFLAG_FHIDDEN, 
		TYPEFLAGS_TYPEFLAG_FCONTROL, 
		TYPEFLAGS_TYPEFLAG_FDUAL, 
		TYPEFLAGS_TYPEFLAG_FNONEXTENSIBLE, 
		TYPEFLAGS_TYPEFLAG_FOLEAUTOMATION, 
		TYPEFLAGS_TYPEFLAG_FRESTRICTED, 
		TYPEFLAGS_TYPEFLAG_FAGGREGATABLE, 
		TYPEFLAGS_TYPEFLAG_FREPLACEABLE, 
		TYPEFLAGS_TYPEFLAG_FDISPATCHABLE, 
		TYPEFLAGS_TYPEFLAG_FREVERSEBIND, 
		TYPEFLAGS_TYPEFLAG_FPROXY
	);

	TYPEKINDValues: array[TTYPEKIND] of TNCEnum =
	(
		TYPEKIND_TKIND_ENUM, 
		TYPEKIND_TKIND_RECORD, 
		TYPEKIND_TKIND_MODULE, 
		TYPEKIND_TKIND_INTERFACE, 
		TYPEKIND_TKIND_DISPATCH, 
		TYPEKIND_TKIND_COCLASS, 
		TYPEKIND_TKIND_ALIAS, 
		TYPEKIND_TKIND_UNION, 
		TYPEKIND_TKIND_MAX
	);

	UltimateResourceFallbackLocationValues: array[TUltimateResourceFallbackLocation] of TNCEnum =
	(
		UltimateResourceFallbackLocation_MainAssembly, 
		UltimateResourceFallbackLocation_Satellite
	);

	UnicodeCategoryValues: array[TUnicodeCategory] of TNCEnum =
	(
		UnicodeCategory_UppercaseLetter, 
		UnicodeCategory_LowercaseLetter, 
		UnicodeCategory_TitlecaseLetter, 
		UnicodeCategory_ModifierLetter, 
		UnicodeCategory_OtherLetter, 
		UnicodeCategory_NonSpacingMark, 
		UnicodeCategory_SpacingCombiningMark, 
		UnicodeCategory_EnclosingMark, 
		UnicodeCategory_DecimalDigitNumber, 
		UnicodeCategory_LetterNumber, 
		UnicodeCategory_OtherNumber, 
		UnicodeCategory_SpaceSeparator, 
		UnicodeCategory_LineSeparator, 
		UnicodeCategory_ParagraphSeparator, 
		UnicodeCategory_Control, 
		UnicodeCategory_Format, 
		UnicodeCategory_Surrogate, 
		UnicodeCategory_PrivateUse, 
		UnicodeCategory_ConnectorPunctuation, 
		UnicodeCategory_DashPunctuation, 
		UnicodeCategory_OpenPunctuation, 
		UnicodeCategory_ClosePunctuation, 
		UnicodeCategory_InitialQuotePunctuation, 
		UnicodeCategory_FinalQuotePunctuation, 
		UnicodeCategory_OtherPunctuation, 
		UnicodeCategory_MathSymbol, 
		UnicodeCategory_CurrencySymbol, 
		UnicodeCategory_ModifierSymbol, 
		UnicodeCategory_OtherSymbol, 
		UnicodeCategory_OtherNotAssigned
	);

	UnmanagedTypeValues: array[TUnmanagedType] of TNCEnum =
	(
		UnmanagedType_Bool, 
		UnmanagedType_I1, 
		UnmanagedType_U1, 
		UnmanagedType_I2, 
		UnmanagedType_U2, 
		UnmanagedType_I4, 
		UnmanagedType_U4, 
		UnmanagedType_I8, 
		UnmanagedType_U8, 
		UnmanagedType_R4, 
		UnmanagedType_R8, 
		UnmanagedType_Currency, 
		UnmanagedType_BStr, 
		UnmanagedType_LPStr, 
		UnmanagedType_LPWStr, 
		UnmanagedType_LPTStr, 
		UnmanagedType_ByValTStr, 
		UnmanagedType_IUnknown, 
		UnmanagedType_IDispatch, 
		UnmanagedType_Struct, 
		UnmanagedType_Interface, 
		UnmanagedType_SafeArray, 
		UnmanagedType_ByValArray, 
		UnmanagedType_SysInt, 
		UnmanagedType_SysUInt, 
		UnmanagedType_VBByRefStr, 
		UnmanagedType_AnsiBStr, 
		UnmanagedType_TBStr, 
		UnmanagedType_VariantBool, 
		UnmanagedType_FunctionPtr, 
		UnmanagedType_AsAny, 
		UnmanagedType_LPArray, 
		UnmanagedType_LPStruct, 
		UnmanagedType_CustomMarshaler, 
		UnmanagedType_Error, 
		UnmanagedType_IInspectable, 
		UnmanagedType_HString, 
		UnmanagedType_LPUTF8Str
	);

	ValueTaskSourceOnCompletedFlagsValues: array[TValueTaskSourceOnCompletedFlags] of TNCEnum =
	(
		ValueTaskSourceOnCompletedFlags_None, 
		ValueTaskSourceOnCompletedFlags_UseSchedulingContext, 
		ValueTaskSourceOnCompletedFlags_FlowExecutionContext
	);

	ValueTaskSourceStatusValues: array[TValueTaskSourceStatus] of TNCEnum =
	(
		ValueTaskSourceStatus_Pending, 
		ValueTaskSourceStatus_Succeeded, 
		ValueTaskSourceStatus_Faulted, 
		ValueTaskSourceStatus_Canceled
	);

	VarEnumValues: array[TVarEnum] of TNCEnum =
	(
		VarEnum_VT_EMPTY, 
		VarEnum_VT_NULL, 
		VarEnum_VT_I2, 
		VarEnum_VT_I4, 
		VarEnum_VT_R4, 
		VarEnum_VT_R8, 
		VarEnum_VT_CY, 
		VarEnum_VT_DATE, 
		VarEnum_VT_BSTR, 
		VarEnum_VT_DISPATCH, 
		VarEnum_VT_ERROR, 
		VarEnum_VT_BOOL, 
		VarEnum_VT_VARIANT, 
		VarEnum_VT_UNKNOWN, 
		VarEnum_VT_DECIMAL, 
		VarEnum_VT_I1, 
		VarEnum_VT_UI1, 
		VarEnum_VT_UI2, 
		VarEnum_VT_UI4, 
		VarEnum_VT_I8, 
		VarEnum_VT_UI8, 
		VarEnum_VT_INT, 
		VarEnum_VT_UINT, 
		VarEnum_VT_VOID, 
		VarEnum_VT_HRESULT, 
		VarEnum_VT_PTR, 
		VarEnum_VT_SAFEARRAY, 
		VarEnum_VT_CARRAY, 
		VarEnum_VT_USERDEFINED, 
		VarEnum_VT_LPSTR, 
		VarEnum_VT_LPWSTR, 
		VarEnum_VT_RECORD, 
		VarEnum_VT_FILETIME, 
		VarEnum_VT_BLOB, 
		VarEnum_VT_STREAM, 
		VarEnum_VT_STORAGE, 
		VarEnum_VT_STREAMED_OBJECT, 
		VarEnum_VT_STORED_OBJECT, 
		VarEnum_VT_BLOB_OBJECT, 
		VarEnum_VT_CF, 
		VarEnum_VT_CLSID, 
		VarEnum_VT_VECTOR, 
		VarEnum_VT_ARRAY, 
		VarEnum_VT_BYREF
	);

	VARFLAGSValues: array[TVARFLAGS] of TNCEnum =
	(
		VARFLAGS_VARFLAG_FREADONLY, 
		VARFLAGS_VARFLAG_FSOURCE, 
		VARFLAGS_VARFLAG_FBINDABLE, 
		VARFLAGS_VARFLAG_FREQUESTEDIT, 
		VARFLAGS_VARFLAG_FDISPLAYBIND, 
		VARFLAGS_VARFLAG_FDEFAULTBIND, 
		VARFLAGS_VARFLAG_FHIDDEN, 
		VARFLAGS_VARFLAG_FRESTRICTED, 
		VARFLAGS_VARFLAG_FDEFAULTCOLLELEM, 
		VARFLAGS_VARFLAG_FUIDEFAULT, 
		VARFLAGS_VARFLAG_FNONBROWSABLE, 
		VARFLAGS_VARFLAG_FREPLACEABLE, 
		VARFLAGS_VARFLAG_FIMMEDIATEBIND
	);

	VARKINDValues: array[TVARKIND] of TNCEnum =
	(
		VARKIND_VAR_PERINSTANCE, 
		VARKIND_VAR_STATIC, 
		VARKIND_VAR_CONST, 
		VARKIND_VAR_DISPATCH
	);

function ToNCEnum(Flags: TAssemblyBuilderAccess_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TAssemblyNameFlags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TAttributeTargets_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TBase64FormattingOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TBindingFlags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCallingConventions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCompareOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCompilationRelaxations_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TComponentGuaranteesOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCreateComInterfaceFlags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCreateObjectFlags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TCultureTypes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TDateTimeStyles_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TDebuggingModes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TDllImportSearchPath_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TDynamicallyAccessedMemberTypes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventActivityOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventFieldTags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventKeywords_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventManifestOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventSourceSettings_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TEventTags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TExceptionHandlingClauseOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFieldAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFileAccess_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFileAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFileOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFileShare_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TFUNCFLAGS_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TGenericParameterAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TIDLFLAG_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TIMPLTYPEFLAGS_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TINVOKEKIND_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TLIBFLAGS_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TMemberTypes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TMethodAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TMethodImplOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TNumberStyles_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TParameterAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TPARAMFLAG_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TPortableExecutableKinds_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TPropertyAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TResourceAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TResourceLocation_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TResourceScope_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TSecurityPermissionFlag_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TStreamingContextStates_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TStringSplitOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TTaskContinuationOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TTaskCreationOptions_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TThreadState_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TTimeSpanStyles_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TTypeAttributes_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TTYPEFLAGS_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TValueTaskSourceOnCompletedFlags_Set) : TNCEnum; Overload;
function ToNCEnum(Flags: TVARFLAGS_Set) : TNCEnum; Overload;
function NCEnumAsAssemblyBuilderAccess(AssemblyBuilderAccess: TNCEnum) : TAssemblyBuilderAccess_Set;
function NCEnumAsAssemblyNameFlags(AssemblyNameFlags: TNCEnum) : TAssemblyNameFlags_Set;
function NCEnumAsAttributeTargets(AttributeTargets: TNCEnum) : TAttributeTargets_Set;
function NCEnumAsBase64FormattingOptions(Base64FormattingOptions: TNCEnum) : TBase64FormattingOptions_Set;
function NCEnumAsBindingFlags(BindingFlags: TNCEnum) : TBindingFlags_Set;
function NCEnumAsCallingConventions(CallingConventions: TNCEnum) : TCallingConventions_Set;
function NCEnumAsCompareOptions(CompareOptions: TNCEnum) : TCompareOptions_Set;
function NCEnumAsCompilationRelaxations(CompilationRelaxations: TNCEnum) : TCompilationRelaxations_Set;
function NCEnumAsComponentGuaranteesOptions(ComponentGuaranteesOptions: TNCEnum) : TComponentGuaranteesOptions_Set;
function NCEnumAsCreateComInterfaceFlags(CreateComInterfaceFlags: TNCEnum) : TCreateComInterfaceFlags_Set;
function NCEnumAsCreateObjectFlags(CreateObjectFlags: TNCEnum) : TCreateObjectFlags_Set;
function NCEnumAsCultureTypes(CultureTypes: TNCEnum) : TCultureTypes_Set;
function NCEnumAsDateTimeStyles(DateTimeStyles: TNCEnum) : TDateTimeStyles_Set;
function NCEnumAsDebuggingModes(DebuggingModes: TNCEnum) : TDebuggingModes_Set;
function NCEnumAsDllImportSearchPath(DllImportSearchPath: TNCEnum) : TDllImportSearchPath_Set;
function NCEnumAsDynamicallyAccessedMemberTypes(DynamicallyAccessedMemberTypes: TNCEnum) : TDynamicallyAccessedMemberTypes_Set;
function NCEnumAsEventActivityOptions(EventActivityOptions: TNCEnum) : TEventActivityOptions_Set;
function NCEnumAsEventAttributes(EventAttributes: TNCEnum) : TEventAttributes_Set;
function NCEnumAsEventFieldTags(EventFieldTags: TNCEnum) : TEventFieldTags_Set;
function NCEnumAsEventKeywords(EventKeywords: TNCEnum) : TEventKeywords_Set;
function NCEnumAsEventManifestOptions(EventManifestOptions: TNCEnum) : TEventManifestOptions_Set;
function NCEnumAsEventSourceSettings(EventSourceSettings: TNCEnum) : TEventSourceSettings_Set;
function NCEnumAsEventTags(EventTags: TNCEnum) : TEventTags_Set;
function NCEnumAsExceptionHandlingClauseOptions(ExceptionHandlingClauseOptions: TNCEnum) : TExceptionHandlingClauseOptions_Set;
function NCEnumAsFieldAttributes(FieldAttributes: TNCEnum) : TFieldAttributes_Set;
function NCEnumAsFileAccess(FileAccess: TNCEnum) : TFileAccess_Set;
function NCEnumAsFileAttributes(FileAttributes: TNCEnum) : TFileAttributes_Set;
function NCEnumAsFileOptions(FileOptions: TNCEnum) : TFileOptions_Set;
function NCEnumAsFileShare(FileShare: TNCEnum) : TFileShare_Set;
function NCEnumAsFUNCFLAGS(FUNCFLAGS: TNCEnum) : TFUNCFLAGS_Set;
function NCEnumAsGenericParameterAttributes(GenericParameterAttributes: TNCEnum) : TGenericParameterAttributes_Set;
function NCEnumAsIDLFLAG(IDLFLAG: TNCEnum) : TIDLFLAG_Set;
function NCEnumAsIMPLTYPEFLAGS(IMPLTYPEFLAGS: TNCEnum) : TIMPLTYPEFLAGS_Set;
function NCEnumAsINVOKEKIND(INVOKEKIND: TNCEnum) : TINVOKEKIND_Set;
function NCEnumAsLIBFLAGS(LIBFLAGS: TNCEnum) : TLIBFLAGS_Set;
function NCEnumAsMemberTypes(MemberTypes: TNCEnum) : TMemberTypes_Set;
function NCEnumAsMethodAttributes(MethodAttributes: TNCEnum) : TMethodAttributes_Set;
function NCEnumAsMethodImplOptions(MethodImplOptions: TNCEnum) : TMethodImplOptions_Set;
function NCEnumAsNumberStyles(NumberStyles: TNCEnum) : TNumberStyles_Set;
function NCEnumAsParameterAttributes(ParameterAttributes: TNCEnum) : TParameterAttributes_Set;
function NCEnumAsPARAMFLAG(PARAMFLAG: TNCEnum) : TPARAMFLAG_Set;
function NCEnumAsPortableExecutableKinds(PortableExecutableKinds: TNCEnum) : TPortableExecutableKinds_Set;
function NCEnumAsPropertyAttributes(PropertyAttributes: TNCEnum) : TPropertyAttributes_Set;
function NCEnumAsResourceAttributes(ResourceAttributes: TNCEnum) : TResourceAttributes_Set;
function NCEnumAsResourceLocation(ResourceLocation: TNCEnum) : TResourceLocation_Set;
function NCEnumAsResourceScope(ResourceScope: TNCEnum) : TResourceScope_Set;
function NCEnumAsSecurityPermissionFlag(SecurityPermissionFlag: TNCEnum) : TSecurityPermissionFlag_Set;
function NCEnumAsStreamingContextStates(StreamingContextStates: TNCEnum) : TStreamingContextStates_Set;
function NCEnumAsStringSplitOptions(StringSplitOptions: TNCEnum) : TStringSplitOptions_Set;
function NCEnumAsTaskContinuationOptions(TaskContinuationOptions: TNCEnum) : TTaskContinuationOptions_Set;
function NCEnumAsTaskCreationOptions(TaskCreationOptions: TNCEnum) : TTaskCreationOptions_Set;
function NCEnumAsThreadState(ThreadState: TNCEnum) : TThreadState_Set;
function NCEnumAsTimeSpanStyles(TimeSpanStyles: TNCEnum) : TTimeSpanStyles_Set;
function NCEnumAsTypeAttributes(TypeAttributes: TNCEnum) : TTypeAttributes_Set;
function NCEnumAsTYPEFLAGS(TYPEFLAGS: TNCEnum) : TTYPEFLAGS_Set;
function NCEnumAsValueTaskSourceOnCompletedFlags(ValueTaskSourceOnCompletedFlags: TNCEnum) : TValueTaskSourceOnCompletedFlags_Set;
function NCEnumAsVARFLAGS(VARFLAGS: TNCEnum) : TVARFLAGS_Set;

implementation

function ToNCEnum(Flags: TAssemblyBuilderAccess_Set) : TNCEnum;
var
	oFlag: TAssemblyBuilderAccess;
begin
	Result := $0000000;
	for oFlag:= Low(TAssemblyBuilderAccess) to High(TAssemblyBuilderAccess) do
		if oFlag in Flags then
			Result := Result or AssemblyBuilderAccessValues[oFlag];
end;


function ToNCEnum(Flags: TAssemblyNameFlags_Set) : TNCEnum;
var
	oFlag: TAssemblyNameFlags;
begin
	Result := $0000000;
	for oFlag:= Low(TAssemblyNameFlags) to High(TAssemblyNameFlags) do
		if oFlag in Flags then
			Result := Result or AssemblyNameFlagsValues[oFlag];
end;


function ToNCEnum(Flags: TAttributeTargets_Set) : TNCEnum;
var
	oFlag: TAttributeTargets;
begin
	Result := $0000000;
	for oFlag:= Low(TAttributeTargets) to High(TAttributeTargets) do
		if oFlag in Flags then
			Result := Result or AttributeTargetsValues[oFlag];
end;


function ToNCEnum(Flags: TBase64FormattingOptions_Set) : TNCEnum;
var
	oFlag: TBase64FormattingOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TBase64FormattingOptions) to High(TBase64FormattingOptions) do
		if oFlag in Flags then
			Result := Result or Base64FormattingOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TBindingFlags_Set) : TNCEnum;
var
	oFlag: TBindingFlags;
begin
	Result := $0000000;
	for oFlag:= Low(TBindingFlags) to High(TBindingFlags) do
		if oFlag in Flags then
			Result := Result or BindingFlagsValues[oFlag];
end;


function ToNCEnum(Flags: TCallingConventions_Set) : TNCEnum;
var
	oFlag: TCallingConventions;
begin
	Result := $0000000;
	for oFlag:= Low(TCallingConventions) to High(TCallingConventions) do
		if oFlag in Flags then
			Result := Result or CallingConventionsValues[oFlag];
end;


function ToNCEnum(Flags: TCompareOptions_Set) : TNCEnum;
var
	oFlag: TCompareOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TCompareOptions) to High(TCompareOptions) do
		if oFlag in Flags then
			Result := Result or CompareOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TCompilationRelaxations_Set) : TNCEnum;
var
	oFlag: TCompilationRelaxations;
begin
	Result := $0000000;
	for oFlag:= Low(TCompilationRelaxations) to High(TCompilationRelaxations) do
		if oFlag in Flags then
			Result := Result or CompilationRelaxationsValues[oFlag];
end;


function ToNCEnum(Flags: TComponentGuaranteesOptions_Set) : TNCEnum;
var
	oFlag: TComponentGuaranteesOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TComponentGuaranteesOptions) to High(TComponentGuaranteesOptions) do
		if oFlag in Flags then
			Result := Result or ComponentGuaranteesOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TCreateComInterfaceFlags_Set) : TNCEnum;
var
	oFlag: TCreateComInterfaceFlags;
begin
	Result := $0000000;
	for oFlag:= Low(TCreateComInterfaceFlags) to High(TCreateComInterfaceFlags) do
		if oFlag in Flags then
			Result := Result or CreateComInterfaceFlagsValues[oFlag];
end;


function ToNCEnum(Flags: TCreateObjectFlags_Set) : TNCEnum;
var
	oFlag: TCreateObjectFlags;
begin
	Result := $0000000;
	for oFlag:= Low(TCreateObjectFlags) to High(TCreateObjectFlags) do
		if oFlag in Flags then
			Result := Result or CreateObjectFlagsValues[oFlag];
end;


function ToNCEnum(Flags: TCultureTypes_Set) : TNCEnum;
var
	oFlag: TCultureTypes;
begin
	Result := $0000000;
	for oFlag:= Low(TCultureTypes) to High(TCultureTypes) do
		if oFlag in Flags then
			Result := Result or CultureTypesValues[oFlag];
end;


function ToNCEnum(Flags: TDateTimeStyles_Set) : TNCEnum;
var
	oFlag: TDateTimeStyles;
begin
	Result := $0000000;
	for oFlag:= Low(TDateTimeStyles) to High(TDateTimeStyles) do
		if oFlag in Flags then
			Result := Result or DateTimeStylesValues[oFlag];
end;


function ToNCEnum(Flags: TDebuggingModes_Set) : TNCEnum;
var
	oFlag: TDebuggingModes;
begin
	Result := $0000000;
	for oFlag:= Low(TDebuggingModes) to High(TDebuggingModes) do
		if oFlag in Flags then
			Result := Result or DebuggingModesValues[oFlag];
end;


function ToNCEnum(Flags: TDllImportSearchPath_Set) : TNCEnum;
var
	oFlag: TDllImportSearchPath;
begin
	Result := $0000000;
	for oFlag:= Low(TDllImportSearchPath) to High(TDllImportSearchPath) do
		if oFlag in Flags then
			Result := Result or DllImportSearchPathValues[oFlag];
end;


function ToNCEnum(Flags: TDynamicallyAccessedMemberTypes_Set) : TNCEnum;
var
	oFlag: TDynamicallyAccessedMemberTypes;
begin
	Result := $0000000;
	for oFlag:= Low(TDynamicallyAccessedMemberTypes) to High(TDynamicallyAccessedMemberTypes) do
		if oFlag in Flags then
			Result := Result or DynamicallyAccessedMemberTypesValues[oFlag];
end;


function ToNCEnum(Flags: TEventActivityOptions_Set) : TNCEnum;
var
	oFlag: TEventActivityOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TEventActivityOptions) to High(TEventActivityOptions) do
		if oFlag in Flags then
			Result := Result or EventActivityOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TEventAttributes_Set) : TNCEnum;
var
	oFlag: TEventAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TEventAttributes) to High(TEventAttributes) do
		if oFlag in Flags then
			Result := Result or EventAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TEventFieldTags_Set) : TNCEnum;
var
	oFlag: TEventFieldTags;
begin
	Result := $0000000;
	for oFlag:= Low(TEventFieldTags) to High(TEventFieldTags) do
		if oFlag in Flags then
			Result := Result or EventFieldTagsValues[oFlag];
end;


function ToNCEnum(Flags: TEventKeywords_Set) : TNCEnum;
var
	oFlag: TEventKeywords;
begin
	Result := $0000000;
	for oFlag:= Low(TEventKeywords) to High(TEventKeywords) do
		if oFlag in Flags then
			Result := Result or EventKeywordsValues[oFlag];
end;


function ToNCEnum(Flags: TEventManifestOptions_Set) : TNCEnum;
var
	oFlag: TEventManifestOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TEventManifestOptions) to High(TEventManifestOptions) do
		if oFlag in Flags then
			Result := Result or EventManifestOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TEventSourceSettings_Set) : TNCEnum;
var
	oFlag: TEventSourceSettings;
begin
	Result := $0000000;
	for oFlag:= Low(TEventSourceSettings) to High(TEventSourceSettings) do
		if oFlag in Flags then
			Result := Result or EventSourceSettingsValues[oFlag];
end;


function ToNCEnum(Flags: TEventTags_Set) : TNCEnum;
var
	oFlag: TEventTags;
begin
	Result := $0000000;
	for oFlag:= Low(TEventTags) to High(TEventTags) do
		if oFlag in Flags then
			Result := Result or EventTagsValues[oFlag];
end;


function ToNCEnum(Flags: TExceptionHandlingClauseOptions_Set) : TNCEnum;
var
	oFlag: TExceptionHandlingClauseOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TExceptionHandlingClauseOptions) to High(TExceptionHandlingClauseOptions) do
		if oFlag in Flags then
			Result := Result or ExceptionHandlingClauseOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TFieldAttributes_Set) : TNCEnum;
var
	oFlag: TFieldAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TFieldAttributes) to High(TFieldAttributes) do
		if oFlag in Flags then
			Result := Result or FieldAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TFileAccess_Set) : TNCEnum;
var
	oFlag: TFileAccess;
begin
	Result := $0000000;
	for oFlag:= Low(TFileAccess) to High(TFileAccess) do
		if oFlag in Flags then
			Result := Result or FileAccessValues[oFlag];
end;


function ToNCEnum(Flags: TFileAttributes_Set) : TNCEnum;
var
	oFlag: TFileAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TFileAttributes) to High(TFileAttributes) do
		if oFlag in Flags then
			Result := Result or FileAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TFileOptions_Set) : TNCEnum;
var
	oFlag: TFileOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TFileOptions) to High(TFileOptions) do
		if oFlag in Flags then
			Result := Result or FileOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TFileShare_Set) : TNCEnum;
var
	oFlag: TFileShare;
begin
	Result := $0000000;
	for oFlag:= Low(TFileShare) to High(TFileShare) do
		if oFlag in Flags then
			Result := Result or FileShareValues[oFlag];
end;


function ToNCEnum(Flags: TFUNCFLAGS_Set) : TNCEnum;
var
	oFlag: TFUNCFLAGS;
begin
	Result := $0000000;
	for oFlag:= Low(TFUNCFLAGS) to High(TFUNCFLAGS) do
		if oFlag in Flags then
			Result := Result or FUNCFLAGSValues[oFlag];
end;


function ToNCEnum(Flags: TGenericParameterAttributes_Set) : TNCEnum;
var
	oFlag: TGenericParameterAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TGenericParameterAttributes) to High(TGenericParameterAttributes) do
		if oFlag in Flags then
			Result := Result or GenericParameterAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TIDLFLAG_Set) : TNCEnum;
var
	oFlag: TIDLFLAG;
begin
	Result := $0000000;
	for oFlag:= Low(TIDLFLAG) to High(TIDLFLAG) do
		if oFlag in Flags then
			Result := Result or IDLFLAGValues[oFlag];
end;


function ToNCEnum(Flags: TIMPLTYPEFLAGS_Set) : TNCEnum;
var
	oFlag: TIMPLTYPEFLAGS;
begin
	Result := $0000000;
	for oFlag:= Low(TIMPLTYPEFLAGS) to High(TIMPLTYPEFLAGS) do
		if oFlag in Flags then
			Result := Result or IMPLTYPEFLAGSValues[oFlag];
end;


function ToNCEnum(Flags: TINVOKEKIND_Set) : TNCEnum;
var
	oFlag: TINVOKEKIND;
begin
	Result := $0000000;
	for oFlag:= Low(TINVOKEKIND) to High(TINVOKEKIND) do
		if oFlag in Flags then
			Result := Result or INVOKEKINDValues[oFlag];
end;


function ToNCEnum(Flags: TLIBFLAGS_Set) : TNCEnum;
var
	oFlag: TLIBFLAGS;
begin
	Result := $0000000;
	for oFlag:= Low(TLIBFLAGS) to High(TLIBFLAGS) do
		if oFlag in Flags then
			Result := Result or LIBFLAGSValues[oFlag];
end;


function ToNCEnum(Flags: TMemberTypes_Set) : TNCEnum;
var
	oFlag: TMemberTypes;
begin
	Result := $0000000;
	for oFlag:= Low(TMemberTypes) to High(TMemberTypes) do
		if oFlag in Flags then
			Result := Result or MemberTypesValues[oFlag];
end;


function ToNCEnum(Flags: TMethodAttributes_Set) : TNCEnum;
var
	oFlag: TMethodAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TMethodAttributes) to High(TMethodAttributes) do
		if oFlag in Flags then
			Result := Result or MethodAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TMethodImplOptions_Set) : TNCEnum;
var
	oFlag: TMethodImplOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TMethodImplOptions) to High(TMethodImplOptions) do
		if oFlag in Flags then
			Result := Result or MethodImplOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TNumberStyles_Set) : TNCEnum;
var
	oFlag: TNumberStyles;
begin
	Result := $0000000;
	for oFlag:= Low(TNumberStyles) to High(TNumberStyles) do
		if oFlag in Flags then
			Result := Result or NumberStylesValues[oFlag];
end;


function ToNCEnum(Flags: TParameterAttributes_Set) : TNCEnum;
var
	oFlag: TParameterAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TParameterAttributes) to High(TParameterAttributes) do
		if oFlag in Flags then
			Result := Result or ParameterAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TPARAMFLAG_Set) : TNCEnum;
var
	oFlag: TPARAMFLAG;
begin
	Result := $0000000;
	for oFlag:= Low(TPARAMFLAG) to High(TPARAMFLAG) do
		if oFlag in Flags then
			Result := Result or PARAMFLAGValues[oFlag];
end;


function ToNCEnum(Flags: TPortableExecutableKinds_Set) : TNCEnum;
var
	oFlag: TPortableExecutableKinds;
begin
	Result := $0000000;
	for oFlag:= Low(TPortableExecutableKinds) to High(TPortableExecutableKinds) do
		if oFlag in Flags then
			Result := Result or PortableExecutableKindsValues[oFlag];
end;


function ToNCEnum(Flags: TPropertyAttributes_Set) : TNCEnum;
var
	oFlag: TPropertyAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TPropertyAttributes) to High(TPropertyAttributes) do
		if oFlag in Flags then
			Result := Result or PropertyAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TResourceAttributes_Set) : TNCEnum;
var
	oFlag: TResourceAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TResourceAttributes) to High(TResourceAttributes) do
		if oFlag in Flags then
			Result := Result or ResourceAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TResourceLocation_Set) : TNCEnum;
var
	oFlag: TResourceLocation;
begin
	Result := $0000000;
	for oFlag:= Low(TResourceLocation) to High(TResourceLocation) do
		if oFlag in Flags then
			Result := Result or ResourceLocationValues[oFlag];
end;


function ToNCEnum(Flags: TResourceScope_Set) : TNCEnum;
var
	oFlag: TResourceScope;
begin
	Result := $0000000;
	for oFlag:= Low(TResourceScope) to High(TResourceScope) do
		if oFlag in Flags then
			Result := Result or ResourceScopeValues[oFlag];
end;


function ToNCEnum(Flags: TSecurityPermissionFlag_Set) : TNCEnum;
var
	oFlag: TSecurityPermissionFlag;
begin
	Result := $0000000;
	for oFlag:= Low(TSecurityPermissionFlag) to High(TSecurityPermissionFlag) do
		if oFlag in Flags then
			Result := Result or SecurityPermissionFlagValues[oFlag];
end;


function ToNCEnum(Flags: TStreamingContextStates_Set) : TNCEnum;
var
	oFlag: TStreamingContextStates;
begin
	Result := $0000000;
	for oFlag:= Low(TStreamingContextStates) to High(TStreamingContextStates) do
		if oFlag in Flags then
			Result := Result or StreamingContextStatesValues[oFlag];
end;


function ToNCEnum(Flags: TStringSplitOptions_Set) : TNCEnum;
var
	oFlag: TStringSplitOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TStringSplitOptions) to High(TStringSplitOptions) do
		if oFlag in Flags then
			Result := Result or StringSplitOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TTaskContinuationOptions_Set) : TNCEnum;
var
	oFlag: TTaskContinuationOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TTaskContinuationOptions) to High(TTaskContinuationOptions) do
		if oFlag in Flags then
			Result := Result or TaskContinuationOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TTaskCreationOptions_Set) : TNCEnum;
var
	oFlag: TTaskCreationOptions;
begin
	Result := $0000000;
	for oFlag:= Low(TTaskCreationOptions) to High(TTaskCreationOptions) do
		if oFlag in Flags then
			Result := Result or TaskCreationOptionsValues[oFlag];
end;


function ToNCEnum(Flags: TThreadState_Set) : TNCEnum;
var
	oFlag: TThreadState;
begin
	Result := $0000000;
	for oFlag:= Low(TThreadState) to High(TThreadState) do
		if oFlag in Flags then
			Result := Result or ThreadStateValues[oFlag];
end;


function ToNCEnum(Flags: TTimeSpanStyles_Set) : TNCEnum;
var
	oFlag: TTimeSpanStyles;
begin
	Result := $0000000;
	for oFlag:= Low(TTimeSpanStyles) to High(TTimeSpanStyles) do
		if oFlag in Flags then
			Result := Result or TimeSpanStylesValues[oFlag];
end;


function ToNCEnum(Flags: TTypeAttributes_Set) : TNCEnum;
var
	oFlag: TTypeAttributes;
begin
	Result := $0000000;
	for oFlag:= Low(TTypeAttributes) to High(TTypeAttributes) do
		if oFlag in Flags then
			Result := Result or TypeAttributesValues[oFlag];
end;


function ToNCEnum(Flags: TTYPEFLAGS_Set) : TNCEnum;
var
	oFlag: TTYPEFLAGS;
begin
	Result := $0000000;
	for oFlag:= Low(TTYPEFLAGS) to High(TTYPEFLAGS) do
		if oFlag in Flags then
			Result := Result or TYPEFLAGSValues[oFlag];
end;


function ToNCEnum(Flags: TValueTaskSourceOnCompletedFlags_Set) : TNCEnum;
var
	oFlag: TValueTaskSourceOnCompletedFlags;
begin
	Result := $0000000;
	for oFlag:= Low(TValueTaskSourceOnCompletedFlags) to High(TValueTaskSourceOnCompletedFlags) do
		if oFlag in Flags then
			Result := Result or ValueTaskSourceOnCompletedFlagsValues[oFlag];
end;


function ToNCEnum(Flags: TVARFLAGS_Set) : TNCEnum;
var
	oFlag: TVARFLAGS;
begin
	Result := $0000000;
	for oFlag:= Low(TVARFLAGS) to High(TVARFLAGS) do
		if oFlag in Flags then
			Result := Result or VARFLAGSValues[oFlag];
end;


function NCEnumAsAssemblyBuilderAccess(AssemblyBuilderAccess: TNCEnum) : TAssemblyBuilderAccess_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TAssemblyBuilderAccess_Set>(SYSTEM_REFLECTION_EMIT_ASSEMBLYBUILDERACCESS, AssemblyBuilderAccess);
end;


function NCEnumAsAssemblyNameFlags(AssemblyNameFlags: TNCEnum) : TAssemblyNameFlags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TAssemblyNameFlags_Set>(SYSTEM_REFLECTION_ASSEMBLYNAMEFLAGS, AssemblyNameFlags);
end;


function NCEnumAsAttributeTargets(AttributeTargets: TNCEnum) : TAttributeTargets_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TAttributeTargets_Set>(SYSTEM_ATTRIBUTETARGETS, AttributeTargets);
end;


function NCEnumAsBase64FormattingOptions(Base64FormattingOptions: TNCEnum) : TBase64FormattingOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TBase64FormattingOptions_Set>(SYSTEM_BASE64FORMATTINGOPTIONS, Base64FormattingOptions);
end;


function NCEnumAsBindingFlags(BindingFlags: TNCEnum) : TBindingFlags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TBindingFlags_Set>(SYSTEM_REFLECTION_BINDINGFLAGS, BindingFlags);
end;


function NCEnumAsCallingConventions(CallingConventions: TNCEnum) : TCallingConventions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCallingConventions_Set>(SYSTEM_REFLECTION_CALLINGCONVENTIONS, CallingConventions);
end;


function NCEnumAsCompareOptions(CompareOptions: TNCEnum) : TCompareOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCompareOptions_Set>(SYSTEM_GLOBALIZATION_COMPAREOPTIONS, CompareOptions);
end;


function NCEnumAsCompilationRelaxations(CompilationRelaxations: TNCEnum) : TCompilationRelaxations_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCompilationRelaxations_Set>(SYSTEM_RUNTIME_COMPILERSERVICES_COMPILATIONRELAXATIONS, CompilationRelaxations);
end;


function NCEnumAsComponentGuaranteesOptions(ComponentGuaranteesOptions: TNCEnum) : TComponentGuaranteesOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TComponentGuaranteesOptions_Set>(SYSTEM_RUNTIME_VERSIONING_COMPONENTGUARANTEESOPTIONS, ComponentGuaranteesOptions);
end;


function NCEnumAsCreateComInterfaceFlags(CreateComInterfaceFlags: TNCEnum) : TCreateComInterfaceFlags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCreateComInterfaceFlags_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_CREATECOMINTERFACEFLAGS, CreateComInterfaceFlags);
end;


function NCEnumAsCreateObjectFlags(CreateObjectFlags: TNCEnum) : TCreateObjectFlags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCreateObjectFlags_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_CREATEOBJECTFLAGS, CreateObjectFlags);
end;


function NCEnumAsCultureTypes(CultureTypes: TNCEnum) : TCultureTypes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TCultureTypes_Set>(SYSTEM_GLOBALIZATION_CULTURETYPES, CultureTypes);
end;


function NCEnumAsDateTimeStyles(DateTimeStyles: TNCEnum) : TDateTimeStyles_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TDateTimeStyles_Set>(SYSTEM_GLOBALIZATION_DATETIMESTYLES, DateTimeStyles);
end;


function NCEnumAsDebuggingModes(DebuggingModes: TNCEnum) : TDebuggingModes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TDebuggingModes_Set>(SYSTEM_DIAGNOSTICS_DEBUGGINGMODES, DebuggingModes);
end;


function NCEnumAsDllImportSearchPath(DllImportSearchPath: TNCEnum) : TDllImportSearchPath_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TDllImportSearchPath_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_DLLIMPORTSEARCHPATH, DllImportSearchPath);
end;


function NCEnumAsDynamicallyAccessedMemberTypes(DynamicallyAccessedMemberTypes: TNCEnum) : TDynamicallyAccessedMemberTypes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TDynamicallyAccessedMemberTypes_Set>(SYSTEM_DIAGNOSTICS_CODEANALYSIS_DYNAMICALLYACCESSEDMEMBERTYPES, DynamicallyAccessedMemberTypes);
end;


function NCEnumAsEventActivityOptions(EventActivityOptions: TNCEnum) : TEventActivityOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventActivityOptions_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTACTIVITYOPTIONS, EventActivityOptions);
end;


function NCEnumAsEventAttributes(EventAttributes: TNCEnum) : TEventAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventAttributes_Set>(SYSTEM_REFLECTION_EVENTATTRIBUTES, EventAttributes);
end;


function NCEnumAsEventFieldTags(EventFieldTags: TNCEnum) : TEventFieldTags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventFieldTags_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTFIELDTAGS, EventFieldTags);
end;


function NCEnumAsEventKeywords(EventKeywords: TNCEnum) : TEventKeywords_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventKeywords_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTKEYWORDS, EventKeywords);
end;


function NCEnumAsEventManifestOptions(EventManifestOptions: TNCEnum) : TEventManifestOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventManifestOptions_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTMANIFESTOPTIONS, EventManifestOptions);
end;


function NCEnumAsEventSourceSettings(EventSourceSettings: TNCEnum) : TEventSourceSettings_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventSourceSettings_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTSOURCESETTINGS, EventSourceSettings);
end;


function NCEnumAsEventTags(EventTags: TNCEnum) : TEventTags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TEventTags_Set>(SYSTEM_DIAGNOSTICS_TRACING_EVENTTAGS, EventTags);
end;


function NCEnumAsExceptionHandlingClauseOptions(ExceptionHandlingClauseOptions: TNCEnum) : TExceptionHandlingClauseOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TExceptionHandlingClauseOptions_Set>(SYSTEM_REFLECTION_EXCEPTIONHANDLINGCLAUSEOPTIONS, ExceptionHandlingClauseOptions);
end;


function NCEnumAsFieldAttributes(FieldAttributes: TNCEnum) : TFieldAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFieldAttributes_Set>(SYSTEM_REFLECTION_FIELDATTRIBUTES, FieldAttributes);
end;


function NCEnumAsFileAccess(FileAccess: TNCEnum) : TFileAccess_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFileAccess_Set>(SYSTEM_IO_FILEACCESS, FileAccess);
end;


function NCEnumAsFileAttributes(FileAttributes: TNCEnum) : TFileAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFileAttributes_Set>(SYSTEM_IO_FILEATTRIBUTES, FileAttributes);
end;


function NCEnumAsFileOptions(FileOptions: TNCEnum) : TFileOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFileOptions_Set>(SYSTEM_IO_FILEOPTIONS, FileOptions);
end;


function NCEnumAsFileShare(FileShare: TNCEnum) : TFileShare_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFileShare_Set>(SYSTEM_IO_FILESHARE, FileShare);
end;


function NCEnumAsFUNCFLAGS(FUNCFLAGS: TNCEnum) : TFUNCFLAGS_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TFUNCFLAGS_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_FUNCFLAGS, FUNCFLAGS);
end;


function NCEnumAsGenericParameterAttributes(GenericParameterAttributes: TNCEnum) : TGenericParameterAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TGenericParameterAttributes_Set>(SYSTEM_REFLECTION_GENERICPARAMETERATTRIBUTES, GenericParameterAttributes);
end;


function NCEnumAsIDLFLAG(IDLFLAG: TNCEnum) : TIDLFLAG_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TIDLFLAG_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IDLFLAG, IDLFLAG);
end;


function NCEnumAsIMPLTYPEFLAGS(IMPLTYPEFLAGS: TNCEnum) : TIMPLTYPEFLAGS_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TIMPLTYPEFLAGS_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IMPLTYPEFLAGS, IMPLTYPEFLAGS);
end;


function NCEnumAsINVOKEKIND(INVOKEKIND: TNCEnum) : TINVOKEKIND_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TINVOKEKIND_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_INVOKEKIND, INVOKEKIND);
end;


function NCEnumAsLIBFLAGS(LIBFLAGS: TNCEnum) : TLIBFLAGS_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TLIBFLAGS_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_LIBFLAGS, LIBFLAGS);
end;


function NCEnumAsMemberTypes(MemberTypes: TNCEnum) : TMemberTypes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TMemberTypes_Set>(SYSTEM_REFLECTION_MEMBERTYPES, MemberTypes);
end;


function NCEnumAsMethodAttributes(MethodAttributes: TNCEnum) : TMethodAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TMethodAttributes_Set>(SYSTEM_REFLECTION_METHODATTRIBUTES, MethodAttributes);
end;


function NCEnumAsMethodImplOptions(MethodImplOptions: TNCEnum) : TMethodImplOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TMethodImplOptions_Set>(SYSTEM_RUNTIME_COMPILERSERVICES_METHODIMPLOPTIONS, MethodImplOptions);
end;


function NCEnumAsNumberStyles(NumberStyles: TNCEnum) : TNumberStyles_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TNumberStyles_Set>(SYSTEM_GLOBALIZATION_NUMBERSTYLES, NumberStyles);
end;


function NCEnumAsParameterAttributes(ParameterAttributes: TNCEnum) : TParameterAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TParameterAttributes_Set>(SYSTEM_REFLECTION_PARAMETERATTRIBUTES, ParameterAttributes);
end;


function NCEnumAsPARAMFLAG(PARAMFLAG: TNCEnum) : TPARAMFLAG_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TPARAMFLAG_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_PARAMFLAG, PARAMFLAG);
end;


function NCEnumAsPortableExecutableKinds(PortableExecutableKinds: TNCEnum) : TPortableExecutableKinds_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TPortableExecutableKinds_Set>(SYSTEM_REFLECTION_PORTABLEEXECUTABLEKINDS, PortableExecutableKinds);
end;


function NCEnumAsPropertyAttributes(PropertyAttributes: TNCEnum) : TPropertyAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TPropertyAttributes_Set>(SYSTEM_REFLECTION_PROPERTYATTRIBUTES, PropertyAttributes);
end;


function NCEnumAsResourceAttributes(ResourceAttributes: TNCEnum) : TResourceAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TResourceAttributes_Set>(SYSTEM_REFLECTION_RESOURCEATTRIBUTES, ResourceAttributes);
end;


function NCEnumAsResourceLocation(ResourceLocation: TNCEnum) : TResourceLocation_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TResourceLocation_Set>(SYSTEM_REFLECTION_RESOURCELOCATION, ResourceLocation);
end;


function NCEnumAsResourceScope(ResourceScope: TNCEnum) : TResourceScope_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TResourceScope_Set>(SYSTEM_RUNTIME_VERSIONING_RESOURCESCOPE, ResourceScope);
end;


function NCEnumAsSecurityPermissionFlag(SecurityPermissionFlag: TNCEnum) : TSecurityPermissionFlag_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TSecurityPermissionFlag_Set>(SYSTEM_SECURITY_PERMISSIONS_SECURITYPERMISSIONFLAG, SecurityPermissionFlag);
end;


function NCEnumAsStreamingContextStates(StreamingContextStates: TNCEnum) : TStreamingContextStates_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TStreamingContextStates_Set>(SYSTEM_RUNTIME_SERIALIZATION_STREAMINGCONTEXTSTATES, StreamingContextStates);
end;


function NCEnumAsStringSplitOptions(StringSplitOptions: TNCEnum) : TStringSplitOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TStringSplitOptions_Set>(SYSTEM_STRINGSPLITOPTIONS, StringSplitOptions);
end;


function NCEnumAsTaskContinuationOptions(TaskContinuationOptions: TNCEnum) : TTaskContinuationOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TTaskContinuationOptions_Set>(SYSTEM_THREADING_TASKS_TASKCONTINUATIONOPTIONS, TaskContinuationOptions);
end;


function NCEnumAsTaskCreationOptions(TaskCreationOptions: TNCEnum) : TTaskCreationOptions_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TTaskCreationOptions_Set>(SYSTEM_THREADING_TASKS_TASKCREATIONOPTIONS, TaskCreationOptions);
end;


function NCEnumAsThreadState(ThreadState: TNCEnum) : TThreadState_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TThreadState_Set>(SYSTEM_THREADING_THREADSTATE, ThreadState);
end;


function NCEnumAsTimeSpanStyles(TimeSpanStyles: TNCEnum) : TTimeSpanStyles_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TTimeSpanStyles_Set>(SYSTEM_GLOBALIZATION_TIMESPANSTYLES, TimeSpanStyles);
end;


function NCEnumAsTypeAttributes(TypeAttributes: TNCEnum) : TTypeAttributes_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TTypeAttributes_Set>(SYSTEM_REFLECTION_TYPEATTRIBUTES, TypeAttributes);
end;


function NCEnumAsTYPEFLAGS(TYPEFLAGS: TNCEnum) : TTYPEFLAGS_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TTYPEFLAGS_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_TYPEFLAGS, TYPEFLAGS);
end;


function NCEnumAsValueTaskSourceOnCompletedFlags(ValueTaskSourceOnCompletedFlags: TNCEnum) : TValueTaskSourceOnCompletedFlags_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TValueTaskSourceOnCompletedFlags_Set>(SYSTEM_THREADING_TASKS_SOURCES_VALUETASKSOURCEONCOMPLETEDFLAGS, ValueTaskSourceOnCompletedFlags);
end;


function NCEnumAsVARFLAGS(VARFLAGS: TNCEnum) : TVARFLAGS_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TVARFLAGS_Set>(SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_VARFLAGS, VARFLAGS);
end;


procedure RegisterTypes;
begin
	TRegClrEnumTypes.RegisterType(TypeInfo(TApartmentState), SYSTEM_THREADING_APARTMENTSTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyBuilderAccess), SYSTEM_REFLECTION_EMIT_ASSEMBLYBUILDERACCESS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyBuilderAccess_Set), SYSTEM_REFLECTION_EMIT_ASSEMBLYBUILDERACCESS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyContentType), SYSTEM_REFLECTION_ASSEMBLYCONTENTTYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyHashAlgorithm), SYSTEM_CONFIGURATION_ASSEMBLIES_ASSEMBLYHASHALGORITHM);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyNameFlags), SYSTEM_REFLECTION_ASSEMBLYNAMEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyNameFlags_Set), SYSTEM_REFLECTION_ASSEMBLYNAMEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAssemblyVersionCompatibility), SYSTEM_CONFIGURATION_ASSEMBLIES_ASSEMBLYVERSIONCOMPATIBILITY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAttributeTargets), SYSTEM_ATTRIBUTETARGETS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TAttributeTargets_Set), SYSTEM_ATTRIBUTETARGETS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TBase64FormattingOptions), SYSTEM_BASE64FORMATTINGOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TBase64FormattingOptions_Set), SYSTEM_BASE64FORMATTINGOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TBindingFlags), SYSTEM_REFLECTION_BINDINGFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TBindingFlags_Set), SYSTEM_REFLECTION_BINDINGFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCalendarAlgorithmType), SYSTEM_GLOBALIZATION_CALENDARALGORITHMTYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCalendarWeekRule), SYSTEM_GLOBALIZATION_CALENDARWEEKRULE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCALLCONV), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_CALLCONV);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCallingConvention), SYSTEM_RUNTIME_INTEROPSERVICES_CALLINGCONVENTION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCallingConventions), SYSTEM_REFLECTION_CALLINGCONVENTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCallingConventions_Set), SYSTEM_REFLECTION_CALLINGCONVENTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCer), SYSTEM_RUNTIME_CONSTRAINEDEXECUTION_CER);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCharSet), SYSTEM_RUNTIME_INTEROPSERVICES_CHARSET);
	TRegClrEnumTypes.RegisterType(TypeInfo(TClassInterfaceType), SYSTEM_RUNTIME_INTEROPSERVICES_CLASSINTERFACETYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TComInterfaceType), SYSTEM_RUNTIME_INTEROPSERVICES_COMINTERFACETYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TComMemberType), SYSTEM_RUNTIME_INTEROPSERVICES_COMMEMBERTYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCompareOptions), SYSTEM_GLOBALIZATION_COMPAREOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCompareOptions_Set), SYSTEM_GLOBALIZATION_COMPAREOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCompilationRelaxations), SYSTEM_RUNTIME_COMPILERSERVICES_COMPILATIONRELAXATIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCompilationRelaxations_Set), SYSTEM_RUNTIME_COMPILERSERVICES_COMPILATIONRELAXATIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TComponentGuaranteesOptions), SYSTEM_RUNTIME_VERSIONING_COMPONENTGUARANTEESOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TComponentGuaranteesOptions_Set), SYSTEM_RUNTIME_VERSIONING_COMPONENTGUARANTEESOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsistency), SYSTEM_RUNTIME_CONSTRAINEDEXECUTION_CONSISTENCY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TContractFailureKind), SYSTEM_DIAGNOSTICS_CONTRACTS_CONTRACTFAILUREKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCreateComInterfaceFlags), SYSTEM_RUNTIME_INTEROPSERVICES_CREATECOMINTERFACEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCreateComInterfaceFlags_Set), SYSTEM_RUNTIME_INTEROPSERVICES_CREATECOMINTERFACEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCreateObjectFlags), SYSTEM_RUNTIME_INTEROPSERVICES_CREATEOBJECTFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCreateObjectFlags_Set), SYSTEM_RUNTIME_INTEROPSERVICES_CREATEOBJECTFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCultureTypes), SYSTEM_GLOBALIZATION_CULTURETYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCultureTypes_Set), SYSTEM_GLOBALIZATION_CULTURETYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCustomQueryInterfaceMode), SYSTEM_RUNTIME_INTEROPSERVICES_CUSTOMQUERYINTERFACEMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TCustomQueryInterfaceResult), SYSTEM_RUNTIME_INTEROPSERVICES_CUSTOMQUERYINTERFACERESULT);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDateTimeKind), SYSTEM_DATETIMEKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDateTimeStyles), SYSTEM_GLOBALIZATION_DATETIMESTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDateTimeStyles_Set), SYSTEM_GLOBALIZATION_DATETIMESTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDayOfWeek), SYSTEM_DAYOFWEEK);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDebuggerBrowsableState), SYSTEM_DIAGNOSTICS_DEBUGGERBROWSABLESTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDebuggingModes), SYSTEM_DIAGNOSTICS_DEBUGGINGMODES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDebuggingModes_Set), SYSTEM_DIAGNOSTICS_DEBUGGINGMODES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDESCKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_DESCKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDigitShapes), SYSTEM_GLOBALIZATION_DIGITSHAPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDllImportSearchPath), SYSTEM_RUNTIME_INTEROPSERVICES_DLLIMPORTSEARCHPATH);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDllImportSearchPath_Set), SYSTEM_RUNTIME_INTEROPSERVICES_DLLIMPORTSEARCHPATH);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDynamicallyAccessedMemberTypes), SYSTEM_DIAGNOSTICS_CODEANALYSIS_DYNAMICALLYACCESSEDMEMBERTYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TDynamicallyAccessedMemberTypes_Set), SYSTEM_DIAGNOSTICS_CODEANALYSIS_DYNAMICALLYACCESSEDMEMBERTYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEditorBrowsableState), SYSTEM_COMPONENTMODEL_EDITORBROWSABLESTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEnvironmentVariableTarget), SYSTEM_ENVIRONMENTVARIABLETARGET);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventActivityOptions), SYSTEM_DIAGNOSTICS_TRACING_EVENTACTIVITYOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventActivityOptions_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTACTIVITYOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventAttributes), SYSTEM_REFLECTION_EVENTATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventAttributes_Set), SYSTEM_REFLECTION_EVENTATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventChannel), SYSTEM_DIAGNOSTICS_TRACING_EVENTCHANNEL);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventCommand), SYSTEM_DIAGNOSTICS_TRACING_EVENTCOMMAND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventFieldFormat), SYSTEM_DIAGNOSTICS_TRACING_EVENTFIELDFORMAT);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventFieldTags), SYSTEM_DIAGNOSTICS_TRACING_EVENTFIELDTAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventFieldTags_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTFIELDTAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventKeywords), SYSTEM_DIAGNOSTICS_TRACING_EVENTKEYWORDS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventKeywords_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTKEYWORDS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventLevel), SYSTEM_DIAGNOSTICS_TRACING_EVENTLEVEL);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventManifestOptions), SYSTEM_DIAGNOSTICS_TRACING_EVENTMANIFESTOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventManifestOptions_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTMANIFESTOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventOpcode), SYSTEM_DIAGNOSTICS_TRACING_EVENTOPCODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventResetMode), SYSTEM_THREADING_EVENTRESETMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventSourceSettings), SYSTEM_DIAGNOSTICS_TRACING_EVENTSOURCESETTINGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventSourceSettings_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTSOURCESETTINGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventTags), SYSTEM_DIAGNOSTICS_TRACING_EVENTTAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventTags_Set), SYSTEM_DIAGNOSTICS_TRACING_EVENTTAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TEventTask), SYSTEM_DIAGNOSTICS_TRACING_EVENTTASK);
	TRegClrEnumTypes.RegisterType(TypeInfo(TExceptionHandlingClauseOptions), SYSTEM_REFLECTION_EXCEPTIONHANDLINGCLAUSEOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TExceptionHandlingClauseOptions_Set), SYSTEM_REFLECTION_EXCEPTIONHANDLINGCLAUSEOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFieldAttributes), SYSTEM_REFLECTION_FIELDATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFieldAttributes_Set), SYSTEM_REFLECTION_FIELDATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileAccess), SYSTEM_IO_FILEACCESS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileAccess_Set), SYSTEM_IO_FILEACCESS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileAttributes), SYSTEM_IO_FILEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileAttributes_Set), SYSTEM_IO_FILEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileMode), SYSTEM_IO_FILEMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileOptions), SYSTEM_IO_FILEOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileOptions_Set), SYSTEM_IO_FILEOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileShare), SYSTEM_IO_FILESHARE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFileShare_Set), SYSTEM_IO_FILESHARE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFloatComparisonMode), SYSTEM_RUNTIME_INTRINSICS_X86_FLOATCOMPARISONMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFlowControl), SYSTEM_REFLECTION_EMIT_FLOWCONTROL);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFUNCFLAGS), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_FUNCFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFUNCFLAGS_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_FUNCFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TFUNCKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_FUNCKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCCollectionMode), SYSTEM_GCCOLLECTIONMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCHandleType), SYSTEM_RUNTIME_INTEROPSERVICES_GCHANDLETYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCKind), SYSTEM_GCKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCLargeObjectHeapCompactionMode), SYSTEM_RUNTIME_GCLARGEOBJECTHEAPCOMPACTIONMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCLatencyMode), SYSTEM_RUNTIME_GCLATENCYMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGCNotificationStatus), SYSTEM_GCNOTIFICATIONSTATUS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGenericParameterAttributes), SYSTEM_REFLECTION_GENERICPARAMETERATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGenericParameterAttributes_Set), SYSTEM_REFLECTION_GENERICPARAMETERATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TGregorianCalendarTypes), SYSTEM_GLOBALIZATION_GREGORIANCALENDARTYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(THandleInheritability), SYSTEM_IO_HANDLEINHERITABILITY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TIDLFLAG), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IDLFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TIDLFLAG_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IDLFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TImageFileMachine), SYSTEM_REFLECTION_IMAGEFILEMACHINE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TIMPLTYPEFLAGS), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IMPLTYPEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TIMPLTYPEFLAGS_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_IMPLTYPEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TINVOKEKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_INVOKEKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TINVOKEKIND_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_INVOKEKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLayoutKind), SYSTEM_RUNTIME_INTEROPSERVICES_LAYOUTKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLazyThreadSafetyMode), SYSTEM_THREADING_LAZYTHREADSAFETYMODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLIBFLAGS), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_LIBFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLIBFLAGS_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_LIBFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLoaderOptimization), SYSTEM_LOADEROPTIMIZATION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLoadHint), SYSTEM_RUNTIME_COMPILERSERVICES_LOADHINT);
	TRegClrEnumTypes.RegisterType(TypeInfo(TLockRecursionPolicy), SYSTEM_THREADING_LOCKRECURSIONPOLICY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMemberTypes), SYSTEM_REFLECTION_MEMBERTYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMemberTypes_Set), SYSTEM_REFLECTION_MEMBERTYPES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodAttributes), SYSTEM_REFLECTION_METHODATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodAttributes_Set), SYSTEM_REFLECTION_METHODATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodCodeType), SYSTEM_RUNTIME_COMPILERSERVICES_METHODCODETYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodImplAttributes), SYSTEM_REFLECTION_METHODIMPLATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodImplOptions), SYSTEM_RUNTIME_COMPILERSERVICES_METHODIMPLOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMethodImplOptions_Set), SYSTEM_RUNTIME_COMPILERSERVICES_METHODIMPLOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TMidpointRounding), SYSTEM_MIDPOINTROUNDING);
	TRegClrEnumTypes.RegisterType(TypeInfo(TNormalizationForm), SYSTEM_TEXT_NORMALIZATIONFORM);
	TRegClrEnumTypes.RegisterType(TypeInfo(TNumberStyles), SYSTEM_GLOBALIZATION_NUMBERSTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TNumberStyles_Set), SYSTEM_GLOBALIZATION_NUMBERSTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TOpCodeType), SYSTEM_REFLECTION_EMIT_OPCODETYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TOperandType), SYSTEM_REFLECTION_EMIT_OPERANDTYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TOperationStatus), SYSTEM_BUFFERS_OPERATIONSTATUS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPackingSize), SYSTEM_REFLECTION_EMIT_PACKINGSIZE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TParameterAttributes), SYSTEM_REFLECTION_PARAMETERATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TParameterAttributes_Set), SYSTEM_REFLECTION_PARAMETERATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPARAMFLAG), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_PARAMFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPARAMFLAG_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_PARAMFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPartialTrustVisibilityLevel), SYSTEM_SECURITY_PARTIALTRUSTVISIBILITYLEVEL);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPEFileKinds), SYSTEM_REFLECTION_EMIT_PEFILEKINDS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPermissionState), SYSTEM_SECURITY_PERMISSIONS_PERMISSIONSTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPlatformID), SYSTEM_PLATFORMID);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPortableExecutableKinds), SYSTEM_REFLECTION_PORTABLEEXECUTABLEKINDS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPortableExecutableKinds_Set), SYSTEM_REFLECTION_PORTABLEEXECUTABLEKINDS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPrincipalPolicy), SYSTEM_SECURITY_PRINCIPAL_PRINCIPALPOLICY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TProcessorArchitecture), SYSTEM_REFLECTION_PROCESSORARCHITECTURE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPropertyAttributes), SYSTEM_REFLECTION_PROPERTYATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TPropertyAttributes_Set), SYSTEM_REFLECTION_PROPERTYATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceAttributes), SYSTEM_REFLECTION_RESOURCEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceAttributes_Set), SYSTEM_REFLECTION_RESOURCEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceLocation), SYSTEM_REFLECTION_RESOURCELOCATION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceLocation_Set), SYSTEM_REFLECTION_RESOURCELOCATION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceScope), SYSTEM_RUNTIME_VERSIONING_RESOURCESCOPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TResourceScope_Set), SYSTEM_RUNTIME_VERSIONING_RESOURCESCOPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSecurityAction), SYSTEM_SECURITY_PERMISSIONS_SECURITYACTION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSecurityCriticalScope), SYSTEM_SECURITY_SECURITYCRITICALSCOPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSecurityPermissionFlag), SYSTEM_SECURITY_PERMISSIONS_SECURITYPERMISSIONFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSecurityPermissionFlag_Set), SYSTEM_SECURITY_PERMISSIONS_SECURITYPERMISSIONFLAG);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSecurityRuleSet), SYSTEM_SECURITY_SECURITYRULESET);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSeekOrigin), SYSTEM_IO_SEEKORIGIN);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSpecialFolder), SYSTEM_SPECIALFOLDER);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSpecialFolderOption), SYSTEM_SPECIALFOLDEROPTION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStackBehaviour), SYSTEM_REFLECTION_EMIT_STACKBEHAVIOUR);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStreamingContextStates), SYSTEM_RUNTIME_SERIALIZATION_STREAMINGCONTEXTSTATES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStreamingContextStates_Set), SYSTEM_RUNTIME_SERIALIZATION_STREAMINGCONTEXTSTATES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStringComparison), SYSTEM_STRINGCOMPARISON);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStringSplitOptions), SYSTEM_STRINGSPLITOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TStringSplitOptions_Set), SYSTEM_STRINGSPLITOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TSYSKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_SYSKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTaskContinuationOptions), SYSTEM_THREADING_TASKS_TASKCONTINUATIONOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTaskContinuationOptions_Set), SYSTEM_THREADING_TASKS_TASKCONTINUATIONOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTaskCreationOptions), SYSTEM_THREADING_TASKS_TASKCREATIONOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTaskCreationOptions_Set), SYSTEM_THREADING_TASKS_TASKCREATIONOPTIONS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTaskStatus), SYSTEM_THREADING_TASKS_TASKSTATUS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TThreadPriority), SYSTEM_THREADING_THREADPRIORITY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TThreadState), SYSTEM_THREADING_THREADSTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TThreadState_Set), SYSTEM_THREADING_THREADSTATE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTimeSpanStyles), SYSTEM_GLOBALIZATION_TIMESPANSTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTimeSpanStyles_Set), SYSTEM_GLOBALIZATION_TIMESPANSTYLES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTokenImpersonationLevel), SYSTEM_SECURITY_PRINCIPAL_TOKENIMPERSONATIONLEVEL);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTypeAttributes), SYSTEM_REFLECTION_TYPEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTypeAttributes_Set), SYSTEM_REFLECTION_TYPEATTRIBUTES);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTypeCode), SYSTEM_TYPECODE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTYPEFLAGS), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_TYPEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTYPEFLAGS_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_TYPEFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TTYPEKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_TYPEKIND);
	TRegClrEnumTypes.RegisterType(TypeInfo(TUltimateResourceFallbackLocation), SYSTEM_RESOURCES_ULTIMATERESOURCEFALLBACKLOCATION);
	TRegClrEnumTypes.RegisterType(TypeInfo(TUnicodeCategory), SYSTEM_GLOBALIZATION_UNICODECATEGORY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TUnmanagedType), SYSTEM_RUNTIME_INTEROPSERVICES_UNMANAGEDTYPE);
	TRegClrEnumTypes.RegisterType(TypeInfo(TValueTaskSourceOnCompletedFlags), SYSTEM_THREADING_TASKS_SOURCES_VALUETASKSOURCEONCOMPLETEDFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TValueTaskSourceOnCompletedFlags_Set), SYSTEM_THREADING_TASKS_SOURCES_VALUETASKSOURCEONCOMPLETEDFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TValueTaskSourceStatus), SYSTEM_THREADING_TASKS_SOURCES_VALUETASKSOURCESTATUS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TVarEnum), SYSTEM_RUNTIME_INTEROPSERVICES_VARENUM);
	TRegClrEnumTypes.RegisterType(TypeInfo(TVARFLAGS), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_VARFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TVARFLAGS_Set), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_VARFLAGS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TVARKIND), SYSTEM_RUNTIME_INTEROPSERVICES_COMTYPES_VARKIND);
end;

initialization
	RegisterTypes;

end.

