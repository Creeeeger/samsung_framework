package android.view;

import android.Manifest;
import android.animation.AnimationHandler;
import android.animation.LayoutTransition;
import android.app.ActivityManager;
import android.app.ICompatCameraControlCallback;
import android.app.PendingIntent$$ExternalSyntheticLambda1;
import android.app.ResourcesManager;
import android.app.WindowConfiguration;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BLASTBufferQueue;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.FrameInfo;
import android.graphics.HardwareRenderer;
import android.graphics.HardwareRendererObserver;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerGlobal;
import android.hardware.gnss.GnssSignalType;
import android.hardware.input.InputManagerGlobal;
import android.hardware.input.InputSettings;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.media.AudioManager;
import android.media.MediaMetrics;
import android.media.TtmlUtils;
import android.media.audio.Enums;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.sysprop.DisplayProperties;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.DisplayMetrics;
import android.util.EventLog;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.LongArray;
import android.util.MergedConfiguration;
import android.util.NtpTrustedTime;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.proto.ProtoOutputStream;
import android.view.ActionMode;
import android.view.AttachedSurfaceControl;
import android.view.Choreographer;
import android.view.GestureDetector;
import android.view.IWindow;
import android.view.InputQueue;
import android.view.InsetsSourceControl;
import android.view.KeyCharacterMap;
import android.view.ScrollCaptureResponse;
import android.view.SemBlurInfo;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeIdManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityWindowAttributes;
import android.view.accessibility.IAccessibilityEmbeddedConnection;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.contentcapture.ContentCaptureManager;
import android.view.contentcapture.ContentCaptureSession;
import android.view.contentcapture.MainContentCaptureSession;
import android.view.inputmethod.ImeTracker;
import android.view.inputmethod.InputMethodManager;
import android.widget.Scroller;
import android.window.BackEvent;
import android.window.ClientWindowFrames;
import android.window.CompatOnBackInvokedCallback;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import android.window.ScreenCapture;
import android.window.SurfaceSyncGroup;
import android.window.WindowOnBackInvokedDispatcher;
import com.android.internal.R;
import com.android.internal.graphics.drawable.BackgroundBlurDrawable;
import com.android.internal.inputmethod.ImeTracing;
import com.android.internal.inputmethod.InputMethodDebug;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.SomeArgs;
import com.android.internal.policy.DecorView;
import com.android.internal.policy.PhoneFallbackEventHandler;
import com.android.internal.util.Preconditions;
import com.android.internal.view.BaseSurfaceHolder;
import com.android.internal.view.RootViewSurfaceTaker;
import com.android.internal.view.SurfaceCallbackHelper;
import com.samsung.android.content.smartclip.SmartClipDataCropperImpl;
import com.samsung.android.content.smartclip.SmartClipDataExtractionEvent;
import com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher;
import com.samsung.android.content.smartclip.SmartClipRemoteRequestInfo;
import com.samsung.android.core.CompatSandbox;
import com.samsung.android.core.CompatTranslator;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.graphics.SemGfxImageFilter;
import com.samsung.android.ims.options.SemCapabilities;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.rune.ViewRune;
import com.samsung.android.util.SemViewUtils;
import com.samsung.android.widget.SemPressGestureDetector;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.OptionalInt;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes4.dex */
public final class ViewRootImpl implements ViewParent, View.AttachInfo.Callbacks, ThreadedRenderer.DrawCallbacks, AttachedSurfaceControl {
    private static final String AOD_SHOW_STATE = "aod_show_state";
    private static final int BOUNDS_SURFACE_SUB_LAYER = -3;
    public static final boolean CAPTION_ON_SHELL;
    public static final boolean CLIENT_TRANSIENT;
    private static final int CONTENT_CAPTURE_ENABLED_FALSE = 2;
    private static final int CONTENT_CAPTURE_ENABLED_NOT_CHECKED = 0;
    private static final int CONTENT_CAPTURE_ENABLED_TRUE = 1;
    private static final boolean DBG = false;
    private static final boolean DEBUG_BLAST;
    private static final boolean DEBUG_BLUR;
    private static final boolean DEBUG_CONFIGURATION;
    private static final boolean DEBUG_CONTENT_CAPTURE;
    private static final boolean DEBUG_DIALOG;
    private static final boolean DEBUG_DRAW;
    private static final boolean DEBUG_FPS;
    private static final boolean DEBUG_IMF;
    private static final boolean DEBUG_INPUT_RESIZE;
    private static final boolean DEBUG_INPUT_STAGES;
    private static final boolean DEBUG_KEEP_SCREEN_ON;
    private static final boolean DEBUG_LAYOUT;
    static final boolean DEBUG_MEASURE;
    private static final boolean DEBUG_ORIENTATION;
    private static final boolean DEBUG_SCROLL_CAPTURE;
    static final boolean DEBUG_TOUCH_EVENT;
    private static final boolean DEBUG_TOUCH_NAVIGATION = false;
    private static final boolean DEBUG_TRACKBALL;
    private static final boolean DEBUG_TRAVERSAL;
    private static final String DEBUG_TRAVERSAL_PACKAGE_NAME;
    static final boolean DEBUG_WINDOW_INSETS;
    private static final boolean ENABLE_INPUT_LATENCY_TRACKING = true;
    private static final int KEEP_CLEAR_AREA_REPORT_RATE_MILLIS = 100;
    public static final boolean LOCAL_LAYOUT;
    private static final boolean LOCAL_LOGV = false;
    private static final int LOGTAG_INPUT_FOCUS = 62001;
    private static final int MAX_QUEUED_INPUT_EVENT_POOL_SIZE = 10;
    static final int MAX_TRACKBALL_DELAY = 250;
    private static final int MSG_CHECK_FOCUS = 13;
    private static final int MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST = 21;
    private static final int MSG_CLOSE_SYSTEM_DIALOGS = 14;
    private static final int MSG_DIE = 3;
    private static final int MSG_DISPATCH_APP_VISIBILITY = 8;
    private static final int MSG_DISPATCH_DRAG_EVENT = 15;
    private static final int MSG_DISPATCH_DRAG_LOCATION_EVENT = 16;
    private static final int MSG_DISPATCH_GET_NEW_SURFACE = 9;
    private static final int MSG_DISPATCH_INPUT_EVENT = 7;
    private static final int MSG_DISPATCH_KEY_FROM_AUTOFILL = 12;
    private static final int MSG_DISPATCH_KEY_FROM_IME = 11;
    private static final int MSG_DISPATCH_LETTERBOX_DIRECTION_CHANGED = 104;
    private static final int MSG_DISPATCH_SYSTEM_UI_VISIBILITY = 17;
    private static final int MSG_DISPATCH_WINDOW_SHOWN = 25;
    private static final int MSG_HIDE_INSETS = 32;
    private static final int MSG_INSETS_CONTROL_CHANGED = 29;
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_INVALIDATE_RECT = 2;
    private static final int MSG_INVALIDATE_WORLD = 22;
    private static final int MSG_KEEP_CLEAR_RECTS_CHANGED = 35;
    private static final int MSG_PAUSED_FOR_SYNC_TIMEOUT = 37;
    private static final int MSG_POINTER_CAPTURE_CHANGED = 28;
    private static final int MSG_PROCESS_INPUT_EVENTS = 19;
    private static final int MSG_REPORT_KEEP_CLEAR_RECTS = 36;
    private static final int MSG_REQUEST_KEYBOARD_SHORTCUTS = 26;
    private static final int MSG_REQUEST_SCROLL_CAPTURE = 33;
    private static final int MSG_RESIZED = 4;
    private static final int MSG_RESIZED_REPORT = 5;
    private static final int MSG_SHOW_INSETS = 31;
    private static final int MSG_SPEN_GESTURE_EVENT = 103;
    private static final int MSG_SYNTHESIZE_INPUT_EVENT = 24;
    private static final int MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED = 30;
    private static final int MSG_UPDATE_CONFIGURATION = 18;
    private static final int MSG_UPDATE_POINTER_ICON = 27;
    private static final int MSG_WINDOW_FOCUS_CHANGED = 6;
    private static final int MSG_WINDOW_FOCUS_IN_TASK_CHANGED = 105;
    private static final int MSG_WINDOW_MOVED = 23;
    private static final int MSG_WINDOW_TOUCH_MODE_CHANGED = 34;
    private static final boolean MT_RENDERER_AVAILABLE = true;
    private static final String PROPERTY_PROFILE_RENDERING = "viewroot.profile_rendering";
    private static final int REMOVE_CUTOUT_FLAGS = 2097152;
    private static final int REMOVE_CUTOUT_FOR_DISPATCH_FLAGS = 4194304;
    private static final int SCROLL_CAPTURE_REQUEST_TIMEOUT_MILLIS = 2500;
    private static final String TAG = "ViewRootImpl";
    private static final int UNSET_SYNC_ID = -1;
    private static final boolean USE_ASYNC_PERFORM_HAPTIC_FEEDBACK = true;
    private static final int WMS_SYNC_MERGED = 3;
    private static final int WMS_SYNC_NONE = 0;
    private static final int WMS_SYNC_PENDING = 1;
    private static final int WMS_SYNC_RETURNED = 2;
    static final Interpolator mResizeInterpolator;
    private static boolean sAlwaysAssignFocus;
    private static volatile boolean sAnrReported;
    private static boolean sCompatibilityDone;
    private static final ArrayList<ConfigChangedCallback> sConfigCallbacks;
    static boolean sFirstDrawComplete;
    static final ArrayList<Runnable> sFirstDrawHandlers;
    private static int sNumSyncsInProgress;
    static final ThreadLocal<HandlerActionQueue> sRunQueues;
    private static boolean sSafeScheduleTraversals;
    private static final Object sSyncProgressLock;
    static BLASTBufferQueue.TransactionHangCallback sTransactionHangCallback;
    private IAccessibilityEmbeddedConnection mAccessibilityEmbeddedConnection;
    View mAccessibilityFocusedHost;
    AccessibilityNodeInfo mAccessibilityFocusedVirtualView;
    final AccessibilityInteractionConnectionManager mAccessibilityInteractionConnectionManager;
    AccessibilityInteractionController mAccessibilityInteractionController;
    final AccessibilityManager mAccessibilityManager;
    private AccessibilityWindowAttributes mAccessibilityWindowAttributes;
    private SurfaceSyncGroup mActiveSurfaceSyncGroup;
    private ActivityConfigCallback mActivityConfigCallback;
    boolean mAdded;
    boolean mAddedTouchMode;
    private boolean mAppVisibilityChanged;
    boolean mAppVisible;
    private int mAppliedLetterboxDirection;
    boolean mApplyInsetsRequested;
    final View.AttachInfo mAttachInfo;
    AudioManager mAudioManager;
    final String mBasePackageName;
    private boolean mBixbyTouchTriggered;
    private BLASTBufferQueue mBlastBufferQueue;
    private Canvas mBlurCanvas;
    SemBlurInfo.ColorCurve mBlurColorCurve;
    boolean mBlurColorCurveEnabled;
    private SemGfxImageFilter mBlurFilter;
    int mBlurRadius;
    private final BackgroundBlurDrawable.Aggregator mBlurRegionAggregator;
    private boolean mBoundsCompatTranslatorEnabled;
    private SurfaceControl mBoundsLayer;
    private int mBoundsLayerCreatedCount;
    private boolean mCanAllowPokeDrawLock;
    private boolean mCanTriggerBixbyTouch;
    Bitmap mCanvasBlurBitmap;
    boolean mCanvasBlurEnabled;
    private int mCanvasDownScale;
    private int mCanvasOffsetX;
    private int mCanvasOffsetY;
    private boolean mCheckIfCanDraw;
    private final Rect mChildBoundingInsets;
    private boolean mChildBoundingInsetsChanged;
    final Choreographer mChoreographer;
    int mClientWindowLayoutFlags;
    private CompatOnBackInvokedCallback mCompatOnBackInvokedCallback;
    private CompatTranslator mCompatTranslator;
    private boolean mCompatTranslatorEnabled;
    final SystemUiVisibilityInfo mCompatibleVisibilityInfo;
    final ConsumeBatchedInputImmediatelyRunnable mConsumeBatchedInputImmediatelyRunnable;
    boolean mConsumeBatchedInputImmediatelyScheduled;
    boolean mConsumeBatchedInputScheduled;
    final ConsumeBatchedInputRunnable mConsumedBatchedInputRunnable;
    int mContentCaptureEnabled;
    final ContentResolver mContentResolver;
    public final Context mContext;
    int mCurScrollY;
    View mCurrentDragView;
    private PointerIcon mCustomPointerIcon;
    private boolean mDeferTransactionRequested;
    private final int mDensity;
    private float mDesiredHdrSdrRatio;
    private boolean mDesktopMode;
    private SemDesktopModeManager mDesktopModeManager;
    private boolean mDesktopModeStandAlone;
    private Rect mDirty;
    private boolean mDisableSuperHdr;
    int mDispatchedSystemBarAppearance;
    int mDispatchedSystemUiVisibility;
    Display mDisplay;
    boolean mDisplayDecorationCached;
    private final DisplayManager.DisplayListener mDisplayListener;
    ClipDescription mDragDescription;
    final PointF mDragPoint;
    private boolean mDragResizing;
    boolean mDrawingAllowed;
    private boolean mDrewOnceForSync;
    private boolean mEarlyHasWindowFocus;
    private final Executor mExecutor;
    FallbackEventHandler mFallbackEventHandler;
    private boolean mFastScrollSoundEffectsEnabled;
    boolean mFirst;
    InputStage mFirstInputStage;
    InputStage mFirstPostImeInputStage;
    private String mFirstPreviousSyncSafeguardInfo;
    private boolean mFlexPanelScrollEnabled;
    private float mFlexPanelScrollY;
    private boolean mForceDecorViewVisibility;
    private boolean mForceDisableBLAST;
    private boolean mForceDraw;
    private boolean mForceModeInScreenshot;
    private boolean mForceNextConfigUpdate;
    boolean mForceNextWindowRelayout;
    private boolean mForceUpdateBoundsLayer;
    private int mFpsNumFrames;
    private long mFpsPrevTime;
    private long mFpsStartTime;
    long mFrameNumber;
    boolean mFullRedrawNeeded;
    private final ViewRootRectTracker mGestureExclusionTracker;
    final HCTRelayoutHandler mHCTRelayoutHandler;
    final ViewRootHandler mHandler;
    boolean mHandlingLayoutInLayoutRequest;
    private final HandwritingInitiator mHandwritingInitiator;
    HardwareRendererObserver mHardwareRendererObserver;
    int mHardwareXOffset;
    int mHardwareYOffset;
    private boolean mHasPendingKeepClearAreaChange;
    boolean mHasPendingTransactions;
    private Consumer<Display> mHdrSdrRatioChangedListener;
    int mHeight;
    final HighContrastTextManager mHighContrastTextManager;
    private final ImeFocusController mImeFocusController;
    private boolean mInLayout;
    private final InputEventCompatProcessor mInputCompatProcessor;
    private final InputEventAssigner mInputEventAssigner;
    protected final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    private WindowInputEventReceiver mInputEventReceiver;
    InputQueue mInputQueue;
    InputQueue.Callback mInputQueueCallback;
    private final InsetsController mInsetsController;
    private float mInvCompatScale;
    private Runnable mInvalidateForScreenshotRunnable;
    final InvalidateOnAnimationRunnable mInvalidateOnAnimationRunnable;
    private boolean mInvalidateRootRequested;
    boolean mIsAmbientMode;
    public boolean mIsAnimating;
    private boolean mIsBoundsColorLayer;
    boolean mIsCreating;
    private boolean mIsCutoutRemoveForDispatchNeeded;
    private boolean mIsCutoutRemoveNeeded;
    private boolean mIsDetached;
    boolean mIsDeviceDefault;
    boolean mIsDrawing;
    boolean mIsInTraversal;
    private final boolean mIsStylusPointerIconEnabled;
    private boolean mIsSurfaceOpaque;
    private boolean mIsWindowOpaque;
    private Rect mKeepClearAccessibilityFocusRect;
    private final ViewRootRectTracker mKeepClearRectsTracker;
    private int mLastClickToolType;
    private final Configuration mLastConfigurationFromResources;
    final ViewTreeObserver.InternalInsetsInfo mLastGivenInsets;
    boolean mLastInCompatMode;
    private final Rect mLastLayoutFrame;
    String mLastPerformDrawSkippedReason;
    String mLastPerformTraversalsSkipDrawReason;
    String mLastReportNextDrawReason;
    private final MergedConfiguration mLastReportedMergedConfiguration;
    WeakReference<View> mLastScrolledFocus;
    private final Point mLastSurfaceSize;
    int mLastSyncSeqId;
    int mLastSystemUiVisibility;
    final PointF mLastTouchPoint;
    int mLastTouchSource;
    private int mLastTransformHint;
    private WindowInsets mLastWindowInsets;
    boolean mLayoutRequested;
    ArrayList<View> mLayoutRequesters;
    final IBinder mLeashToken;
    volatile Object mLocalDragState;
    final WindowLeaked mLocation;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    private int mMinimumSizeForOverlappingWithCutoutAsDefault;
    private MotionEventMonitor mMotionEventMonitor;
    private boolean mNeedsRendererSetup;
    private boolean mNewDexMode;
    boolean mNewSurfaceNeeded;
    private final int mNoncompatDensity;
    private int mNumPausedForSync;
    private final WindowOnBackInvokedDispatcher mOnBackInvokedDispatcher;
    int mOrigWindowType;
    Rect mOverrideInsetsFrame;
    public View mParentDecorView;
    boolean mPausedForTransition;
    boolean mPendingAlwaysConsumeSystemBars;
    final Rect mPendingBackDropFrame;
    private boolean mPendingDragResizing;
    int mPendingInputEventCount;
    QueuedInputEvent mPendingInputEventHead;
    String mPendingInputEventQueueLengthCounterName;
    QueuedInputEvent mPendingInputEventTail;
    private final MergedConfiguration mPendingMergedConfiguration;
    private SurfaceControl.Transaction mPendingTransaction;
    private ArrayList<LayoutTransition> mPendingTransitions;
    private Rect mPendingWinFrame;
    boolean mPerformContentCapture;
    boolean mPointerCapture;
    private Integer mPointerIconType;
    private PokeDrawLockController mPokeDrawLockController;
    private SurfaceSyncGroup mPreviousSyncSafeguard;
    private final Object mPreviousSyncSafeguardLock;
    Region mPreviousTouchableRegion;
    private int mPreviousTransformHint;
    final Region mPreviousTransparentRegion;
    boolean mProcessInputEventsScheduled;
    private boolean mProfile;
    private boolean mProfileRendering;
    private QueuedInputEvent mQueuedInputEventPool;
    private int mQueuedInputEventPoolSize;
    private Bundle mRelayoutBundle;
    private boolean mRelayoutRequested;
    private int mRelayoutSeq;
    private boolean mRemoved;
    private float mRenderHdrSdrRatio;
    private Choreographer.FrameCallback mRenderProfiler;
    private boolean mRenderProfilingEnabled;
    boolean mReportNextDraw;
    public int mRequestedLetterboxDirection;
    private HashSet<ScrollCaptureCallback> mRootScrollCaptureCallbacks;
    private DragEvent mSavedStickyDragEvent;
    private int mScheduleTraversalDeferCount;
    private long mScrollCaptureRequestTimeout;
    boolean mScrollMayChange;
    int mScrollY;
    Scroller mScroller;
    private boolean mSemEarlyAppVisibility;
    private boolean mSemEarlyAppVisibilityChanged;
    private SemPressGestureDetector mSemPressGestureDetector;
    SendWindowContentChangedAccessibilityEvent mSendWindowContentChangedAccessibilityEvent;
    private final Executor mSimpleExecutor;
    private boolean mSkipScreenshot;
    SmartClipRemoteRequestDispatcherProxy mSmartClipDispatcherProxy;
    int mSoftInputMode;
    View mStartedDragViewForA11y;
    boolean mStopped;
    public final Surface mSurface;
    private final ArrayList<SurfaceChangedCallback> mSurfaceChangedCallbacks;
    private final SurfaceControl mSurfaceControl;
    BaseSurfaceHolder mSurfaceHolder;
    SurfaceHolder.Callback2 mSurfaceHolderCallback;
    private int mSurfaceSequenceId;
    private final SurfaceSession mSurfaceSession;
    private final Point mSurfaceSize;
    private boolean mSyncBuffer;
    int mSyncSeqId;
    InputStage mSyntheticInputStage;
    private String mTag;
    final int mTargetSdkVersion;
    private final InsetsSourceControl.Array mTempControls;
    HashSet<View> mTempHashSet;
    private final InsetsState mTempInsets;
    private final Rect mTempRect;
    private final WindowConfiguration mTempWinConfig;
    final Thread mThread;
    private final ClientWindowFrames mTmpFrames;
    final int[] mTmpLocation;
    private Rect mTmpScaledBounds;
    final TypedValue mTmpValue;
    Region mTouchableRegion;
    private final SurfaceControl.Transaction mTransaction;
    private ArrayList<AttachedSurfaceControl.OnBufferTransformHintChangedListener> mTransformHintListeners;
    CompatibilityInfo.Translator mTranslator;
    final Region mTransparentRegion;
    int mTraversalBarrier;
    final TraversalRunnable mTraversalRunnable;
    public boolean mTraversalScheduled;
    private int mTypesHiddenByFlags;
    boolean mUnbufferedInputDispatch;
    int mUnbufferedInputSource;
    private final UnhandledKeyManager mUnhandledKeyManager;
    private final ViewRootRectTracker mUnrestrictedKeepClearRectsTracker;
    boolean mUpcomingInTouchMode;
    boolean mUpcomingWindowFocus;
    private boolean mUpcomingWindowFocusInTask;
    private boolean mUpdateHdrSdrRatioInfo;
    private boolean mUpdateSurfaceNeeded;
    private boolean mUseBLASTAdapter;
    private boolean mUseMTRenderer;
    View mView;
    private final boolean mViewBoundsSandboxingEnabled;
    final ViewConfiguration mViewConfiguration;
    protected final ViewFrameInfo mViewFrameInfo;
    private int mViewLayoutDirectionInitial;
    private boolean mViewMeasureDeferred;
    int mViewVisibility;
    private final Rect mVisRect;
    int mWidth;
    boolean mWillDrawSoon;
    final Rect mWinFrame;
    private final Rect mWinFrameInScreen;
    private Rect mWinFrameScreen;
    final W mWindow;
    public final WindowManager.LayoutParams mWindowAttributes;
    boolean mWindowAttributesChanged;
    final ArrayList<WindowCallbacks> mWindowCallbacks;
    CountDownLatch mWindowDrawCountDown;
    boolean mWindowFocusChanged;
    private boolean mWindowFocusInTaskChanged;
    private final WindowLayout mWindowLayout;
    final IWindowSession mWindowSession;
    private SurfaceSyncGroup mWmsRequestSyncGroup;
    int mWmsRequestSyncGroupState;

    /* loaded from: classes4.dex */
    public interface ActivityConfigCallback {
        void onConfigurationChanged(Configuration configuration, int i);

        void requestCompatCameraControl(boolean z, boolean z2, ICompatCameraControlCallback iCompatCameraControlCallback);
    }

    /* loaded from: classes4.dex */
    public interface ConfigChangedCallback {
        void onConfigurationChanged(Configuration configuration);
    }

    static {
        DEBUG_DRAW = SystemProperties.getInt("viewroot.debug.draw", 0) != 0;
        DEBUG_LAYOUT = SystemProperties.getInt("viewroot.debug.layout", 0) != 0;
        DEBUG_DIALOG = SystemProperties.getInt("viewroot.debug.dialog", 0) != 0;
        DEBUG_INPUT_RESIZE = SystemProperties.getInt("viewroot.debug.input_resize", 0) != 0;
        DEBUG_ORIENTATION = SystemProperties.getInt("viewroot.debug.orientation", 0) != 0;
        DEBUG_TRACKBALL = SystemProperties.getInt("viewroot.debug.trackball", 0) != 0;
        DEBUG_IMF = SystemProperties.getInt("viewroot.debug.imf", 0) != 0;
        DEBUG_CONFIGURATION = SystemProperties.getInt("viewroot.debug.configuration", 0) != 0;
        DEBUG_FPS = SystemProperties.getInt("viewroot.debug.fps", 0) != 0;
        DEBUG_INPUT_STAGES = SystemProperties.getInt("viewroot.debug.input_stages", 0) != 0;
        DEBUG_KEEP_SCREEN_ON = SystemProperties.getInt("viewroot.debug.keep_screen_on", 0) != 0;
        DEBUG_CONTENT_CAPTURE = SystemProperties.getInt("viewroot.debug.content_capture", 0) != 0;
        DEBUG_SCROLL_CAPTURE = SystemProperties.getInt("viewroot.debug.scroll_capture", 0) != 0;
        DEBUG_BLAST = true;
        DEBUG_BLUR = SystemProperties.getInt("viewroot.debug.blur", 0) != 0;
        DEBUG_WINDOW_INSETS = SystemProperties.getInt("viewroot.debug.window_insets", 0) != 0;
        DEBUG_TOUCH_EVENT = SystemProperties.getInt("viewroot.debug.touch_event", 0) != 0;
        DEBUG_MEASURE = SystemProperties.getInt("viewroot.debug.measure", 0) != 0;
        DEBUG_TRAVERSAL = SystemProperties.getInt("viewroot.debug.traversal", 0) != 0;
        DEBUG_TRAVERSAL_PACKAGE_NAME = SystemProperties.get("viewroot.debug.traversal_pkg", "");
        CAPTION_ON_SHELL = SystemProperties.getBoolean("persist.wm.debug.caption_on_shell", true);
        CLIENT_TRANSIENT = SystemProperties.getBoolean("persist.wm.debug.client_transient", false);
        LOCAL_LAYOUT = SystemProperties.getBoolean("persist.debug.local_layout", true);
        sRunQueues = new ThreadLocal<>();
        sFirstDrawHandlers = new ArrayList<>();
        sFirstDrawComplete = false;
        sConfigCallbacks = new ArrayList<>();
        sCompatibilityDone = false;
        mResizeInterpolator = new AccelerateDecelerateInterpolator();
        sSyncProgressLock = new Object();
        sNumSyncsInProgress = 0;
        sAnrReported = false;
        sTransactionHangCallback = new BLASTBufferQueue.TransactionHangCallback() { // from class: android.view.ViewRootImpl.1
            AnonymousClass1() {
            }

            @Override // android.graphics.BLASTBufferQueue.TransactionHangCallback
            public void onTransactionHang(String reason) {
                if (ViewRootImpl.sAnrReported) {
                    return;
                }
                ViewRootImpl.sAnrReported = true;
                long identityToken = Binder.clearCallingIdentity();
                try {
                    ActivityManager.getService().appNotResponding(reason);
                } catch (RemoteException e) {
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identityToken);
                    throw th;
                }
                Binder.restoreCallingIdentity(identityToken);
            }
        };
        sSafeScheduleTraversals = false;
    }

    public FrameInfo getUpdatedFrameInfo() {
        FrameInfo frameInfo = this.mChoreographer.mFrameInfo;
        this.mViewFrameInfo.populateFrameInfo(frameInfo);
        this.mViewFrameInfo.reset();
        this.mInputEventAssigner.notifyFrameProcessed();
        return frameInfo;
    }

    private void updateCompatTranslator(int res) {
        ViewRootImpl parentViewRootImpl;
        boolean compatTranslatorEnabled = false;
        if (this.mDesktopMode) {
            if ((131072 & res) != 0) {
                compatTranslatorEnabled = true;
            }
        } else {
            compatTranslatorEnabled = (1048576 & res) != 0;
        }
        if (compatTranslatorEnabled && this.mCompatTranslator == null) {
            CompatTranslator parentTranslator = null;
            View view = this.mParentDecorView;
            if (view != null && view != this.mView && (parentViewRootImpl = view.getViewRootImpl()) != null) {
                parentTranslator = parentViewRootImpl.getCompatTranslator();
            }
            this.mCompatTranslator = new CompatTranslator(parentTranslator);
        }
        if (this.mCompatTranslatorEnabled != compatTranslatorEnabled) {
            if (CoreRune.SAFE_DEBUG) {
                Slog.d(this.mTag, "CompatTranslatorEnabled changed from " + this.mCompatTranslatorEnabled + " to " + compatTranslatorEnabled);
            }
            if (compatTranslatorEnabled) {
                this.mWinFrameScreen = new Rect();
            }
            this.mCompatTranslatorEnabled = compatTranslatorEnabled;
        }
        if (CoreRune.FW_BOUNDS_COMPAT_TRANSLATOR_AS_BOUNDS) {
            this.mBoundsCompatTranslatorEnabled = compatTranslatorEnabled && (8388608 & res) != 0;
        }
    }

    public CompatTranslator getCompatTranslator() {
        if (this.mCompatTranslatorEnabled) {
            return this.mCompatTranslator;
        }
        return null;
    }

    private void updateCutoutRemoveNeeded(int flags) {
        boolean isCutoutRemoveNeeded = (2097152 & flags) != 0 || (MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED && getCompatWindowConfiguration().isSplitScreen());
        if (this.mIsCutoutRemoveNeeded != isCutoutRemoveNeeded) {
            this.mIsCutoutRemoveNeeded = isCutoutRemoveNeeded;
            if (!isCutoutRemoveNeeded) {
                this.mLastWindowInsets = null;
            }
            this.mApplyInsetsRequested = true;
        }
        boolean isCutoutRemoveForDispatchNeeded = (4194304 & flags) != 0;
        if (this.mIsCutoutRemoveForDispatchNeeded != isCutoutRemoveForDispatchNeeded) {
            this.mIsCutoutRemoveForDispatchNeeded = isCutoutRemoveForDispatchNeeded;
            this.mApplyInsetsRequested = true;
        }
    }

    private void updatePositionInBounds(CompatTranslator translator, Configuration configuration) {
        int left = 0;
        int top = 0;
        if (this.mBoundsCompatTranslatorEnabled) {
            Rect bounds = configuration.windowConfiguration.getBounds();
            left = bounds.left;
            top = bounds.top;
        }
        if (translator.savePositionInBounds(left, top)) {
            Slog.v(this.mTag, "updatePositionInBounds, enabled=" + this.mBoundsCompatTranslatorEnabled + ", left=" + left + ", top=" + top);
        }
    }

    public ImeFocusController getImeFocusController() {
        return this.mImeFocusController;
    }

    /* loaded from: classes4.dex */
    public static final class SystemUiVisibilityInfo {
        int globalVisibility;
        int localChanges;
        int localValue;

        SystemUiVisibilityInfo() {
        }
    }

    public HandwritingInitiator getHandwritingInitiator() {
        return this.mHandwritingInitiator;
    }

    /* renamed from: android.view.ViewRootImpl$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements BLASTBufferQueue.TransactionHangCallback {
        AnonymousClass1() {
        }

        @Override // android.graphics.BLASTBufferQueue.TransactionHangCallback
        public void onTransactionHang(String reason) {
            if (ViewRootImpl.sAnrReported) {
                return;
            }
            ViewRootImpl.sAnrReported = true;
            long identityToken = Binder.clearCallingIdentity();
            try {
                ActivityManager.getService().appNotResponding(reason);
            } catch (RemoteException e) {
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identityToken);
                throw th;
            }
            Binder.restoreCallingIdentity(identityToken);
        }
    }

    public ViewRootImpl(Context context, Display display) {
        this(context, display, WindowManagerGlobal.getWindowSession(), new WindowLayout());
    }

    public ViewRootImpl(Context context, Display display, IWindowSession session, WindowLayout windowLayout) {
        boolean z;
        this.mTransformHintListeners = new ArrayList<>();
        this.mPreviousTransformHint = 0;
        this.mFastScrollSoundEffectsEnabled = false;
        this.mWindowCallbacks = new ArrayList<>();
        this.mTmpLocation = new int[2];
        this.mTmpValue = new TypedValue();
        this.mScheduleTraversalDeferCount = 0;
        this.mWindowAttributes = new WindowManager.LayoutParams();
        this.mAppVisible = true;
        this.mForceDecorViewVisibility = false;
        this.mOrigWindowType = -1;
        this.mStopped = false;
        this.mIsAmbientMode = false;
        this.mPausedForTransition = false;
        this.mLastInCompatMode = false;
        this.mViewFrameInfo = new ViewFrameInfo();
        this.mInputEventAssigner = new InputEventAssigner();
        this.mDisplayDecorationCached = false;
        this.mSurfaceSize = new Point();
        this.mLastSurfaceSize = new Point();
        this.mVisRect = new Rect();
        this.mTempRect = new Rect();
        this.mContentCaptureEnabled = 0;
        this.mSyncBuffer = false;
        this.mCheckIfCanDraw = false;
        this.mDrewOnceForSync = false;
        this.mSyncSeqId = 0;
        this.mLastSyncSeqId = 0;
        this.mFrameNumber = 0L;
        this.mPendingTransaction = new SurfaceControl.Transaction();
        this.mUnbufferedInputSource = 0;
        this.mPendingInputEventQueueLengthCounterName = "pq";
        this.mUnhandledKeyManager = new UnhandledKeyManager();
        this.mWindowAttributesChanged = false;
        this.mSurface = new Surface();
        this.mSurfaceControl = new SurfaceControl();
        this.mUpdateHdrSdrRatioInfo = false;
        this.mDesiredHdrSdrRatio = 1.0f;
        this.mRenderHdrSdrRatio = 1.0f;
        this.mHdrSdrRatioChangedListener = null;
        this.mInvalidateForScreenshotRunnable = null;
        this.mForceModeInScreenshot = false;
        this.mSurfaceSession = new SurfaceSession();
        this.mTransaction = new SurfaceControl.Transaction();
        this.mTmpFrames = new ClientWindowFrames();
        this.mPendingBackDropFrame = new Rect();
        this.mWinFrameInScreen = new Rect();
        this.mTempInsets = new InsetsState();
        this.mTempControls = new InsetsSourceControl.Array();
        this.mTempWinConfig = new WindowConfiguration();
        this.mInvCompatScale = 1.0f;
        this.mLastGivenInsets = new ViewTreeObserver.InternalInsetsInfo();
        this.mTypesHiddenByFlags = 0;
        this.mLastConfigurationFromResources = new Configuration();
        this.mLastReportedMergedConfiguration = new MergedConfiguration();
        this.mPendingMergedConfiguration = new MergedConfiguration();
        this.mDragPoint = new PointF();
        this.mLastTouchPoint = new PointF();
        this.mFpsStartTime = -1L;
        this.mFpsPrevTime = -1L;
        this.mPointerIconType = null;
        this.mCustomPointerIcon = null;
        this.mAccessibilityInteractionConnectionManager = new AccessibilityInteractionConnectionManager();
        this.mInLayout = false;
        this.mLayoutRequesters = new ArrayList<>();
        this.mHandlingLayoutInLayoutRequest = false;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mBlurRegionAggregator = new BackgroundBlurDrawable.Aggregator(this);
        this.mSmartClipDispatcherProxy = null;
        this.mGestureExclusionTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List systemGestureExclusionRects;
                systemGestureExclusionRects = ((View) obj).getSystemGestureExclusionRects();
                return systemGestureExclusionRects;
            }
        });
        this.mKeepClearRectsTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List collectPreferKeepClearRects;
                collectPreferKeepClearRects = ((View) obj).collectPreferKeepClearRects();
                return collectPreferKeepClearRects;
            }
        });
        this.mUnrestrictedKeepClearRectsTracker = new ViewRootRectTracker(new Function() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda10
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List collectUnrestrictedPreferKeepClearRects;
                collectUnrestrictedPreferKeepClearRects = ((View) obj).collectUnrestrictedPreferKeepClearRects();
                return collectUnrestrictedPreferKeepClearRects;
            }
        });
        this.mPreviousSyncSafeguardLock = new Object();
        this.mNumPausedForSync = 0;
        this.mScrollCaptureRequestTimeout = 2500L;
        this.mSurfaceSequenceId = 0;
        this.mLastTransformHint = Integer.MIN_VALUE;
        this.mRelayoutBundle = new Bundle();
        this.mChildBoundingInsets = new Rect();
        this.mChildBoundingInsetsChanged = false;
        this.mTag = TAG;
        this.mDeferTransactionRequested = false;
        this.mIsDetached = false;
        this.mEarlyHasWindowFocus = false;
        this.mIsDeviceDefault = false;
        this.mBoundsLayerCreatedCount = 0;
        this.mIsBoundsColorLayer = false;
        this.mForceUpdateBoundsLayer = false;
        this.mIsWindowOpaque = true;
        this.mDesktopModeManager = null;
        this.mDesktopMode = false;
        this.mDesktopModeStandAlone = false;
        this.mNewDexMode = false;
        this.mMinimumSizeForOverlappingWithCutoutAsDefault = 0;
        this.mSemPressGestureDetector = null;
        this.mBixbyTouchTriggered = false;
        this.mCanTriggerBixbyTouch = false;
        this.mFlexPanelScrollEnabled = false;
        this.mFlexPanelScrollY = 0.0f;
        this.mProfile = false;
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: android.view.ViewRootImpl.3
            AnonymousClass3() {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                if (ViewRootImpl.this.mView != null && ViewRootImpl.this.mDisplay.getDisplayId() == displayId) {
                    int oldDisplayState = ViewRootImpl.this.mAttachInfo.mDisplayState;
                    int newDisplayState = ViewRootImpl.this.mDisplay.getState();
                    Log.i(ViewRootImpl.this.mTag, "onDisplayChanged oldDisplayState=" + oldDisplayState + " newDisplayState=" + newDisplayState);
                    if (oldDisplayState != newDisplayState) {
                        ViewRootImpl.this.mAttachInfo.mDisplayState = newDisplayState;
                        ViewRootImpl.this.pokeDrawLockIfNeeded();
                        if (oldDisplayState != 0) {
                            int oldScreenState = toViewScreenState(oldDisplayState);
                            int newScreenState = toViewScreenState(newDisplayState);
                            if (oldScreenState != newScreenState) {
                                ViewRootImpl.this.mView.dispatchScreenStateChanged(newScreenState);
                            }
                            if (ViewRootImpl.DEBUG_TRAVERSAL && ViewRootImpl.DEBUG_TRAVERSAL_PACKAGE_NAME.equals(ViewRootImpl.this.mView.getContext().getPackageName())) {
                                Log.i(ViewRootImpl.this.mTag, "Traversal, [4] mView=" + ViewRootImpl.this.mView + " oldDisplayState=" + oldDisplayState);
                            }
                            switch (oldDisplayState) {
                                case 1:
                                    ViewRootImpl.this.mFullRedrawNeeded = true;
                                    ViewRootImpl.this.scheduleTraversals();
                                    return;
                                case 2:
                                default:
                                    return;
                                case 3:
                                case 4:
                                    if (newDisplayState == 2 && displayId == 0 && (ViewRootImpl.this.mWindowAttributes.samsungFlags & 262144) == 0) {
                                        ViewRootImpl.this.mFullRedrawNeeded = true;
                                        ViewRootImpl.this.scheduleTraversals();
                                        return;
                                    }
                                    return;
                            }
                        }
                    }
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
            }

            private int toViewScreenState(int displayState) {
                return Settings.System.getInt(ViewRootImpl.this.mContentResolver, ViewRootImpl.AOD_SHOW_STATE, 0) != 0 ? displayState == 2 ? 1 : 0 : displayState == 1 ? 0 : 1;
            }
        };
        this.mSurfaceChangedCallbacks = new ArrayList<>();
        ViewRootHandler viewRootHandler = new ViewRootHandler();
        this.mHandler = viewRootHandler;
        this.mExecutor = new Executor() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda11
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                ViewRootImpl.this.lambda$new$9(runnable);
            }
        };
        this.mTraversalRunnable = new TraversalRunnable();
        this.mConsumedBatchedInputRunnable = new ConsumeBatchedInputRunnable();
        this.mConsumeBatchedInputImmediatelyRunnable = new ConsumeBatchedInputImmediatelyRunnable();
        this.mInvalidateOnAnimationRunnable = new InvalidateOnAnimationRunnable();
        this.mSkipScreenshot = false;
        this.mDisableSuperHdr = false;
        this.mCanvasBlurEnabled = false;
        this.mBlurColorCurveEnabled = false;
        this.mBlurColorCurve = null;
        this.mBlurRadius = 0;
        this.mCanvasDownScale = 0;
        this.mSimpleExecutor = new PendingIntent$$ExternalSyntheticLambda1();
        this.mRequestedLetterboxDirection = 0;
        this.mAppliedLetterboxDirection = 0;
        this.mContext = context;
        this.mWindowSession = session;
        this.mWindowLayout = windowLayout;
        this.mDisplay = display;
        if (display == null) {
            Log.i(TAG, "ViewRootImpl, mDisplay is null #1");
        }
        this.mBasePackageName = context.getBasePackageName();
        this.mContentResolver = context.getContentResolver();
        this.mThread = Thread.currentThread();
        this.mHCTRelayoutHandler = new HCTRelayoutHandler();
        WindowLeaked windowLeaked = new WindowLeaked(null);
        this.mLocation = windowLeaked;
        windowLeaked.fillInStackTrace();
        this.mWidth = -1;
        this.mHeight = -1;
        this.mDirty = new Rect();
        this.mWinFrame = new Rect();
        this.mLastLayoutFrame = new Rect();
        W w = new W(this);
        this.mWindow = w;
        this.mLeashToken = new Binder();
        this.mTargetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        this.mViewVisibility = 8;
        this.mTransparentRegion = new Region();
        this.mPreviousTransparentRegion = new Region();
        this.mFirst = true;
        this.mPerformContentCapture = true;
        this.mAdded = false;
        this.mAttachInfo = new View.AttachInfo(session, w, display, this, viewRootHandler, this, context);
        this.mCompatibleVisibilityInfo = new SystemUiVisibilityInfo();
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mHighContrastTextManager = new HighContrastTextManager();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mViewConfiguration = viewConfiguration;
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        this.mNoncompatDensity = context.getResources().getDisplayMetrics().noncompatDensityDpi;
        this.mFallbackEventHandler = new PhoneFallbackEventHandler(context);
        this.mChoreographer = Choreographer.getInstance();
        this.mInsetsController = new InsetsController(new ViewRootInsetsControllerHost(this));
        this.mHandwritingInitiator = new HandwritingInitiator(viewConfiguration, (InputMethodManager) context.getSystemService(InputMethodManager.class));
        this.mViewBoundsSandboxingEnabled = getViewBoundsSandboxingEnabled();
        this.mIsStylusPointerIconEnabled = InputSettings.isStylusPointerIconEnabled(context);
        String processorOverrideName = context.getResources().getString(R.string.config_inputEventCompatProcessorOverrideClassName);
        if (processorOverrideName.isEmpty()) {
            this.mInputCompatProcessor = new InputEventCompatProcessor(context);
        } else {
            InputEventCompatProcessor compatProcessor = null;
            try {
                compatProcessor = (InputEventCompatProcessor) Class.forName(processorOverrideName).getConstructor(Context.class).newInstance(context);
            } catch (Exception e) {
                Log.e(TAG, "Unable to create the InputEventCompatProcessor. ", e);
            } finally {
                this.mInputCompatProcessor = compatProcessor;
            }
        }
        if (!sCompatibilityDone) {
            if (this.mTargetSdkVersion >= 28) {
                z = false;
            } else {
                z = true;
            }
            sAlwaysAssignFocus = z;
            sCompatibilityDone = true;
        }
        this.mIsDeviceDefault = SemViewUtils.isDeviceDefaultFamily(context);
        if (this.mContext.getResources().getConfiguration().semDesktopModeEnabled == 1) {
            if (this.mDisplay.getDisplayId() != 0) {
                this.mDesktopMode = this.mDisplay.getDisplayId() == 2;
            } else {
                updateDesktopMode();
            }
        }
        this.mPokeDrawLockController = new PokeDrawLockController(this);
        if (CoreRune.FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT) {
            this.mMinimumSizeForOverlappingWithCutoutAsDefault = this.mContext.getResources().getDimensionPixelSize(R.dimen.samsung_minimum_size_for_overlapping_with_cutout_as_default);
        }
        loadSystemProperties();
        this.mImeFocusController = new ImeFocusController(this);
        this.mScrollCaptureRequestTimeout = 2500L;
        this.mOnBackInvokedDispatcher = new WindowOnBackInvokedDispatcher(context);
        this.mSmartClipDispatcherProxy = new SmartClipRemoteRequestDispatcherProxy(context);
        if (ViewRune.WIDGET_PEN_SUPPORTED) {
            this.mMotionEventMonitor = new MotionEventMonitor();
        }
    }

    private void updateDesktopMode() {
        int desktopModeEnabled;
        if (this.mDesktopModeManager == null) {
            this.mDesktopModeManager = (SemDesktopModeManager) this.mContext.getSystemService(Context.SEM_DESKTOP_MODE_SERVICE);
        }
        SemDesktopModeManager semDesktopModeManager = this.mDesktopModeManager;
        if (semDesktopModeManager != null) {
            SemDesktopModeState desktopModeState = semDesktopModeManager.getDesktopModeState();
            boolean z = true;
            if (desktopModeState != null) {
                desktopModeEnabled = desktopModeState.getEnabled();
                this.mDesktopModeStandAlone = desktopModeState.getDisplayType() == 101;
            } else {
                desktopModeEnabled = 2;
                this.mDesktopModeStandAlone = false;
            }
            if (this.mDisplay.getDisplayId() != 2 && (!this.mDesktopModeStandAlone || (desktopModeEnabled != 3 && desktopModeEnabled != 4))) {
                z = false;
            }
            this.mDesktopMode = z;
            if (CoreRune.MT_NEW_DEX) {
                this.mNewDexMode = getConfiguration().isNewDexMode();
            }
        }
    }

    public static void addFirstDrawHandler(Runnable callback) {
        ArrayList<Runnable> arrayList = sFirstDrawHandlers;
        synchronized (arrayList) {
            if (!sFirstDrawComplete) {
                arrayList.add(callback);
            }
        }
    }

    public static void addConfigCallback(ConfigChangedCallback callback) {
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.add(callback);
        }
    }

    public static void removeConfigCallback(ConfigChangedCallback callback) {
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.remove(callback);
        }
    }

    public void setActivityConfigCallback(ActivityConfigCallback callback) {
        this.mActivityConfigCallback = callback;
    }

    public void setOnContentApplyWindowInsetsListener(Window.OnContentApplyWindowInsetsListener listener) {
        this.mAttachInfo.mContentOnApplyWindowInsetsListener = listener;
        if (!this.mFirst) {
            requestFitSystemWindows();
        }
    }

    public void addWindowCallbacks(WindowCallbacks callback) {
        this.mWindowCallbacks.add(callback);
    }

    public void removeWindowCallbacks(WindowCallbacks callback) {
        this.mWindowCallbacks.remove(callback);
    }

    public void reportDrawFinish() {
        CountDownLatch countDownLatch = this.mWindowDrawCountDown;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public void profile() {
        this.mProfile = true;
    }

    private boolean isInTouchMode() {
        IWindowManager windowManager = WindowManagerGlobal.getWindowManagerService();
        if (windowManager != null) {
            try {
                return windowManager.isInTouchMode(getDisplayId());
            } catch (RemoteException e) {
                return false;
            }
        }
        return false;
    }

    public void notifyChildRebuilt() {
        if (this.mView instanceof RootViewSurfaceTaker) {
            SurfaceHolder.Callback2 callback2 = this.mSurfaceHolderCallback;
            if (callback2 != null) {
                this.mSurfaceHolder.removeCallback(callback2);
            }
            SurfaceHolder.Callback2 willYouTakeTheSurface = ((RootViewSurfaceTaker) this.mView).willYouTakeTheSurface();
            this.mSurfaceHolderCallback = willYouTakeTheSurface;
            if (willYouTakeTheSurface != null) {
                TakenSurfaceHolder takenSurfaceHolder = new TakenSurfaceHolder();
                this.mSurfaceHolder = takenSurfaceHolder;
                takenSurfaceHolder.setFormat(0);
                this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
            } else {
                this.mSurfaceHolder = null;
            }
            InputQueue.Callback willYouTakeTheInputQueue = ((RootViewSurfaceTaker) this.mView).willYouTakeTheInputQueue();
            this.mInputQueueCallback = willYouTakeTheInputQueue;
            if (willYouTakeTheInputQueue != null) {
                willYouTakeTheInputQueue.onInputQueueCreated(this.mInputQueue);
            }
        }
        updateLastConfigurationFromResources(getConfiguration());
        reportNextDraw("rebuilt");
        if (this.mStopped) {
            setWindowStopped(false);
        }
    }

    private Configuration getConfiguration() {
        return this.mContext.getResources().getConfiguration();
    }

    private WindowConfiguration getCompatWindowConfiguration() {
        WindowConfiguration winConfig = getConfiguration().windowConfiguration;
        if (this.mInvCompatScale == 1.0f) {
            return winConfig;
        }
        this.mTempWinConfig.setTo(winConfig);
        this.mTempWinConfig.scale(this.mInvCompatScale);
        return this.mTempWinConfig;
    }

    private boolean isSplitScreen() {
        return getConfiguration().windowConfiguration.isSplitScreen();
    }

    private Rect getScaledBounds(WindowConfiguration winConfig) {
        if (this.mTmpScaledBounds == null) {
            this.mTmpScaledBounds = new Rect();
        }
        this.mTmpScaledBounds.set(winConfig.getCompatSandboxBounds());
        float scale = winConfig.getCompatSandboxInvScale();
        if (scale != 1.0f) {
            WindowConfiguration.scaleBounds(scale, this.mTmpScaledBounds);
        }
        return this.mTmpScaledBounds;
    }

    public InsetsSourceControl[] getScaledInsetHintControls(InsetsSourceControl[] controls) {
        if (controls == null) {
            return controls;
        }
        Configuration config = this.mLastReportedMergedConfiguration.getMergedConfiguration();
        if (CompatSandbox.isInsetsHintSandboxingEnabled(config)) {
            WindowConfiguration winConfig = config.windowConfiguration;
            float invScale = winConfig.getCompatSandboxInvScale();
            if (invScale == 1.0f) {
                return controls;
            }
            for (InsetsSourceControl control : controls) {
                if (control != null) {
                    Insets hint = control.getInsetsHint();
                    control.setInsetsHint((int) (hint.left * invScale), (int) (hint.top * invScale), (int) (hint.right * invScale), (int) (hint.bottom * invScale));
                }
            }
        }
        return controls;
    }

    public void setView(View view, WindowManager.LayoutParams attrs, View panelParentView) {
        setView(view, attrs, panelParentView, UserHandle.myUserId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0483 A[Catch: all -> 0x05eb, TryCatch #3 {all -> 0x05eb, blocks: (B:19:0x0048, B:21:0x004f, B:23:0x0055, B:25:0x005b, B:26:0x0063, B:28:0x0070, B:30:0x007b, B:31:0x008c, B:33:0x0090, B:35:0x0097, B:37:0x009d, B:39:0x00a3, B:40:0x00b5, B:42:0x00c9, B:45:0x00d5, B:47:0x00d9, B:49:0x00de, B:51:0x00e3, B:52:0x00f1, B:54:0x00f5, B:55:0x010d, B:57:0x0113, B:58:0x011b, B:61:0x012e, B:64:0x013c, B:66:0x0140, B:67:0x0148, B:69:0x0155, B:70:0x015b, B:73:0x0166, B:75:0x016e, B:77:0x0176, B:90:0x0203, B:91:0x0206, B:94:0x020f, B:96:0x026c, B:98:0x0288, B:99:0x029a, B:100:0x029d, B:101:0x03f0, B:102:0x0406, B:104:0x02a1, B:105:0x02c1, B:106:0x02c2, B:107:0x02e2, B:108:0x02e3, B:109:0x0303, B:110:0x0304, B:111:0x0324, B:112:0x0325, B:114:0x0327, B:115:0x0355, B:116:0x0356, B:117:0x037e, B:118:0x037f, B:119:0x039f, B:120:0x03a0, B:121:0x03ce, B:122:0x03cf, B:123:0x03ef, B:124:0x0407, B:126:0x0418, B:127:0x041b, B:129:0x041f, B:131:0x042a, B:133:0x042e, B:134:0x043a, B:136:0x0452, B:141:0x045c, B:143:0x0460, B:144:0x047d, B:146:0x0483, B:147:0x049d, B:149:0x04a3, B:152:0x04ad, B:155:0x04b4, B:157:0x04be, B:158:0x04c6, B:160:0x04cc, B:161:0x04d0, B:163:0x0591, B:164:0x05a1, B:166:0x05ab, B:168:0x05e2, B:170:0x05af, B:180:0x05d8, B:181:0x05dc, B:188:0x013a, B:192:0x05e9, B:79:0x017b, B:81:0x01b3, B:82:0x01bd, B:85:0x01d9, B:87:0x01dd, B:88:0x01f2, B:185:0x05ba, B:186:0x05d5), top: B:18:0x0048, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setView(android.view.View r27, android.view.WindowManager.LayoutParams r28, android.view.View r29, int r30) {
        /*
            Method dump skipped, instructions count: 1544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.setView(android.view.View, android.view.WindowManager$LayoutParams, android.view.View, int):void");
    }

    public void setAccessibilityWindowAttributesIfNeeded() {
        boolean registered = this.mAttachInfo.mAccessibilityWindowId != -1;
        if (registered) {
            AccessibilityWindowAttributes attributes = new AccessibilityWindowAttributes(this.mWindowAttributes, this.mContext.getResources().getConfiguration().getLocales());
            if (!attributes.equals(this.mAccessibilityWindowAttributes)) {
                this.mAccessibilityWindowAttributes = attributes;
                this.mAccessibilityManager.setAccessibilityWindowAttributes(getDisplayId(), this.mAttachInfo.mAccessibilityWindowId, attributes);
            }
        }
    }

    private void registerListeners() {
        this.mAccessibilityManager.addAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager, this.mHandler);
        this.mAccessibilityManager.addHighTextContrastStateChangeListener(this.mHighContrastTextManager, this.mHandler);
        DisplayManagerGlobal.getInstance().registerDisplayListener(this.mDisplayListener, this.mHandler, 7L);
        if (this.mAttachInfo != null && this.mDisplay.getState() != this.mAttachInfo.mDisplayState && this.mAttachInfo.mDisplay != null && this.mAttachInfo.mDisplay.getDisplayId() == this.mDisplay.getDisplayId()) {
            this.mAttachInfo.mDisplayState = this.mDisplay.getState();
            Log.i(this.mTag, "synced displayState. AttachInfo displayState=" + this.mAttachInfo.mDisplayState);
        }
    }

    private void unregisterListeners() {
        this.mAccessibilityManager.removeAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager);
        this.mAccessibilityManager.removeHighTextContrastStateChangeListener(this.mHighContrastTextManager);
        DisplayManagerGlobal.getInstance().unregisterDisplayListener(this.mDisplayListener);
    }

    private void setTag() {
        String[] split = this.mWindowAttributes.getTitle().toString().split("\\.");
        if (split.length > 0) {
            String str = "ViewRootImpl@" + Integer.toHexString(this.mWindow.hashCode()) + NavigationBarInflaterView.SIZE_MOD_START + split[split.length - 1] + NavigationBarInflaterView.SIZE_MOD_END;
            this.mTag = str;
            WindowOnBackInvokedDispatcher windowOnBackInvokedDispatcher = this.mOnBackInvokedDispatcher;
            if (windowOnBackInvokedDispatcher != null) {
                windowOnBackInvokedDispatcher.setOwnerTag(str);
            }
        }
    }

    public String getTag() {
        return this.mTag;
    }

    public static void setSafeScheduleTraversals(boolean safe) {
        sSafeScheduleTraversals = safe;
    }

    public int getWindowFlags() {
        return this.mWindowAttributes.flags;
    }

    public int getDisplayId() {
        return this.mDisplay.getDisplayId();
    }

    public CharSequence getTitle() {
        return this.mWindowAttributes.getTitle();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public void destroyHardwareResources() {
        ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
        if (renderer != null) {
            if (Looper.myLooper() != this.mAttachInfo.mHandler.getLooper()) {
                this.mAttachInfo.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewRootImpl.this.destroyHardwareResources();
                    }
                });
                return;
            }
            Log.i(this.mTag, "destroyHardwareResources: Callers=" + Debug.getCallers(10));
            renderer.destroyHardwareResources(this.mView);
            renderer.destroy();
        }
    }

    void resetSoftwareCaches(View view) {
        if (view == null) {
            return;
        }
        view.destroyDrawingCache();
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int count = group.getChildCount();
            for (int i = 0; i < count; i++) {
                resetSoftwareCaches(group.getChildAt(i));
            }
        }
    }

    public void detachFunctor(long functor) {
    }

    public static void invokeFunctor(long functor, boolean waitForCompletion) {
    }

    public void registerAnimatingRenderNode(RenderNode animator) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerAnimatingRenderNode(animator);
            return;
        }
        if (this.mAttachInfo.mPendingAnimatingRenderNodes == null) {
            this.mAttachInfo.mPendingAnimatingRenderNodes = new ArrayList();
        }
        this.mAttachInfo.mPendingAnimatingRenderNodes.add(animator);
    }

    public void registerVectorDrawableAnimator(NativeVectorDrawableAnimator animator) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerVectorDrawableAnimator(animator);
        }
    }

    /* renamed from: android.view.ViewRootImpl$2 */
    /* loaded from: classes4.dex */
    public class AnonymousClass2 implements HardwareRenderer.FrameDrawingCallback {
        final /* synthetic */ HardwareRenderer.FrameDrawingCallback val$callback;

        AnonymousClass2(HardwareRenderer.FrameDrawingCallback frameDrawingCallback) {
            callback = frameDrawingCallback;
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public void onFrameDraw(long frame) {
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, long frame) {
            try {
                return callback.onFrameDraw(syncResult, frame);
            } catch (Exception e) {
                Log.e(ViewRootImpl.TAG, "Exception while executing onFrameDraw", e);
                return null;
            }
        }
    }

    public void registerRtFrameCallback(HardwareRenderer.FrameDrawingCallback callback) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerRtFrameCallback(new HardwareRenderer.FrameDrawingCallback() { // from class: android.view.ViewRootImpl.2
                final /* synthetic */ HardwareRenderer.FrameDrawingCallback val$callback;

                AnonymousClass2(HardwareRenderer.FrameDrawingCallback callback2) {
                    callback = callback2;
                }

                @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
                public void onFrameDraw(long frame) {
                }

                @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
                public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, long frame) {
                    try {
                        return callback.onFrameDraw(syncResult, frame);
                    } catch (Exception e) {
                        Log.e(ViewRootImpl.TAG, "Exception while executing onFrameDraw", e);
                        return null;
                    }
                }
            });
        }
    }

    private void enableHardwareAcceleration(WindowManager.LayoutParams attrs) {
        this.mAttachInfo.mHardwareAccelerated = false;
        this.mAttachInfo.mHardwareAccelerationRequested = false;
        if (this.mTranslator != null) {
            return;
        }
        boolean hardwareAccelerated = (attrs.flags & 16777216) != 0;
        if (!hardwareAccelerated || CoreRune.FW_VIEW_DEBUG_DISABLE_HWRENDERING) {
            return;
        }
        boolean forceHwAccelerated = (attrs.privateFlags & 2) != 0;
        if (ThreadedRenderer.sRendererEnabled || forceHwAccelerated) {
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.destroy();
            }
            Rect insets = attrs.surfaceInsets;
            boolean hasSurfaceInsets = (insets.left == 0 && insets.right == 0 && insets.top == 0 && insets.bottom == 0) ? false : true;
            boolean translucent = attrs.format != -1 || hasSurfaceInsets;
            ThreadedRenderer renderer = ThreadedRenderer.create(this.mContext, translucent, attrs.getTitle().toString());
            this.mAttachInfo.mThreadedRenderer = renderer;
            renderer.setSurfaceControl(this.mSurfaceControl, this.mBlastBufferQueue);
            updateColorModeIfNeeded(attrs.getColorMode());
            updateRenderHdrSdrRatio();
            updateForceDarkMode();
            if (ViewRune.COMMON_IS_PRODUCT_DEV) {
                Log.d(this.mTag, "ThreadedRenderer.create() translucent=" + translucent);
            }
            this.mAttachInfo.mHardwareAccelerated = true;
            this.mAttachInfo.mHardwareAccelerationRequested = true;
            HardwareRendererObserver hardwareRendererObserver = this.mHardwareRendererObserver;
            if (hardwareRendererObserver != null) {
                renderer.addObserver(hardwareRendererObserver);
            }
        }
    }

    private int getNightMode() {
        return getConfiguration().uiMode & 48;
    }

    private void updateForceDarkMode() {
        if (this.mAttachInfo.mThreadedRenderer == null) {
            return;
        }
        boolean useAutoDark = getNightMode() == 32;
        if (useAutoDark) {
            boolean forceDarkAllowedDefault = SystemProperties.getBoolean(ThreadedRenderer.DEBUG_FORCE_DARK, false);
            TypedArray a = this.mContext.obtainStyledAttributes(R.styleable.Theme);
            useAutoDark = a.getBoolean(279, true) && a.getBoolean(278, forceDarkAllowedDefault);
            a.recycle();
        }
        if (this.mAttachInfo.mThreadedRenderer.setForceDark(useAutoDark)) {
            invalidateWorld(this.mView);
        }
    }

    public View getView() {
        return this.mView;
    }

    public final WindowLeaked getLocation() {
        return this.mLocation;
    }

    public void setLayoutParams(WindowManager.LayoutParams attrs, boolean newView) {
        int oldSoftInputMode;
        int oldInsetLeft;
        synchronized (this) {
            int oldInsetLeft2 = this.mWindowAttributes.surfaceInsets.left;
            int oldInsetTop = this.mWindowAttributes.surfaceInsets.top;
            int oldInsetRight = this.mWindowAttributes.surfaceInsets.right;
            int oldInsetBottom = this.mWindowAttributes.surfaceInsets.bottom;
            int oldSoftInputMode2 = this.mWindowAttributes.softInputMode;
            boolean oldHasManualSurfaceInsets = this.mWindowAttributes.hasManualSurfaceInsets;
            if (DEBUG_KEEP_SCREEN_ON && (this.mClientWindowLayoutFlags & 128) != 0 && (attrs.flags & 128) == 0) {
                Slog.d(this.mTag, "setLayoutParams: FLAG_KEEP_SCREEN_ON from true to false!");
            }
            if ((this.mWindowAttributes.flags & 512) != 0 && (attrs.flags & 512) == 0) {
                Log.i(this.mTag, "setLayoutParams: set mApplyInsetsRequested = true");
                this.mApplyInsetsRequested = true;
            }
            this.mClientWindowLayoutFlags = attrs.flags;
            int compatibleWindowFlag = this.mWindowAttributes.privateFlags & 128;
            int systemUiVisibility = this.mWindowAttributes.systemUiVisibility;
            int subtreeSystemUiVisibility = this.mWindowAttributes.subtreeSystemUiVisibility;
            int appearance = this.mWindowAttributes.insetsFlags.appearance;
            int behavior = this.mWindowAttributes.insetsFlags.behavior;
            int appearanceAndBehaviorPrivateFlags = this.mWindowAttributes.privateFlags & Enums.AUDIO_FORMAT_DTS_HD;
            int changes = this.mWindowAttributes.copyFrom(attrs);
            if ((changes & 524288) == 0) {
                oldSoftInputMode = oldSoftInputMode2;
            } else {
                oldSoftInputMode = oldSoftInputMode2;
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            if ((changes & 1) != 0) {
                this.mAttachInfo.mNeedsUpdateLightCenter = true;
            }
            if (this.mWindowAttributes.packageName == null) {
                this.mWindowAttributes.packageName = this.mBasePackageName;
            }
            this.mWindowAttributes.systemUiVisibility = systemUiVisibility;
            this.mWindowAttributes.subtreeSystemUiVisibility = subtreeSystemUiVisibility;
            this.mWindowAttributes.insetsFlags.appearance = appearance;
            this.mWindowAttributes.insetsFlags.behavior = behavior;
            this.mWindowAttributes.privateFlags |= compatibleWindowFlag | appearanceAndBehaviorPrivateFlags | 33554432;
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY && this.mWindowAttributes.type == 2632) {
                this.mWindowAttributes.inputFeatures |= 1;
            }
            if (this.mWindowAttributes.preservePreviousSurfaceInsets) {
                this.mWindowAttributes.surfaceInsets.set(oldInsetLeft2, oldInsetTop, oldInsetRight, oldInsetBottom);
                this.mWindowAttributes.hasManualSurfaceInsets = oldHasManualSurfaceInsets;
            } else if (this.mWindowAttributes.surfaceInsets.left != oldInsetLeft2 || this.mWindowAttributes.surfaceInsets.top != oldInsetTop || this.mWindowAttributes.surfaceInsets.right != oldInsetRight || this.mWindowAttributes.surfaceInsets.bottom != oldInsetBottom) {
                this.mNeedsRendererSetup = true;
            }
            applyKeepScreenOnFlag(this.mWindowAttributes);
            if (newView) {
                this.mSoftInputMode = attrs.softInputMode;
                requestLayout();
            }
            if ((attrs.softInputMode & 240) == 0) {
                WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
                oldInsetLeft = oldSoftInputMode;
                layoutParams.softInputMode = (oldInsetLeft & 240) | (layoutParams.softInputMode & (-241));
            } else {
                oldInsetLeft = oldSoftInputMode;
            }
            if (this.mWindowAttributes.softInputMode != oldInsetLeft) {
                requestFitSystemWindows();
            }
            if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
                Log.i(this.mTag, "Traversal, [1] mView=" + this.mView);
            }
            this.mWindowAttributesChanged = true;
            scheduleTraversals();
            setAccessibilityWindowAttributesIfNeeded();
        }
    }

    private boolean isImpossibleRenderer() {
        return this.mSemEarlyAppVisibilityChanged && this.mAppVisible && this.mStopped && !this.mSemEarlyAppVisibility;
    }

    void handleAppVisibility(boolean visible) {
        this.mSemEarlyAppVisibilityChanged = false;
        Log.i(this.mTag, "handleAppVisibility mAppVisible = " + this.mAppVisible + " visible = " + visible);
        if (this.mAppVisible != visible) {
            boolean previousVisible = getHostVisibility() == 0;
            this.mAppVisible = visible;
            boolean currentVisible = getHostVisibility() == 0;
            boolean z = DEBUG_TRAVERSAL;
            if (z && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
                Log.i(this.mTag, "Traversal, [2] mView=" + this.mView + " visible=" + visible + " previousVisible=" + previousVisible + " currentVisible=" + currentVisible);
            }
            if (previousVisible != currentVisible) {
                this.mAppVisibilityChanged = true;
                scheduleTraversals();
            }
            if (!this.mRemoved || !this.mAppVisible || !this.mIsDetached) {
                AnimationHandler.requestAnimatorsEnabled(this.mAppVisible, this);
                return;
            }
            Log.v(this.mTag, "handleAppVisibility() enabling visibility when removed");
            if (z && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
                Log.i(this.mTag, "Traversal, [2] mView=" + this.mView + " mAppVisible=" + this.mAppVisible + " visible=" + visible);
            }
        }
    }

    void handleGetNewSurface() {
        this.mNewSurfaceNeeded = true;
        this.mFullRedrawNeeded = true;
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [3]  mView=" + this.mView);
        }
        scheduleTraversals();
    }

    public void handleResized(int msg, SomeArgs args) {
        boolean z;
        Rect attachedFrame;
        boolean z2;
        if (!this.mAdded) {
            return;
        }
        ClientWindowFrames frames = (ClientWindowFrames) args.arg1;
        MergedConfiguration mergedConfiguration = (MergedConfiguration) args.arg2;
        CompatibilityInfo.applyOverrideScaleIfNeeded(mergedConfiguration);
        boolean forceNextWindowRelayout = args.argi1 != 0;
        int displayId = args.argi3;
        boolean dragResizing = args.argi5 != 0;
        Rect frame = frames.frame;
        Rect displayFrame = frames.displayFrame;
        Rect attachedFrame2 = frames.attachedFrame;
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWindow(frame);
            this.mTranslator.translateRectInScreenToAppWindow(displayFrame);
            this.mTranslator.translateRectInScreenToAppWindow(attachedFrame2);
        }
        CompatTranslator translator2 = getCompatTranslator();
        if (translator2 != null) {
            if (CoreRune.FW_BOUNDS_COMPAT_TRANSLATOR_AS_BOUNDS) {
                updatePositionInBounds(translator2, mergedConfiguration.getOverrideConfiguration());
            }
            translator2.savePositionInScreen(frames.frame.left, frames.frame.top);
            translator2.translateToWindow(frames.frame);
        }
        float compatScale = frames.compatScale;
        boolean frameChanged = !this.mWinFrame.equals(frame);
        boolean configChanged = !this.mLastReportedMergedConfiguration.equals(mergedConfiguration);
        boolean attachedFrameChanged = LOCAL_LAYOUT && !Objects.equals(this.mTmpFrames.attachedFrame, attachedFrame2);
        boolean displayChanged = this.mDisplay.getDisplayId() != displayId;
        boolean compatScaleChanged = this.mTmpFrames.compatScale != compatScale;
        Log.i(this.mTag, "handleResized, msg = " + msg + " frames=" + frames + " forceNextWindowRelayout=" + forceNextWindowRelayout + " displayId=" + displayId + " dragResizing=" + dragResizing + " compatScale=" + compatScale + " frameChanged=" + frameChanged + " attachedFrameChanged=" + attachedFrameChanged + " configChanged=" + configChanged + " displayChanged=" + displayChanged + " compatScaleChanged=" + compatScaleChanged);
        if (msg == 4 && !frameChanged && !configChanged && !attachedFrameChanged && !displayChanged && !forceNextWindowRelayout && !compatScaleChanged) {
            return;
        }
        this.mPendingDragResizing = dragResizing;
        this.mTmpFrames.compatScale = compatScale;
        this.mInvCompatScale = 1.0f / compatScale;
        if (configChanged) {
            z = false;
            performConfigurationChange(mergedConfiguration, false, displayChanged ? displayId : -1);
        } else {
            z = false;
            if (displayChanged) {
                onMovedToDisplay(displayId, this.mLastConfigurationFromResources);
            }
        }
        setFrame(frame, z);
        this.mTmpFrames.displayFrame.set(displayFrame);
        if (this.mTmpFrames.attachedFrame == null || attachedFrame2 == null) {
            attachedFrame = attachedFrame2;
        } else {
            attachedFrame = attachedFrame2;
            this.mTmpFrames.attachedFrame.set(attachedFrame);
        }
        if (this.mDragResizing && this.mUseMTRenderer) {
            boolean fullscreen = frame.equals(this.mPendingBackDropFrame);
            z2 = true;
            int i = this.mWindowCallbacks.size() - 1;
            while (i >= 0) {
                this.mWindowCallbacks.get(i).onWindowSizeIsChanging(this.mPendingBackDropFrame, fullscreen, this.mAttachInfo.mVisibleInsets, this.mAttachInfo.mStableInsets);
                i--;
                frames = frames;
                mergedConfiguration = mergedConfiguration;
                displayChanged = displayChanged;
                attachedFrameChanged = attachedFrameChanged;
            }
        } else {
            z2 = true;
        }
        this.mForceNextWindowRelayout |= forceNextWindowRelayout;
        this.mPendingAlwaysConsumeSystemBars = args.argi2 != 0 ? z2 : false;
        int i2 = args.argi4;
        int i3 = this.mSyncSeqId;
        if (i2 > i3) {
            i3 = args.argi4;
        }
        this.mSyncSeqId = i3;
        Log.i(this.mTag, "handleResized mSyncSeqId = " + this.mSyncSeqId);
        if (msg == 5) {
            reportNextDraw("resized");
        }
        View view = this.mView;
        if (view != null && (frameChanged || configChanged)) {
            forceLayout(view);
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.view.ViewRootImpl$3 */
    /* loaded from: classes4.dex */
    public class AnonymousClass3 implements DisplayManager.DisplayListener {
        AnonymousClass3() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
            if (ViewRootImpl.this.mView != null && ViewRootImpl.this.mDisplay.getDisplayId() == displayId) {
                int oldDisplayState = ViewRootImpl.this.mAttachInfo.mDisplayState;
                int newDisplayState = ViewRootImpl.this.mDisplay.getState();
                Log.i(ViewRootImpl.this.mTag, "onDisplayChanged oldDisplayState=" + oldDisplayState + " newDisplayState=" + newDisplayState);
                if (oldDisplayState != newDisplayState) {
                    ViewRootImpl.this.mAttachInfo.mDisplayState = newDisplayState;
                    ViewRootImpl.this.pokeDrawLockIfNeeded();
                    if (oldDisplayState != 0) {
                        int oldScreenState = toViewScreenState(oldDisplayState);
                        int newScreenState = toViewScreenState(newDisplayState);
                        if (oldScreenState != newScreenState) {
                            ViewRootImpl.this.mView.dispatchScreenStateChanged(newScreenState);
                        }
                        if (ViewRootImpl.DEBUG_TRAVERSAL && ViewRootImpl.DEBUG_TRAVERSAL_PACKAGE_NAME.equals(ViewRootImpl.this.mView.getContext().getPackageName())) {
                            Log.i(ViewRootImpl.this.mTag, "Traversal, [4] mView=" + ViewRootImpl.this.mView + " oldDisplayState=" + oldDisplayState);
                        }
                        switch (oldDisplayState) {
                            case 1:
                                ViewRootImpl.this.mFullRedrawNeeded = true;
                                ViewRootImpl.this.scheduleTraversals();
                                return;
                            case 2:
                            default:
                                return;
                            case 3:
                            case 4:
                                if (newDisplayState == 2 && displayId == 0 && (ViewRootImpl.this.mWindowAttributes.samsungFlags & 262144) == 0) {
                                    ViewRootImpl.this.mFullRedrawNeeded = true;
                                    ViewRootImpl.this.scheduleTraversals();
                                    return;
                                }
                                return;
                        }
                    }
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int displayId) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int displayId) {
        }

        private int toViewScreenState(int displayState) {
            return Settings.System.getInt(ViewRootImpl.this.mContentResolver, ViewRootImpl.AOD_SHOW_STATE, 0) != 0 ? displayState == 2 ? 1 : 0 : displayState == 1 ? 0 : 1;
        }
    }

    public void onMovedToDisplay(int displayId, Configuration config) {
        View view;
        if (this.mDisplay.getDisplayId() != displayId && (view = this.mView) != null) {
            updateInternalDisplay(displayId, view.getResources());
            this.mImeFocusController.onMovedToDisplay();
            this.mAttachInfo.mDisplayState = this.mDisplay.getState();
            updateDesktopMode();
            this.mView.dispatchMovedToDisplay(this.mDisplay, config);
        }
    }

    private void updateInternalDisplay(int displayId, Resources resources) {
        Display display;
        Display display2;
        Display preferredDisplay = ResourcesManager.getInstance().getAdjustedDisplay(displayId, resources);
        Consumer<Display> consumer = this.mHdrSdrRatioChangedListener;
        if (consumer != null && (display2 = this.mDisplay) != null) {
            display2.unregisterHdrSdrRatioChangedListener(consumer);
        }
        if (preferredDisplay == null) {
            Slog.w(TAG, "Cannot get desired display with Id: " + displayId);
            this.mDisplay = ResourcesManager.getInstance().getAdjustedDisplay(0, resources);
        } else {
            this.mDisplay = preferredDisplay;
        }
        if (this.mHdrSdrRatioChangedListener != null && (display = this.mDisplay) != null && display.isHdrSdrRatioAvailable()) {
            this.mDisplay.registerHdrSdrRatioChangedListener(this.mExecutor, this.mHdrSdrRatioChangedListener);
        }
        this.mContext.updateDisplay(this.mDisplay.getDisplayId());
    }

    public void deferScheduleTraversals() {
        this.mScheduleTraversalDeferCount++;
    }

    public void resumeScheduleTraversals() {
        int i = this.mScheduleTraversalDeferCount - 1;
        this.mScheduleTraversalDeferCount = i;
        if (i == 0) {
            scheduleTraversals();
        }
    }

    public PokeDrawLockController getPokeDrawLockController() {
        return this.mPokeDrawLockController;
    }

    void pokeDrawLockIfNeeded() {
        if (!this.mPokeDrawLockController.consumeRequestedToAllowPokeDrawLock(false) || !Display.isDozeState(this.mAttachInfo.mDisplayState)) {
            return;
        }
        if ((this.mWindowAttributes.type == 1 || this.mCanAllowPokeDrawLock) && this.mAdded && this.mTraversalScheduled) {
            if (this.mAttachInfo.mHasWindowFocus || !this.mPokeDrawLockController.shouldSkipPokeDrawLockIfNeeded(this.mReportNextDraw)) {
                try {
                    this.mWindowSession.pokeDrawLock(this.mWindow);
                } catch (RemoteException e) {
                }
            }
        }
    }

    @Override // android.view.ViewParent
    public void requestFitSystemWindows() {
        checkThread();
        this.mApplyInsetsRequested = true;
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [5] mView=" + this.mView);
        }
        scheduleTraversals();
    }

    public void notifyInsetsChanged() {
        InsetsSource imeSource = this.mInsetsController.getState().peekSource(InsetsSource.ID_IME);
        WindowConfiguration winConfig = getConfiguration().windowConfiguration;
        boolean isBottomSplit = winConfig.isSplitScreen() && (winConfig.getStagePosition() & 64) != 0;
        if ((winConfig.getWindowingMode() == 5 || isBottomSplit) && imeSource != null && imeSource.isVisible() && !imeSource.getFrame().isEmpty() && imeSource.getFrame().top < this.mWinFrame.top) {
            return;
        }
        this.mApplyInsetsRequested = true;
        requestLayout();
        if (View.sForceLayoutWhenInsetsChanged && this.mView != null && (this.mWindowAttributes.softInputMode & 240) == 16) {
            forceLayout(this.mView);
        }
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [6] mView=" + this.mView + " mIsInTraversal=" + this.mIsInTraversal);
        }
        if (!this.mIsInTraversal) {
            scheduleTraversals();
        }
    }

    @Override // android.view.ViewParent
    public void requestLayout() {
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [7] mView=" + this.mView + " mHandlingLayoutInLayoutRequest=" + this.mHandlingLayoutInLayoutRequest);
        }
        if (!this.mHandlingLayoutInLayoutRequest) {
            checkThread();
            this.mLayoutRequested = true;
            scheduleTraversals();
        }
    }

    @Override // android.view.ViewParent
    public boolean isLayoutRequested() {
        return this.mLayoutRequested;
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View child, View descendant) {
        if ((descendant.mPrivateFlags & 64) != 0) {
            this.mIsAnimating = true;
        }
        invalidate();
    }

    public void invalidate() {
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [8] mView=" + this.mView + " mWillDrawSoon=" + this.mWillDrawSoon);
        }
        this.mDirty.set(0, 0, this.mWidth, this.mHeight);
        if (!this.mWillDrawSoon) {
            scheduleTraversals();
        }
    }

    void invalidateWorld(View view) {
        view.invalidate();
        if (view instanceof ViewGroup) {
            ViewGroup parent = (ViewGroup) view;
            for (int i = 0; i < parent.getChildCount(); i++) {
                invalidateWorld(parent.getChildAt(i));
            }
        }
    }

    @Override // android.view.ViewParent
    public void invalidateChild(View child, Rect dirty) {
        invalidateChildInParent(null, dirty);
    }

    @Override // android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        checkThread();
        if (DEBUG_DRAW) {
            Log.v(this.mTag, "Invalidate child: " + dirty);
        }
        if (dirty == null) {
            invalidate();
            return null;
        }
        if (dirty.isEmpty() && !this.mIsAnimating) {
            return null;
        }
        if (this.mCurScrollY != 0 || this.mTranslator != null) {
            this.mTempRect.set(dirty);
            dirty = this.mTempRect;
            int i = this.mCurScrollY;
            if (i != 0) {
                dirty.offset(0, -i);
            }
            CompatibilityInfo.Translator translator = this.mTranslator;
            if (translator != null) {
                translator.translateRectInAppWindowToScreen(dirty);
            }
            if (this.mAttachInfo.mScalingRequired) {
                dirty.inset(-1, -1);
            }
        }
        invalidateRectOnScreen(dirty);
        return null;
    }

    private void invalidateRectOnScreen(Rect dirty) {
        if (DEBUG_DRAW) {
            Log.v(this.mTag, "invalidateRectOnScreen: " + dirty);
        }
        Rect localDirty = this.mDirty;
        localDirty.union(dirty.left, dirty.top, dirty.right, dirty.bottom);
        float appScale = this.mAttachInfo.mApplicationScale;
        boolean intersected = localDirty.intersect(0, 0, (int) ((this.mWidth * appScale) + 0.5f), (int) ((this.mHeight * appScale) + 0.5f));
        if (!intersected) {
            localDirty.setEmpty();
        }
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [9] mView=" + this.mView + " mWillDrawSoon=" + this.mWillDrawSoon + " intersected=" + intersected + " mIsAnimating=" + this.mIsAnimating);
        }
        if (this.mWillDrawSoon) {
            return;
        }
        if (intersected || this.mIsAnimating) {
            scheduleTraversals();
        }
    }

    public void setIsAmbientMode(boolean ambient) {
        this.mIsAmbientMode = ambient;
    }

    public void setWindowStopped(boolean stopped) {
        Log.i(this.mTag, "stopped(" + stopped + ") old = " + this.mStopped);
        checkThread();
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [10] mView=" + this.mView + " mStopped=" + this.mStopped + " stopped=" + stopped);
        }
        if (this.mStopped != stopped) {
            this.mStopped = stopped;
            ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
            if (renderer != null) {
                Log.d(this.mTag, "WindowStopped on " + ((Object) getTitle()) + " set to " + this.mStopped);
                renderer.setStopped(this.mStopped);
            }
            if (!this.mStopped) {
                this.mAppVisibilityChanged = true;
                scheduleTraversals();
                return;
            }
            if (renderer != null) {
                renderer.destroyHardwareResources(this.mView);
            }
            if (this.mSurface.isValid()) {
                if (this.mSurfaceHolder != null) {
                    notifyHolderSurfaceDestroyed();
                }
                notifySurfaceDestroyed();
            }
            destroySurface();
        }
    }

    /* loaded from: classes4.dex */
    public interface SurfaceChangedCallback {
        void surfaceCreated(SurfaceControl.Transaction transaction);

        void surfaceDestroyed();

        void surfaceReplaced(SurfaceControl.Transaction transaction);

        default void vriDrawStarted(boolean isWmSync) {
        }
    }

    public void addSurfaceChangedCallback(SurfaceChangedCallback c) {
        this.mSurfaceChangedCallbacks.add(c);
    }

    public void removeSurfaceChangedCallback(SurfaceChangedCallback c) {
        this.mSurfaceChangedCallbacks.remove(c);
    }

    private void notifySurfaceCreated(SurfaceControl.Transaction t) {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceCreated(t);
        }
    }

    private void notifySurfaceReplaced(SurfaceControl.Transaction t) {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceReplaced(t);
        }
    }

    private void notifySurfaceDestroyed() {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).surfaceDestroyed();
        }
    }

    private void notifyDrawStarted(boolean isWmSync) {
        for (int i = 0; i < this.mSurfaceChangedCallbacks.size(); i++) {
            this.mSurfaceChangedCallbacks.get(i).vriDrawStarted(isWmSync);
        }
    }

    public SurfaceControl getBoundsLayer() {
        if (this.mBoundsLayer == null) {
            WindowConfiguration winConfig = this.mContext.getResources().getConfiguration().windowConfiguration;
            boolean needBoundsLayer = winConfig.getWindowingMode() == 5 && winConfig.getFreeformTranslucent() != 1 && this.mWindowAttributes.type == 1;
            this.mBoundsLayer = new SurfaceControl.Builder(this.mSurfaceSession).setContainerLayer().setName("Bounds for - " + getTitle().toString() + "@" + this.mBoundsLayerCreatedCount).setParent(getSurfaceControl()).setColorLayer().setCallsite("ViewRootImpl.getBoundsLayer").build();
            setBoundsLayerCrop(this.mTransaction);
            if (!needBoundsLayer) {
                this.mTransaction.unsetColor(this.mBoundsLayer);
                this.mIsBoundsColorLayer = false;
            } else {
                this.mTransaction.setColor(this.mBoundsLayer, new float[]{0.0f, 0.0f, 0.0f});
                this.mTransaction.setLayer(this.mBoundsLayer, -3);
                this.mIsBoundsColorLayer = true;
            }
            this.mTransaction.show(this.mBoundsLayer).apply();
            this.mBoundsLayerCreatedCount++;
        }
        return this.mBoundsLayer;
    }

    void updateBlastSurfaceIfNeeded() {
        if (!this.mSurfaceControl.isValid()) {
            return;
        }
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null && bLASTBufferQueue.isSameSurfaceControl(this.mSurfaceControl)) {
            this.mBlastBufferQueue.update(this.mSurfaceControl, this.mSurfaceSize.x, this.mSurfaceSize.y, this.mWindowAttributes.format);
            return;
        }
        BLASTBufferQueue bLASTBufferQueue2 = this.mBlastBufferQueue;
        if (bLASTBufferQueue2 != null) {
            bLASTBufferQueue2.destroy();
        }
        BLASTBufferQueue bLASTBufferQueue3 = new BLASTBufferQueue(this.mTag, this.mSurfaceControl, this.mSurfaceSize.x, this.mSurfaceSize.y, this.mWindowAttributes.format);
        this.mBlastBufferQueue = bLASTBufferQueue3;
        bLASTBufferQueue3.setTransactionHangCallback(sTransactionHangCallback);
        Surface blastSurface = this.mBlastBufferQueue.createSurface();
        this.mSurface.transferFrom(blastSurface);
    }

    private void setBoundsLayerCrop(SurfaceControl.Transaction t) {
        this.mTempRect.set(0, 0, this.mSurfaceSize.x, this.mSurfaceSize.y);
        this.mTempRect.inset(this.mWindowAttributes.surfaceInsets.left, this.mWindowAttributes.surfaceInsets.top, this.mWindowAttributes.surfaceInsets.right, this.mWindowAttributes.surfaceInsets.bottom);
        this.mTempRect.inset(this.mChildBoundingInsets.left, this.mChildBoundingInsets.top, this.mChildBoundingInsets.right, this.mChildBoundingInsets.bottom);
        t.setWindowCrop(this.mBoundsLayer, this.mTempRect);
    }

    private boolean updateBoundsLayer(SurfaceControl.Transaction t) {
        if (this.mBoundsLayer == null) {
            return false;
        }
        setBoundsLayerCrop(t);
        Log.i(this.mTag, "updateBoundsLayer: t=" + t + " sc=" + this.mBoundsLayer + " frame=" + this.mSurface.getNextFrameNumber());
        if (this.mAttachInfo.mDisplayState == 1) {
            this.mDeferTransactionRequested = true;
            Log.i(this.mTag, "updateBoundsLayer: set mDeferTransactionRequested=" + this.mDeferTransactionRequested);
        }
        WindowConfiguration winConfig = this.mContext.getResources().getConfiguration().windowConfiguration;
        boolean isFreeform = winConfig.getWindowingMode() == 5;
        if (this.mWindowAttributes.type == 1) {
            if (!this.mIsWindowOpaque && isFreeform) {
                t.setLayer(this.mBoundsLayer, 0);
                t.unsetColor(this.mBoundsLayer);
                this.mIsBoundsColorLayer = false;
            } else {
                boolean z = this.mIsBoundsColorLayer;
                if (!z && isFreeform) {
                    t.setLayer(this.mBoundsLayer, -3);
                    t.setColor(this.mBoundsLayer, new float[]{0.0f, 0.0f, 0.0f});
                    this.mIsBoundsColorLayer = true;
                } else if (z && !isFreeform) {
                    t.setLayer(this.mBoundsLayer, 0);
                    t.unsetColor(this.mBoundsLayer);
                    this.mIsBoundsColorLayer = false;
                }
            }
        }
        this.mFullRedrawNeeded = true;
        return true;
    }

    private void prepareSurfaces() {
        SurfaceControl.Transaction t = this.mTransaction;
        SurfaceControl sc = getSurfaceControl();
        if (sc.isValid() && updateBoundsLayer(t)) {
            applyTransactionOnDraw(t);
        }
    }

    private void destroySurface() {
        if (this.mBoundsLayer != null) {
            SurfaceControl.Transaction t = new SurfaceControl.Transaction();
            t.remove(this.mBoundsLayer).apply();
            this.mBoundsLayer = null;
        }
        this.mSurface.release();
        this.mSurfaceControl.release();
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            bLASTBufferQueue.destroy();
            this.mBlastBufferQueue = null;
        }
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setSurfaceControl(null, null);
        }
    }

    public void setPausedForTransition(boolean paused) {
        this.mPausedForTransition = paused;
    }

    @Override // android.view.ViewParent
    public ViewParent getParent() {
        return null;
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View child, Rect r, Point offset) {
        if (child != this.mView) {
            throw new RuntimeException("child is not mine, honest!");
        }
        return r.intersect(0, 0, this.mWidth, this.mHeight);
    }

    @Override // android.view.ViewParent
    public boolean getChildLocalHitRegion(View child, Region region, Matrix matrix, boolean isHover) {
        if (child != this.mView) {
            throw new IllegalArgumentException("child " + child + " is not the root view " + this.mView + " managed by this ViewRootImpl");
        }
        RectF rectF = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
        matrix.mapRect(rectF);
        return region.op(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom), Region.Op.INTERSECT);
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View child) {
    }

    public int getHostVisibility() {
        View view = this.mView;
        if (view == null || !(this.mAppVisible || this.mForceDecorViewVisibility)) {
            return 8;
        }
        return view.getVisibility();
    }

    public void requestTransitionStart(LayoutTransition transition) {
        ArrayList<LayoutTransition> arrayList = this.mPendingTransitions;
        if (arrayList == null || !arrayList.contains(transition)) {
            if (this.mPendingTransitions == null) {
                this.mPendingTransitions = new ArrayList<>();
            }
            this.mPendingTransitions.add(transition);
        }
    }

    void notifyRendererOfFramePending() {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.notifyFramePending();
        }
    }

    public void notifyRendererOfExpensiveFrame() {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.notifyExpensiveFrame();
        }
    }

    public void scheduleTraversals() {
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, scheduleTraversals! mView=" + this.mView + " callers=" + Debug.getCallers(7));
        }
        if (sSafeScheduleTraversals) {
            checkThread();
        }
        if (this.mScheduleTraversalDeferCount <= 0 && !this.mTraversalScheduled) {
            this.mTraversalScheduled = true;
            this.mTraversalBarrier = this.mHandler.getLooper().getQueue().postSyncBarrier();
            this.mChoreographer.postCallback(3, this.mTraversalRunnable, null);
            notifyRendererOfFramePending();
            pokeDrawLockIfNeeded();
        }
    }

    void unscheduleTraversals() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            this.mChoreographer.removeCallbacks(3, this.mTraversalRunnable, null);
        }
    }

    void doTraversal() {
        if (this.mTraversalScheduled) {
            if (this.mPokeDrawLockController.isRequestedToAllowPokeDrawLock()) {
                pokeDrawLockIfNeeded();
            }
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            if (this.mProfile) {
                Debug.startMethodTracing("ViewAncestor");
            }
            performTraversals();
            if (this.mProfile) {
                Debug.stopMethodTracing();
                this.mProfile = false;
            }
        }
    }

    private void applyKeepScreenOnFlag(WindowManager.LayoutParams params) {
        if (this.mAttachInfo.mKeepScreenOn) {
            params.flags |= 128;
        } else {
            params.flags = (params.flags & PackageManager.INSTALL_FAILED_PRE_APPROVAL_NOT_AVAILABLE) | (this.mClientWindowLayoutFlags & 128);
        }
    }

    private boolean collectViewAttributes() {
        if (this.mAttachInfo.mRecomputeGlobalAttributes) {
            this.mAttachInfo.mRecomputeGlobalAttributes = false;
            boolean oldScreenOn = this.mAttachInfo.mKeepScreenOn;
            this.mAttachInfo.mKeepScreenOn = false;
            this.mAttachInfo.mSystemUiVisibility = 0;
            this.mAttachInfo.mHasSystemUiListeners = false;
            this.mView.dispatchCollectViewAttributes(this.mAttachInfo, 0);
            this.mAttachInfo.mSystemUiVisibility &= ~this.mAttachInfo.mDisabledSystemUiVisibility;
            WindowManager.LayoutParams params = this.mWindowAttributes;
            this.mAttachInfo.mSystemUiVisibility |= getImpliedSystemUiVisibility(params);
            SystemUiVisibilityInfo systemUiVisibilityInfo = this.mCompatibleVisibilityInfo;
            systemUiVisibilityInfo.globalVisibility = (systemUiVisibilityInfo.globalVisibility & (-2)) | (this.mAttachInfo.mSystemUiVisibility & 1);
            dispatchDispatchSystemUiVisibilityChanged();
            if (this.mAttachInfo.mKeepScreenOn != oldScreenOn || this.mAttachInfo.mSystemUiVisibility != params.subtreeSystemUiVisibility || this.mAttachInfo.mHasSystemUiListeners != params.hasSystemUiListeners) {
                applyKeepScreenOnFlag(params);
                params.subtreeSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                params.hasSystemUiListeners = this.mAttachInfo.mHasSystemUiListeners;
                this.mView.dispatchWindowSystemUiVisiblityChanged(this.mAttachInfo.mSystemUiVisibility);
                return true;
            }
        }
        return false;
    }

    private int getImpliedSystemUiVisibility(WindowManager.LayoutParams params) {
        int vis = 0;
        if ((params.flags & 67108864) != 0) {
            vis = 0 | 1280;
        }
        if ((params.flags & 134217728) != 0) {
            return vis | 768;
        }
        return vis;
    }

    public void updateCompatSysUiVisibility(int visibleTypes, int requestedVisibleTypes, int controllableTypes) {
        int visibleTypes2 = (requestedVisibleTypes & controllableTypes) | ((~controllableTypes) & visibleTypes);
        updateCompatSystemUiVisibilityInfo(4, WindowInsets.Type.statusBars(), visibleTypes2, controllableTypes);
        updateCompatSystemUiVisibilityInfo(2, WindowInsets.Type.navigationBars(), visibleTypes2, controllableTypes);
        dispatchDispatchSystemUiVisibilityChanged();
    }

    private void updateCompatSystemUiVisibilityInfo(int systemUiFlag, int insetsType, int visibleTypes, int controllableTypes) {
        SystemUiVisibilityInfo info = this.mCompatibleVisibilityInfo;
        boolean willBeVisible = (visibleTypes & insetsType) != 0;
        boolean hasControl = (controllableTypes & insetsType) != 0;
        boolean wasInvisible = (this.mAttachInfo.mSystemUiVisibility & systemUiFlag) != 0;
        if (willBeVisible) {
            info.globalVisibility &= ~systemUiFlag;
            if (hasControl && wasInvisible) {
                info.localChanges |= systemUiFlag;
                return;
            }
            return;
        }
        info.globalVisibility |= systemUiFlag;
        info.localChanges &= ~systemUiFlag;
    }

    public void clearLowProfileModeIfNeeded(int showTypes, boolean fromIme) {
        SystemUiVisibilityInfo info = this.mCompatibleVisibilityInfo;
        if ((WindowInsets.Type.systemBars() & showTypes) != 0 && !fromIme && (info.globalVisibility & 1) != 0) {
            info.globalVisibility &= -2;
            info.localChanges |= 1;
            dispatchDispatchSystemUiVisibilityChanged();
        }
    }

    private void dispatchDispatchSystemUiVisibilityChanged() {
        if (this.mDispatchedSystemUiVisibility != this.mCompatibleVisibilityInfo.globalVisibility) {
            this.mHandler.removeMessages(17);
            ViewRootHandler viewRootHandler = this.mHandler;
            viewRootHandler.sendMessage(viewRootHandler.obtainMessage(17));
        }
    }

    public void handleDispatchSystemUiVisibilityChanged() {
        if (this.mView == null) {
            return;
        }
        SystemUiVisibilityInfo info = this.mCompatibleVisibilityInfo;
        if (info.localChanges != 0) {
            this.mView.updateLocalSystemUiVisibility(info.localValue, info.localChanges);
            info.localChanges = 0;
        }
        int visibility = info.globalVisibility & 7;
        if (this.mDispatchedSystemUiVisibility != visibility) {
            this.mDispatchedSystemUiVisibility = visibility;
            this.mView.dispatchSystemUiVisibilityChanged(visibility);
        }
    }

    public static void adjustLayoutParamsForCompatibility(WindowManager.LayoutParams inOutParams) {
        int sysUiVis = inOutParams.systemUiVisibility | inOutParams.subtreeSystemUiVisibility;
        int flags = inOutParams.flags;
        int type = inOutParams.type;
        int adjust = inOutParams.softInputMode & 240;
        if ((inOutParams.privateFlags & 67108864) == 0) {
            inOutParams.insetsFlags.appearance = 0;
            if ((sysUiVis & 1) != 0) {
                inOutParams.insetsFlags.appearance |= 4;
            }
            if ((sysUiVis & 8192) != 0) {
                inOutParams.insetsFlags.appearance |= 8;
            }
            if ((sysUiVis & 16) != 0) {
                inOutParams.insetsFlags.appearance |= 16;
            }
        }
        if ((inOutParams.privateFlags & 134217728) == 0) {
            if ((sysUiVis & 4096) != 0 || (flags & 1024) != 0) {
                inOutParams.insetsFlags.behavior = 2;
            } else {
                inOutParams.insetsFlags.behavior = 1;
            }
        }
        inOutParams.privateFlags &= -1073741825;
        if ((inOutParams.privateFlags & 268435456) != 0) {
            return;
        }
        int types = inOutParams.getFitInsetsTypes();
        boolean ignoreVis = inOutParams.isFitInsetsIgnoringVisibility();
        if ((sysUiVis & 1024) != 0 || (flags & 256) != 0 || (67108864 & flags) != 0) {
            types &= ~WindowInsets.Type.statusBars();
        }
        if ((sysUiVis & 512) != 0 || (flags & 134217728) != 0) {
            types &= ~WindowInsets.Type.systemBars();
        }
        if (type == 2005 || type == 2003) {
            ignoreVis = true;
        } else if ((WindowInsets.Type.systemBars() & types) == WindowInsets.Type.systemBars()) {
            if (adjust == 16) {
                types |= WindowInsets.Type.ime();
            } else {
                inOutParams.privateFlags |= 1073741824;
            }
        }
        inOutParams.setFitInsetsTypes(types);
        inOutParams.setFitInsetsIgnoringVisibility(ignoreVis);
        inOutParams.privateFlags &= -268435457;
    }

    private void controlInsetsForCompatibility(WindowManager.LayoutParams params) {
        int sysUiVis = params.systemUiVisibility | params.subtreeSystemUiVisibility;
        int flags = params.flags;
        boolean matchParent = params.width == -1 && params.height == -1;
        boolean nonAttachedAppWindow = params.type >= 1 && params.type <= 99;
        boolean statusWasHiddenByFlags = (this.mTypesHiddenByFlags & WindowInsets.Type.statusBars()) != 0;
        boolean statusIsHiddenByFlags = (sysUiVis & 4) != 0 || ((flags & 1024) != 0 && matchParent && nonAttachedAppWindow);
        boolean navWasHiddenByFlags = (this.mTypesHiddenByFlags & WindowInsets.Type.navigationBars()) != 0;
        boolean navIsHiddenByFlags = (sysUiVis & 2) != 0;
        int typesToHide = 0;
        int typesToShow = 0;
        if (statusIsHiddenByFlags && !statusWasHiddenByFlags) {
            typesToHide = 0 | WindowInsets.Type.statusBars();
        } else if (!statusIsHiddenByFlags && statusWasHiddenByFlags) {
            typesToShow = 0 | WindowInsets.Type.statusBars();
        }
        if (navIsHiddenByFlags && !navWasHiddenByFlags) {
            typesToHide |= WindowInsets.Type.navigationBars();
        } else if (!navIsHiddenByFlags && navWasHiddenByFlags) {
            typesToShow |= WindowInsets.Type.navigationBars();
        }
        if (typesToHide != 0) {
            getInsetsController().hide(typesToHide);
        }
        if (typesToShow != 0) {
            getInsetsController().show(typesToShow);
        }
        int i = this.mTypesHiddenByFlags | typesToHide;
        this.mTypesHiddenByFlags = i;
        this.mTypesHiddenByFlags = i & (~typesToShow);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0203  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean measureHierarchy(android.view.View r19, android.view.WindowManager.LayoutParams r20, android.content.res.Resources r21, int r22, int r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.measureHierarchy(android.view.View, android.view.WindowManager$LayoutParams, android.content.res.Resources, int, int, boolean):boolean");
    }

    private boolean setMeasuredRootSizeFromSpec(int widthMeasureSpec, int heightMeasureSpec) {
        int widthMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightMode = View.MeasureSpec.getMode(heightMeasureSpec);
        if (widthMode != 1073741824 || heightMode != 1073741824) {
            return false;
        }
        this.mMeasuredWidth = View.MeasureSpec.getSize(widthMeasureSpec);
        this.mMeasuredHeight = View.MeasureSpec.getSize(heightMeasureSpec);
        return true;
    }

    public void transformMatrixToGlobal(Matrix m) {
        m.preTranslate(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
    }

    public void transformMatrixToLocal(Matrix m) {
        m.postTranslate(-this.mAttachInfo.mWindowLeft, -this.mAttachInfo.mWindowTop);
    }

    public WindowInsets getWindowInsets(boolean forceConstruct) {
        return getWindowInsets(forceConstruct, false);
    }

    WindowInsets getWindowInsets(boolean forceConstruct, boolean removeCutout) {
        if (this.mLastWindowInsets == null || forceConstruct) {
            Configuration config = getConfiguration();
            WindowInsets calculateInsets = this.mInsetsController.calculateInsets(config.isScreenRound(), this.mWindowAttributes.type, config.windowConfiguration.getActivityType(), this.mWindowAttributes.softInputMode, this.mWindowAttributes.flags, this.mWindowAttributes.systemUiVisibility | this.mWindowAttributes.subtreeSystemUiVisibility);
            this.mLastWindowInsets = calculateInsets;
            if (this.mIsCutoutRemoveNeeded || removeCutout) {
                WindowInsets insets = calculateInsets.removeCutoutInsets();
                if (this.mIsCutoutRemoveNeeded) {
                    this.mLastWindowInsets = insets;
                } else {
                    this.mAttachInfo.mContentInsets.set(insets.getSystemWindowInsets().toRect());
                    this.mAttachInfo.mStableInsets.set(insets.getStableInsets().toRect());
                    this.mAttachInfo.mVisibleInsets.set(this.mInsetsController.calculateVisibleInsets(this.mWindowAttributes.type, config.windowConfiguration.getWindowingMode(), this.mWindowAttributes.softInputMode, this.mWindowAttributes.flags).toRect());
                    return insets;
                }
            }
            this.mAttachInfo.mContentInsets.set(this.mLastWindowInsets.getSystemWindowInsets().toRect());
            this.mAttachInfo.mStableInsets.set(this.mLastWindowInsets.getStableInsets().toRect());
            this.mAttachInfo.mVisibleInsets.set(this.mInsetsController.calculateVisibleInsets(this.mWindowAttributes.type, config.windowConfiguration.getActivityType(), this.mWindowAttributes.softInputMode, this.mWindowAttributes.flags).toRect());
        }
        return this.mLastWindowInsets;
    }

    public void dispatchApplyInsets(View host) {
        Trace.traceBegin(8L, "dispatchApplyInsets");
        this.mApplyInsetsRequested = false;
        WindowInsets insets = getWindowInsets(true, this.mIsCutoutRemoveForDispatchNeeded);
        if (!shouldDispatchCutout()) {
            insets = insets.consumeDisplayCutout();
        }
        if (DEBUG_WINDOW_INSETS) {
            Log.i(this.mTag, "dispatchApplyInsets : " + insets);
        }
        if (host instanceof DecorView) {
            ((DecorView) host).updateCaptionHeightIfNeeded(insets);
        }
        InsetsSource imeSource = this.mInsetsController.getState().peekSource(InsetsSource.ID_IME);
        if (imeSource != null && imeSource.isVisible() && getConfiguration().windowConfiguration.isPopOver()) {
            this.mForceNextWindowRelayout = true;
        }
        host.dispatchApplyWindowInsets(insets);
        this.mAttachInfo.delayNotifyContentCaptureInsetsEvent(insets.getInsets(WindowInsets.Type.all()));
        Trace.traceEnd(8L);
    }

    private boolean updateCaptionInsets() {
        if (CAPTION_ON_SHELL) {
            return false;
        }
        View view = this.mView;
        if (!(view instanceof DecorView)) {
            return false;
        }
        int captionInsetsHeight = ((DecorView) view).getCaptionInsetsHeight();
        Rect captionFrame = new Rect();
        if (captionInsetsHeight != 0) {
            captionFrame.set(this.mWinFrame.left, this.mWinFrame.top, this.mWinFrame.right, this.mWinFrame.top + captionInsetsHeight);
        }
        if (this.mAttachInfo.mCaptionInsets.equals(captionFrame)) {
            return false;
        }
        this.mAttachInfo.mCaptionInsets.set(captionFrame);
        return true;
    }

    private boolean shouldDispatchCutout() {
        return this.mWindowAttributes.layoutInDisplayCutoutMode == 3 || this.mWindowAttributes.layoutInDisplayCutoutMode == 1;
    }

    public InsetsController getInsetsController() {
        return this.mInsetsController;
    }

    private static boolean shouldUseDisplaySize(WindowManager.LayoutParams lp) {
        return lp.type == 2041 || lp.type == 2011 || lp.type == 2020;
    }

    private static boolean shouldOptimizeMeasure(WindowManager.LayoutParams lp) {
        return (lp.privateFlags & 512) != 0;
    }

    private Rect getWindowBoundsInsetSystemBars() {
        Rect bounds = new Rect(this.mContext.getResources().getConfiguration().windowConfiguration.getBounds());
        bounds.inset(this.mInsetsController.getState().calculateInsets(bounds, WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), false));
        return bounds;
    }

    public int dipToPx(int dip) {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        return (int) ((displayMetrics.density * dip) + 0.5f);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(189:16|(1:980)(1:24)|25|(4:27|(1:29)(1:978)|(1:31)(1:977)|(181:33|34|(3:36|(1:38)(1:975)|39)(1:976)|40|(6:42|(1:44)(2:961|(1:966)(1:965))|45|(1:47)|48|(1:50))(2:967|(3:971|(1:973)|974))|(3:52|(2:(1:55)(1:57)|56)|(1:61))|62|(1:64)|65|(1:67)|68|(1:960)(1:74)|75|(3:77|(1:958)(2:83|(1:85)(1:957))|86)(1:959)|87|(1:89)|90|(1:92)|93|(2:940|(6:942|(3:944|(2:946|947)(1:949)|948)|950|(1:952)|953|(1:955))(1:956))(1:97)|98|(2:100|(1:102)(1:938))(1:939)|(1:104)|(1:937)(151:107|(1:936)(4:111|(2:113|(1:115))|929|(2:931|(1:933)))|117|118|(1:928)(1:122)|123|(1:927)(1:127)|128|(1:130)(1:926)|131|(1:133)(1:925)|(4:135|(1:139)|140|(1:142))(1:924)|143|(1:923)(2:148|(1:150)(45:922|277|(1:279)|280|(1:538)(4:284|285|(1:287)|289)|(1:535)|(1:534)(1:303)|(1:533)(1:307)|(2:309|(6:311|(1:530)|315|(1:317)|318|(2:320|(1:322)))(1:531))(1:532)|323|(1:325)(1:(1:527)(1:(1:529)))|(1:327)|(1:329)|330|(3:332|(3:520|(1:522)(1:524)|523)(1:336)|337)(1:525)|338|(1:519)(1:342)|343|(7:345|(4:347|(1:349)|350|(1:352))(1:507)|(1:354)(1:506)|(1:356)|(1:358)(1:(1:505))|359|360)(2:508|(3:512|513|514))|361|(1:497)(6:363|(2:489|(1:493))|368|(1:370)(1:488)|371|(2:373|(2:375|(1:377))(1:(1:379))))|(2:485|(20:487|(1:386)|387|(1:484)(1:390)|391|(1:393)|(1:483)(1:396)|397|(1:482)(1:402)|(1:481)(4:404|(1:406)(1:480)|407|(1:411))|478|415|(1:475)|425|(1:429)|(4:431|(4:435|(2:438|436)|439|440)|441|(1:443))(1:(2:(1:457)(1:459)|458)(4:460|(4:464|(2:467|465)|468|469)|470|(1:474)))|444|(1:446)|447|(2:449|(2:451|452)(1:453))(1:454)))(1:383)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(1:400)|482|(0)(0)|478|415|(1:477)(2:418|475)|425|(2:427|429)|(0)(0)|444|(0)|447|(0)(0)))|151|(3:153|(1:155)(1:920)|156)(1:921)|157|(1:159)|160|161|162|(9:164|165|166|167|168|169|170|171|172)(1:914)|174|175|(1:895)|178|179|(1:181)(1:893)|182|183|184|185|186|187|188|189|190|(5:872|873|(1:875)|876|(1:878))|192|(1:194)(1:871)|195|(6:838|839|(1:843)|(1:847)|(1:851)|(1:865)(4:860|861|862|863))(1:197)|(1:199)|200|201|(6:205|(1:207)|208|(1:210)(1:585)|211|212)|586|(6:588|589|590|591|592|593)(1:832)|594|595|(1:597)(1:818)|598|(1:817)(1:602)|603|(1:816)(1:607)|608|609|(2:812|(93:814|613|(1:615)|(2:617|618)(1:811)|619|620|(1:622)|(6:787|788|789|790|791|(1:793))(1:624)|625|626|627|628|(4:630|631|632|(87:660|661|662|663|664|665|666|667|668|669|670|671|672|673|674|675|(1:679)|681|636|(1:(5:639|(1:649)(1:643)|644|(1:646)(1:648)|647)(1:650))|651|(1:(1:654)(1:655))|656|(1:658)|659|219|(1:221)|222|(1:577)|226|(6:228|(1:230)|231|(2:233|(3:235|(1:237)|238))|(2:564|(3:566|(4:568|(1:570)|571|572)(1:574)|573)(1:575))(1:243)|(4:245|246|247|248))(1:576)|253|(3:264|(1:270)(1:268)|269)|271|(8:545|(1:547)(1:563)|548|(1:550)(1:562)|551|(1:553)(1:561)|(1:560)(2:(1:556)(1:559)|557)|558)(1:275)|276|277|(0)|280|(1:282)|538|(0)|535|(2:299|301)|534|(1:305)|533|(0)(0)|323|(0)(0)|(0)|(0)|330|(0)(0)|338|(1:340)|519|343|(0)(0)|361|(0)(0)|(1:381)|485|(0)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(0)|482|(0)(0)|478|415|(0)(0)|425|(0)|(0)(0)|444|(0)|447|(0)(0))(1:634))(3:731|732|(8:734|(1:736)|737|(1:739)|740|(1:742)|743|(1:745)(1:746))(3:(1:751)|752|(1:777)(2:756|(6:758|759|760|761|762|763)(1:776))))|635|636|(0)|651|(0)|656|(0)|659|219|(0)|222|(1:224)|577|226|(0)(0)|253|(5:255|264|(1:266)|270|269)|271|(1:273)|539|545|(0)(0)|548|(0)(0)|551|(0)(0)|(0)(0)|558|276|277|(0)|280|(0)|538|(0)|535|(0)|534|(0)|533|(0)(0)|323|(0)(0)|(0)|(0)|330|(0)(0)|338|(0)|519|343|(0)(0)|361|(0)(0)|(0)|485|(0)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(0)|482|(0)(0)|478|415|(0)(0)|425|(0)|(0)(0)|444|(0)|447|(0)(0)))|612|613|(0)|(0)(0)|619|620|(0)|(0)(0)|625|626|627|628|(0)(0)|635|636|(0)|651|(0)|656|(0)|659|219|(0)|222|(0)|577|226|(0)(0)|253|(0)|271|(0)|539|545|(0)(0)|548|(0)(0)|551|(0)(0)|(0)(0)|558|276|277|(0)|280|(0)|538|(0)|535|(0)|534|(0)|533|(0)(0)|323|(0)(0)|(0)|(0)|330|(0)(0)|338|(0)|519|343|(0)(0)|361|(0)(0)|(0)|485|(0)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(0)|482|(0)(0)|478|415|(0)(0)|425|(0)|(0)(0)|444|(0)|447|(0)(0))|935|118|(1:120)|928|123|(1:125)|927|128|(0)(0)|131|(0)(0)|(0)(0)|143|(0)|923|151|(0)(0)|157|(0)|160|161|162|(0)(0)|174|175|(0)|895|178|179|(0)(0)|182|183|184|185|186|187|188|189|190|(0)|192|(0)(0)|195|(0)(0)|(0)|200|201|(7:203|205|(0)|208|(0)(0)|211|212)|586|(0)(0)|594|595|(0)(0)|598|(1:600)|817|603|(1:605)|816|608|609|(0)|812|(0)|612|613|(0)|(0)(0)|619|620|(0)|(0)(0)|625|626|627|628|(0)(0)|635|636|(0)|651|(0)|656|(0)|659|219|(0)|222|(0)|577|226|(0)(0)|253|(0)|271|(0)|539|545|(0)(0)|548|(0)(0)|551|(0)(0)|(0)(0)|558|276|277|(0)|280|(0)|538|(0)|535|(0)|534|(0)|533|(0)(0)|323|(0)(0)|(0)|(0)|330|(0)(0)|338|(0)|519|343|(0)(0)|361|(0)(0)|(0)|485|(0)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(0)|482|(0)(0)|478|415|(0)(0)|425|(0)|(0)(0)|444|(0)|447|(0)(0)))|979|34|(0)(0)|40|(0)(0)|(0)|62|(0)|65|(0)|68|(2:70|72)|960|75|(0)(0)|87|(0)|90|(0)|93|(1:95)|940|(0)(0)|98|(0)(0)|(0)|(0)|937|935|118|(0)|928|123|(0)|927|128|(0)(0)|131|(0)(0)|(0)(0)|143|(0)|923|151|(0)(0)|157|(0)|160|161|162|(0)(0)|174|175|(0)|895|178|179|(0)(0)|182|183|184|185|186|187|188|189|190|(0)|192|(0)(0)|195|(0)(0)|(0)|200|201|(0)|586|(0)(0)|594|595|(0)(0)|598|(0)|817|603|(0)|816|608|609|(0)|812|(0)|612|613|(0)|(0)(0)|619|620|(0)|(0)(0)|625|626|627|628|(0)(0)|635|636|(0)|651|(0)|656|(0)|659|219|(0)|222|(0)|577|226|(0)(0)|253|(0)|271|(0)|539|545|(0)(0)|548|(0)(0)|551|(0)(0)|(0)(0)|558|276|277|(0)|280|(0)|538|(0)|535|(0)|534|(0)|533|(0)(0)|323|(0)(0)|(0)|(0)|330|(0)(0)|338|(0)|519|343|(0)(0)|361|(0)(0)|(0)|485|(0)|384|(0)|387|(0)|484|391|(0)|(0)|483|397|(0)|482|(0)(0)|478|415|(0)(0)|425|(0)|(0)(0)|444|(0)|447|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0314, code lost:
    
        if (r30.width() != r58.mWidth) goto L1178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x1254, code lost:
    
        if (r1 != false) goto L1873;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x1257, code lost:
    
        r25 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x0a9b, code lost:
    
        r50 = r15;
        r5 = r28;
        r15 = r29;
        r12 = r43;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:785:0x0a8c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x0a8d, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x077d, code lost:
    
        if (r58.mApplyInsetsRequested != false) goto L2002;
     */
    /* JADX WARN: Code restructure failed: missing block: B:807:0x0aba, code lost:
    
        r50 = r15;
        r5 = r28;
        r15 = r29;
        r12 = r43;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x0aa9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:809:0x0aaa, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:820:0x0add, code lost:
    
        r50 = r15;
        r5 = r28;
        r15 = r29;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:821:0x0aca, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:822:0x0acb, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:835:0x0b04, code lost:
    
        r50 = r15;
        r5 = r28;
        r15 = r13;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:836:0x0aef, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:0x0af0, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:880:0x0b2f, code lost:
    
        r50 = r15;
        r5 = r12;
        r15 = r13;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:881:0x0b18, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:882:0x0b19, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:885:0x0b5e, code lost:
    
        r47 = r3;
        r50 = r15;
        r5 = r12;
        r15 = r13;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:886:0x0b45, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:887:0x0b46, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:890:0x0b91, code lost:
    
        r47 = r3;
        r50 = r15;
        r5 = r12;
        r15 = r13;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:891:0x0b76, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:892:0x0b77, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:897:0x0bc1, code lost:
    
        r47 = r3;
        r50 = r15;
        r15 = r29;
        r5 = r37;
        r12 = r43;
        r13 = r44;
        r9 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:898:0x0bab, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:899:0x0bac, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:917:0x0bf9, code lost:
    
        r47 = r3;
        r50 = r15;
        r9 = 8;
        r15 = r29;
        r5 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:918:0x0bd6, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:919:0x0bd7, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:934:0x0327, code lost:
    
        if (r30.height() != r58.mHeight) goto L1178;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x052c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0607 A[Catch: all -> 0x0631, RemoteException -> 0x0642, TRY_LEAVE, TryCatch #59 {RemoteException -> 0x0642, all -> 0x0631, blocks: (B:863:0x05d1, B:199:0x0607, B:203:0x0658, B:205:0x0662, B:207:0x0666, B:208:0x0684, B:211:0x0692), top: B:862:0x05d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0658 A[Catch: all -> 0x0631, RemoteException -> 0x0642, TRY_ENTER, TryCatch #59 {RemoteException -> 0x0642, all -> 0x0631, blocks: (B:863:0x05d1, B:199:0x0607, B:203:0x0658, B:205:0x0662, B:207:0x0666, B:208:0x0684, B:211:0x0692), top: B:862:0x05d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0666 A[Catch: all -> 0x0631, RemoteException -> 0x0642, TryCatch #59 {RemoteException -> 0x0642, all -> 0x0631, blocks: (B:863:0x05d1, B:199:0x0607, B:203:0x0658, B:205:0x0662, B:207:0x0666, B:208:0x0684, B:211:0x0692), top: B:862:0x05d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x068f  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0c15  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0c1c  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0c54  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0c6c  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0d4d  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0dab  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0eb7  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0ed0  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0f09 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0f24  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0f31  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0f3d  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0fdd  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0ff4  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0ffb  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x100e  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x1083  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x108d  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x110d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x11c2  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x11d3  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x11e7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x11fb  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x1202 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x1214 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x1220  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x1260 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:427:0x12aa  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x12de  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x138a  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x1394  */
    /* JADX WARN: Removed duplicated region for block: B:454:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x1312  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x12a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:481:0x124e  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x11ce  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x11bc  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x10ef  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x1070  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x0fe4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0fd4  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0de0  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0e47  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0e65  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0e7f  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0eac  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0e79  */
    /* JADX WARN: Removed duplicated region for block: B:562:0x0e5b  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0e2f  */
    /* JADX WARN: Removed duplicated region for block: B:576:0x0d45  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x0bf4  */
    /* JADX WARN: Removed duplicated region for block: B:584:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:585:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:600:0x0720 A[Catch: all -> 0x06bc, RemoteException -> 0x06ce, TRY_ENTER, TryCatch #56 {RemoteException -> 0x06ce, all -> 0x06bc, blocks: (B:593:0x06b4, B:600:0x0720, B:605:0x072f, B:615:0x0755, B:617:0x075d), top: B:592:0x06b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:605:0x072f A[Catch: all -> 0x06bc, RemoteException -> 0x06ce, TRY_LEAVE, TryCatch #56 {RemoteException -> 0x06ce, all -> 0x06bc, blocks: (B:593:0x06b4, B:600:0x0720, B:605:0x072f, B:615:0x0755, B:617:0x075d), top: B:592:0x06b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:611:0x0744 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:615:0x0755 A[Catch: all -> 0x06bc, RemoteException -> 0x06ce, TRY_ENTER, TryCatch #56 {RemoteException -> 0x06ce, all -> 0x06bc, blocks: (B:593:0x06b4, B:600:0x0720, B:605:0x072f, B:615:0x0755, B:617:0x075d), top: B:592:0x06b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:617:0x075d A[Catch: all -> 0x06bc, RemoteException -> 0x06ce, TRY_LEAVE, TryCatch #56 {RemoteException -> 0x06ce, all -> 0x06bc, blocks: (B:593:0x06b4, B:600:0x0720, B:605:0x072f, B:615:0x0755, B:617:0x075d), top: B:592:0x06b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:622:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x07be  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x07d1  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x0a12  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0a4d  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:731:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x0771 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:811:0x0765  */
    /* JADX WARN: Removed duplicated region for block: B:814:0x074e  */
    /* JADX WARN: Removed duplicated region for block: B:818:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:832:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:838:0x059f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:871:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:872:0x0553 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:893:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:914:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:921:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:924:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:925:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:939:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:942:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:956:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:959:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:976:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void performTraversals() {
        /*
            Method dump skipped, instructions count: 5049
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.performTraversals():void");
    }

    private void createSyncIfNeeded() {
        if (isInWMSRequestedSync() || !this.mReportNextDraw) {
            return;
        }
        final int seqId = this.mSyncSeqId;
        this.mWmsRequestSyncGroupState = 1;
        this.mWmsRequestSyncGroup = new SurfaceSyncGroup("wmsSync-" + this.mTag, new Consumer() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda17
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ViewRootImpl.this.lambda$createSyncIfNeeded$3(seqId, (SurfaceControl.Transaction) obj);
            }
        });
        if (DEBUG_BLAST) {
            Log.i(this.mTag, "Setup new sync=" + this.mWmsRequestSyncGroup.getName());
        }
        this.mWmsRequestSyncGroup.add(this, (Runnable) null);
    }

    public /* synthetic */ void lambda$createSyncIfNeeded$3(int seqId, SurfaceControl.Transaction t) {
        if (CoreRune.FW_SURFACE_DEBUG_APPLY && t != null && !TextUtils.isEmpty(t.mDebugName)) {
            t.mDebugName += "_seqId<" + seqId + ">";
        }
        this.mWmsRequestSyncGroupState = 3;
        reportDrawFinished(t, seqId);
    }

    private void notifyContentCaptureEvents() {
        MainContentCaptureSession mainSession;
        Trace.traceBegin(8L, "notifyContentCaptureEvents");
        try {
            try {
                if (CoreRune.FW_CCM_BUG_FIX) {
                    ContentCaptureManager contentCaptureManager = this.mAttachInfo.getContentCaptureManager(this.mContext);
                    mainSession = contentCaptureManager.getMainContentCaptureSession();
                } else {
                    mainSession = this.mAttachInfo.mContentCaptureManager.getMainContentCaptureSession();
                }
                for (int i = 0; i < this.mAttachInfo.mContentCaptureEvents.size(); i++) {
                    int sessionId = this.mAttachInfo.mContentCaptureEvents.keyAt(i);
                    mainSession.notifyViewTreeEvent(sessionId, true);
                    ArrayList<Object> events = this.mAttachInfo.mContentCaptureEvents.valueAt(i);
                    for (int j = 0; j < events.size(); j++) {
                        Object event = events.get(j);
                        if (event instanceof AutofillId) {
                            mainSession.notifyViewDisappeared(sessionId, (AutofillId) event);
                        } else if (event instanceof View) {
                            View view = (View) event;
                            ContentCaptureSession session = view.getContentCaptureSession();
                            if (session == null) {
                                Log.w(this.mTag, "no content capture session on view: " + view);
                            } else {
                                int actualId = session.getId();
                                if (actualId != sessionId) {
                                    Log.w(this.mTag, "content capture session mismatch for view (" + view + "): was " + sessionId + " before, it's " + actualId + " now");
                                } else {
                                    ViewStructure structure = session.newViewStructure(view);
                                    view.onProvideContentCaptureStructure(structure, 0);
                                    session.notifyViewAppeared(structure);
                                }
                            }
                        } else if (event instanceof Insets) {
                            mainSession.notifyViewInsetsChanged(sessionId, (Insets) event);
                        } else {
                            Log.w(this.mTag, "invalid content capture event: " + event);
                        }
                    }
                    mainSession.notifyViewTreeEvent(sessionId, false);
                }
                this.mAttachInfo.mContentCaptureEvents = null;
            } catch (Exception e) {
                Log.e(this.mTag, "failed notifyContentCaptureEvents", e);
            }
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void notifyHolderSurfaceDestroyed() {
        this.mSurfaceHolder.ungetCallbacks();
        SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
        if (callbacks != null) {
            for (SurfaceHolder.Callback c : callbacks) {
                c.surfaceDestroyed(this.mSurfaceHolder);
            }
        }
    }

    public void maybeHandleWindowMove(Rect frame) {
        boolean windowMoved = (this.mAttachInfo.mWindowLeft == frame.left && this.mAttachInfo.mWindowTop == frame.top) ? false : true;
        if (windowMoved) {
            this.mAttachInfo.mWindowLeft = frame.left;
            this.mAttachInfo.mWindowTop = frame.top;
            this.mForceNextWindowRelayout = true;
        }
        if (windowMoved || this.mAttachInfo.mNeedsUpdateLightCenter) {
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.setLightCenter(this.mAttachInfo);
            }
            this.mAttachInfo.mNeedsUpdateLightCenter = false;
        }
    }

    public void handleWindowFocusChanged() {
        boolean z;
        synchronized (this) {
            if (this.mWindowFocusChanged) {
                boolean bixbyTouchEnable = false;
                this.mWindowFocusChanged = false;
                boolean hasWindowFocus = this.mUpcomingWindowFocus;
                if (this.mAdded) {
                    Log.i(this.mTag, "handleWindowFocusChanged: " + (this.mUpcomingWindowFocus ? "1 " : "0 ") + (this.mUpcomingInTouchMode ? "1" : "0") + " call from " + Debug.getCaller());
                }
                if (hasWindowFocus) {
                    InsetsController insetsController = this.mInsetsController;
                    if (getFocusedViewOrNull() == null) {
                        z = false;
                    } else {
                        z = true;
                    }
                    insetsController.onWindowFocusGained(z);
                } else {
                    this.mInsetsController.onWindowFocusLost();
                }
                if (this.mAdded) {
                    dispatchFocusEvent(hasWindowFocus, false);
                    this.mImeFocusController.onPostWindowFocus(getFocusedViewOrNull(), hasWindowFocus, this.mWindowAttributes);
                    if (hasWindowFocus) {
                        this.mWindowAttributes.softInputMode &= -257;
                        ((WindowManager.LayoutParams) this.mView.getLayoutParams()).softInputMode &= -257;
                        maybeFireAccessibilityWindowStateChangedEvent();
                        fireAccessibilityFocusEventIfHasFocusedNode();
                    } else if (this.mPointerCapture) {
                        handlePointerCaptureChanged(false);
                    }
                }
                this.mFirstInputStage.onWindowFocusChanged(hasWindowFocus);
                if (hasWindowFocus) {
                    handleContentCaptureFlush();
                }
                if (CoreRune.BIXBY_TOUCH && hasWindowFocus && this.mSemPressGestureDetector != null) {
                    if (Settings.System.getInt(this.mContext.getContentResolver(), "bixby_touch_enable", 0) == 1) {
                        bixbyTouchEnable = true;
                    }
                    this.mSemPressGestureDetector.setBixbyTouchEnable(bixbyTouchEnable);
                }
            }
        }
    }

    public void dispatchCompatFakeFocus() {
        boolean aboutToHaveFocus;
        synchronized (this) {
            aboutToHaveFocus = this.mWindowFocusChanged && this.mUpcomingWindowFocus;
        }
        boolean alreadyHaveFocus = this.mAttachInfo.mHasWindowFocus;
        if (aboutToHaveFocus || alreadyHaveFocus) {
            return;
        }
        EventLog.writeEvent(LOGTAG_INPUT_FOCUS, "Giving fake focus to " + this.mBasePackageName, "reason=unity bug workaround");
        dispatchFocusEvent(true, true);
        EventLog.writeEvent(LOGTAG_INPUT_FOCUS, "Removing fake focus from " + this.mBasePackageName, "reason=timeout callback");
        dispatchFocusEvent(false, true);
    }

    private void dispatchFocusEvent(boolean hasWindowFocus, boolean fakeFocus) {
        profileRendering(hasWindowFocus);
        if (hasWindowFocus && this.mAttachInfo.mThreadedRenderer != null && this.mSurface.isValid()) {
            this.mFullRedrawNeeded = true;
            try {
                Rect surfaceInsets = this.mWindowAttributes.surfaceInsets;
                this.mAttachInfo.mThreadedRenderer.initializeIfNeeded(this.mWidth, this.mHeight, this.mAttachInfo, this.mSurface, surfaceInsets);
                Log.d(this.mTag, String.format("mThreadedRenderer.initializeIfNeeded()#2 mSurface={%s}", "isValid=" + this.mSurface.isValid() + " 0x" + Long.toHexString(this.mSurface.mNativeObject)));
            } catch (Surface.OutOfResourcesException e) {
                Log.e(this.mTag, "OutOfResourcesException locking surface", e);
                try {
                    if (!this.mWindowSession.outOfMemory(this.mWindow)) {
                        Slog.w(this.mTag, "No processes killed for memory; killing self");
                        Process.killProcess(Process.myPid());
                    }
                } catch (RemoteException e2) {
                }
                ViewRootHandler viewRootHandler = this.mHandler;
                viewRootHandler.sendMessageDelayed(viewRootHandler.obtainMessage(6), 500L);
                return;
            }
        }
        if (this.mFirst) {
            this.mEarlyHasWindowFocus = hasWindowFocus;
        }
        this.mAttachInfo.mHasWindowFocus = hasWindowFocus;
        if (!fakeFocus) {
            this.mImeFocusController.onPreWindowFocus(hasWindowFocus, this.mWindowAttributes);
        }
        if (this.mView != null) {
            this.mAttachInfo.mKeyDispatchState.reset();
            this.mView.dispatchWindowFocusChanged(hasWindowFocus);
            this.mAttachInfo.mTreeObserver.dispatchOnWindowFocusChange(hasWindowFocus);
            if (this.mAttachInfo.mTooltipHost != null) {
                this.mAttachInfo.mTooltipHost.hideTooltip();
            }
        }
    }

    public void handleWindowTouchModeChanged() {
        boolean inTouchMode;
        synchronized (this) {
            inTouchMode = this.mUpcomingInTouchMode;
        }
        ensureTouchModeLocally(inTouchMode);
    }

    private void maybeFireAccessibilityWindowStateChangedEvent() {
        View view;
        WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
        boolean isToast = layoutParams != null && layoutParams.type == 2005;
        if (!isToast && (view = this.mView) != null) {
            view.sendAccessibilityEvent(32);
        }
    }

    private void fireAccessibilityFocusEventIfHasFocusedNode() {
        View focusedView;
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || (focusedView = this.mView.findFocus()) == null) {
            return;
        }
        AccessibilityNodeProvider provider = focusedView.getAccessibilityNodeProvider();
        if (provider == null) {
            focusedView.sendAccessibilityEvent(8);
            return;
        }
        AccessibilityNodeInfo focusedNode = findFocusedVirtualNode(provider);
        if (focusedNode != null) {
            int virtualId = AccessibilityNodeInfo.getVirtualDescendantId(focusedNode.getSourceNodeId());
            AccessibilityEvent event = AccessibilityEvent.obtain(8);
            event.setSource(focusedView, virtualId);
            event.setPackageName(focusedNode.getPackageName());
            event.setChecked(focusedNode.isChecked());
            event.setContentDescription(focusedNode.getContentDescription());
            event.setPassword(focusedNode.isPassword());
            event.getText().add(focusedNode.getText());
            event.setEnabled(focusedNode.isEnabled());
            focusedView.getParent().requestSendAccessibilityEvent(focusedView, event);
            focusedNode.recycle();
        }
    }

    private AccessibilityNodeInfo findFocusedVirtualNode(AccessibilityNodeProvider provider) {
        AccessibilityNodeInfo focusedNode = provider.findFocus(1);
        if (focusedNode != null) {
            return focusedNode;
        }
        if (!this.mContext.isAutofillCompatibilityEnabled()) {
            return null;
        }
        AccessibilityNodeInfo current = provider.createAccessibilityNodeInfo(-1);
        if (current.isFocused()) {
            return current;
        }
        Queue<AccessibilityNodeInfo> fringe = new ArrayDeque<>();
        fringe.offer(current);
        while (!fringe.isEmpty()) {
            AccessibilityNodeInfo current2 = fringe.poll();
            LongArray childNodeIds = current2.getChildNodeIds();
            if (childNodeIds != null && childNodeIds.size() > 0) {
                int childCount = childNodeIds.size();
                for (int i = 0; i < childCount; i++) {
                    int virtualId = AccessibilityNodeInfo.getVirtualDescendantId(childNodeIds.get(i));
                    AccessibilityNodeInfo child = provider.createAccessibilityNodeInfo(virtualId);
                    if (child != null) {
                        if (child.isFocused()) {
                            return child;
                        }
                        fringe.offer(child);
                    }
                }
                current2.recycle();
            }
        }
        return null;
    }

    private void handleOutOfResourcesException(Surface.OutOfResourcesException e) {
        Log.e(this.mTag, "OutOfResourcesException initializing HW surface", e);
        try {
            if (!this.mWindowSession.outOfMemory(this.mWindow) && Process.myUid() != 1000) {
                Slog.w(this.mTag, "No processes killed for memory; killing self");
                Process.killProcess(Process.myPid());
            }
        } catch (RemoteException e2) {
        }
        this.mLayoutRequested = true;
    }

    private void performMeasure(int childWidthMeasureSpec, int childHeightMeasureSpec) {
        if (this.mView == null) {
            return;
        }
        Trace.traceBegin(8L, "measure");
        try {
            this.mView.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            Trace.traceEnd(8L);
            this.mMeasuredWidth = this.mView.getMeasuredWidth();
            this.mMeasuredHeight = this.mView.getMeasuredHeight();
            this.mViewMeasureDeferred = false;
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    public boolean isInLayout() {
        return this.mInLayout;
    }

    public boolean requestLayoutDuringLayout(View view) {
        if (view.mParent == null || view.mAttachInfo == null) {
            return true;
        }
        if (!this.mLayoutRequesters.contains(view)) {
            this.mLayoutRequesters.add(view);
        }
        return !this.mHandlingLayoutInLayoutRequest;
    }

    private void performLayout(WindowManager.LayoutParams lp, int desiredWindowWidth, int desiredWindowHeight) {
        ArrayList<View> validLayoutRequesters;
        this.mScrollMayChange = true;
        this.mInLayout = true;
        View host = this.mView;
        if (host == null) {
            return;
        }
        if (DEBUG_ORIENTATION || DEBUG_LAYOUT) {
            Log.v(this.mTag, "Laying out " + host + " to (" + host.getMeasuredWidth() + ", " + host.getMeasuredHeight() + NavigationBarInflaterView.KEY_CODE_END);
        }
        Trace.traceBegin(8L, TtmlUtils.TAG_LAYOUT);
        try {
            host.layout(0, 0, host.getMeasuredWidth(), host.getMeasuredHeight());
            this.mInLayout = false;
            int numViewsRequestingLayout = this.mLayoutRequesters.size();
            if (numViewsRequestingLayout > 0 && (validLayoutRequesters = getValidLayoutRequesters(this.mLayoutRequesters, false)) != null) {
                this.mHandlingLayoutInLayoutRequest = true;
                int numValidRequests = validLayoutRequesters.size();
                for (int i = 0; i < numValidRequests; i++) {
                    View view = validLayoutRequesters.get(i);
                    Log.w("View", "requestLayout() improperly called by " + view + " during layout: running second layout pass");
                    view.requestLayout();
                }
                measureHierarchy(host, lp, this.mView.getContext().getResources(), desiredWindowWidth, desiredWindowHeight, false);
                this.mInLayout = true;
                host.layout(0, 0, host.getMeasuredWidth(), host.getMeasuredHeight());
                this.mHandlingLayoutInLayoutRequest = false;
                ArrayList<View> validLayoutRequesters2 = getValidLayoutRequesters(this.mLayoutRequesters, true);
                if (validLayoutRequesters2 != null) {
                    getRunQueue().post(new Runnable() { // from class: android.view.ViewRootImpl.4
                        final /* synthetic */ ArrayList val$finalRequesters;

                        AnonymousClass4(ArrayList validLayoutRequesters22) {
                            validLayoutRequesters2 = validLayoutRequesters22;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            int numValidRequests2 = validLayoutRequesters2.size();
                            for (int i2 = 0; i2 < numValidRequests2; i2++) {
                                View view2 = (View) validLayoutRequesters2.get(i2);
                                Log.w("View", "requestLayout() improperly called by " + view2 + " during second layout pass: posting in next frame");
                                view2.requestLayout();
                            }
                        }
                    });
                }
            }
            Trace.traceEnd(8L);
            this.mInLayout = false;
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    /* renamed from: android.view.ViewRootImpl$4 */
    /* loaded from: classes4.dex */
    public class AnonymousClass4 implements Runnable {
        final /* synthetic */ ArrayList val$finalRequesters;

        AnonymousClass4(ArrayList validLayoutRequesters22) {
            validLayoutRequesters2 = validLayoutRequesters22;
        }

        @Override // java.lang.Runnable
        public void run() {
            int numValidRequests2 = validLayoutRequesters2.size();
            for (int i2 = 0; i2 < numValidRequests2; i2++) {
                View view2 = (View) validLayoutRequesters2.get(i2);
                Log.w("View", "requestLayout() improperly called by " + view2 + " during second layout pass: posting in next frame");
                view2.requestLayout();
            }
        }
    }

    private ArrayList<View> getValidLayoutRequesters(ArrayList<View> layoutRequesters, boolean secondLayoutRequests) {
        int numViewsRequestingLayout = layoutRequesters.size();
        ArrayList<View> validLayoutRequesters = null;
        for (int i = 0; i < numViewsRequestingLayout; i++) {
            View view = layoutRequesters.get(i);
            if (view != null && view.mAttachInfo != null && view.mParent != null && (secondLayoutRequests || (view.mPrivateFlags & 4096) == 4096)) {
                boolean gone = false;
                View parent = view;
                while (true) {
                    if (parent == null) {
                        break;
                    }
                    if ((parent.mViewFlags & 12) == 8) {
                        gone = true;
                        break;
                    }
                    if (parent.mParent instanceof View) {
                        parent = (View) parent.mParent;
                    } else {
                        parent = null;
                    }
                }
                if (!gone) {
                    if (validLayoutRequesters == null) {
                        validLayoutRequesters = new ArrayList<>();
                    }
                    validLayoutRequesters.add(view);
                }
            }
        }
        if (!secondLayoutRequests) {
            for (int i2 = 0; i2 < numViewsRequestingLayout; i2++) {
                View view2 = layoutRequesters.get(i2);
                while (view2 != null && (view2.mPrivateFlags & 4096) != 0) {
                    view2.mPrivateFlags &= -4097;
                    if (view2.mParent instanceof View) {
                        view2 = (View) view2.mParent;
                    } else {
                        view2 = null;
                    }
                }
            }
        }
        layoutRequesters.clear();
        return validLayoutRequesters;
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View child) {
        checkThread();
        View view = this.mView;
        if (view != child) {
            return;
        }
        if ((view.mPrivateFlags & 512) == 0) {
            this.mView.mPrivateFlags |= 512;
            this.mWindowAttributesChanged = true;
        }
        requestLayout();
    }

    private static int getRootMeasureSpec(int windowSize, int measurement, int privateFlags) {
        int rootDimension = (privateFlags & 4096) != 0 ? -1 : measurement;
        switch (rootDimension) {
            case -2:
                int measureSpec = View.MeasureSpec.makeMeasureSpec(windowSize, Integer.MIN_VALUE);
                return measureSpec;
            case -1:
                int measureSpec2 = View.MeasureSpec.makeMeasureSpec(windowSize, 1073741824);
                return measureSpec2;
            default:
                int measureSpec3 = View.MeasureSpec.makeMeasureSpec(rootDimension, 1073741824);
                return measureSpec3;
        }
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPreDraw(RecordingCanvas canvas) {
        if (this.mCurScrollY != 0 && this.mHardwareYOffset != 0 && this.mAttachInfo.mThreadedRenderer.isOpaque()) {
            canvas.drawColor(-16777216);
        }
        canvas.translate(-this.mHardwareXOffset, -this.mHardwareYOffset);
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPostDraw(RecordingCanvas canvas) {
        drawAccessibilityFocusedDrawableIfNeeded(canvas);
        if (this.mUseMTRenderer) {
            for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                this.mWindowCallbacks.get(i).onPostDraw(canvas);
            }
        }
    }

    public void outputDisplayList(View view) {
        view.mRenderNode.output();
    }

    public void profileRendering(boolean enabled) {
        if (this.mProfileRendering) {
            this.mRenderProfilingEnabled = enabled;
            Choreographer.FrameCallback frameCallback = this.mRenderProfiler;
            if (frameCallback != null) {
                this.mChoreographer.removeFrameCallback(frameCallback);
            }
            if (this.mRenderProfilingEnabled) {
                if (this.mRenderProfiler == null) {
                    this.mRenderProfiler = new Choreographer.FrameCallback() { // from class: android.view.ViewRootImpl.5
                        AnonymousClass5() {
                        }

                        @Override // android.view.Choreographer.FrameCallback
                        public void doFrame(long frameTimeNanos) {
                            ViewRootImpl.this.mDirty.set(0, 0, ViewRootImpl.this.mWidth, ViewRootImpl.this.mHeight);
                            if (ViewRootImpl.DEBUG_TRAVERSAL && ViewRootImpl.DEBUG_TRAVERSAL_PACKAGE_NAME.equals(ViewRootImpl.this.mView.getContext().getPackageName())) {
                                Log.i(ViewRootImpl.this.mTag, "Traversal, [12] mView=" + ViewRootImpl.this.mView);
                            }
                            ViewRootImpl.this.scheduleTraversals();
                            if (ViewRootImpl.this.mRenderProfilingEnabled) {
                                ViewRootImpl.this.mChoreographer.postFrameCallback(ViewRootImpl.this.mRenderProfiler);
                            }
                        }
                    };
                }
                this.mChoreographer.postFrameCallback(this.mRenderProfiler);
                return;
            }
            this.mRenderProfiler = null;
        }
    }

    /* renamed from: android.view.ViewRootImpl$5 */
    /* loaded from: classes4.dex */
    public class AnonymousClass5 implements Choreographer.FrameCallback {
        AnonymousClass5() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long frameTimeNanos) {
            ViewRootImpl.this.mDirty.set(0, 0, ViewRootImpl.this.mWidth, ViewRootImpl.this.mHeight);
            if (ViewRootImpl.DEBUG_TRAVERSAL && ViewRootImpl.DEBUG_TRAVERSAL_PACKAGE_NAME.equals(ViewRootImpl.this.mView.getContext().getPackageName())) {
                Log.i(ViewRootImpl.this.mTag, "Traversal, [12] mView=" + ViewRootImpl.this.mView);
            }
            ViewRootImpl.this.scheduleTraversals();
            if (ViewRootImpl.this.mRenderProfilingEnabled) {
                ViewRootImpl.this.mChoreographer.postFrameCallback(ViewRootImpl.this.mRenderProfiler);
            }
        }
    }

    private void trackFPS() {
        long nowTime = System.currentTimeMillis();
        if (this.mFpsStartTime < 0) {
            this.mFpsPrevTime = nowTime;
            this.mFpsStartTime = nowTime;
            this.mFpsNumFrames = 0;
            return;
        }
        this.mFpsNumFrames++;
        String thisHash = Integer.toHexString(System.identityHashCode(this));
        long frameTime = nowTime - this.mFpsPrevTime;
        long totalTime = nowTime - this.mFpsStartTime;
        Log.v(this.mTag, "0x" + thisHash + "\tFrame time:\t" + frameTime);
        this.mFpsPrevTime = nowTime;
        if (totalTime > 1000) {
            float fps = (this.mFpsNumFrames * 1000.0f) / ((float) totalTime);
            Log.v(this.mTag, "0x" + thisHash + "\tFPS:\t" + fps);
            this.mFpsStartTime = nowTime;
            this.mFpsNumFrames = 0;
        }
    }

    private void reportDrawFinished(SurfaceControl.Transaction t, int seqId) {
        if (DEBUG_BLAST) {
            Log.i(this.mTag, "reportDrawFinished seqId=" + seqId);
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.instant(8L, "reportDrawFinished " + this.mTag + " seqId=" + seqId);
        }
        try {
            try {
                this.mWindowSession.finishDrawing(this.mWindow, t, seqId);
                if (t == null) {
                    return;
                }
            } catch (RemoteException e) {
                Log.e(this.mTag, "Unable to report draw finished", e);
                if (t != null) {
                    t.apply();
                }
                if (t == null) {
                    return;
                }
            }
            t.clear();
        } catch (Throwable th) {
            if (t != null) {
                t.clear();
            }
            throw th;
        }
    }

    public boolean isHardwareEnabled() {
        return this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.isEnabled();
    }

    public boolean isInWMSRequestedSync() {
        return this.mWmsRequestSyncGroup != null;
    }

    private void addFrameCommitCallbackIfNeeded() {
        if (!isHardwareEnabled()) {
            return;
        }
        final ArrayList<Runnable> commitCallbacks = this.mAttachInfo.mTreeObserver.captureFrameCommitCallbacks();
        boolean needFrameCommitCallback = commitCallbacks != null && commitCallbacks.size() > 0;
        if (!needFrameCommitCallback) {
            return;
        }
        Log.d(this.mTag, "Creating frameCommitCallback commitCallbacks size=" + commitCallbacks.size());
        this.mAttachInfo.mThreadedRenderer.setFrameCommitCallback(new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda16
            @Override // android.graphics.HardwareRenderer.FrameCommitCallback
            public final void onFrameCommit(boolean z) {
                ViewRootImpl.this.lambda$addFrameCommitCallbackIfNeeded$5(commitCallbacks, z);
            }
        });
    }

    public /* synthetic */ void lambda$addFrameCommitCallbackIfNeeded$5(final ArrayList commitCallbacks, boolean didProduceBuffer) {
        Log.d(this.mTag, "Received frameCommitCallback didProduceBuffer=" + didProduceBuffer);
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ViewRootImpl.lambda$addFrameCommitCallbackIfNeeded$4(commitCallbacks);
            }
        });
    }

    public static /* synthetic */ void lambda$addFrameCommitCallbackIfNeeded$4(ArrayList commitCallbacks) {
        for (int i = 0; i < commitCallbacks.size(); i++) {
            ((Runnable) commitCallbacks.get(i)).run();
        }
    }

    private void registerCallbackForPendingTransactions() {
        SurfaceControl.Transaction t = new SurfaceControl.Transaction();
        t.merge(this.mPendingTransaction);
        Log.i(this.mTag, "registerCallbackForPendingTransactions");
        registerRtFrameCallback(new AnonymousClass6(t));
    }

    /* renamed from: android.view.ViewRootImpl$6 */
    /* loaded from: classes4.dex */
    public class AnonymousClass6 implements HardwareRenderer.FrameDrawingCallback {
        final /* synthetic */ SurfaceControl.Transaction val$t;

        AnonymousClass6(SurfaceControl.Transaction transaction) {
            this.val$t = transaction;
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, final long frame) {
            ViewRootImpl.this.mergeWithNextTransaction(this.val$t, frame);
            if ((syncResult & 6) != 0) {
                if (ViewRootImpl.this.mBlastBufferQueue != null) {
                    ViewRootImpl.this.mBlastBufferQueue.applyPendingTransactions(frame);
                    return null;
                }
                return null;
            }
            return new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$6$$ExternalSyntheticLambda0
                @Override // android.graphics.HardwareRenderer.FrameCommitCallback
                public final void onFrameCommit(boolean z) {
                    ViewRootImpl.AnonymousClass6.this.lambda$onFrameDraw$0(frame, z);
                }
            };
        }

        public /* synthetic */ void lambda$onFrameDraw$0(long frame, boolean didProduceBuffer) {
            if (!didProduceBuffer && ViewRootImpl.this.mBlastBufferQueue != null) {
                ViewRootImpl.this.mBlastBufferQueue.applyPendingTransactions(frame);
            }
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public void onFrameDraw(long frame) {
        }
    }

    private boolean performDraw(final SurfaceSyncGroup surfaceSyncGroup) {
        this.mLastPerformDrawSkippedReason = null;
        if (!this.mReportNextDraw) {
            switch (this.mAttachInfo.mDisplayState) {
                case 1:
                    if (this.mDeferTransactionRequested) {
                        this.mDeferTransactionRequested = false;
                        Log.i(this.mTag, "performDraw() SCREEN_OFF but mDeferTransactionRequested = true break");
                        break;
                    } else {
                        this.mLastPerformDrawSkippedReason = "screen_off";
                        return false;
                    }
                case 3:
                case 4:
                    if (this.mDisplay.getDisplayId() == 0 && (this.mWindowAttributes.samsungFlags & 262144) == 0 && Settings.System.getInt(this.mContentResolver, AOD_SHOW_STATE, 0) != 0) {
                        Log.i(this.mTag, "performDraw() was skipped by AOD_SHOW_STATE... DisplayState = " + this.mAttachInfo.mDisplayState);
                        return false;
                    }
                    break;
            }
        } else if (this.mView == null) {
            this.mLastPerformDrawSkippedReason = "no_root_view";
            return false;
        }
        boolean fullRedrawNeeded = this.mFullRedrawNeeded || surfaceSyncGroup != null;
        this.mFullRedrawNeeded = false;
        this.mIsDrawing = true;
        Trace.traceBegin(8L, "draw");
        addFrameCommitCallbackIfNeeded();
        try {
            boolean usingAsyncReport = draw(fullRedrawNeeded, surfaceSyncGroup, this.mSyncBuffer);
            if (this.mAttachInfo.mThreadedRenderer != null && !usingAsyncReport) {
                this.mAttachInfo.mThreadedRenderer.setFrameCallback(null);
            }
            this.mIsDrawing = false;
            Trace.traceEnd(8L);
            if (this.mAttachInfo.mPendingAnimatingRenderNodes != null) {
                int count = this.mAttachInfo.mPendingAnimatingRenderNodes.size();
                for (int i = 0; i < count; i++) {
                    this.mAttachInfo.mPendingAnimatingRenderNodes.get(i).endAllAnimators();
                }
                this.mAttachInfo.mPendingAnimatingRenderNodes.clear();
            }
            if (this.mReportNextDraw) {
                CountDownLatch countDownLatch = this.mWindowDrawCountDown;
                if (countDownLatch != null) {
                    try {
                        countDownLatch.await();
                    } catch (InterruptedException e) {
                        Log.e(this.mTag, "Window redraw count down interrupted!");
                    }
                    this.mWindowDrawCountDown = null;
                }
                if (this.mAttachInfo.mThreadedRenderer != null) {
                    this.mAttachInfo.mThreadedRenderer.setStopped(this.mStopped);
                }
                if (this.mSurfaceHolder != null && this.mSurface.isValid()) {
                    usingAsyncReport = true;
                    SurfaceCallbackHelper sch = new SurfaceCallbackHelper(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ViewRootImpl.lambda$performDraw$6(SurfaceSyncGroup.this);
                        }
                    });
                    SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
                    sch.dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, callbacks);
                } else if (!usingAsyncReport && this.mAttachInfo.mThreadedRenderer != null) {
                    Trace.traceBegin(8L, "fence");
                    this.mAttachInfo.mThreadedRenderer.fence();
                    Trace.traceEnd(8L);
                }
            }
            if (surfaceSyncGroup != null && !usingAsyncReport) {
                surfaceSyncGroup.markSyncReady();
            }
            if (this.mPerformContentCapture) {
                performContentCaptureInitialReport();
            }
            return true;
        } catch (Throwable th) {
            this.mIsDrawing = false;
            Trace.traceEnd(8L);
            throw th;
        }
    }

    public static /* synthetic */ void lambda$performDraw$6(SurfaceSyncGroup surfaceSyncGroup) {
        if (surfaceSyncGroup != null) {
            surfaceSyncGroup.markSyncReady();
        }
    }

    private boolean isContentCaptureEnabled() {
        switch (this.mContentCaptureEnabled) {
            case 0:
                boolean reallyEnabled = isContentCaptureReallyEnabled();
                this.mContentCaptureEnabled = reallyEnabled ? 1 : 2;
                return reallyEnabled;
            case 1:
                return true;
            case 2:
                return false;
            default:
                Log.w(TAG, "isContentCaptureEnabled(): invalid state " + this.mContentCaptureEnabled);
                return false;
        }
    }

    private boolean isContentCaptureReallyEnabled() {
        ContentCaptureManager ccm;
        return (this.mContext.getContentCaptureOptions() == null || (ccm = this.mAttachInfo.getContentCaptureManager(this.mContext)) == null || !ccm.isContentCaptureEnabled()) ? false : true;
    }

    private void performContentCaptureInitialReport() {
        this.mPerformContentCapture = false;
        View rootView = this.mView;
        if (DEBUG_CONTENT_CAPTURE) {
            Log.v(this.mTag, "performContentCaptureInitialReport() on " + rootView);
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "dispatchContentCapture() for " + getClass().getSimpleName());
        }
        try {
            if (!isContentCaptureEnabled()) {
                return;
            }
            if (this.mAttachInfo.mContentCaptureManager != null) {
                MainContentCaptureSession session = this.mAttachInfo.mContentCaptureManager.getMainContentCaptureSession();
                session.notifyWindowBoundsChanged(session.getId(), getConfiguration().windowConfiguration.getBounds());
            }
            rootView.dispatchInitialProvideContentCaptureStructure();
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void handleContentCaptureFlush() {
        if (DEBUG_CONTENT_CAPTURE) {
            Log.v(this.mTag, "handleContentCaptureFlush()");
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "flushContentCapture for " + getClass().getSimpleName());
        }
        try {
            if (isContentCaptureEnabled()) {
                ContentCaptureManager ccm = this.mAttachInfo.mContentCaptureManager;
                if (ccm == null) {
                    Log.w(TAG, "No ContentCapture on AttachInfo");
                } else {
                    ccm.flush(2);
                }
            }
        } finally {
            Trace.traceEnd(8L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean draw(boolean r29, android.window.SurfaceSyncGroup r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1085
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.draw(boolean, android.window.SurfaceSyncGroup, boolean):boolean");
    }

    private boolean drawSoftware(Surface surface, View.AttachInfo attachInfo, int xoff, int yoff, boolean scalingRequired, Rect dirty, Rect surfaceInsets) {
        try {
            Canvas canvas = this.mSurface.lockCanvas(dirty);
            canvas.setDensity(this.mDensity);
            try {
                try {
                    if (DEBUG_ORIENTATION || DEBUG_DRAW) {
                        Log.v(this.mTag, "Surface " + surface + " drawing to bitmap w=" + canvas.getWidth() + ", h=" + canvas.getHeight() + ", dirty: " + dirty + ", xOff=" + xoff + ", yOff=" + yoff);
                    }
                    if (!canvas.isOpaque() || yoff != 0 || xoff != 0) {
                        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                    }
                    dirty.setEmpty();
                    this.mIsAnimating = false;
                    this.mView.mPrivateFlags |= 32;
                    if (DEBUG_DRAW) {
                        Context cxt = this.mView.getContext();
                        Log.i(this.mTag, "Drawing: package:" + cxt.getPackageName() + ", metrics=" + cxt.getResources().getDisplayMetrics() + ", compatibilityInfo=" + cxt.getResources().getCompatibilityInfo());
                    }
                    canvas.translate(-xoff, -yoff);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translateCanvas(canvas);
                    }
                    canvas.setScreenDensity(scalingRequired ? this.mNoncompatDensity : 0);
                    this.mView.draw(canvas);
                    View view = this.mView;
                    if ((view instanceof DecorView) && ((DecorView) view).isFreeformMode()) {
                        ((DecorView) this.mView).drawFrameIfNeeded(canvas);
                    }
                    drawAccessibilityFocusedDrawableIfNeeded(canvas);
                    return true;
                } finally {
                    surface.unlockCanvasAndPost(canvas);
                }
            } catch (IllegalArgumentException e) {
                Log.e(this.mTag, "Could not unlock surface", e);
                this.mLayoutRequested = true;
                return false;
            }
        } catch (Surface.OutOfResourcesException e2) {
            handleOutOfResourcesException(e2);
            return false;
        } catch (IllegalArgumentException e3) {
            Log.e(this.mTag, "Could not lock surface", e3);
            this.mLayoutRequested = true;
            return false;
        }
    }

    private void drawAccessibilityFocusedDrawableIfNeeded(Canvas canvas) {
        Rect bounds = this.mAttachInfo.mTmpInvalRect;
        if (getAccessibilityFocusedRect(bounds)) {
            Drawable drawable = getAccessibilityFocusedDrawable();
            if (drawable != null) {
                drawable.setBounds(bounds);
                drawable.draw(canvas);
                return;
            }
            return;
        }
        if (this.mAttachInfo.mAccessibilityFocusDrawable != null) {
            this.mAttachInfo.mAccessibilityFocusDrawable.setBounds(0, 0, 0, 0);
        }
    }

    private boolean getAccessibilityFocusedRect(Rect bounds) {
        View host;
        AccessibilityManager manager = AccessibilityManager.getInstance(this.mView.mContext);
        if (!manager.isEnabled() || !manager.isTouchExplorationEnabled() || (host = this.mAccessibilityFocusedHost) == null || host.mAttachInfo == null) {
            return false;
        }
        AccessibilityNodeProvider provider = host.getAccessibilityNodeProvider();
        if (provider == null) {
            host.getBoundsOnScreen(bounds, true);
        } else {
            AccessibilityNodeInfo accessibilityNodeInfo = this.mAccessibilityFocusedVirtualView;
            if (accessibilityNodeInfo == null) {
                return false;
            }
            accessibilityNodeInfo.getBoundsInScreen(bounds);
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        bounds.offset(0, attachInfo.mViewRootImpl.mScrollY);
        bounds.offset(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
        if (!bounds.intersect(0, 0, attachInfo.mViewRootImpl.mWidth, attachInfo.mViewRootImpl.mHeight)) {
            bounds.setEmpty();
        }
        return !bounds.isEmpty();
    }

    private Drawable getAccessibilityFocusedDrawable() {
        if (this.mAttachInfo.mAccessibilityFocusDrawable == null) {
            TypedValue value = new TypedValue();
            boolean resolved = this.mView.mContext.getTheme().resolveAttribute(R.attr.accessibilityFocusedDrawable, value, true);
            if (resolved) {
                this.mAttachInfo.mAccessibilityFocusDrawable = this.mView.mContext.getDrawable(value.resourceId);
            }
        }
        if (this.mAttachInfo.mAccessibilityFocusDrawable instanceof GradientDrawable) {
            GradientDrawable drawable = (GradientDrawable) this.mAttachInfo.mAccessibilityFocusDrawable;
            drawable.setStroke(this.mAccessibilityManager.semGetAccessibilityFocusStrokeWidth(this.mContext), this.mAccessibilityManager.getAccessibilityFocusColor());
        }
        return this.mAttachInfo.mAccessibilityFocusDrawable;
    }

    public void updateSystemGestureExclusionRectsForView(View view) {
        this.mGestureExclusionTracker.updateRectsForView(view);
        this.mHandler.sendEmptyMessage(30);
    }

    void systemGestureExclusionChanged() {
        List<Rect> rectsForWindowManager = this.mGestureExclusionTracker.computeChangedRects();
        if (rectsForWindowManager != null && this.mView != null) {
            try {
                this.mWindowSession.reportSystemGestureExclusionChanged(this.mWindow, rectsForWindowManager);
                this.mAttachInfo.mTreeObserver.dispatchOnSystemGestureExclusionRectsChanged(rectsForWindowManager);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void setRootSystemGestureExclusionRects(List<Rect> rects) {
        this.mGestureExclusionTracker.setRootRects(rects);
        this.mHandler.sendEmptyMessage(30);
    }

    public List<Rect> getRootSystemGestureExclusionRects() {
        return this.mGestureExclusionTracker.getRootRects();
    }

    public void updateKeepClearRectsForView(View view) {
        this.mKeepClearRectsTracker.updateRectsForView(view);
        this.mUnrestrictedKeepClearRectsTracker.updateRectsForView(view);
        this.mHandler.sendEmptyMessage(35);
    }

    private void updateKeepClearForAccessibilityFocusRect() {
        if (this.mViewConfiguration.isPreferKeepClearForFocusEnabled()) {
            if (this.mKeepClearAccessibilityFocusRect == null) {
                this.mKeepClearAccessibilityFocusRect = new Rect();
            }
            boolean hasAccessibilityFocus = getAccessibilityFocusedRect(this.mKeepClearAccessibilityFocusRect);
            if (!hasAccessibilityFocus) {
                this.mKeepClearAccessibilityFocusRect.setEmpty();
            }
            this.mHandler.obtainMessage(35, 1, 0).sendToTarget();
        }
    }

    void keepClearRectsChanged(boolean accessibilityFocusRectChanged) {
        boolean restrictedKeepClearRectsChanged = this.mKeepClearRectsTracker.computeChanges();
        boolean unrestrictedKeepClearRectsChanged = this.mUnrestrictedKeepClearRectsTracker.computeChanges();
        if ((restrictedKeepClearRectsChanged || unrestrictedKeepClearRectsChanged || accessibilityFocusRectChanged) && this.mView != null) {
            this.mHasPendingKeepClearAreaChange = true;
            if (!this.mHandler.hasMessages(36)) {
                this.mHandler.sendEmptyMessageDelayed(36, 100L);
                reportKeepClearAreasChanged();
            }
        }
    }

    void reportKeepClearAreasChanged() {
        if (!this.mHasPendingKeepClearAreaChange || this.mView == null) {
            return;
        }
        this.mHasPendingKeepClearAreaChange = false;
        List<Rect> restrictedKeepClearRects = this.mKeepClearRectsTracker.getLastComputedRects();
        List<Rect> unrestrictedKeepClearRects = this.mUnrestrictedKeepClearRectsTracker.getLastComputedRects();
        Rect rect = this.mKeepClearAccessibilityFocusRect;
        if (rect != null && !rect.isEmpty()) {
            restrictedKeepClearRects = new ArrayList(restrictedKeepClearRects);
            restrictedKeepClearRects.add(this.mKeepClearAccessibilityFocusRect);
        }
        try {
            this.mWindowSession.reportKeepClearAreasChanged(this.mWindow, restrictedKeepClearRects, unrestrictedKeepClearRects);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void requestInvalidateRootRenderNode() {
        this.mInvalidateRootRequested = true;
    }

    boolean scrollToRectOrFocus(Rect rectangle, boolean immediate) {
        Rect rectangle2;
        int scrollY;
        Rect ci = this.mAttachInfo.mContentInsets;
        Rect vi = this.mAttachInfo.mVisibleInsets;
        int scrollY2 = 0;
        boolean handled = false;
        if (vi.left > ci.left || vi.top > ci.top || vi.right > ci.right || vi.bottom > ci.bottom) {
            int scrollY3 = this.mScrollY;
            View focus = this.mView.findFocus();
            if (focus == null) {
                return false;
            }
            WeakReference<View> weakReference = this.mLastScrolledFocus;
            View lastScrolledFocus = weakReference != null ? weakReference.get() : null;
            if (focus == lastScrolledFocus) {
                rectangle2 = rectangle;
            } else {
                rectangle2 = null;
            }
            boolean z = DEBUG_INPUT_RESIZE;
            if (z) {
                Log.v(this.mTag, "Eval scroll: focus=" + focus + " rectangle=" + rectangle2 + " ci=" + ci + " vi=" + vi);
            }
            if (focus != lastScrolledFocus || this.mScrollMayChange || rectangle2 != null) {
                this.mLastScrolledFocus = new WeakReference<>(focus);
                this.mScrollMayChange = false;
                if (z) {
                    Log.v(this.mTag, "Need to scroll?");
                }
                if (focus.getGlobalVisibleRect(this.mVisRect, null)) {
                    if (z) {
                        Log.v(this.mTag, "Root w=" + this.mView.getWidth() + " h=" + this.mView.getHeight() + " ci=" + ci.toShortString() + " vi=" + vi.toShortString());
                    }
                    if (rectangle2 == null) {
                        focus.getFocusedRect(this.mTempRect);
                        if (z) {
                            Log.v(this.mTag, "Focus " + focus + ": focusRect=" + this.mTempRect.toShortString());
                        }
                        View view = this.mView;
                        if (view instanceof ViewGroup) {
                            try {
                                ((ViewGroup) view).offsetDescendantRectToMyCoords(focus, this.mTempRect);
                            } catch (IllegalArgumentException ex) {
                                Log.e(this.mTag, "offsetDescendantRectToMyCoords() error occurred. focus=" + focus + " mTempRect=" + this.mTempRect.toShortString() + " " + ex);
                                ex.printStackTrace();
                            }
                        }
                        if (DEBUG_INPUT_RESIZE) {
                            Log.v(this.mTag, "Focus in window: focusRect=" + this.mTempRect.toShortString() + " visRect=" + this.mVisRect.toShortString());
                        }
                    } else {
                        this.mTempRect.set(rectangle2);
                        if (z) {
                            Log.v(this.mTag, "Request scroll to rect: " + this.mTempRect.toShortString() + " visRect=" + this.mVisRect.toShortString());
                        }
                    }
                    if (this.mTempRect.intersect(this.mVisRect)) {
                        boolean z2 = DEBUG_INPUT_RESIZE;
                        if (z2) {
                            Log.v(this.mTag, "Focus window visible rect: " + this.mTempRect.toShortString());
                        }
                        if (this.mTempRect.height() > (this.mView.getHeight() - vi.top) - vi.bottom) {
                            if (z2) {
                                Log.v(this.mTag, "Too tall; leaving scrollY=" + scrollY3);
                            }
                            scrollY2 = scrollY3;
                        } else {
                            if (this.mTempRect.top >= vi.top) {
                                if (this.mTempRect.bottom > this.mView.getHeight() - vi.bottom) {
                                    scrollY = this.mTempRect.bottom - (this.mView.getHeight() - vi.bottom);
                                    if (z2) {
                                        Log.v(this.mTag, "Bottom covered; scrollY=" + scrollY);
                                    }
                                } else {
                                    scrollY2 = 0;
                                }
                            } else {
                                scrollY = this.mTempRect.top - vi.top;
                                if (z2) {
                                    Log.v(this.mTag, "Top covered; scrollY=" + scrollY);
                                }
                            }
                            scrollY2 = scrollY;
                        }
                        handled = true;
                    }
                }
            } else if (z) {
                Log.v(this.mTag, "Keeping scroll y=" + this.mScrollY + " vi=" + vi.toShortString());
            }
            scrollY2 = scrollY3;
        }
        int scrollY4 = this.mScrollY;
        if (scrollY2 != scrollY4) {
            if (DEBUG_INPUT_RESIZE) {
                Log.v(this.mTag, "Pan scroll changed: old=" + this.mScrollY + " , new=" + scrollY2);
            }
            if (!immediate) {
                if (this.mScroller == null) {
                    this.mScroller = new Scroller(this.mView.getContext());
                }
                Scroller scroller = this.mScroller;
                int i = this.mScrollY;
                scroller.startScroll(0, i, 0, scrollY2 - i);
            } else {
                Scroller scroller2 = this.mScroller;
                if (scroller2 != null) {
                    scroller2.abortAnimation();
                }
            }
            this.mScrollY = scrollY2;
        }
        return handled;
    }

    public View getAccessibilityFocusedHost() {
        return this.mAccessibilityFocusedHost;
    }

    public AccessibilityNodeInfo getAccessibilityFocusedVirtualView() {
        return this.mAccessibilityFocusedVirtualView;
    }

    public void setAccessibilityFocus(View view, AccessibilityNodeInfo node) {
        if (this.mAccessibilityFocusedVirtualView != null) {
            AccessibilityNodeInfo focusNode = this.mAccessibilityFocusedVirtualView;
            View focusHost = this.mAccessibilityFocusedHost;
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            focusHost.clearAccessibilityFocusNoCallbacks(64);
            AccessibilityNodeProvider provider = focusHost.getAccessibilityNodeProvider();
            if (provider != null) {
                focusNode.getBoundsInParent(this.mTempRect);
                focusHost.invalidate(this.mTempRect);
                int virtualNodeId = AccessibilityNodeInfo.getVirtualDescendantId(focusNode.getSourceNodeId());
                provider.performAction(virtualNodeId, 128, null);
            }
            focusNode.recycle();
        }
        View view2 = this.mAccessibilityFocusedHost;
        if (view2 != null && view2 != view) {
            view2.clearAccessibilityFocusNoCallbacks(64);
        }
        this.mAccessibilityFocusedHost = view;
        this.mAccessibilityFocusedVirtualView = node;
        updateKeepClearForAccessibilityFocusRect();
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.invalidateRoot();
        }
    }

    public boolean hasPointerCapture() {
        return this.mPointerCapture;
    }

    public void requestPointerCapture(boolean enabled) {
        IBinder inputToken = getInputToken();
        if (inputToken == null) {
            Log.e(this.mTag, "No input channel to request Pointer Capture.");
        } else {
            InputManagerGlobal.getInstance().requestPointerCapture(inputToken, enabled);
        }
    }

    public void handlePointerCaptureChanged(boolean hasCapture) {
        if (this.mPointerCapture == hasCapture) {
            return;
        }
        this.mPointerCapture = hasCapture;
        View view = this.mView;
        if (view != null) {
            view.dispatchPointerCaptureChanged(hasCapture);
        }
    }

    private void updateRenderHdrSdrRatio() {
        this.mRenderHdrSdrRatio = Math.min(this.mDesiredHdrSdrRatio, this.mDisplay.getHdrSdrRatio());
        this.mUpdateHdrSdrRatioInfo = true;
    }

    private void updateColorModeIfNeeded(int colorMode) {
        if (this.mAttachInfo.mThreadedRenderer == null) {
            return;
        }
        if ((colorMode == 2 || colorMode == 3) && !this.mDisplay.isHdrSdrRatioAvailable()) {
            colorMode = 1;
        }
        if (colorMode != 4 && !getConfiguration().isScreenWideColorGamut()) {
            colorMode = 0;
        }
        if (CoreRune.FW_SCREENSHOT_FOR_HDR && this.mForceModeInScreenshot && this.mInvalidateForScreenshotRunnable != null && colorMode != 2 && colorMode != 3) {
            Log.i(this.mTag, "removeCallbacks mInvalidateForScreenshotRunnable");
            this.mHandler.removeCallbacks(this.mInvalidateForScreenshotRunnable);
        }
        float desiredRatio = this.mAttachInfo.mThreadedRenderer.setColorMode(colorMode);
        if (desiredRatio != this.mDesiredHdrSdrRatio) {
            this.mDesiredHdrSdrRatio = desiredRatio;
            updateRenderHdrSdrRatio();
            if (this.mDesiredHdrSdrRatio < 1.01f) {
                this.mDisplay.unregisterHdrSdrRatioChangedListener(this.mHdrSdrRatioChangedListener);
                this.mHdrSdrRatioChangedListener = null;
            } else {
                Consumer<Display> consumer = new Consumer() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda21
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ViewRootImpl.this.lambda$updateColorModeIfNeeded$7((Display) obj);
                    }
                };
                this.mHdrSdrRatioChangedListener = consumer;
                this.mDisplay.registerHdrSdrRatioChangedListener(this.mExecutor, consumer);
            }
        }
    }

    public /* synthetic */ void lambda$updateColorModeIfNeeded$7(Display display) {
        updateRenderHdrSdrRatio();
        invalidate();
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        if (DEBUG_INPUT_RESIZE) {
            Log.v(this.mTag, "Request child focus: focus now " + focused);
        }
        checkThread();
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [14] mView=" + this.mView);
        }
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View child) {
        if (DEBUG_INPUT_RESIZE) {
            Log.v(this.mTag, "Clearing child focus");
        }
        checkThread();
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [15] mView=" + this.mView);
        }
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public ViewParent getParentForAccessibility() {
        return null;
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View v) {
        checkThread();
        View view = this.mView;
        if (view != null) {
            if (!view.hasFocus()) {
                if (sAlwaysAssignFocus || !this.mAttachInfo.mInTouchMode) {
                    v.requestFocus();
                    return;
                }
                return;
            }
            View focused = this.mView.findFocus();
            if (focused instanceof ViewGroup) {
                ViewGroup group = (ViewGroup) focused;
                if (group.getDescendantFocusability() == 262144 && isViewDescendantOf(v, focused)) {
                    v.requestFocus();
                }
            }
        }
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View child) {
        checkThread();
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [16] mView=" + this.mView + " child=" + child + " mWillDrawSoon=" + this.mWillDrawSoon);
        }
        if (this.mView == child) {
            if (this.mIsInTraversal) {
                this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewRootImpl.this.lambda$recomputeViewAttributes$8();
                    }
                });
            } else {
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            if (!this.mWillDrawSoon) {
                scheduleTraversals();
            }
        }
    }

    public /* synthetic */ void lambda$recomputeViewAttributes$8() {
        this.mAttachInfo.mRecomputeGlobalAttributes = true;
    }

    void dispatchDetachedFromWindow() {
        SemPressGestureDetector semPressGestureDetector;
        InputQueue inputQueue;
        this.mInsetsController.onWindowFocusLost();
        this.mCompatTranslator = null;
        clearSavedStickyDragEvent();
        InputStage inputStage = this.mFirstInputStage;
        if (inputStage != null) {
            inputStage.onDetachedFromWindow();
        }
        View view = this.mView;
        if (view != null && view.mAttachInfo != null) {
            this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(false);
            this.mView.dispatchDetachedFromWindow();
        }
        this.mAccessibilityInteractionConnectionManager.ensureNoConnection();
        this.mAccessibilityInteractionConnectionManager.ensureNoDirectConnection();
        removeSendWindowContentChangedCallback();
        destroyHardwareRenderer();
        setAccessibilityFocus(null, null);
        this.mInsetsController.cancelExistingAnimations();
        View view2 = this.mView;
        if (view2 != null) {
            view2.assignParent(null);
            this.mView = null;
        }
        clearCanvasBlurInstances();
        this.mBlurRegionAggregator.setViewRoot(null);
        Log.i(this.mTag, "dispatchDetachedFromWindow");
        if (this.mThread != Thread.currentThread()) {
            Log.w(this.mTag, "There is possible to occur CalledFromWrongThreadException. " + Debug.getCallers(10));
        }
        this.mAttachInfo.mRootView = null;
        destroySurface();
        InputQueue.Callback callback = this.mInputQueueCallback;
        if (callback != null && (inputQueue = this.mInputQueue) != null) {
            callback.onInputQueueDestroyed(inputQueue);
            this.mInputQueue.dispose();
            this.mInputQueueCallback = null;
            this.mInputQueue = null;
        }
        try {
            this.mWindowSession.remove(this.mWindow);
        } catch (RemoteException e) {
        }
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            windowInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        unregisterListeners();
        unscheduleTraversals();
        if (CoreRune.BIXBY_TOUCH && (semPressGestureDetector = this.mSemPressGestureDetector) != null) {
            semPressGestureDetector.onDetached();
        }
        this.mIsDetached = true;
    }

    public void performConfigurationChange(MergedConfiguration mergedConfiguration, boolean force, int newDisplayId) {
        View.AttachInfo attachInfo;
        if (mergedConfiguration == null) {
            throw new IllegalArgumentException("No merged config provided.");
        }
        int lastRotation = this.mLastReportedMergedConfiguration.getMergedConfiguration().windowConfiguration.getRotation();
        int newRotation = mergedConfiguration.getMergedConfiguration().windowConfiguration.getRotation();
        if (lastRotation != newRotation) {
            this.mUpdateSurfaceNeeded = true;
            if (!this.mIsInTraversal) {
                this.mForceNextWindowRelayout = true;
            }
        }
        Configuration globalConfig = mergedConfiguration.getGlobalConfiguration();
        Configuration overrideConfig = mergedConfiguration.getOverrideConfiguration();
        if (DEBUG_CONFIGURATION) {
            Log.v(this.mTag, "Applying new config to window " + ((Object) this.mWindowAttributes.getTitle()) + ", globalConfig: " + globalConfig + ", overrideConfig: " + overrideConfig);
        }
        CompatibilityInfo ci = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
        if (!ci.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            globalConfig = new Configuration(globalConfig);
            ci.applyToConfiguration(this.mNoncompatDensity, globalConfig);
        }
        Configuration lastOverrideConfig = this.mLastReportedMergedConfiguration.getOverrideConfiguration();
        boolean changeNightDim = lastOverrideConfig.nightDim != globalConfig.nightDim;
        if (changeNightDim) {
            boolean isDeskTopModeEnabled = this.mContext.getResources().getConfiguration().semDesktopModeEnabled == 1;
            if (!isDeskTopModeEnabled) {
                int nightDimLevel = globalConfig.nightDim;
                ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                ThreadedRenderer.setNightDimText(nightDimLevel);
                Log.i(this.mTag, "performConfigurationChange setNightDimText nightDimLevel=" + nightDimLevel);
                invalidateWorld(this.mView);
            }
        }
        boolean changeNightDim2 = CoreRune.MT_NEW_DEX;
        if (changeNightDim2) {
            this.mNewDexMode = globalConfig.isNewDexMode();
        }
        if (lastOverrideConfig.seq > 0 && overrideConfig.seq > 0 && overrideConfig.isOtherSeqNewer(lastOverrideConfig)) {
            Log.v(this.mTag, "Last overrideConfig is newer : " + overrideConfig + " -> " + lastOverrideConfig);
            overrideConfig.setTo(lastOverrideConfig);
        }
        if (CoreRune.MW_CAPTION_SHELL_BUG_FIX && (this.mWindowSession instanceof WindowlessWindowManager)) {
            Rect lastBounds = this.mLastReportedMergedConfiguration.getOverrideConfiguration().windowConfiguration.getBounds();
            Rect newBounds = overrideConfig.windowConfiguration.getBounds();
            if (!lastBounds.equals(newBounds) && (attachInfo = this.mAttachInfo) != null && attachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.setLightCenter(this.mAttachInfo, newBounds);
            }
        }
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            try {
                for (int i = arrayList.size() - 1; i >= 0; i--) {
                    sConfigCallbacks.get(i).onConfigurationChanged(globalConfig);
                }
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw th;
            }
        }
        this.mLastReportedMergedConfiguration.setConfiguration(globalConfig, overrideConfig);
        this.mForceNextConfigUpdate = force;
        ActivityConfigCallback activityConfigCallback = this.mActivityConfigCallback;
        if (activityConfigCallback != null) {
            activityConfigCallback.onConfigurationChanged(overrideConfig, newDisplayId);
        } else {
            updateConfiguration(newDisplayId);
        }
        this.mForceNextConfigUpdate = false;
    }

    public void updateConfiguration(int newDisplayId) {
        View view = this.mView;
        if (view == null) {
            return;
        }
        Resources localResources = view.getResources();
        Configuration config = localResources.getConfiguration();
        if (newDisplayId != -1) {
            onMovedToDisplay(newDisplayId, config);
        }
        if (this.mForceNextConfigUpdate || this.mLastConfigurationFromResources.diff(config) != 0) {
            updateInternalDisplay(this.mDisplay.getDisplayId(), localResources);
            updateLastConfigurationFromResources(config);
            if (CoreRune.MW_CAPTION_SHELL_OPACITY) {
                updateWindowOpacity(config.windowConfiguration.getFreeformTranslucent() != 1);
            }
            this.mView.dispatchConfigurationChanged(config);
            this.mForceNextWindowRelayout = true;
            requestLayout();
        }
        updateForceDarkMode();
    }

    private void updateLastConfigurationFromResources(Configuration resConfig) {
        View view;
        int lastLayoutDirection = this.mLastConfigurationFromResources.getLayoutDirection();
        int currentLayoutDirection = resConfig.getLayoutDirection();
        this.mLastConfigurationFromResources.setTo(resConfig);
        if (lastLayoutDirection != currentLayoutDirection && (view = this.mView) != null && this.mViewLayoutDirectionInitial == 2) {
            view.setLayoutDirection(currentLayoutDirection);
        }
    }

    public static boolean isViewDescendantOf(View child, View parent) {
        if (child == parent) {
            return true;
        }
        Object parent2 = child.getParent();
        return (parent2 instanceof ViewGroup) && isViewDescendantOf((View) parent2, parent);
    }

    private static void forceLayout(View view) {
        view.forceLayout();
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int count = group.getChildCount();
            for (int i = 0; i < count; i++) {
                forceLayout(group.getChildAt(i));
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class ViewRootHandler extends Handler {
        ViewRootHandler() {
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            switch (message.what) {
                case 1:
                    return "MSG_INVALIDATE";
                case 2:
                    return "MSG_INVALIDATE_RECT";
                case 3:
                    return "MSG_DIE";
                case 4:
                    return "MSG_RESIZED";
                case 5:
                    return "MSG_RESIZED_REPORT";
                case 6:
                    return "MSG_WINDOW_FOCUS_CHANGED";
                case 7:
                    return "MSG_DISPATCH_INPUT_EVENT";
                case 8:
                    return "MSG_DISPATCH_APP_VISIBILITY";
                case 9:
                    return "MSG_DISPATCH_GET_NEW_SURFACE";
                case 11:
                    return "MSG_DISPATCH_KEY_FROM_IME";
                case 12:
                    return "MSG_DISPATCH_KEY_FROM_AUTOFILL";
                case 13:
                    return "MSG_CHECK_FOCUS";
                case 14:
                    return "MSG_CLOSE_SYSTEM_DIALOGS";
                case 15:
                    return "MSG_DISPATCH_DRAG_EVENT";
                case 16:
                    return "MSG_DISPATCH_DRAG_LOCATION_EVENT";
                case 17:
                    return "MSG_DISPATCH_SYSTEM_UI_VISIBILITY";
                case 18:
                    return "MSG_UPDATE_CONFIGURATION";
                case 19:
                    return "MSG_PROCESS_INPUT_EVENTS";
                case 21:
                    return "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST";
                case 23:
                    return "MSG_WINDOW_MOVED";
                case 24:
                    return "MSG_SYNTHESIZE_INPUT_EVENT";
                case 25:
                    return "MSG_DISPATCH_WINDOW_SHOWN";
                case 27:
                    return "MSG_UPDATE_POINTER_ICON";
                case 28:
                    return "MSG_POINTER_CAPTURE_CHANGED";
                case 29:
                    return "MSG_INSETS_CONTROL_CHANGED";
                case 30:
                    return "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED";
                case 31:
                    return "MSG_SHOW_INSETS";
                case 32:
                    return "MSG_HIDE_INSETS";
                case 34:
                    return "MSG_WINDOW_TOUCH_MODE_CHANGED";
                case 35:
                    return "MSG_KEEP_CLEAR_RECTS_CHANGED";
                case 103:
                    return "MSG_SPEN_GESTURE_EVENT";
                case 104:
                    return "MSG_DISPATCH_LETTERBOX_DIRECTION_CHANGED";
                case 105:
                    return "MSG_WINDOW_FOCUS_IN_TASK_CHANGED";
                default:
                    return super.getMessageName(message);
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message msg, long uptimeMillis) {
            if (msg.what == 26 && msg.obj == null) {
                throw new NullPointerException("Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:");
            }
            return super.sendMessageAtTime(msg, uptimeMillis);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (Trace.isTagEnabled(8L)) {
                Trace.traceBegin(8L, getMessageName(msg));
            }
            try {
                handleMessageImpl(msg);
            } finally {
                Trace.traceEnd(8L);
            }
        }

        private void handleMessageImpl(Message message) {
            switch (message.what) {
                case 1:
                    ((View) message.obj).invalidate();
                    return;
                case 2:
                    View.AttachInfo.InvalidateInfo invalidateInfo = (View.AttachInfo.InvalidateInfo) message.obj;
                    invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                    invalidateInfo.recycle();
                    return;
                case 3:
                    ViewRootImpl.this.doDie();
                    return;
                case 4:
                case 5:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    ViewRootImpl.this.mInsetsController.onStateChanged((InsetsState) someArgs.arg3);
                    ViewRootImpl.this.handleResized(message.what, someArgs);
                    someArgs.recycle();
                    return;
                case 6:
                    ViewRootImpl.this.handleWindowFocusChanged();
                    return;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) someArgs2.arg1, (InputEventReceiver) someArgs2.arg2, 0, true);
                    someArgs2.recycle();
                    return;
                case 8:
                    ViewRootImpl.this.handleAppVisibility(message.arg1 != 0);
                    return;
                case 9:
                    ViewRootImpl.this.handleGetNewSurface();
                    return;
                case 11:
                    KeyEvent keyEvent = (KeyEvent) message.obj;
                    if ((keyEvent.getFlags() & 8) != 0) {
                        keyEvent = KeyEvent.changeFlags(keyEvent, keyEvent.getFlags() & (-9));
                    }
                    ViewRootImpl.this.enqueueInputEvent(keyEvent, null, 1, true);
                    return;
                case 12:
                    ViewRootImpl.this.enqueueInputEvent((KeyEvent) message.obj, null, 0, true);
                    return;
                case 13:
                    ViewRootImpl.this.getImeFocusController().onScheduledCheckFocus();
                    return;
                case 14:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl.this.mView.onCloseSystemDialogs((String) message.obj);
                        return;
                    }
                    return;
                case 15:
                case 16:
                    DragEvent dragEvent = (DragEvent) message.obj;
                    dragEvent.mLocalState = ViewRootImpl.this.mLocalDragState;
                    ViewRootImpl.this.handleDragEvent(dragEvent);
                    return;
                case 17:
                    ViewRootImpl.this.handleDispatchSystemUiVisibilityChanged();
                    return;
                case 18:
                    Configuration configuration = (Configuration) message.obj;
                    if (configuration.isOtherSeqNewer(ViewRootImpl.this.mLastReportedMergedConfiguration.getMergedConfiguration())) {
                        configuration = ViewRootImpl.this.mLastReportedMergedConfiguration.getGlobalConfiguration();
                    }
                    ViewRootImpl.this.mPendingMergedConfiguration.setConfiguration(configuration, ViewRootImpl.this.mLastReportedMergedConfiguration.getOverrideConfiguration());
                    ViewRootImpl.this.performConfigurationChange(new MergedConfiguration(ViewRootImpl.this.mPendingMergedConfiguration), false, -1);
                    return;
                case 19:
                    ViewRootImpl.this.mProcessInputEventsScheduled = false;
                    ViewRootImpl.this.doProcessInputEvents();
                    return;
                case 21:
                    ViewRootImpl.this.setAccessibilityFocus(null, null);
                    return;
                case 22:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl viewRootImpl = ViewRootImpl.this;
                        viewRootImpl.invalidateWorld(viewRootImpl.mView);
                        return;
                    }
                    return;
                case 23:
                    if (ViewRootImpl.this.mAdded) {
                        int width = ViewRootImpl.this.mWinFrame.width();
                        int height = ViewRootImpl.this.mWinFrame.height();
                        int i = message.arg1;
                        int i2 = message.arg2;
                        ViewRootImpl.this.mTmpFrames.frame.left = i;
                        ViewRootImpl.this.mTmpFrames.frame.right = i + width;
                        ViewRootImpl.this.mTmpFrames.frame.top = i2;
                        ViewRootImpl.this.mTmpFrames.frame.bottom = i2 + height;
                        ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                        viewRootImpl2.setFrame(viewRootImpl2.mTmpFrames.frame, false);
                        ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                        viewRootImpl3.maybeHandleWindowMove(viewRootImpl3.mWinFrame);
                        return;
                    }
                    return;
                case 24:
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) message.obj, null, 32, true);
                    return;
                case 25:
                    ViewRootImpl.this.handleDispatchWindowShown();
                    return;
                case 26:
                    ViewRootImpl.this.handleRequestKeyboardShortcuts((IResultReceiver) message.obj, message.arg1);
                    return;
                case 27:
                    ViewRootImpl.this.resetPointerIcon((MotionEvent) message.obj);
                    return;
                case 28:
                    ViewRootImpl.this.handlePointerCaptureChanged(message.arg1 != 0);
                    return;
                case 29:
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    ViewRootImpl.this.mInsetsController.onStateChanged((InsetsState) someArgs3.arg1);
                    InsetsSourceControl[] insetsSourceControlArr = (InsetsSourceControl[]) someArgs3.arg2;
                    if (ViewRootImpl.this.mAdded) {
                        ViewRootImpl.this.mInsetsController.onControlsChanged(insetsSourceControlArr);
                    } else if (insetsSourceControlArr != null) {
                        for (InsetsSourceControl insetsSourceControl : insetsSourceControlArr) {
                            if (insetsSourceControl != null) {
                                insetsSourceControl.release(new InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0());
                            }
                        }
                    }
                    someArgs3.recycle();
                    return;
                case 30:
                    ViewRootImpl.this.systemGestureExclusionChanged();
                    return;
                case 31:
                    ImeTracker.Token token = (ImeTracker.Token) message.obj;
                    ImeTracker.forLogging().onProgress(token, 30);
                    if (ViewRootImpl.this.mView == null) {
                        Object[] objArr = new Object[2];
                        objArr[0] = Integer.valueOf(message.arg1);
                        objArr[1] = Boolean.valueOf(message.arg2 == 1);
                        Log.e(ViewRootImpl.TAG, String.format("Calling showInsets(%d,%b) on window that no longer has views.", objArr));
                    }
                    ViewRootImpl.this.clearLowProfileModeIfNeeded(message.arg1, message.arg2 == 1);
                    ViewRootImpl.this.mInsetsController.show(message.arg1, message.arg2 == 1, token);
                    return;
                case 32:
                    ImeTracker.Token token2 = (ImeTracker.Token) message.obj;
                    ImeTracker.forLogging().onProgress(token2, 31);
                    ViewRootImpl.this.mInsetsController.hide(message.arg1, message.arg2 == 1, token2);
                    return;
                case 33:
                    ViewRootImpl.this.handleScrollCaptureRequest((IScrollCaptureResponseListener) message.obj);
                    return;
                case 34:
                    if (ViewRootImpl.this.mAdded) {
                        Log.i(ViewRootImpl.this.mTag, new StringBuilder("MSG_WINDOW_TOUCH_MODE_CHANGED ").toString());
                    }
                    ViewRootImpl.this.handleWindowTouchModeChanged();
                    return;
                case 35:
                    ViewRootImpl.this.keepClearRectsChanged(message.arg1 == 1);
                    return;
                case 36:
                    ViewRootImpl.this.reportKeepClearAreasChanged();
                    return;
                case 37:
                    Log.e(ViewRootImpl.this.mTag, "Timedout waiting to unpause for sync");
                    ViewRootImpl.this.mNumPausedForSync = 0;
                    ViewRootImpl.this.scheduleTraversals();
                    return;
                case 103:
                    ViewRootImpl.this.handleDispatchSPenGestureEvent((InputEvent[]) message.obj);
                    return;
                case 104:
                    ViewRootImpl.this.handleDispatchLetterboxDirectionChanged(message.arg1);
                    return;
                case 105:
                    ViewRootImpl.this.handleWindowFocusInTaskChanged();
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void lambda$new$9(Runnable r) {
        this.mHandler.post(r);
    }

    public boolean ensureTouchMode(boolean inTouchMode) {
        if (this.mAttachInfo.mInTouchMode == inTouchMode) {
            return false;
        }
        if (!inTouchMode) {
            try {
                Log.i(this.mTag, "setInTouchMode(false), " + Debug.getCallers(10));
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
        IWindowManager windowManager = WindowManagerGlobal.getWindowManagerService();
        windowManager.setInTouchMode(inTouchMode, getDisplayId());
        return ensureTouchModeLocally(inTouchMode);
    }

    private boolean ensureTouchModeLocally(boolean inTouchMode) {
        if (this.mAttachInfo.mInTouchMode == inTouchMode) {
            return false;
        }
        if (!inTouchMode && !this.mAttachInfo.mHasWindowFocus && (this.mDesktopMode || ((CoreRune.MT_NEW_DEX && this.mNewDexMode) || isSplitScreen()))) {
            if (CoreRune.SAFE_DEBUG) {
                Log.i(this.mTag, "No window focus. Don't leave touch mode.");
            }
            return false;
        }
        this.mAttachInfo.mInTouchMode = inTouchMode;
        this.mAttachInfo.mTreeObserver.dispatchOnTouchModeChanged(inTouchMode);
        try {
            return inTouchMode ? enterTouchMode() : leaveTouchMode();
        } catch (IllegalArgumentException ex) {
            Log.e(TAG, "ensureTouchModeLocally() error occurred. inTouchMode=" + inTouchMode + " " + ex);
            ex.printStackTrace();
            return false;
        }
    }

    private boolean enterTouchMode() {
        View focused;
        View view = this.mView;
        if (view == null || !view.hasFocus() || (focused = this.mView.findFocus()) == null || focused.isFocusableInTouchMode()) {
            return false;
        }
        ViewGroup ancestorToTakeFocus = findAncestorToTakeFocusInTouchMode(focused);
        if (ancestorToTakeFocus != null) {
            return ancestorToTakeFocus.requestFocus();
        }
        focused.clearFocusInternal(null, true, false);
        return true;
    }

    private static ViewGroup findAncestorToTakeFocusInTouchMode(View focused) {
        ViewParent parent = focused.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup vgParent = (ViewGroup) parent;
            if (vgParent.getDescendantFocusability() == 262144 && vgParent.isFocusableInTouchMode()) {
                return vgParent;
            }
            if (vgParent.isRootNamespace()) {
                return null;
            }
            parent = vgParent.getParent();
        }
        return null;
    }

    private boolean leaveTouchMode() {
        View view = this.mView;
        if (view == null) {
            return false;
        }
        if (view.hasFocus()) {
            View focusedView = this.mView.findFocus();
            if (!(focusedView instanceof ViewGroup) || ((ViewGroup) focusedView).getDescendantFocusability() != 262144) {
                return false;
            }
        }
        return this.mView.restoreDefaultFocus();
    }

    private boolean checkPalmRejection(MotionEvent event) {
        int SsumMajor = 0;
        boolean bPalm = false;
        int N = event.getPointerCount();
        for (int i = 0; i < N; i++) {
            if (event.getPalm(i) == 1.0f || event.getPalm(i) == 2.0f || event.getPalm(i) == 3.0f) {
                bPalm = true;
            }
            SsumMajor += (int) event.getTouchMajor(i);
        }
        if (event.getPalm() == -2.0f) {
            return false;
        }
        return SsumMajor >= 100 || bPalm;
    }

    private boolean getPalmRejection(MotionEvent event) {
        int[] Sxd = new int[20];
        int[] Syd = new int[20];
        int[] Major = new int[20];
        int[] Minor = new int[20];
        float SsumMajor = 0.0f;
        float SsumMinor = 0.0f;
        boolean bPalm = false;
        int mScreenWidth = 0;
        int mScreenHeight = 0;
        float SvarX = 0.0f;
        int N = event.getPointerCount();
        float SsumX = 0.0f;
        float SsumY = 0.0f;
        Context context = this.mContext;
        if (context != null) {
            WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
            Display disp = wm.getDefaultDisplay();
            DisplayMetrics metrics = new DisplayMetrics();
            disp.getMetrics(metrics);
            mScreenWidth = metrics.widthPixels;
            mScreenHeight = metrics.heightPixels;
        }
        float TILT_TO_ZOOM_XVAR = mScreenHeight > mScreenWidth ? mScreenWidth : mScreenHeight;
        for (int i = 0; i < N; i++) {
            Sxd[i] = (int) event.getX(i);
            Syd[i] = (int) event.getY(i);
            Major[i] = (int) event.getTouchMajor(i);
            Minor[i] = (int) event.getTouchMinor(i);
        }
        for (int i2 = 0; i2 < N; i2++) {
            SsumX += Sxd[i2];
            SsumY += Syd[i2];
            SsumMajor += Major[i2];
            SsumMinor += Minor[i2];
        }
        float SmeanX = SsumX / N;
        float SsumEccen = SsumMajor / SsumMinor;
        int i3 = 0;
        while (i3 < N) {
            int[] Minor2 = Minor;
            int[] Sxd2 = Sxd;
            SvarX += (float) Math.sqrt((Sxd[i3] - SmeanX) * (Sxd[i3] - SmeanX));
            if (event.getPalm(i3) == 1.0f || event.getPalm(i3) == 2.0f || event.getPalm(i3) == 3.0f) {
                bPalm = true;
            }
            i3++;
            Minor = Minor2;
            Sxd = Sxd2;
        }
        float SvarX2 = SvarX / N;
        if (bPalm && event.getToolType(0) == 1 && event.getAction() != 1) {
            Log.i(TAG, "[ViewRootImpl] action cancel - 1, eccen:" + SsumEccen);
            return true;
        }
        if (event.getToolType(0) != 1 || SsumMajor < 100.0f || SsumEccen <= 2.0f || SvarX2 >= TILT_TO_ZOOM_XVAR / (N + 4)) {
            return false;
        }
        Log.i(TAG, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:" + SsumMajor + " eccen:" + SsumEccen + " varX:" + SvarX2 + " TILT_TO_ZOOM_XVAR" + TILT_TO_ZOOM_XVAR + " N" + N);
        return true;
    }

    /* loaded from: classes4.dex */
    public abstract class InputStage {
        protected static final int FINISH_HANDLED = 1;
        protected static final int FINISH_NOT_HANDLED = 2;
        protected static final int FORWARD = 0;
        private final InputStage mNext;
        private String mTracePrefix;

        public InputStage(InputStage next) {
            this.mNext = next;
        }

        public final void deliver(QueuedInputEvent q) {
            if ((q.mFlags & 4) != 0) {
                forward(q);
                return;
            }
            if (shouldDropInputEvent(q)) {
                finish(q, false);
                return;
            }
            traceEvent(q, 8L);
            try {
                int result = onProcess(q);
                Trace.traceEnd(8L);
                apply(q, result);
            } catch (Throwable th) {
                Trace.traceEnd(8L);
                throw th;
            }
        }

        protected void finish(QueuedInputEvent q, boolean handled) {
            q.mFlags |= 4;
            if (handled) {
                q.mFlags |= 8;
            }
            forward(q);
        }

        protected void forward(QueuedInputEvent q) {
            onDeliverToNext(q);
        }

        protected void apply(QueuedInputEvent q, int result) {
            if (result == 0) {
                forward(q);
            } else if (result == 1) {
                finish(q, true);
            } else {
                if (result == 2) {
                    finish(q, false);
                    return;
                }
                throw new IllegalArgumentException("Invalid result: " + result);
            }
        }

        protected int onProcess(QueuedInputEvent q) {
            return 0;
        }

        protected void onDeliverToNext(QueuedInputEvent q) {
            if (ViewRootImpl.DEBUG_INPUT_STAGES) {
                Log.v(ViewRootImpl.this.mTag, "Done with " + getClass().getSimpleName() + ". " + q);
            }
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.deliver(q);
            } else {
                ViewRootImpl.this.finishInputEvent(q);
            }
        }

        protected void onWindowFocusChanged(boolean hasWindowFocus) {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.onWindowFocusChanged(hasWindowFocus);
            }
        }

        protected void onDetachedFromWindow() {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.onDetachedFromWindow();
            }
        }

        protected boolean shouldDropInputEvent(QueuedInputEvent q) {
            String reason;
            if (ViewRootImpl.this.mView == null || !ViewRootImpl.this.mAdded) {
                Slog.w(ViewRootImpl.this.mTag, "Dropping event due to root view being removed: " + q.mEvent);
                Slog.e(ViewRootImpl.this.mTag, "mStopped=" + ViewRootImpl.this.mStopped + " mHasWindowFocus=" + ViewRootImpl.this.mAttachInfo.mHasWindowFocus + " mPausedForTransition=" + ViewRootImpl.this.mPausedForTransition);
                return true;
            }
            boolean hasWindowFocus = ViewRootImpl.this.mAttachInfo.mHasWindowFocus;
            if ((ViewRootImpl.this.mView instanceof DecorView) && (q.mEvent instanceof KeyEvent) && ((KeyEvent) q.mEvent).getKeyCode() == 4) {
                hasWindowFocus |= ((DecorView) ViewRootImpl.this.mView).hasWindowFocusInTask();
            }
            boolean hasFakeFocusFlag = (ViewRootImpl.this.mWindowAttributes.samsungFlags & 65536) != 0;
            if (!hasWindowFocus && !hasFakeFocusFlag && !q.mEvent.isFromSource(2) && !ViewRootImpl.this.isAutofillUiShowing()) {
                reason = "no window focus";
            } else if (ViewRootImpl.this.mStopped) {
                reason = "window is stopped";
            } else if (ViewRootImpl.this.mIsAmbientMode && !q.mEvent.isFromSource(1)) {
                reason = "non-button event in ambient mode";
            } else {
                if (!ViewRootImpl.this.mPausedForTransition || isBack(q.mEvent)) {
                    return false;
                }
                reason = "paused for transition";
            }
            if (ViewRootImpl.isTerminalInputEvent(q.mEvent)) {
                q.mEvent.cancel();
                Slog.w(ViewRootImpl.this.mTag, "Cancelling event (" + reason + "):" + q.mEvent);
                Slog.e(ViewRootImpl.this.mTag, "mStopped=" + ViewRootImpl.this.mStopped + " mHasWindowFocus=" + ViewRootImpl.this.mAttachInfo.mHasWindowFocus + " mPausedForTransition=" + ViewRootImpl.this.mPausedForTransition);
                return false;
            }
            Slog.w(ViewRootImpl.this.mTag, "Dropping event (" + reason + "):" + q.mEvent);
            Slog.e(ViewRootImpl.this.mTag, "mStopped=" + ViewRootImpl.this.mStopped + " mHasWindowFocus=" + ViewRootImpl.this.mAttachInfo.mHasWindowFocus + " mPausedForTransition=" + ViewRootImpl.this.mPausedForTransition);
            return true;
        }

        void dump(String prefix, PrintWriter writer) {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.dump(prefix, writer);
            }
        }

        boolean isBack(InputEvent event) {
            return (event instanceof KeyEvent) && ((KeyEvent) event).getKeyCode() == 4;
        }

        private void traceEvent(QueuedInputEvent q, long traceTag) {
            if (!Trace.isTagEnabled(traceTag)) {
                return;
            }
            if (this.mTracePrefix == null) {
                this.mTracePrefix = getClass().getSimpleName();
            }
            Trace.traceBegin(traceTag, this.mTracePrefix + " id=0x" + Integer.toHexString(q.mEvent.getId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public abstract class AsyncInputStage extends InputStage {
        protected static final int DEFER = 3;
        private QueuedInputEvent mQueueHead;
        private int mQueueLength;
        private QueuedInputEvent mQueueTail;
        private final String mTraceCounter;

        public AsyncInputStage(InputStage next, String traceCounter) {
            super(next);
            this.mTraceCounter = traceCounter;
        }

        protected void defer(QueuedInputEvent q) {
            q.mFlags |= 2;
            enqueue(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void forward(QueuedInputEvent q) {
            q.mFlags &= -3;
            QueuedInputEvent curr = this.mQueueHead;
            if (curr == null) {
                super.forward(q);
                return;
            }
            int deviceId = q.mEvent.getDeviceId();
            QueuedInputEvent prev = null;
            boolean blocked = false;
            while (curr != null && curr != q) {
                if (!blocked && deviceId == curr.mEvent.getDeviceId()) {
                    blocked = true;
                }
                prev = curr;
                curr = curr.mNext;
            }
            if (blocked) {
                if (curr == null) {
                    enqueue(q);
                    return;
                }
                return;
            }
            if (curr != null) {
                curr = curr.mNext;
                dequeue(q, prev);
            }
            super.forward(q);
            while (curr != null) {
                if (deviceId == curr.mEvent.getDeviceId()) {
                    if ((curr.mFlags & 2) == 0) {
                        QueuedInputEvent next = curr.mNext;
                        dequeue(curr, prev);
                        super.forward(curr);
                        curr = next;
                    } else {
                        return;
                    }
                } else {
                    prev = curr;
                    curr = curr.mNext;
                }
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void apply(QueuedInputEvent q, int result) {
            if (result == 3) {
                defer(q);
            } else {
                super.apply(q, result);
            }
        }

        private void enqueue(QueuedInputEvent q) {
            QueuedInputEvent queuedInputEvent = this.mQueueTail;
            if (queuedInputEvent == null) {
                this.mQueueHead = q;
                this.mQueueTail = q;
            } else {
                queuedInputEvent.mNext = q;
                this.mQueueTail = q;
            }
            int i = this.mQueueLength + 1;
            this.mQueueLength = i;
            Trace.traceCounter(4L, this.mTraceCounter, i);
        }

        private void dequeue(QueuedInputEvent q, QueuedInputEvent prev) {
            if (prev == null) {
                this.mQueueHead = q.mNext;
            } else {
                prev.mNext = q.mNext;
            }
            if (this.mQueueTail == q) {
                this.mQueueTail = prev;
            }
            q.mNext = null;
            int i = this.mQueueLength - 1;
            this.mQueueLength = i;
            Trace.traceCounter(4L, this.mTraceCounter, i);
        }

        @Override // android.view.ViewRootImpl.InputStage
        void dump(String prefix, PrintWriter writer) {
            writer.print(prefix);
            writer.print(getClass().getName());
            writer.print(": mQueueLength=");
            writer.println(this.mQueueLength);
            super.dump(prefix, writer);
        }
    }

    /* loaded from: classes4.dex */
    public final class NativePreImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePreImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                KeyEvent keyEvent = (KeyEvent) q.mEvent;
                if (isBack(keyEvent) && ViewRootImpl.this.mContext != null && ViewRootImpl.this.mOnBackInvokedDispatcher.isOnBackInvokedCallbackEnabled()) {
                    return doOnBackKeyEvent(keyEvent);
                }
                if (ViewRootImpl.this.mInputQueue != null) {
                    ViewRootImpl.this.mInputQueue.sendInputEvent(q.mEvent, q, true, this);
                    return 3;
                }
                return 0;
            }
            return 0;
        }

        private int doOnBackKeyEvent(KeyEvent keyEvent) {
            OnBackInvokedCallback topCallback = ViewRootImpl.this.getOnBackInvokedDispatcher().getTopCallback();
            if (topCallback instanceof OnBackAnimationCallback) {
                OnBackAnimationCallback animationCallback = (OnBackAnimationCallback) topCallback;
                switch (keyEvent.getAction()) {
                    case 0:
                        if (keyEvent.getRepeatCount() == 0) {
                            animationCallback.onBackStarted(new BackEvent(0.0f, 0.0f, 0.0f, 0));
                            return 2;
                        }
                        return 2;
                    case 1:
                        if (keyEvent.isCanceled()) {
                            animationCallback.onBackCancelled();
                            return 2;
                        }
                        topCallback.onBackInvoked();
                        return 1;
                    default:
                        return 2;
                }
            }
            if (topCallback != null && keyEvent.getAction() == 1) {
                if (!keyEvent.isCanceled()) {
                    topCallback.onBackInvoked();
                    return 1;
                }
                Log.d(ViewRootImpl.this.mTag, "Skip onBackInvoked(), reason: keyEvent.isCanceled=true");
                return 2;
            }
            return 2;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
            } else {
                forward(q);
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class ViewPreImeInputStage extends InputStage {
        private boolean mIsBackKeyDuringDrag;

        public ViewPreImeInputStage(InputStage next) {
            super(next);
            this.mIsBackKeyDuringDrag = false;
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mDesktopMode) {
                if (ViewRootImpl.this.mAttachInfo.mDragToken != null && event.getKeyCode() == 4 && event.getAction() == 0) {
                    Log.i(ViewRootImpl.this.mTag, "Back key during drag in dex. Cancel drag and drop.");
                    this.mIsBackKeyDuringDrag = true;
                    ViewRootImpl.this.mView.cancelDragAndDrop();
                }
                if (this.mIsBackKeyDuringDrag && event.getKeyCode() == 4) {
                    if (event.getAction() == 1) {
                        this.mIsBackKeyDuringDrag = false;
                    }
                    return 1;
                }
            }
            return ((ViewRune.WIDGET_PEN_SUPPORTED && ViewRootImpl.this.mView.dispatchKeyEventTextMultiSelection(event)) || ViewRootImpl.this.mView.dispatchKeyEventPreIme(event)) ? 1 : 0;
        }
    }

    /* loaded from: classes4.dex */
    public final class ImeInputStage extends AsyncInputStage implements InputMethodManager.FinishedInputEventCallback {
        public ImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            int result = ViewRootImpl.this.mImeFocusController.onProcessImeInputStage(q, q.mEvent, ViewRootImpl.this.mWindowAttributes, this);
            switch (result) {
                case -1:
                    return 3;
                case 0:
                    return 0;
                case 1:
                    return 1;
                default:
                    throw new IllegalStateException("Unexpected result=" + result);
            }
        }

        @Override // android.view.inputmethod.InputMethodManager.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
                Log.i(ViewRootImpl.this.mTag, "The input has been finished in ImeInputStage.");
            } else {
                forward(q);
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class EarlyPostImeInputStage extends InputStage {
        public EarlyPostImeInputStage(InputStage next) {
            super(next);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            if (q.mEvent instanceof MotionEvent) {
                return processMotionEvent(q);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.handleTooltipKey(event);
            }
            if (ViewRootImpl.this.checkForLeavingTouchModeAndConsume(event)) {
                return 1;
            }
            ViewRootImpl.this.mFallbackEventHandler.preDispatchKeyEvent(event);
            if (event.getAction() == 0) {
                ViewRootImpl.this.mLastClickToolType = 0;
            }
            return 0;
        }

        private int processMotionEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            if (event.isFromSource(2)) {
                return processPointerEvent(q);
            }
            int action = event.getActionMasked();
            if ((action == 0 || action == 8) && event.isFromSource(8)) {
                ViewRootImpl.this.ensureTouchMode(false);
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent q) {
            CompatTranslator translator;
            AutofillManager afm;
            MotionEvent event = (MotionEvent) q.mEvent;
            if (ViewRootImpl.this.mTranslator != null) {
                ViewRootImpl.this.mTranslator.translateEventInScreenToAppWindow(event);
            }
            int action = event.getAction();
            if (action == 0 || action == 8) {
                ViewRootImpl.this.ensureTouchMode(true);
            }
            if (action == 0 && (afm = ViewRootImpl.this.getAutofillManager()) != null) {
                afm.requestHideFillUi();
            }
            if (action == 0 && ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.hideTooltip();
            }
            if (ViewRootImpl.this.mCurScrollY != 0) {
                event.offsetLocation(0.0f, ViewRootImpl.this.mCurScrollY);
            }
            if (event.isTouchEvent()) {
                ViewRootImpl.this.mLastTouchPoint.x = event.getRawX();
                ViewRootImpl.this.mLastTouchPoint.y = event.getRawY();
                ViewRootImpl.this.mLastTouchSource = event.getSource();
                if (event.getActionMasked() == 1) {
                    ViewRootImpl.this.mLastClickToolType = event.getToolType(event.getActionIndex());
                }
                if (event.mNeedWindowOffset && (translator = ViewRootImpl.this.getCompatTranslator()) != null) {
                    translator.translateToScreen(ViewRootImpl.this.mLastTouchPoint);
                    return 0;
                }
                return 0;
            }
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    public final class NativePostImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePostImeInputStage(InputStage next, String traceCounter) {
            super(next, traceCounter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (ViewRootImpl.this.mInputQueue == null) {
                return 0;
            }
            ViewRootImpl.this.mInputQueue.sendInputEvent(q.mEvent, q, false, this);
            return 3;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object token, boolean handled) {
            QueuedInputEvent q = (QueuedInputEvent) token;
            if (handled) {
                finish(q, true);
            } else {
                forward(q);
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class ViewPostImeInputStage extends InputStage {
        public ViewPostImeInputStage(InputStage next) {
            super(next);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            if (q.mEvent instanceof KeyEvent) {
                return processKeyEvent(q);
            }
            int source = q.mEvent.getSource();
            if ((source & 2) != 0) {
                return processPointerEvent(q);
            }
            if ((source & 4) != 0) {
                return processTrackballEvent(q);
            }
            return processGenericMotionEvent(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent q) {
            if (ViewRootImpl.this.mUnbufferedInputDispatch && (q.mEvent instanceof MotionEvent) && ((MotionEvent) q.mEvent).isTouchEvent() && ViewRootImpl.isTerminalInputEvent(q.mEvent)) {
                ViewRootImpl.this.mUnbufferedInputDispatch = false;
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
            super.onDeliverToNext(q);
        }

        private boolean performFocusNavigation(KeyEvent event) {
            int direction = 0;
            switch (event.getKeyCode()) {
                case 19:
                    if (event.hasNoModifiers()) {
                        direction = 33;
                        break;
                    }
                    break;
                case 20:
                    if (event.hasNoModifiers()) {
                        direction = 130;
                        break;
                    }
                    break;
                case 21:
                    if (event.hasNoModifiers()) {
                        direction = 17;
                        break;
                    }
                    break;
                case 22:
                    if (event.hasNoModifiers()) {
                        direction = 66;
                        break;
                    }
                    break;
                case 61:
                    if (event.hasNoModifiers()) {
                        direction = 2;
                        break;
                    } else if (event.hasModifiers(1)) {
                        direction = 1;
                        break;
                    }
                    break;
            }
            if (direction != 0) {
                View focused = ViewRootImpl.this.mView.findFocus();
                if (focused != null) {
                    View v = focused.focusSearch(direction);
                    if (v != null && v != focused) {
                        focused.getFocusedRect(ViewRootImpl.this.mTempRect);
                        if (ViewRootImpl.this.mView instanceof ViewGroup) {
                            ((ViewGroup) ViewRootImpl.this.mView).offsetDescendantRectToMyCoords(focused, ViewRootImpl.this.mTempRect);
                            ((ViewGroup) ViewRootImpl.this.mView).offsetRectIntoDescendantCoords(v, ViewRootImpl.this.mTempRect);
                        }
                        if (v.requestFocus(direction, ViewRootImpl.this.mTempRect)) {
                            boolean isFastScrolling = event.getRepeatCount() > 0;
                            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getConstantForFocusDirection(direction, isFastScrolling));
                            return true;
                        }
                    }
                    if (ViewRootImpl.this.mView.dispatchUnhandledMove(focused, direction)) {
                        return true;
                    }
                } else if (ViewRootImpl.this.mView.restoreDefaultFocus()) {
                    return true;
                }
            }
            return false;
        }

        private boolean performKeyboardGroupNavigation(int direction) {
            View cluster;
            View focused = ViewRootImpl.this.mView.findFocus();
            if (focused == null && ViewRootImpl.this.mView.restoreDefaultFocus()) {
                return true;
            }
            if (focused == null) {
                cluster = ViewRootImpl.this.keyboardNavigationClusterSearch(null, direction);
            } else {
                cluster = focused.keyboardNavigationClusterSearch(null, direction);
            }
            int realDirection = direction;
            if (direction == 2 || direction == 1) {
                realDirection = 130;
            }
            if (cluster != null && cluster.isRootNamespace()) {
                if (!cluster.restoreFocusNotInCluster()) {
                    cluster = ViewRootImpl.this.keyboardNavigationClusterSearch(null, direction);
                } else {
                    ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
                    return true;
                }
            }
            if (cluster != null && cluster.restoreFocusInCluster(realDirection)) {
                ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
                return true;
            }
            return false;
        }

        private int processKeyEvent(QueuedInputEvent q) {
            int keycode;
            KeyEvent event = (KeyEvent) q.mEvent;
            if (ViewRootImpl.this.mUnhandledKeyManager.preViewDispatch(event)) {
                return 1;
            }
            Log.i(ViewRootImpl.this.mTag, "ViewPostIme key " + event.getAction());
            if (ViewRootImpl.this.mView.dispatchKeyEvent(event)) {
                if ((CoreRune.FW_ACTIVE_OR_XCOVER_KEY || CoreRune.FW_XCOVER_AND_TOP_KEY) && (((keycode = event.getKeyCode()) == 1015 || keycode == 1079) && SystemProperties.getInt("sys.datawedge.prop", 0) == 1)) {
                    ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(event);
                }
                return 1;
            }
            if (shouldDropInputEvent(q)) {
                return 2;
            }
            if (ViewRootImpl.this.mUnhandledKeyManager.dispatch(ViewRootImpl.this.mView, event)) {
                return 1;
            }
            int groupNavigationDirection = 0;
            if (event.getAction() == 0 && event.getKeyCode() == 61) {
                if (KeyEvent.metaStateHasModifiers(event.getMetaState(), 4096)) {
                    groupNavigationDirection = 2;
                } else if (KeyEvent.metaStateHasModifiers(event.getMetaState(), 4097)) {
                    groupNavigationDirection = 1;
                }
            }
            if (event.getAction() == 0 && !KeyEvent.metaStateHasNoModifiers(event.getMetaState()) && event.getRepeatCount() == 0 && !KeyEvent.isModifierKey(event.getKeyCode()) && groupNavigationDirection == 0) {
                if (ViewRootImpl.this.mView.dispatchKeyShortcutEvent(event)) {
                    return 1;
                }
                if (shouldDropInputEvent(q)) {
                    return 2;
                }
            }
            if (ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(event)) {
                return 1;
            }
            if (shouldDropInputEvent(q)) {
                return 2;
            }
            if (event.getAction() == 0) {
                if (groupNavigationDirection != 0) {
                    if (performKeyboardGroupNavigation(groupNavigationDirection)) {
                        return 1;
                    }
                } else if (performFocusNavigation(event)) {
                    return 1;
                }
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            int action = event.getAction();
            if (ViewRootImpl.this.mMotionEventMonitor != null) {
                ViewRootImpl.this.mMotionEventMonitor.dispatchInputEvent(q.mEvent);
            }
            boolean handled = ViewRootImpl.this.mHandwritingInitiator.onTouchEvent(event);
            if (handled) {
                ViewRootImpl.this.mLastClickToolType = event.getToolType(event.getActionIndex());
            }
            if (ViewRootImpl.DEBUG_TOUCH_EVENT) {
                Log.i(ViewRootImpl.this.mTag, "ViewPostIme pointer " + action);
            } else if (action == 0 || action == 1 || (ViewRune.COMMON_IS_PRODUCT_DEV && action != 2 && action != 7 && action != 213)) {
                Log.i(ViewRootImpl.this.mTag, "ViewPostIme pointer " + action);
            }
            if (CoreRune.MW_SPLIT_IS_FLEX_SCROLL_WHEEL && (event.getFlags() & 1048576) != 0) {
                handled = ViewRootImpl.this.isWheelScrollingHandled(event);
            }
            ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested = false;
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = true;
            boolean handled2 = handled || ViewRootImpl.this.mView.dispatchPointerEvent(event);
            maybeUpdatePointerIcon(event);
            ViewRootImpl.this.maybeUpdateTooltip(event);
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = false;
            if (ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested && !ViewRootImpl.this.mUnbufferedInputDispatch) {
                ViewRootImpl.this.mUnbufferedInputDispatch = true;
                if (ViewRootImpl.this.mConsumeBatchedInputScheduled) {
                    ViewRootImpl.this.scheduleConsumeBatchedInputImmediately();
                }
            }
            return handled2 ? 1 : 0;
        }

        private void maybeUpdatePointerIcon(MotionEvent event) {
            boolean z = true;
            if (event.getPointerCount() != 1) {
                return;
            }
            if (event.isStylusPointer()) {
                if (!event.isHoverEvent() && event.getActionMasked() != 0) {
                    z = false;
                }
            } else if (!event.isHoverEvent() || !ViewRootImpl.this.mIsStylusPointerIconEnabled) {
                z = false;
            }
            boolean needsStylusPointerIcon = z;
            if (needsStylusPointerIcon || event.isFromSource(8194)) {
                if (event.getActionMasked() == 9 || event.getActionMasked() == 10) {
                    ViewRootImpl.this.mPointerIconType = null;
                }
                if (event.getActionMasked() != 10 && event.getActionMasked() != 4 && !ViewRootImpl.this.updatePointerIcon(event) && event.getActionMasked() == 7) {
                    ViewRootImpl.this.mPointerIconType = null;
                }
            }
        }

        private int processTrackballEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            return ((!event.isFromSource(InputDevice.SOURCE_MOUSE_RELATIVE) || (ViewRootImpl.this.hasPointerCapture() && !ViewRootImpl.this.mView.dispatchCapturedPointerEvent(event))) && !ViewRootImpl.this.mView.dispatchTrackballEvent(event)) ? 0 : 1;
        }

        private int processGenericMotionEvent(QueuedInputEvent q) {
            MotionEvent event = (MotionEvent) q.mEvent;
            return ((event.isFromSource(InputDevice.SOURCE_TOUCHPAD) && ViewRootImpl.this.hasPointerCapture() && ViewRootImpl.this.mView.dispatchCapturedPointerEvent(event)) || ViewRootImpl.this.mView.dispatchGenericMotionEvent(event)) ? 1 : 0;
        }
    }

    public void resetPointerIcon(MotionEvent event) {
        this.mPointerIconType = null;
        updatePointerIcon(event);
    }

    public boolean isDesktopMode() {
        return this.mDesktopMode;
    }

    public boolean isDesktopModeStandAlone() {
        return this.mDesktopModeStandAlone;
    }

    public boolean updatePointerIcon(MotionEvent event) {
        float x = event.getX(0);
        float y = event.getY(0);
        if (this.mView == null) {
            Slog.d(this.mTag, "updatePointerIcon called after view was removed");
            return false;
        }
        if (x < 0.0f || x >= r6.getWidth() || y < 0.0f || y >= this.mView.getHeight()) {
            Slog.d(this.mTag, "updatePointerIcon called with position out of bounds");
            return false;
        }
        PointerIcon pointerIcon = null;
        int toolType = event.getToolType(0);
        boolean isFromTouchpad = (event.getFlags() & 67108864) != 0;
        boolean isStylusFromTouchPad = toolType == 2 && isFromTouchpad;
        InputManagerGlobal.getInstance().setIsStylusFromTouchpad(isStylusFromTouchPad);
        if (event.isStylusPointer() && this.mIsStylusPointerIconEnabled && !isStylusFromTouchPad) {
            pointerIcon = this.mHandwritingInitiator.onResolvePointerIcon(this.mContext, event);
        }
        if (pointerIcon == null) {
            pointerIcon = this.mView.onResolvePointerIcon(event, 0);
        }
        int pointerType = pointerIcon != null ? pointerIcon.getType() : 1;
        if (toolType != 4) {
            if (toolType == 2 && pointerType == 1000) {
                pointerType = 20001;
            } else if (pointerType == 10121) {
                pointerType = 1000;
            }
        }
        Integer num = this.mPointerIconType;
        if (num == null || num.intValue() != pointerType) {
            Integer valueOf = Integer.valueOf(pointerType);
            this.mPointerIconType = valueOf;
            this.mCustomPointerIcon = null;
            if (valueOf.intValue() != -1 && this.mPointerIconType.intValue() != 20000) {
                Log.i(TAG, "updatePointerIcon pointerType = " + pointerType + ", calling pid = " + Binder.getCallingPid());
                InputManagerGlobal.getInstance().setPointerIconType(pointerType);
                return true;
            }
        }
        if ((this.mPointerIconType.intValue() == -1 || this.mPointerIconType.intValue() == 20000) && !pointerIcon.equals(this.mCustomPointerIcon)) {
            this.mCustomPointerIcon = pointerIcon;
            Log.i(TAG, "updatePointerIcon Custom PointerIcon = " + this.mPointerIconType + ", calling pid = " + Binder.getCallingPid());
            InputManagerGlobal.getInstance().setCustomPointerIcon(this.mCustomPointerIcon);
            return true;
        }
        return true;
    }

    public void maybeUpdateTooltip(MotionEvent event) {
        if (event.getPointerCount() != 1) {
            return;
        }
        int action = event.getActionMasked();
        if (action != 9 && action != 7 && action != 10) {
            return;
        }
        AccessibilityManager manager = AccessibilityManager.getInstance(this.mContext);
        if (manager.isEnabled() && manager.isTouchExplorationEnabled()) {
            return;
        }
        View view = this.mView;
        if (view == null) {
            Slog.d(this.mTag, "maybeUpdateTooltip called after view was removed");
        } else {
            view.dispatchTooltipHoverEvent(event);
        }
    }

    private View getFocusedViewOrNull() {
        View view = this.mView;
        if (view != null) {
            return view.findFocus();
        }
        return null;
    }

    /* loaded from: classes4.dex */
    public final class SyntheticInputStage extends InputStage {
        private final SyntheticJoystickHandler mJoystick;
        private final SyntheticKeyboardHandler mKeyboard;
        private final SyntheticTouchNavigationHandler mTouchNavigation;
        private final SyntheticTrackballHandler mTrackball;

        public SyntheticInputStage() {
            super(null);
            this.mTrackball = new SyntheticTrackballHandler();
            this.mJoystick = new SyntheticJoystickHandler();
            this.mTouchNavigation = new SyntheticTouchNavigationHandler();
            this.mKeyboard = new SyntheticKeyboardHandler();
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent q) {
            q.mFlags |= 16;
            if (q.mEvent instanceof MotionEvent) {
                MotionEvent event = (MotionEvent) q.mEvent;
                int source = event.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.process(event);
                    return 1;
                }
                if ((source & 16) != 0) {
                    this.mJoystick.process(event);
                    return 1;
                }
                if ((source & 2097152) == 2097152) {
                    this.mTouchNavigation.process(event);
                    return 1;
                }
                return 0;
            }
            if ((q.mFlags & 32) != 0) {
                this.mKeyboard.process((KeyEvent) q.mEvent);
                return 1;
            }
            return 0;
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent q) {
            if ((q.mFlags & 16) == 0 && (q.mEvent instanceof MotionEvent)) {
                MotionEvent event = (MotionEvent) q.mEvent;
                int source = event.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.cancel();
                } else if ((source & 16) != 0) {
                    this.mJoystick.cancel();
                }
            }
            super.onDeliverToNext(q);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onWindowFocusChanged(boolean hasWindowFocus) {
            if (!hasWindowFocus) {
                this.mJoystick.cancel();
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDetachedFromWindow() {
            this.mJoystick.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class SyntheticTrackballHandler {
        private long mLastTime;
        private final TrackballAxis mX = new TrackballAxis();
        private final TrackballAxis mY = new TrackballAxis();

        SyntheticTrackballHandler() {
        }

        public void process(MotionEvent event) {
            long curTime;
            int keycode;
            float accel;
            String str;
            int keycode2;
            long curTime2;
            String str2;
            long curTime3 = SystemClock.uptimeMillis();
            if (this.mLastTime + 250 < curTime3) {
                this.mX.reset(0);
                this.mY.reset(0);
                this.mLastTime = curTime3;
            }
            int action = event.getAction();
            int metaState = event.getMetaState();
            switch (action) {
                case 0:
                    curTime = curTime3;
                    this.mX.reset(2);
                    this.mY.reset(2);
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime, curTime, 0, 23, 0, metaState, -1, 0, 1024, 257));
                    break;
                case 1:
                    this.mX.reset(2);
                    this.mY.reset(2);
                    curTime = curTime3;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime3, curTime3, 1, 23, 0, metaState, -1, 0, 1024, 257));
                    break;
                default:
                    curTime = curTime3;
                    break;
            }
            if (ViewRootImpl.DEBUG_TRACKBALL) {
                Log.v(ViewRootImpl.this.mTag, "TB X=" + this.mX.position + " step=" + this.mX.step + " dir=" + this.mX.dir + " acc=" + this.mX.acceleration + " move=" + event.getX() + " / Y=" + this.mY.position + " step=" + this.mY.step + " dir=" + this.mY.dir + " acc=" + this.mY.acceleration + " move=" + event.getY());
            }
            float xOff = this.mX.collect(event.getX(), event.getEventTime(), GnssSignalType.CODE_TYPE_X);
            float yOff = this.mY.collect(event.getY(), event.getEventTime(), GnssSignalType.CODE_TYPE_Y);
            int movement = 0;
            if (xOff > yOff) {
                movement = this.mX.generate();
                if (movement == 0) {
                    keycode = 0;
                    accel = 1.0f;
                } else {
                    int keycode3 = movement > 0 ? 22 : 21;
                    float accel2 = this.mX.acceleration;
                    this.mY.reset(2);
                    keycode = keycode3;
                    accel = accel2;
                }
            } else if (yOff <= 0.0f) {
                keycode = 0;
                accel = 1.0f;
            } else {
                movement = this.mY.generate();
                if (movement == 0) {
                    keycode = 0;
                    accel = 1.0f;
                } else {
                    int keycode4 = movement > 0 ? 20 : 19;
                    float accel3 = this.mY.acceleration;
                    this.mX.reset(2);
                    keycode = keycode4;
                    accel = accel3;
                }
            }
            if (keycode != 0) {
                if (movement < 0) {
                    movement = -movement;
                }
                int accelMovement = (int) (movement * accel);
                if (ViewRootImpl.DEBUG_TRACKBALL) {
                    Log.v(ViewRootImpl.this.mTag, "Move: movement=" + movement + " accelMovement=" + accelMovement + " accel=" + accel);
                }
                if (accelMovement <= movement) {
                    str = "Delivering fake DPAD: ";
                    keycode2 = keycode;
                    curTime2 = curTime;
                } else {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.this.mTag, "Delivering fake DPAD: " + keycode);
                    }
                    int movement2 = movement - 1;
                    int repeatCount = accelMovement - movement2;
                    str = "Delivering fake DPAD: ";
                    keycode2 = keycode;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime, curTime, 2, keycode, repeatCount, metaState, -1, 0, 1024, 257));
                    curTime2 = curTime;
                    movement = movement2;
                }
                while (movement > 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        str2 = str;
                        Log.v(ViewRootImpl.this.mTag, str2 + keycode2);
                    } else {
                        str2 = str;
                    }
                    long curTime4 = SystemClock.uptimeMillis();
                    int i = keycode2;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime4, curTime4, 0, i, 0, metaState, -1, 0, 1024, 257));
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(curTime4, curTime4, 1, i, 0, metaState, -1, 0, 1024, 257));
                    movement--;
                    curTime2 = curTime4;
                    str = str2;
                    keycode2 = keycode2;
                }
                this.mLastTime = curTime2;
            }
        }

        public void cancel() {
            this.mLastTime = -2147483648L;
            if (ViewRootImpl.this.mView != null && ViewRootImpl.this.mAdded) {
                ViewRootImpl.this.ensureTouchMode(false);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class TrackballAxis {
        static final float ACCEL_MOVE_SCALING_FACTOR = 0.025f;
        static final long FAST_MOVE_TIME = 150;
        static final float FIRST_MOVEMENT_THRESHOLD = 0.5f;
        static final float MAX_ACCELERATION = 20.0f;
        static final float SECOND_CUMULATIVE_MOVEMENT_THRESHOLD = 2.0f;
        static final float SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD = 1.0f;
        int dir;
        int nonAccelMovement;
        float position;
        int step;
        float acceleration = 1.0f;
        long lastMoveTime = 0;

        TrackballAxis() {
        }

        void reset(int _step) {
            this.position = 0.0f;
            this.acceleration = 1.0f;
            this.lastMoveTime = 0L;
            this.step = _step;
            this.dir = 0;
        }

        float collect(float off, long time, String axis) {
            long normTime;
            if (off > 0.0f) {
                normTime = off * 150.0f;
                if (this.dir < 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " reversed to positive!");
                    }
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = 1;
            } else if (off < 0.0f) {
                normTime = (-off) * 150.0f;
                if (this.dir > 0) {
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " reversed to negative!");
                    }
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = -1;
            } else {
                normTime = 0;
            }
            if (normTime > 0) {
                long delta = time - this.lastMoveTime;
                this.lastMoveTime = time;
                float acc = this.acceleration;
                if (delta < normTime) {
                    float scale = ((float) (normTime - delta)) * ACCEL_MOVE_SCALING_FACTOR;
                    if (scale > 1.0f) {
                        acc *= scale;
                    }
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " accelerate: off=" + off + " normTime=" + normTime + " delta=" + delta + " scale=" + scale + " acc=" + acc);
                    }
                    float f = MAX_ACCELERATION;
                    if (acc < MAX_ACCELERATION) {
                        f = acc;
                    }
                    this.acceleration = f;
                } else {
                    float scale2 = ((float) (delta - normTime)) * ACCEL_MOVE_SCALING_FACTOR;
                    if (scale2 > 1.0f) {
                        acc /= scale2;
                    }
                    if (ViewRootImpl.DEBUG_TRACKBALL) {
                        Log.v(ViewRootImpl.TAG, axis + " deccelerate: off=" + off + " normTime=" + normTime + " delta=" + delta + " scale=" + scale2 + " acc=" + acc);
                    }
                    this.acceleration = acc > 1.0f ? acc : 1.0f;
                }
            }
            float f2 = this.position + off;
            this.position = f2;
            return Math.abs(f2);
        }

        int generate() {
            int movement = 0;
            this.nonAccelMovement = 0;
            while (true) {
                float f = this.position;
                int dir = f >= 0.0f ? 1 : -1;
                switch (this.step) {
                    case 0:
                        if (Math.abs(f) < 0.5f) {
                            return movement;
                        }
                        movement += dir;
                        this.nonAccelMovement += dir;
                        this.step = 1;
                        break;
                    case 1:
                        if (Math.abs(f) < 2.0f) {
                            return movement;
                        }
                        movement += dir;
                        this.nonAccelMovement += dir;
                        this.position -= dir * 2.0f;
                        this.step = 2;
                        break;
                    default:
                        if (Math.abs(f) < 1.0f) {
                            return movement;
                        }
                        movement += dir;
                        this.position -= dir * 1.0f;
                        float acc = this.acceleration * 1.1f;
                        this.acceleration = acc < MAX_ACCELERATION ? acc : this.acceleration;
                        break;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class SyntheticJoystickHandler extends Handler {
        private static final int MSG_ENQUEUE_X_AXIS_KEY_REPEAT = 1;
        private static final int MSG_ENQUEUE_Y_AXIS_KEY_REPEAT = 2;
        private final SparseArray<KeyEvent> mDeviceKeyEvents;
        private final JoystickAxesState mJoystickAxesState;

        public SyntheticJoystickHandler() {
            super(true);
            this.mJoystickAxesState = new JoystickAxesState();
            this.mDeviceKeyEvents = new SparseArray<>();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                case 2:
                    if (ViewRootImpl.this.mAttachInfo.mHasWindowFocus) {
                        KeyEvent oldEvent = (KeyEvent) msg.obj;
                        KeyEvent e = KeyEvent.changeTimeRepeat(oldEvent, SystemClock.uptimeMillis(), oldEvent.getRepeatCount() + 1);
                        ViewRootImpl.this.enqueueInputEvent(e);
                        Message m = obtainMessage(msg.what, e);
                        m.setAsynchronous(true);
                        sendMessageDelayed(m, ViewConfiguration.getKeyRepeatDelay());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public void process(MotionEvent event) {
            switch (event.getActionMasked()) {
                case 2:
                    update(event);
                    return;
                case 3:
                    cancel();
                    return;
                default:
                    Log.w(ViewRootImpl.this.mTag, "Unexpected action: " + event.getActionMasked());
                    return;
            }
        }

        public void cancel() {
            removeMessages(1);
            removeMessages(2);
            for (int i = 0; i < this.mDeviceKeyEvents.size(); i++) {
                KeyEvent keyEvent = this.mDeviceKeyEvents.valueAt(i);
                if (keyEvent != null) {
                    ViewRootImpl.this.enqueueInputEvent(KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), 0));
                }
            }
            this.mDeviceKeyEvents.clear();
            this.mJoystickAxesState.resetState();
        }

        private void update(MotionEvent event) {
            int historySize = event.getHistorySize();
            for (int h = 0; h < historySize; h++) {
                long time = event.getHistoricalEventTime(h);
                this.mJoystickAxesState.updateStateForAxis(event, time, 0, event.getHistoricalAxisValue(0, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 1, event.getHistoricalAxisValue(1, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 15, event.getHistoricalAxisValue(15, 0, h));
                this.mJoystickAxesState.updateStateForAxis(event, time, 16, event.getHistoricalAxisValue(16, 0, h));
            }
            long time2 = event.getEventTime();
            this.mJoystickAxesState.updateStateForAxis(event, time2, 0, event.getAxisValue(0));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 1, event.getAxisValue(1));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 15, event.getAxisValue(15));
            this.mJoystickAxesState.updateStateForAxis(event, time2, 16, event.getAxisValue(16));
        }

        /* loaded from: classes4.dex */
        public final class JoystickAxesState {
            private static final int STATE_DOWN_OR_RIGHT = 1;
            private static final int STATE_NEUTRAL = 0;
            private static final int STATE_UP_OR_LEFT = -1;
            final int[] mAxisStatesHat = {0, 0};
            final int[] mAxisStatesStick = {0, 0};

            JoystickAxesState() {
            }

            void resetState() {
                int[] iArr = this.mAxisStatesHat;
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = this.mAxisStatesStick;
                iArr2[0] = 0;
                iArr2[1] = 0;
            }

            void updateStateForAxis(MotionEvent event, long time, int axis, float value) {
                int axisStateIndex;
                int repeatMessage;
                int currentState;
                int keyCode;
                if (isXAxis(axis)) {
                    axisStateIndex = 0;
                    repeatMessage = 1;
                } else if (!isYAxis(axis)) {
                    Log.e(ViewRootImpl.this.mTag, "Unexpected axis " + axis + " in updateStateForAxis!");
                    return;
                } else {
                    axisStateIndex = 1;
                    repeatMessage = 2;
                }
                int newState = joystickAxisValueToState(value);
                if (axis == 0 || axis == 1) {
                    currentState = this.mAxisStatesStick[axisStateIndex];
                } else {
                    currentState = this.mAxisStatesHat[axisStateIndex];
                }
                if (currentState == newState) {
                    return;
                }
                int metaState = event.getMetaState();
                int deviceId = event.getDeviceId();
                int source = event.getSource();
                if (currentState == 1 || currentState == -1) {
                    int keyCode2 = joystickAxisAndStateToKeycode(axis, currentState);
                    if (keyCode2 != 0) {
                        ViewRootImpl.this.enqueueInputEvent(new KeyEvent(time, time, 1, keyCode2, 0, metaState, deviceId, 0, 1024, source));
                        deviceId = deviceId;
                        SyntheticJoystickHandler.this.mDeviceKeyEvents.put(deviceId, null);
                    }
                    SyntheticJoystickHandler.this.removeMessages(repeatMessage);
                }
                if ((newState == 1 || newState == -1) && (keyCode = joystickAxisAndStateToKeycode(axis, newState)) != 0) {
                    int deviceId2 = deviceId;
                    KeyEvent keyEvent = new KeyEvent(time, time, 0, keyCode, 0, metaState, deviceId2, 0, 1024, source);
                    ViewRootImpl.this.enqueueInputEvent(keyEvent);
                    Message m = SyntheticJoystickHandler.this.obtainMessage(repeatMessage, keyEvent);
                    m.setAsynchronous(true);
                    SyntheticJoystickHandler.this.sendMessageDelayed(m, ViewConfiguration.getKeyRepeatTimeout());
                    SyntheticJoystickHandler.this.mDeviceKeyEvents.put(deviceId2, new KeyEvent(time, time, 1, keyCode, 0, metaState, deviceId2, 0, 1056, source));
                }
                if (axis == 0 || axis == 1) {
                    this.mAxisStatesStick[axisStateIndex] = newState;
                } else {
                    this.mAxisStatesHat[axisStateIndex] = newState;
                }
            }

            private boolean isXAxis(int axis) {
                return axis == 0 || axis == 15;
            }

            private boolean isYAxis(int axis) {
                return axis == 1 || axis == 16;
            }

            private int joystickAxisAndStateToKeycode(int axis, int state) {
                if (isXAxis(axis) && state == -1) {
                    return 21;
                }
                if (isXAxis(axis) && state == 1) {
                    return 22;
                }
                if (isYAxis(axis) && state == -1) {
                    return 19;
                }
                if (isYAxis(axis) && state == 1) {
                    return 20;
                }
                Log.e(ViewRootImpl.this.mTag, "Unknown axis " + axis + " or direction " + state);
                return 0;
            }

            private int joystickAxisValueToState(float value) {
                if (value >= 0.5f) {
                    return 1;
                }
                if (value <= -0.5f) {
                    return -1;
                }
                return 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class SyntheticTouchNavigationHandler extends Handler {
        private static final String LOCAL_TAG = "SyntheticTouchNavigationHandler";
        private int mCurrentDeviceId;
        private int mCurrentSource;
        private final GestureDetector mGestureDetector;
        private int mPendingKeyMetaState;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.view.ViewRootImpl$SyntheticTouchNavigationHandler$1 */
        /* loaded from: classes4.dex */
        public class AnonymousClass1 implements GestureDetector.OnGestureListener {
            AnonymousClass1() {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent e) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e) {
                SyntheticTouchNavigationHandler.this.dispatchTap(e.getEventTime());
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent e) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                SyntheticTouchNavigationHandler.this.dispatchFling(velocityX, velocityY, e2.getEventTime());
                return true;
            }
        }

        SyntheticTouchNavigationHandler() {
            super(true);
            this.mCurrentDeviceId = -1;
            this.mGestureDetector = new GestureDetector(ViewRootImpl.this.mContext, new GestureDetector.OnGestureListener() { // from class: android.view.ViewRootImpl.SyntheticTouchNavigationHandler.1
                AnonymousClass1() {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent e) {
                    return true;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onShowPress(MotionEvent e) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent e) {
                    SyntheticTouchNavigationHandler.this.dispatchTap(e.getEventTime());
                    return true;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                    return true;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent e) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                    SyntheticTouchNavigationHandler.this.dispatchFling(velocityX, velocityY, e2.getEventTime());
                    return true;
                }
            });
        }

        public void process(MotionEvent event) {
            if (event.getDevice() == null) {
                return;
            }
            this.mPendingKeyMetaState = event.getMetaState();
            int deviceId = event.getDeviceId();
            int source = event.getSource();
            if (this.mCurrentDeviceId != deviceId || this.mCurrentSource != source) {
                this.mCurrentDeviceId = deviceId;
                this.mCurrentSource = source;
            }
            this.mGestureDetector.onTouchEvent(event);
        }

        public void dispatchTap(long time) {
            dispatchEvent(time, 23);
        }

        public void dispatchFling(float x, float y, long time) {
            if (Math.abs(x) > Math.abs(y)) {
                dispatchEvent(time, x > 0.0f ? 22 : 21);
            } else {
                dispatchEvent(time, y > 0.0f ? 20 : 19);
            }
        }

        private void dispatchEvent(long time, int keyCode) {
            ViewRootImpl.this.enqueueInputEvent(new KeyEvent(time, time, 0, keyCode, 0, this.mPendingKeyMetaState, this.mCurrentDeviceId, 0, 1024, this.mCurrentSource));
            ViewRootImpl.this.enqueueInputEvent(new KeyEvent(time, time, 1, keyCode, 0, this.mPendingKeyMetaState, this.mCurrentDeviceId, 0, 1024, this.mCurrentSource));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class SyntheticKeyboardHandler {
        SyntheticKeyboardHandler() {
        }

        public void process(KeyEvent event) {
            if ((event.getFlags() & 1024) != 0) {
                return;
            }
            KeyCharacterMap kcm = event.getKeyCharacterMap();
            int keyCode = event.getKeyCode();
            int metaState = event.getMetaState();
            KeyCharacterMap.FallbackAction fallbackAction = kcm.getFallbackAction(keyCode, metaState);
            if (fallbackAction != null) {
                int flags = event.getFlags() | 1024;
                KeyEvent fallbackEvent = KeyEvent.obtain(event.getDownTime(), event.getEventTime(), event.getAction(), fallbackAction.keyCode, event.getRepeatCount(), fallbackAction.metaState, event.getDeviceId(), event.getScanCode(), flags, event.getSource(), null);
                fallbackAction.recycle();
                ViewRootImpl.this.enqueueInputEvent(fallbackEvent);
            }
        }
    }

    private static boolean isNavigationKey(KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 61:
            case 62:
            case 66:
            case 92:
            case 93:
            case 122:
            case 123:
                return true;
            default:
                return false;
        }
    }

    private static boolean isTypingKey(KeyEvent keyEvent) {
        return keyEvent.getUnicodeChar() > 0;
    }

    public boolean checkForLeavingTouchModeAndConsume(KeyEvent event) {
        if (!this.mAttachInfo.mInTouchMode) {
            return false;
        }
        int action = event.getAction();
        if ((action != 0 && action != 2) || (event.getFlags() & 4) != 0) {
            return false;
        }
        if (event.hasNoModifiers() && isNavigationKey(event)) {
            return ensureTouchMode(false);
        }
        if (!isTypingKey(event)) {
            return false;
        }
        ensureTouchMode(false);
        return false;
    }

    public void setLocalDragState(Object obj) {
        this.mLocalDragState = obj;
    }

    public void handleDragEvent(DragEvent event) {
        InputMethodManager imm;
        if (this.mView != null && this.mAdded) {
            int what = event.mAction;
            if (what == 1) {
                this.mCurrentDragView = null;
                this.mDragDescription = event.mClipDescription;
                View view = this.mStartedDragViewForA11y;
                if (view != null) {
                    view.sendWindowContentChangedAccessibilityEvent(128);
                }
            } else {
                if (what == 4) {
                    this.mDragDescription = null;
                }
                event.mClipDescription = this.mDragDescription;
            }
            if (what == 6) {
                if (View.sCascadedDragDrop) {
                    this.mView.dispatchDragEnterExitInPreN(event);
                }
                setDragFocus(null, event);
                WindowConfiguration windowConfiguration = this.mContext.getResources().getConfiguration().windowConfiguration;
                if (windowConfiguration.getWindowingMode() == 6 && !windowConfiguration.isAlwaysOnTop() && windowConfiguration.getStagePosition() == 16 && (imm = (InputMethodManager) this.mContext.getSystemService(InputMethodManager.class)) != null) {
                    imm.semForceHideSoftInput();
                    Log.i(this.mTag, "ACTION_DRAG_EXITED in primary window. Call hideSoftInput");
                }
            } else {
                if (what == 2 || what == 3) {
                    this.mDragPoint.set(event.mX, event.mY);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translatePointInScreenToAppWindow(this.mDragPoint);
                    }
                    int i = this.mCurScrollY;
                    if (i != 0) {
                        this.mDragPoint.offset(0.0f, i);
                    }
                    event.mX = this.mDragPoint.x;
                    event.mY = this.mDragPoint.y;
                }
                View prevDragView = this.mCurrentDragView;
                if (what == 3 && event.mClipData != null) {
                    event.mClipData.prepareToEnterProcess(this.mView.getContext().getAttributionSource());
                }
                boolean result = this.mView.dispatchDragEvent(event);
                if (!result && what == 1 && event.isStickyEvent()) {
                    Log.i(this.mTag, "Save sticky drag event");
                    this.mSavedStickyDragEvent = DragEvent.obtain(event);
                }
                boolean ignoreEvent = event.isEavesDrop();
                if (what == 2 && !ignoreEvent) {
                    int pointerIconType = InputManagerGlobal.getInstance().getPointerIconType();
                    if (event.mEventHandlerWasCalled) {
                        if (pointerIconType != 1021) {
                            InputManagerGlobal.getInstance().setPointerIconType(1021);
                        }
                    } else {
                        setDragFocus(null, event);
                        if (pointerIconType != 1012) {
                            InputManagerGlobal.getInstance().setPointerIconType(1012);
                        }
                    }
                }
                if (prevDragView != this.mCurrentDragView) {
                    if (prevDragView != null) {
                        try {
                            InputManagerGlobal.getInstance().setPointerIconType(1012);
                            this.mWindowSession.dragRecipientExited(this.mWindow);
                        } catch (RemoteException e) {
                            Slog.e(this.mTag, "Unable to note drag target change");
                        }
                    }
                    if (this.mCurrentDragView != null) {
                        InputManagerGlobal.getInstance().setPointerIconType(1021);
                        this.mWindowSession.dragRecipientEntered(this.mWindow);
                    }
                }
                if (what == 3) {
                    try {
                        Log.i(this.mTag, "Reporting drop result: " + result);
                        this.mWindowSession.reportDropResult(this.mWindow, result);
                    } catch (RemoteException e2) {
                        Log.e(this.mTag, "Unable to report drop result");
                    }
                }
                if (what == 4) {
                    if (this.mStartedDragViewForA11y != null) {
                        if (!event.getResult()) {
                            this.mStartedDragViewForA11y.sendWindowContentChangedAccessibilityEvent(512);
                        }
                        this.mStartedDragViewForA11y.setAccessibilityDragStarted(false);
                    }
                    this.mStartedDragViewForA11y = null;
                    this.mCurrentDragView = null;
                    setLocalDragState(null);
                    this.mAttachInfo.mDragToken = null;
                    if (this.mAttachInfo.mDragSurface != null) {
                        this.mAttachInfo.mDragSurface.release();
                        this.mAttachInfo.mDragSurface = null;
                    }
                    clearSavedStickyDragEvent();
                }
            }
        }
        event.recycle();
    }

    @Override // android.view.ViewParent
    public void requestSendStickyDragStartedEvent(View child) {
        if (this.mSavedStickyDragEvent != null) {
            Log.i(this.mTag, "sendSavedStickyDragEventIfNeeded");
            dispatchDragEvent(this.mSavedStickyDragEvent);
            this.mSavedStickyDragEvent = null;
        }
    }

    private void clearSavedStickyDragEvent() {
        if (this.mSavedStickyDragEvent != null) {
            Log.i(this.mTag, "clearSavedStickyDragEvent");
            this.mSavedStickyDragEvent.recycle();
            this.mSavedStickyDragEvent = null;
        }
    }

    public void onWindowTitleChanged() {
        this.mAttachInfo.mForceReportNewAttributes = true;
    }

    public void handleDispatchWindowShown() {
        this.mAttachInfo.mTreeObserver.dispatchOnWindowShown();
    }

    public void handleRequestKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
        Bundle data = new Bundle();
        ArrayList<KeyboardShortcutGroup> list = new ArrayList<>();
        View view = this.mView;
        if (view != null) {
            view.requestKeyboardShortcuts(list, deviceId);
        }
        data.putParcelableArrayList(WindowManager.PARCEL_KEY_SHORTCUTS_ARRAY, list);
        try {
            receiver.send(0, data);
        } catch (RemoteException e) {
        }
    }

    public void getLastTouchPoint(Point outLocation) {
        outLocation.x = (int) this.mLastTouchPoint.x;
        outLocation.y = (int) this.mLastTouchPoint.y;
    }

    public int getLastTouchSource() {
        return this.mLastTouchSource;
    }

    public int getLastClickToolType() {
        return this.mLastClickToolType;
    }

    public void setDragFocus(View newDragTarget, DragEvent event) {
        if (this.mCurrentDragView != newDragTarget && !View.sCascadedDragDrop) {
            float tx = event.mX;
            float ty = event.mY;
            int action = event.mAction;
            ClipData td = event.mClipData;
            event.mX = 0.0f;
            event.mY = 0.0f;
            event.mClipData = null;
            if (this.mCurrentDragView != null) {
                event.mAction = 6;
                this.mCurrentDragView.callDragEventHandler(event);
            }
            if (newDragTarget != null) {
                event.mAction = 5;
                newDragTarget.callDragEventHandler(event);
            }
            event.mAction = action;
            event.mX = tx;
            event.mY = ty;
            event.mClipData = td;
        }
        this.mCurrentDragView = newDragTarget;
    }

    public void setDragStartedViewForAccessibility(View view) {
        if (this.mStartedDragViewForA11y == null) {
            this.mStartedDragViewForA11y = view;
        }
    }

    private AudioManager getAudioManager() {
        View view = this.mView;
        if (view == null) {
            throw new IllegalStateException("getAudioManager called when there is no mView");
        }
        if (this.mAudioManager == null) {
            AudioManager audioManager = (AudioManager) view.getContext().getSystemService("audio");
            this.mAudioManager = audioManager;
            this.mFastScrollSoundEffectsEnabled = audioManager.areNavigationRepeatSoundEffectsEnabled();
        }
        return this.mAudioManager;
    }

    public AutofillManager getAutofillManager() {
        View view = this.mView;
        if (view instanceof ViewGroup) {
            ViewGroup decorView = (ViewGroup) view;
            if (decorView.getChildCount() > 0) {
                return (AutofillManager) decorView.getChildAt(0).getContext().getSystemService(AutofillManager.class);
            }
            return null;
        }
        return null;
    }

    public boolean isAutofillUiShowing() {
        AutofillManager afm = getAutofillManager();
        if (afm == null) {
            return false;
        }
        return afm.isAutofillUiShowing();
    }

    public AccessibilityInteractionController getAccessibilityInteractionController() {
        if (this.mView == null) {
            throw new IllegalStateException("getAccessibilityInteractionController called when there is no mView");
        }
        if (this.mAccessibilityInteractionController == null) {
            this.mAccessibilityInteractionController = new AccessibilityInteractionController(this);
        }
        return this.mAccessibilityInteractionController;
    }

    private boolean shouldNotLocalLayout(WindowConfiguration winConfig, WindowManager.LayoutParams params) {
        if (winConfig.isOverlappingWithCutout()) {
            return true;
        }
        if (!CoreRune.FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT) {
            return false;
        }
        DisplayCutout cutout = this.mInsetsController.getState().getDisplayCutout();
        int largeCutoutSize = Math.max(Math.max(cutout.getSafeInsetLeft(), cutout.getSafeInsetRight()), Math.max(cutout.getSafeInsetTop(), cutout.getSafeInsetBottom()));
        return largeCutoutSize > 0 && largeCutoutSize <= this.mMinimumSizeForOverlappingWithCutoutAsDefault;
    }

    private boolean shouldNotLocalLayoutEmbedded(WindowConfiguration winConfig) {
        return winConfig.isEmbedded() && this.mWindowAttributes.type == 2038;
    }

    private boolean shouldNotLocalLayoutPopOver(WindowConfiguration winConfig) {
        InsetsSource imeSource;
        return winConfig.isPopOver() && (imeSource = this.mInsetsController.getState().peekSource(InsetsSource.ID_IME)) != null && imeSource.isVisible();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int relayoutWindow(android.view.WindowManager.LayoutParams r41, int r42, boolean r43) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 1384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.relayoutWindow(android.view.WindowManager$LayoutParams, int, boolean):int");
    }

    private void updateOpacity(WindowManager.LayoutParams params, boolean dragResizing, boolean forceUpdate) {
        boolean opaque = false;
        if (!PixelFormat.formatHasAlpha(params.format) && params.surfaceInsets.left == 0 && params.surfaceInsets.top == 0 && params.surfaceInsets.right == 0 && params.surfaceInsets.bottom == 0 && !dragResizing) {
            opaque = true;
        }
        if (!forceUpdate && this.mIsSurfaceOpaque == opaque) {
            return;
        }
        ThreadedRenderer renderer = this.mAttachInfo.mThreadedRenderer;
        if (renderer != null && renderer.rendererOwnsSurfaceControlOpacity()) {
            opaque = renderer.setSurfaceControlOpaque(opaque);
        } else {
            this.mTransaction.setOpaque(this.mSurfaceControl, opaque).apply();
        }
        this.mIsSurfaceOpaque = opaque;
    }

    public void setFrame(Rect frame, boolean withinRelayout) {
        Rect rect;
        boolean changed = !this.mWinFrame.equals(frame);
        if (!this.mForceUpdateBoundsLayer) {
            this.mForceUpdateBoundsLayer = changed;
        }
        boolean changed2 = this.mFirst;
        if (!changed2 && !this.mWinFrame.equals(frame) && frame.isEmpty()) {
            Log.i(this.mTag, "Force to draw a frame when frame become empty from non-empty");
            this.mForceDraw = true;
        }
        Rect rect2 = this.mPendingWinFrame;
        if (rect2 != null && rect2.equals(frame)) {
            this.mPendingWinFrame = null;
        }
        this.mWinFrame.set(frame);
        if (withinRelayout) {
            this.mLastLayoutFrame.set(frame);
        }
        CompatTranslator translator = getCompatTranslator();
        if (translator != null) {
            this.mWinFrameScreen.set(frame);
            translator.translateToScreen(this.mWinFrameScreen);
            frame = this.mWinFrameScreen;
        }
        WindowConfiguration winConfig = getCompatWindowConfiguration();
        Rect rect3 = this.mPendingBackDropFrame;
        if (this.mPendingDragResizing && !winConfig.useWindowFrameForBackdrop()) {
            rect = winConfig.getMaxBounds();
        } else {
            rect = frame;
        }
        rect3.set(rect);
        this.mPendingBackDropFrame.offsetTo(0, 0);
        InsetsController insetsController = this.mInsetsController;
        Rect rect4 = this.mOverrideInsetsFrame;
        if (rect4 == null) {
            rect4 = frame;
        }
        insetsController.onFrameChanged(rect4);
    }

    public void setOverrideInsetsFrame(Rect frame) {
        Rect rect = new Rect(frame);
        this.mOverrideInsetsFrame = rect;
        this.mInsetsController.onFrameChanged(rect);
    }

    public void getDisplayFrame(Rect outFrame) {
        outFrame.set(this.mTmpFrames.displayFrame);
        applyViewBoundsSandboxingIfNeeded(outFrame);
    }

    public void getWindowVisibleDisplayFrame(Rect outFrame) {
        outFrame.set(this.mTmpFrames.displayFrame);
        Rect insets = this.mAttachInfo.mVisibleInsets;
        outFrame.left += insets.left;
        outFrame.top += insets.top;
        outFrame.right -= insets.right;
        outFrame.bottom -= insets.bottom;
        applyViewBoundsSandboxingIfNeeded(outFrame);
    }

    public void applyViewBoundsSandboxingIfNeeded(Rect inOutRect) {
        if (CoreRune.MT_SUPPORT_COMPAT_SANDBOX) {
            Configuration config = this.mLastReportedMergedConfiguration.getMergedConfiguration();
            if (CompatSandbox.isViewBoundsSandboxingEnabled(config)) {
                Rect bounds = getScaledBounds(config.windowConfiguration);
                inOutRect.offset(-bounds.left, -bounds.top);
                return;
            }
        }
        if (this.mViewBoundsSandboxingEnabled) {
            Rect bounds2 = getConfiguration().windowConfiguration.getBounds();
            inOutRect.offset(-bounds2.left, -bounds2.top);
        }
    }

    public void applyViewLocationSandboxingIfNeeded(int[] outLocation) {
        if (CoreRune.MT_SUPPORT_COMPAT_SANDBOX) {
            Configuration config = this.mLastReportedMergedConfiguration.getMergedConfiguration();
            if (CompatSandbox.isViewBoundsSandboxingEnabled(config)) {
                Rect bounds = getScaledBounds(config.windowConfiguration);
                outLocation[0] = outLocation[0] - bounds.left;
                outLocation[1] = outLocation[1] - bounds.top;
                return;
            }
        }
        if (this.mViewBoundsSandboxingEnabled) {
            Rect bounds2 = getConfiguration().windowConfiguration.getBounds();
            outLocation[0] = outLocation[0] - bounds2.left;
            outLocation[1] = outLocation[1] - bounds2.top;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean getViewBoundsSandboxingEnabled() {
        /*
            r4 = this;
            boolean r0 = android.app.ActivityThread.isSystem()
            r1 = 0
            if (r0 != 0) goto L39
            r2 = 237531167(0xe28701f, double:1.173559894E-315)
            boolean r0 = android.app.compat.CompatChanges.isChangeEnabled(r2)
            if (r0 != 0) goto L11
            goto L39
        L11:
            r0 = 1
            android.content.Context r2 = r4.mContext     // Catch: java.lang.RuntimeException -> L37
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.RuntimeException -> L37
            java.lang.String r3 = "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"
            java.util.List r2 = r2.queryApplicationProperty(r3)     // Catch: java.lang.RuntimeException -> L37
            boolean r3 = r2.isEmpty()     // Catch: java.lang.RuntimeException -> L37
            if (r3 != 0) goto L32
            java.lang.Object r3 = r2.get(r1)     // Catch: java.lang.RuntimeException -> L37
            android.content.pm.PackageManager$Property r3 = (android.content.pm.PackageManager.Property) r3     // Catch: java.lang.RuntimeException -> L37
            boolean r3 = r3.getBoolean()     // Catch: java.lang.RuntimeException -> L37
            if (r3 != 0) goto L32
            r3 = r0
            goto L33
        L32:
            r3 = r1
        L33:
            if (r3 == 0) goto L36
            return r1
        L36:
            goto L38
        L37:
            r1 = move-exception
        L38:
            return r0
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.getViewBoundsSandboxingEnabled():boolean");
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public void playSoundEffect(int effectId) {
        if ((this.mDisplay.getFlags() & 1024) != 0) {
            return;
        }
        checkThread();
        try {
            AudioManager audioManager = getAudioManager();
            if (this.mFastScrollSoundEffectsEnabled && SoundEffectConstants.isNavigationRepeat(effectId)) {
                audioManager.playSoundEffect(SoundEffectConstants.nextNavigationRepeatSoundEffectId());
                return;
            }
            switch (effectId) {
                case 0:
                    audioManager.playSoundEffect(0);
                    return;
                case 1:
                case 5:
                    audioManager.playSoundEffect(3);
                    return;
                case 2:
                case 6:
                    audioManager.playSoundEffect(1);
                    return;
                case 3:
                case 7:
                    audioManager.playSoundEffect(4);
                    return;
                case 4:
                case 8:
                    audioManager.playSoundEffect(2);
                    return;
                default:
                    throw new IllegalArgumentException("unknown effect id " + effectId + " not defined in " + SoundEffectConstants.class.getCanonicalName());
            }
        } catch (IllegalStateException e) {
            Log.e(this.mTag, "FATAL EXCEPTION when attempting to play sound effect: " + e);
            e.printStackTrace();
        }
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public boolean performHapticFeedback(int effectId, boolean always) {
        if ((this.mDisplay.getFlags() & 1024) != 0) {
            return false;
        }
        if (this.mDisplay.getDisplayId() != 0 && getConfiguration().isDesktopModeEnabled()) {
            return false;
        }
        try {
            this.mWindowSession.performHapticFeedbackAsync(effectId, always);
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.view.ViewParent
    public View focusSearch(View focused, int direction) {
        checkThread();
        if (!(this.mView instanceof ViewGroup)) {
            return null;
        }
        return FocusFinder.getInstance().findNextFocus((ViewGroup) this.mView, focused, direction);
    }

    @Override // android.view.ViewParent
    public View keyboardNavigationClusterSearch(View currentCluster, int direction) {
        checkThread();
        return FocusFinder.getInstance().findNextKeyboardNavigationCluster(this.mView, currentCluster, direction);
    }

    public void debug() {
        this.mView.debug();
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1138166333441L, Objects.toString(this.mView));
        proto.write(1120986464258L, this.mDisplay.getDisplayId());
        proto.write(1133871366147L, this.mAppVisible);
        proto.write(1120986464261L, this.mHeight);
        proto.write(1120986464260L, this.mWidth);
        proto.write(1133871366150L, this.mIsAnimating);
        this.mVisRect.dumpDebug(proto, 1146756268039L);
        proto.write(1133871366152L, this.mIsDrawing);
        proto.write(1133871366153L, this.mAdded);
        this.mWinFrame.dumpDebug(proto, 1146756268042L);
        proto.write(1138166333452L, Objects.toString(this.mLastWindowInsets));
        proto.write(1138166333453L, InputMethodDebug.softInputModeToString(this.mSoftInputMode));
        proto.write(1120986464270L, this.mScrollY);
        proto.write(1120986464271L, this.mCurScrollY);
        proto.write(1133871366160L, this.mRemoved);
        this.mWindowAttributes.dumpDebug(proto, 1146756268049L);
        proto.end(token);
        this.mInsetsController.dumpDebug(proto, 1146756268036L);
        this.mImeFocusController.dumpDebug(proto, 1146756268039L);
    }

    public void dump(String prefix, PrintWriter writer) {
        String innerPrefix = prefix + "  ";
        writer.println(prefix + "ViewRoot:");
        writer.println(innerPrefix + "mAdded=" + this.mAdded);
        writer.println(innerPrefix + "mRemoved=" + this.mRemoved);
        writer.println(innerPrefix + "mStopped=" + this.mStopped);
        writer.println(innerPrefix + "mPausedForTransition=" + this.mPausedForTransition);
        writer.println(innerPrefix + "mConsumeBatchedInputScheduled=" + this.mConsumeBatchedInputScheduled);
        writer.println(innerPrefix + "mConsumeBatchedInputImmediatelyScheduled=" + this.mConsumeBatchedInputImmediatelyScheduled);
        writer.println(innerPrefix + "mPendingInputEventCount=" + this.mPendingInputEventCount);
        writer.println(innerPrefix + "mProcessInputEventsScheduled=" + this.mProcessInputEventsScheduled);
        writer.println(innerPrefix + "mTraversalScheduled=" + this.mTraversalScheduled);
        if (this.mTraversalScheduled) {
            writer.println(innerPrefix + " (barrier=" + this.mTraversalBarrier + NavigationBarInflaterView.KEY_CODE_END);
        }
        writer.println(innerPrefix + "mReportNextDraw=" + this.mReportNextDraw);
        if (this.mReportNextDraw) {
            writer.println(innerPrefix + " (reason=" + this.mLastReportNextDrawReason + NavigationBarInflaterView.KEY_CODE_END);
        }
        if (this.mLastPerformTraversalsSkipDrawReason != null) {
            writer.println(innerPrefix + "mLastPerformTraversalsFailedReason=" + this.mLastPerformTraversalsSkipDrawReason);
        }
        if (this.mLastPerformDrawSkippedReason != null) {
            writer.println(innerPrefix + "mLastPerformDrawFailedReason=" + this.mLastPerformDrawSkippedReason);
        }
        if (this.mWmsRequestSyncGroupState != 0) {
            writer.println(innerPrefix + "mWmsRequestSyncGroupState=" + this.mWmsRequestSyncGroupState);
        }
        writer.println(innerPrefix + "mLastReportedMergedConfiguration=" + this.mLastReportedMergedConfiguration);
        writer.println(innerPrefix + "mLastConfigurationFromResources=" + this.mLastConfigurationFromResources);
        writer.println(innerPrefix + "mIsAmbientMode=" + this.mIsAmbientMode);
        writer.println(innerPrefix + "mUnbufferedInputSource=" + Integer.toHexString(this.mUnbufferedInputSource));
        if (this.mAttachInfo != null) {
            writer.print(innerPrefix + "mAttachInfo= ");
            this.mAttachInfo.dump(innerPrefix, writer);
        } else {
            writer.println(innerPrefix + "mAttachInfo=<null>");
        }
        this.mFirstInputStage.dump(innerPrefix, writer);
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            windowInputEventReceiver.dump(innerPrefix, writer);
        }
        this.mChoreographer.dump(prefix, writer);
        this.mInsetsController.dump(prefix, writer);
        this.mOnBackInvokedDispatcher.dump(prefix, writer);
        writer.println(prefix + "View Hierarchy:");
        dumpViewHierarchy(innerPrefix, writer, this.mView);
    }

    private void dumpViewHierarchy(String prefix, PrintWriter writer, View view) {
        ViewGroup grp;
        int N;
        writer.print(prefix);
        if (view == null) {
            writer.println(SemCapabilities.FEATURE_TAG_NULL);
            return;
        }
        writer.println(view.toString());
        if (!(view instanceof ViewGroup) || (N = (grp = (ViewGroup) view).getChildCount()) <= 0) {
            return;
        }
        String prefix2 = prefix + "  ";
        for (int i = 0; i < N; i++) {
            dumpViewHierarchy(prefix2, writer, grp.getChildAt(i));
        }
    }

    /* loaded from: classes4.dex */
    public static final class GfxInfo {
        public long renderNodeMemoryAllocated;
        public long renderNodeMemoryUsage;
        public int viewCount;

        public void add(GfxInfo other) {
            this.viewCount += other.viewCount;
            this.renderNodeMemoryUsage += other.renderNodeMemoryUsage;
            this.renderNodeMemoryAllocated += other.renderNodeMemoryAllocated;
        }
    }

    public GfxInfo getGfxInfo() {
        GfxInfo info = new GfxInfo();
        View view = this.mView;
        if (view != null) {
            appendGfxInfo(view, info);
        }
        return info;
    }

    private static void computeRenderNodeUsage(RenderNode node, GfxInfo info) {
        if (node == null) {
            return;
        }
        info.renderNodeMemoryUsage += node.computeApproximateMemoryUsage();
        info.renderNodeMemoryAllocated += node.computeApproximateMemoryAllocated();
    }

    private static void appendGfxInfo(View view, GfxInfo info) {
        info.viewCount++;
        computeRenderNodeUsage(view.mRenderNode, info);
        computeRenderNodeUsage(view.mBackgroundRenderNode, info);
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int count = group.getChildCount();
            for (int i = 0; i < count; i++) {
                appendGfxInfo(group.getChildAt(i), info);
            }
        }
    }

    public boolean die(boolean immediate) {
        if (immediate && !this.mIsInTraversal) {
            doDie();
            return false;
        }
        if (!this.mIsDrawing) {
            destroyHardwareRenderer();
        } else {
            Log.e(this.mTag, "Attempting to destroy the window while drawing!\n  window=" + this + ", title=" + ((Object) this.mWindowAttributes.getTitle()));
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    public void doDie() {
        checkThread();
        synchronized (this) {
            if (this.mRemoved) {
                return;
            }
            this.mRemoved = true;
            this.mOnBackInvokedDispatcher.detachFromWindow();
            if (this.mAdded) {
                dispatchDetachedFromWindow();
            }
            if (this.mAdded && !this.mFirst) {
                destroyHardwareRenderer();
                View view = this.mView;
                if (view != null) {
                    int viewVisibility = view.getVisibility();
                    boolean viewVisibilityChanged = this.mViewVisibility != viewVisibility;
                    if (this.mWindowAttributesChanged || viewVisibilityChanged) {
                        try {
                            if ((1 & relayoutWindow(this.mWindowAttributes, viewVisibility, false)) != 0) {
                                this.mWindowSession.finishDrawing(this.mWindow, null, Integer.MAX_VALUE);
                            }
                        } catch (RemoteException e) {
                        }
                    }
                    destroySurface();
                }
            }
            this.mInsetsController.onControlsChanged(null);
            this.mAdded = false;
            AnimationHandler.removeRequestor(this);
            SurfaceSyncGroup surfaceSyncGroup = this.mActiveSurfaceSyncGroup;
            if (surfaceSyncGroup != null) {
                surfaceSyncGroup.markSyncReady();
                this.mActiveSurfaceSyncGroup = null;
            }
            if (this.mHasPendingTransactions) {
                this.mPendingTransaction.apply();
            }
            WindowManagerGlobal.getInstance().doRemoveView(this);
        }
    }

    public void requestUpdateConfiguration(Configuration config) {
        Message msg = this.mHandler.obtainMessage(18, config);
        this.mHandler.sendMessage(msg);
    }

    /* renamed from: android.view.ViewRootImpl$7 */
    /* loaded from: classes4.dex */
    public class AnonymousClass7 implements Runnable {
        AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            viewRootImpl.profileRendering(viewRootImpl.mAttachInfo.mHasWindowFocus);
            if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null && ViewRootImpl.this.mAttachInfo.mThreadedRenderer.loadSystemProperties()) {
                ViewRootImpl.this.invalidate();
            }
            boolean layout = DisplayProperties.debug_layout().orElse(false).booleanValue();
            if (layout != ViewRootImpl.this.mAttachInfo.mDebugLayout) {
                ViewRootImpl.this.mAttachInfo.mDebugLayout = layout;
                if (!ViewRootImpl.this.mHandler.hasMessages(22)) {
                    ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(22, 200L);
                }
            }
        }
    }

    public void loadSystemProperties() {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.7
            AnonymousClass7() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                viewRootImpl.profileRendering(viewRootImpl.mAttachInfo.mHasWindowFocus);
                if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null && ViewRootImpl.this.mAttachInfo.mThreadedRenderer.loadSystemProperties()) {
                    ViewRootImpl.this.invalidate();
                }
                boolean layout = DisplayProperties.debug_layout().orElse(false).booleanValue();
                if (layout != ViewRootImpl.this.mAttachInfo.mDebugLayout) {
                    ViewRootImpl.this.mAttachInfo.mDebugLayout = layout;
                    if (!ViewRootImpl.this.mHandler.hasMessages(22)) {
                        ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(22, 200L);
                    }
                }
            }
        });
    }

    private void destroyHardwareRenderer() {
        ThreadedRenderer hardwareRenderer = this.mAttachInfo.mThreadedRenderer;
        Consumer<Display> consumer = this.mHdrSdrRatioChangedListener;
        if (consumer != null) {
            this.mDisplay.unregisterHdrSdrRatioChangedListener(consumer);
        }
        if (hardwareRenderer != null) {
            HardwareRendererObserver hardwareRendererObserver = this.mHardwareRendererObserver;
            if (hardwareRendererObserver != null) {
                hardwareRenderer.removeObserver(hardwareRendererObserver);
            }
            View view = this.mView;
            if (view != null) {
                hardwareRenderer.destroyHardwareResources(view);
            }
            hardwareRenderer.destroy();
            if (ViewRune.COMMON_IS_PRODUCT_DEV) {
                Log.d(this.mTag, "mThreadedRenderer.destroy()#4");
            }
            hardwareRenderer.setRequested(false);
            this.mAttachInfo.mThreadedRenderer = null;
            this.mAttachInfo.mHardwareAccelerated = false;
        }
    }

    public void dispatchResized(ClientWindowFrames clientWindowFrames, boolean z, MergedConfiguration mergedConfiguration, InsetsState insetsState, boolean z2, boolean z3, int i, int i2, boolean z4) {
        InsetsState insetsState2;
        Message obtainMessage = this.mHandler.obtainMessage(z ? 5 : 4);
        SomeArgs obtain = SomeArgs.obtain();
        Log.i(this.mTag, "Resizing " + this + ": frame = " + clientWindowFrames.frame.toShortString() + " reportDraw = " + z + " forceLayout = " + z2 + " syncSeqId = " + i2);
        if (this.mWindowAttributes.type == 1) {
            this.mPendingWinFrame = clientWindowFrames.frame;
        }
        boolean z5 = Binder.getCallingPid() == Process.myPid();
        if (!z5) {
            insetsState2 = insetsState;
        } else {
            insetsState2 = new InsetsState(insetsState, true);
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateInsetsStateInScreenToAppWindow(insetsState2);
        }
        if (insetsState2.isSourceOrDefaultVisible(InsetsSource.ID_IME, WindowInsets.Type.ime())) {
            ImeTracing.getInstance().triggerClientDump("ViewRootImpl#dispatchResized", getInsetsController().getHost().getInputMethodManager(), null);
        }
        obtain.arg1 = z5 ? new ClientWindowFrames(clientWindowFrames) : clientWindowFrames;
        obtain.arg2 = (!z5 || mergedConfiguration == null) ? mergedConfiguration : new MergedConfiguration(mergedConfiguration);
        obtain.arg3 = insetsState2;
        obtain.argi1 = z2 ? 1 : 0;
        obtain.argi2 = z3 ? 1 : 0;
        obtain.argi3 = i;
        obtain.argi4 = i2;
        obtain.argi5 = z4 ? 1 : 0;
        obtainMessage.obj = obtain;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchInsetsControlChanged(InsetsState insetsState, InsetsSourceControl[] activeControls) {
        if (Binder.getCallingPid() == Process.myPid()) {
            insetsState = new InsetsState(insetsState, true);
            if (activeControls != null) {
                for (int i = activeControls.length - 1; i >= 0; i--) {
                    activeControls[i] = new InsetsSourceControl(activeControls[i]);
                }
            }
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateInsetsStateInScreenToAppWindow(insetsState);
            this.mTranslator.translateSourceControlsInScreenToAppWindow(activeControls);
        }
        if (insetsState != null && insetsState.isSourceOrDefaultVisible(InsetsSource.ID_IME, WindowInsets.Type.ime())) {
            ImeTracing.getInstance().triggerClientDump("ViewRootImpl#dispatchInsetsControlChanged", getInsetsController().getHost().getInputMethodManager(), null);
        }
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = insetsState;
        args.arg2 = activeControls;
        this.mHandler.obtainMessage(29, args).sendToTarget();
    }

    public void showInsets(int i, boolean z, ImeTracker.Token token) {
        this.mHandler.obtainMessage(31, i, z ? 1 : 0, token).sendToTarget();
    }

    public void hideInsets(int i, boolean z, ImeTracker.Token token) {
        this.mHandler.obtainMessage(32, i, z ? 1 : 0, token).sendToTarget();
    }

    public void dispatchMoved(int newX, int newY) {
        if (DEBUG_LAYOUT) {
            Log.v(this.mTag, "Window moved " + this + ": newX=" + newX + " newY=" + newY);
        }
        if (this.mTranslator != null) {
            PointF point = new PointF(newX, newY);
            this.mTranslator.translatePointInScreenToAppWindow(point);
            newX = (int) (point.x + 0.5d);
            newY = (int) (point.y + 0.5d);
        }
        CompatTranslator translator = getCompatTranslator();
        if (translator != null) {
            if (CoreRune.FW_BOUNDS_COMPAT_TRANSLATOR_AS_BOUNDS) {
                updatePositionInBounds(translator, this.mLastReportedMergedConfiguration.getOverrideConfiguration());
            }
            if (translator.savePositionInScreen(newX, newY)) {
                this.mAttachInfo.mNeedsUpdateLightCenter = true;
            }
            Point point2 = new Point(newX, newY);
            translator.translateToWindow(point2);
            newX = point2.x;
            newY = point2.y;
        }
        Message msg = this.mHandler.obtainMessage(23, newX, newY);
        this.mHandler.sendMessage(msg);
    }

    /* loaded from: classes4.dex */
    public static final class QueuedInputEvent {
        public static final int FLAG_DEFERRED = 2;
        public static final int FLAG_DELIVER_POST_IME = 1;
        public static final int FLAG_FINISHED = 4;
        public static final int FLAG_FINISHED_HANDLED = 8;
        public static final int FLAG_MODIFIED_FOR_COMPATIBILITY = 64;
        public static final int FLAG_RESYNTHESIZED = 16;
        public static final int FLAG_UNHANDLED = 32;
        public InputEvent mEvent;
        public int mFlags;
        public QueuedInputEvent mNext;
        public InputEventReceiver mReceiver;

        /* synthetic */ QueuedInputEvent(QueuedInputEventIA queuedInputEventIA) {
            this();
        }

        private QueuedInputEvent() {
        }

        public boolean shouldSkipIme() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            InputEvent inputEvent = this.mEvent;
            return (inputEvent instanceof MotionEvent) && (inputEvent.isFromSource(2) || this.mEvent.isFromSource(4194304));
        }

        public boolean shouldSendToSynthesizer() {
            if ((this.mFlags & 32) != 0) {
                return true;
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("QueuedInputEvent{flags=");
            boolean hasPrevious = flagToString("DELIVER_POST_IME", 1, false, sb);
            if (!flagToString("UNHANDLED", 32, flagToString("RESYNTHESIZED", 16, flagToString("FINISHED_HANDLED", 8, flagToString("FINISHED", 4, flagToString("DEFERRED", 2, hasPrevious, sb), sb), sb), sb), sb)) {
                sb.append("0");
            }
            sb.append(", hasNextQueuedEvent=" + (this.mEvent != null ? "true" : "false"));
            sb.append(", hasInputEventReceiver=" + (this.mReceiver == null ? "false" : "true"));
            sb.append(", mEvent=" + this.mEvent + "}");
            return sb.toString();
        }

        private boolean flagToString(String name, int flag, boolean hasPrevious, StringBuilder sb) {
            if ((this.mFlags & flag) != 0) {
                if (hasPrevious) {
                    sb.append(NtpTrustedTime.NTP_SETTING_SERVER_NAME_DELIMITER);
                }
                sb.append(name);
                return true;
            }
            return hasPrevious;
        }
    }

    private QueuedInputEvent obtainQueuedInputEvent(InputEvent event, InputEventReceiver receiver, int flags) {
        QueuedInputEvent q = this.mQueuedInputEventPool;
        if (q != null) {
            this.mQueuedInputEventPoolSize--;
            this.mQueuedInputEventPool = q.mNext;
            q.mNext = null;
        } else {
            q = new QueuedInputEvent();
        }
        q.mEvent = event;
        q.mReceiver = receiver;
        q.mFlags = flags;
        return q;
    }

    private void recycleQueuedInputEvent(QueuedInputEvent q) {
        q.mEvent = null;
        q.mReceiver = null;
        int i = this.mQueuedInputEventPoolSize;
        if (i < 10) {
            this.mQueuedInputEventPoolSize = i + 1;
            q.mNext = this.mQueuedInputEventPool;
            this.mQueuedInputEventPool = q;
        }
    }

    public void enqueueInputEvent(InputEvent event) {
        enqueueInputEvent(event, null, 0, false);
    }

    void enqueueInputEvent(InputEvent event, InputEventReceiver receiver, int flags, boolean processImmediately) {
        if (CoreRune.FW_SPEN_HOVER && (event instanceof KeyEvent) && (((KeyEvent) event).getFlags() & 33554432) != 0) {
            flags |= 1;
        }
        QueuedInputEvent q = obtainQueuedInputEvent(event, receiver, flags);
        if (event instanceof MotionEvent) {
            MotionEvent me = (MotionEvent) event;
            if (me.getAction() == 3) {
                EventLog.writeEvent(EventLogTags.VIEW_ENQUEUE_INPUT_EVENT, "Motion - Cancel", getTitle().toString());
            }
        } else if (event instanceof KeyEvent) {
            KeyEvent ke = (KeyEvent) event;
            if (ke.isCanceled()) {
                EventLog.writeEvent(EventLogTags.VIEW_ENQUEUE_INPUT_EVENT, "Key - Cancel", getTitle().toString());
            }
        }
        QueuedInputEvent last = this.mPendingInputEventTail;
        if (last == null) {
            this.mPendingInputEventHead = q;
            this.mPendingInputEventTail = q;
        } else {
            last.mNext = q;
            this.mPendingInputEventTail = q;
        }
        int i = this.mPendingInputEventCount + 1;
        this.mPendingInputEventCount = i;
        Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i);
        if (processImmediately) {
            doProcessInputEvents();
        } else {
            scheduleProcessInputEvents();
        }
    }

    private void scheduleProcessInputEvents() {
        if (!this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = true;
            Message msg = this.mHandler.obtainMessage(19);
            msg.setAsynchronous(true);
            this.mHandler.sendMessage(msg);
        }
    }

    void doProcessInputEvents() {
        while (this.mPendingInputEventHead != null) {
            QueuedInputEvent q = this.mPendingInputEventHead;
            QueuedInputEvent queuedInputEvent = q.mNext;
            this.mPendingInputEventHead = queuedInputEvent;
            if (queuedInputEvent == null) {
                this.mPendingInputEventTail = null;
            }
            q.mNext = null;
            int i = this.mPendingInputEventCount - 1;
            this.mPendingInputEventCount = i;
            Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i);
            if (q.mEvent instanceof MotionEvent) {
                MotionEvent me = (MotionEvent) q.mEvent;
                View view = this.mView;
                if (view != null && ((view.getTop() != 0 || this.mView.getLeft() != 0) && this.mWindowAttributes.layoutInDisplayCutoutMode == 1 && this.mWindowAttributes.type == 2)) {
                    me.offsetLocation(-this.mView.getLeft(), -this.mView.getTop());
                }
            }
            this.mViewFrameInfo.setInputEvent(this.mInputEventAssigner.processEvent(q.mEvent));
            deliverInputEvent(q);
        }
        if (this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = false;
            this.mHandler.removeMessages(19);
        }
    }

    private void deliverInputEvent(QueuedInputEvent q) {
        InputStage stage;
        Trace.asyncTraceBegin(8L, "deliverInputEvent", q.mEvent.getId());
        boolean isMotionEvent = q.mEvent instanceof MotionEvent;
        if (isMotionEvent) {
            MotionEvent event = (MotionEvent) q.mEvent;
            if (checkPalmRejection(event) && getPalmRejection(event)) {
                event.setAction(3);
            }
        }
        if (isMotionEvent) {
            MotionEvent event2 = (MotionEvent) q.mEvent;
            if (CoreRune.MT_SUPPORT_COMPAT_SANDBOX) {
                Configuration config = this.mLastReportedMergedConfiguration.getMergedConfiguration();
                if (CompatSandbox.isMotionEventSandboxingEnabled(config)) {
                    Rect bounds = config.windowConfiguration.getCompatSandboxBounds();
                    float xOffset = -bounds.left;
                    float yOffset = -bounds.top;
                    float scale = config.windowConfiguration.getCompatSandboxInvScale();
                    float overrideInvertedScale = CompatibilityInfo.getOverrideInvertedScale();
                    event2.setCompatSandboxScale(xOffset, yOffset, scale * overrideInvertedScale);
                    if (DEBUG_TOUCH_EVENT) {
                        Log.d(this.mTag, "MotionEventSandboxingEnabled, rawX" + event2.getRawX() + ", rawY" + event2.getRawY() + ", xOffset" + xOffset + ", yOffset" + yOffset + ", scale" + scale + ", overrideInvertedScale" + overrideInvertedScale);
                    }
                }
            }
            CompatTranslator translator = getCompatTranslator();
            if (translator != null) {
                translator.translateToWindow(event2);
            }
        }
        if (CoreRune.BIXBY_TOUCH && isMotionEvent && this.mSemPressGestureDetector != null) {
            MotionEvent event3 = (MotionEvent) q.mEvent;
            if (event3.getAction() == 0) {
                this.mBixbyTouchTriggered = false;
                this.mCanTriggerBixbyTouch = true;
                if (this.mSemPressGestureDetector.isInitFailed()) {
                    this.mSemPressGestureDetector.init(this.mContext, this.mView);
                }
            } else if (this.mBixbyTouchTriggered) {
                if (event3.getAction() == 1) {
                    this.mSemPressGestureDetector.dispatchTouchEvent(event3);
                }
                finishInputEvent(q);
                return;
            }
            if (this.mCanTriggerBixbyTouch && this.mSemPressGestureDetector.dispatchTouchEvent(event3)) {
                event3.setAction(3);
                this.mBixbyTouchTriggered = true;
            }
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "deliverInputEvent src=0x" + Integer.toHexString(q.mEvent.getSource()) + " eventTimeNano=" + q.mEvent.getEventTimeNanos() + " id=0x" + Integer.toHexString(q.mEvent.getId()));
        }
        try {
            if (this.mInputEventConsistencyVerifier != null) {
                Trace.traceBegin(8L, "verifyEventConsistency");
                this.mInputEventConsistencyVerifier.onInputEvent(q.mEvent, 0);
                Trace.traceEnd(8L);
            }
            if (q.shouldSendToSynthesizer()) {
                stage = this.mSyntheticInputStage;
            } else {
                stage = q.shouldSkipIme() ? this.mFirstPostImeInputStage : this.mFirstInputStage;
            }
            if (q.mEvent instanceof KeyEvent) {
                Trace.traceBegin(8L, "preDispatchToUnhandledKeyManager");
                this.mUnhandledKeyManager.preDispatch((KeyEvent) q.mEvent);
                Trace.traceEnd(8L);
            }
            if (stage != null) {
                handleWindowFocusChanged();
                stage.deliver(q);
            } else {
                finishInputEvent(q);
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.traceEnd(8L);
        }
    }

    public void finishInputEvent(QueuedInputEvent q) {
        Trace.asyncTraceEnd(8L, "deliverInputEvent", q.mEvent.getId());
        if (q.mReceiver != null) {
            boolean handled = (q.mFlags & 8) != 0;
            boolean modified = (q.mFlags & 64) != 0;
            if (modified) {
                Trace.traceBegin(8L, "processInputEventBeforeFinish");
                try {
                    InputEvent processedEvent = this.mInputCompatProcessor.processInputEventBeforeFinish(q.mEvent);
                    if (processedEvent != null) {
                        q.mReceiver.finishInputEvent(processedEvent, handled);
                    }
                } finally {
                    Trace.traceEnd(8L);
                }
            } else {
                q.mReceiver.finishInputEvent(q.mEvent, handled);
            }
        } else {
            q.mEvent.recycleIfNeededAfterDispatch();
        }
        recycleQueuedInputEvent(q);
    }

    static boolean isTerminalInputEvent(InputEvent event) {
        if (event instanceof KeyEvent) {
            KeyEvent keyEvent = (KeyEvent) event;
            return keyEvent.getAction() == 1;
        }
        MotionEvent motionEvent = (MotionEvent) event;
        int action = motionEvent.getAction();
        return action == 1 || action == 3 || action == 10;
    }

    void scheduleConsumeBatchedInput() {
        if (!this.mConsumeBatchedInputScheduled && !this.mConsumeBatchedInputImmediatelyScheduled) {
            this.mConsumeBatchedInputScheduled = true;
            this.mChoreographer.postCallback(0, this.mConsumedBatchedInputRunnable, null);
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.notifyCallbackPending();
            }
        }
    }

    void unscheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            this.mChoreographer.removeCallbacks(0, this.mConsumedBatchedInputRunnable, null);
        }
    }

    void scheduleConsumeBatchedInputImmediately() {
        if (!this.mConsumeBatchedInputImmediatelyScheduled) {
            unscheduleConsumeBatchedInput();
            this.mConsumeBatchedInputImmediatelyScheduled = true;
            this.mHandler.post(this.mConsumeBatchedInputImmediatelyRunnable);
        }
    }

    boolean doConsumeBatchedInput(long frameTimeNanos) {
        boolean consumedBatches;
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            consumedBatches = windowInputEventReceiver.consumeBatchedInputEvents(frameTimeNanos);
        } else {
            consumedBatches = false;
        }
        doProcessInputEvents();
        return consumedBatches;
    }

    /* loaded from: classes4.dex */
    public final class TraversalRunnable implements Runnable {
        TraversalRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doTraversal();
        }
    }

    /* loaded from: classes4.dex */
    public final class WindowInputEventReceiver extends InputEventReceiver {
        public WindowInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent event) {
            Trace.traceBegin(8L, "processInputEventForCompatibility");
            try {
                List<InputEvent> processedEvents = ViewRootImpl.this.mInputCompatProcessor.processInputEventForCompatibility(event);
                Trace.traceEnd(8L);
                if (processedEvents != null) {
                    if (processedEvents.isEmpty()) {
                        finishInputEvent(event, true);
                        return;
                    }
                    for (int i = 0; i < processedEvents.size(); i++) {
                        ViewRootImpl.this.enqueueInputEvent(processedEvents.get(i), this, 64, true);
                    }
                    return;
                }
                String traceKey = null;
                if (ViewRune.COMMON_IS_PRODUCT_DEV && (event instanceof MotionEvent)) {
                    MotionEvent motionEvent = (MotionEvent) event;
                    traceKey = String.format("(X=%d, Y=%d, Action=%d)", Integer.valueOf((int) motionEvent.getX()), Integer.valueOf((int) motionEvent.getY()), Integer.valueOf(motionEvent.getAction()));
                    Trace.traceBegin(8L, traceKey);
                }
                ViewRootImpl.this.enqueueInputEvent(event, this, 0, true);
                if (traceKey != null) {
                }
            } finally {
                Trace.traceEnd(8L);
            }
        }

        @Override // android.view.InputEventReceiver
        public void onBatchedInputEventPending(int source) {
            boolean unbuffered = ViewRootImpl.this.mUnbufferedInputDispatch || (ViewRootImpl.this.mUnbufferedInputSource & source) != 0;
            if (unbuffered) {
                if (ViewRootImpl.this.mConsumeBatchedInputScheduled) {
                    ViewRootImpl.this.unscheduleConsumeBatchedInput();
                }
                consumeBatchedInputEvents(-1L);
                return;
            }
            ViewRootImpl.this.scheduleConsumeBatchedInput();
        }

        @Override // android.view.InputEventReceiver
        public void onFocusEvent(boolean hasFocus) {
            ViewRootImpl.this.windowFocusChanged(hasFocus);
        }

        @Override // android.view.InputEventReceiver
        public void onTouchModeChanged(boolean inTouchMode) {
            ViewRootImpl.this.touchModeChanged(inTouchMode);
        }

        @Override // android.view.InputEventReceiver
        public void onPointerCaptureEvent(boolean pointerCaptureEnabled) {
            ViewRootImpl.this.dispatchPointerCaptureChanged(pointerCaptureEnabled);
        }

        @Override // android.view.InputEventReceiver
        public void onDragEvent(boolean isExiting, float x, float y) {
            DragEvent event = DragEvent.obtain(isExiting ? 6 : 2, x, y, 0.0f, 0.0f, null, null, null, null, null, false);
            ViewRootImpl.this.dispatchDragEvent(event);
        }

        @Override // android.view.InputEventReceiver
        public void dispose() {
            ViewRootImpl.this.unscheduleConsumeBatchedInput();
            super.dispose();
        }
    }

    /* loaded from: classes4.dex */
    public final class InputMetricsListener implements HardwareRendererObserver.OnFrameMetricsAvailableListener {
        public long[] data = new long[23];

        InputMetricsListener() {
        }

        @Override // android.graphics.HardwareRendererObserver.OnFrameMetricsAvailableListener
        public void onFrameMetricsAvailable(int dropCountSinceLastInvocation) {
            long[] jArr = this.data;
            int inputEventId = (int) jArr[4];
            if (inputEventId == 0) {
                return;
            }
            long presentTime = jArr[21];
            if (presentTime <= 0) {
                return;
            }
            long gpuCompletedTime = jArr[19];
            if (ViewRootImpl.this.mInputEventReceiver == null) {
                return;
            }
            if (gpuCompletedTime >= presentTime) {
                double discrepancyMs = (gpuCompletedTime - presentTime) * 1.0E-6d;
                long vsyncId = this.data[1];
                Log.w(ViewRootImpl.TAG, "Not reporting timeline because gpuCompletedTime is " + discrepancyMs + "ms ahead of presentTime. FRAME_TIMELINE_VSYNC_ID=" + vsyncId + ", INPUT_EVENT_ID=" + inputEventId);
                return;
            }
            ViewRootImpl.this.mInputEventReceiver.reportTimeline(inputEventId, gpuCompletedTime, presentTime);
        }
    }

    /* loaded from: classes4.dex */
    public final class ConsumeBatchedInputRunnable implements Runnable {
        ConsumeBatchedInputRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.mConsumeBatchedInputScheduled = false;
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (viewRootImpl.doConsumeBatchedInput(viewRootImpl.mChoreographer.getFrameTimeNanos())) {
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class ConsumeBatchedInputImmediatelyRunnable implements Runnable {
        ConsumeBatchedInputImmediatelyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.mConsumeBatchedInputImmediatelyScheduled = false;
            ViewRootImpl.this.doConsumeBatchedInput(-1L);
        }
    }

    /* loaded from: classes4.dex */
    public final class InvalidateOnAnimationRunnable implements Runnable {
        private boolean mPosted;
        private View.AttachInfo.InvalidateInfo[] mTempViewRects;
        private View[] mTempViews;
        private final ArrayList<View> mViews = new ArrayList<>();
        private final ArrayList<View.AttachInfo.InvalidateInfo> mViewRects = new ArrayList<>();

        InvalidateOnAnimationRunnable() {
        }

        public void addView(View view) {
            synchronized (this) {
                this.mViews.add(view);
                postIfNeededLocked();
            }
            if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null) {
                ViewRootImpl.this.mAttachInfo.mThreadedRenderer.notifyCallbackPending();
            }
        }

        public void addViewRect(View.AttachInfo.InvalidateInfo info) {
            synchronized (this) {
                this.mViewRects.add(info);
                postIfNeededLocked();
            }
            if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null) {
                ViewRootImpl.this.mAttachInfo.mThreadedRenderer.notifyCallbackPending();
            }
        }

        public void removeView(View view) {
            synchronized (this) {
                this.mViews.remove(view);
                int i = this.mViewRects.size();
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    View.AttachInfo.InvalidateInfo info = this.mViewRects.get(i2);
                    if (info.target == view) {
                        this.mViewRects.remove(i2);
                        info.recycle();
                    }
                    i = i2;
                }
                if (this.mPosted && this.mViews.isEmpty() && this.mViewRects.isEmpty()) {
                    ViewRootImpl.this.mChoreographer.removeCallbacks(1, this, null);
                    this.mPosted = false;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int viewCount;
            int viewRectCount;
            synchronized (this) {
                this.mPosted = false;
                viewCount = this.mViews.size();
                if (viewCount != 0) {
                    ArrayList<View> arrayList = this.mViews;
                    View[] viewArr = this.mTempViews;
                    if (viewArr == null) {
                        viewArr = new View[viewCount];
                    }
                    this.mTempViews = (View[]) arrayList.toArray(viewArr);
                    this.mViews.clear();
                }
                viewRectCount = this.mViewRects.size();
                if (viewRectCount != 0) {
                    ArrayList<View.AttachInfo.InvalidateInfo> arrayList2 = this.mViewRects;
                    View.AttachInfo.InvalidateInfo[] invalidateInfoArr = this.mTempViewRects;
                    if (invalidateInfoArr == null) {
                        invalidateInfoArr = new View.AttachInfo.InvalidateInfo[viewRectCount];
                    }
                    this.mTempViewRects = (View.AttachInfo.InvalidateInfo[]) arrayList2.toArray(invalidateInfoArr);
                    this.mViewRects.clear();
                }
            }
            for (int i = 0; i < viewCount; i++) {
                this.mTempViews[i].invalidate();
                this.mTempViews[i] = null;
            }
            for (int i2 = 0; i2 < viewRectCount; i2++) {
                View.AttachInfo.InvalidateInfo info = this.mTempViewRects[i2];
                info.target.invalidate(info.left, info.top, info.right, info.bottom);
                info.recycle();
            }
        }

        private void postIfNeededLocked() {
            if (!this.mPosted) {
                ViewRootImpl.this.mChoreographer.postCallback(1, this, null);
                this.mPosted = true;
            }
        }
    }

    public void dispatchInvalidateDelayed(View view, long delayMilliseconds) {
        Message msg = this.mHandler.obtainMessage(1, view);
        this.mHandler.sendMessageDelayed(msg, delayMilliseconds);
    }

    public void dispatchInvalidateRectDelayed(View.AttachInfo.InvalidateInfo info, long delayMilliseconds) {
        Message msg = this.mHandler.obtainMessage(2, info);
        this.mHandler.sendMessageDelayed(msg, delayMilliseconds);
    }

    public void dispatchInvalidateOnAnimation(View view) {
        this.mInvalidateOnAnimationRunnable.addView(view);
    }

    public void dispatchInvalidateRectOnAnimation(View.AttachInfo.InvalidateInfo info) {
        this.mInvalidateOnAnimationRunnable.addViewRect(info);
    }

    public void cancelInvalidate(View view) {
        this.mHandler.removeMessages(1, view);
        this.mHandler.removeMessages(2, view);
        this.mInvalidateOnAnimationRunnable.removeView(view);
    }

    public void dispatchInputEvent(InputEvent event) {
        dispatchInputEvent(event, null);
    }

    public void dispatchInputEvent(InputEvent event, InputEventReceiver receiver) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = event;
        args.arg2 = receiver;
        Message msg = this.mHandler.obtainMessage(7, args);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void synthesizeInputEvent(InputEvent event) {
        Message msg = this.mHandler.obtainMessage(24, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchKeyFromIme(KeyEvent event) {
        Message msg = this.mHandler.obtainMessage(11, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchKeyFromAutofill(KeyEvent event) {
        Message msg = this.mHandler.obtainMessage(12, event);
        msg.setAsynchronous(true);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchUnhandledInputEvent(InputEvent event) {
        if (event instanceof MotionEvent) {
            event = MotionEvent.obtain((MotionEvent) event);
        }
        synthesizeInputEvent(event);
    }

    public void dispatchAppVisibility(boolean z) {
        this.mSemEarlyAppVisibilityChanged = true;
        this.mSemEarlyAppVisibility = z;
        Message obtainMessage = this.mHandler.obtainMessage(8);
        obtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchGetNewSurface() {
        Message msg = this.mHandler.obtainMessage(9);
        this.mHandler.sendMessage(msg);
    }

    public void windowFocusChanged(boolean hasFocus) {
        synchronized (this) {
            this.mWindowFocusChanged = true;
            this.mUpcomingWindowFocus = hasFocus;
        }
        Message msg = Message.obtain();
        msg.what = 6;
        this.mHandler.sendMessage(msg);
    }

    public void touchModeChanged(boolean inTouchMode) {
        synchronized (this) {
            this.mUpcomingInTouchMode = inTouchMode;
        }
        Message msg = Message.obtain();
        msg.what = 34;
        this.mHandler.sendMessage(msg);
    }

    public void dispatchWindowShown() {
        this.mHandler.sendEmptyMessage(25);
    }

    public void dispatchCloseSystemDialogs(String reason) {
        Message msg = Message.obtain();
        msg.what = 14;
        msg.obj = reason;
        this.mHandler.sendMessage(msg);
    }

    public void dispatchDragEvent(DragEvent event) {
        int what;
        if (event.getAction() == 2) {
            what = 16;
            this.mHandler.removeMessages(16);
        } else {
            what = 15;
        }
        Message msg = this.mHandler.obtainMessage(what, event);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchDragEventUpdated(DragEvent event) {
        if (this.mAttachInfo.mDragToken != null) {
            Log.i(TAG, "dispatchDragEventUpdated() return.");
            return;
        }
        this.mHandler.removeMessages(16);
        this.mHandler.removeMessages(15);
        sendDispatchDragEvent(6, event);
        sendDispatchDragEvent(4, event);
        sendDispatchDragEvent(1, event);
        sendDispatchDragEvent(2, event);
    }

    private void sendDispatchDragEvent(int action, DragEvent event) {
        float x;
        float y;
        float offsetX;
        float offsetY;
        if (action == 1 || action == 2) {
            float x2 = event.getX();
            float y2 = event.getY();
            float offsetX2 = event.getOffsetX();
            x = x2;
            y = y2;
            offsetX = offsetX2;
            offsetY = event.getOffsetY();
        } else {
            x = 0.0f;
            y = 0.0f;
            offsetX = 0.0f;
            offsetY = 0.0f;
        }
        SurfaceControl dragSurface = 6 == action ? null : event.getDragSurface();
        DragEvent eventToRestart = DragEvent.obtain(action, x, y, offsetX, offsetY, event.mLocalState, event.getClipDescription(), event.mClipData, dragSurface, event.mDragAndDropPermissions, event.mDragResult);
        ViewRootHandler viewRootHandler = this.mHandler;
        viewRootHandler.sendMessage(viewRootHandler.obtainMessage(15, eventToRestart));
    }

    public void windowFocusInTaskChanged(boolean hasFocus) {
        synchronized (this) {
            this.mWindowFocusInTaskChanged = true;
            if (CoreRune.SAFE_DEBUG) {
                Log.i(this.mTag, "windowFocusInTaskChanged " + this.mUpcomingWindowFocusInTask + " to " + hasFocus + ", windowFocus=" + this.mUpcomingWindowFocus);
            }
            this.mUpcomingWindowFocusInTask = hasFocus;
        }
        Message msg = Message.obtain();
        msg.what = 105;
        this.mHandler.sendMessage(msg);
    }

    public void handleWindowFocusInTaskChanged() {
        synchronized (this) {
            if (this.mWindowFocusInTaskChanged) {
                this.mWindowFocusInTaskChanged = false;
                boolean hasWindowFocusInTask = this.mUpcomingWindowFocusInTask;
                View view = this.mView;
                if (view instanceof DecorView) {
                    ((DecorView) view).onWindowFocusInTaskChanged(hasWindowFocusInTask);
                }
            }
        }
    }

    public void updatePointerIcon(float x, float y) {
        this.mHandler.removeMessages(27);
        long now = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(0L, now, 7, x, y, 0);
        Message msg = this.mHandler.obtainMessage(27, event);
        this.mHandler.sendMessage(msg);
    }

    public void dispatchCheckFocus() {
        if (!this.mHandler.hasMessages(13)) {
            this.mHandler.sendEmptyMessage(13);
        }
    }

    public void dispatchRequestKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
        this.mHandler.obtainMessage(26, deviceId, 0, receiver).sendToTarget();
    }

    public void dispatchPointerCaptureChanged(boolean z) {
        this.mHandler.removeMessages(28);
        Message obtainMessage = this.mHandler.obtainMessage(28);
        obtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(obtainMessage);
    }

    private void postSendWindowContentChangedCallback(View source, int changeType) {
        if (this.mSendWindowContentChangedAccessibilityEvent == null) {
            this.mSendWindowContentChangedAccessibilityEvent = new SendWindowContentChangedAccessibilityEvent();
        }
        this.mSendWindowContentChangedAccessibilityEvent.runOrPost(source, changeType);
    }

    private void removeSendWindowContentChangedCallback() {
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent;
        if (sendWindowContentChangedAccessibilityEvent != null) {
            this.mHandler.removeCallbacks(sendWindowContentChangedAccessibilityEvent);
        }
    }

    public int getDirectAccessibilityConnectionId() {
        return this.mAccessibilityInteractionConnectionManager.ensureDirectConnection();
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View originalView) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View originalView, float x, float y) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback, int type) {
        return null;
    }

    @Override // android.view.ViewParent
    public void createContextMenu(ContextMenu menu) {
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View child) {
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        AccessibilityNodeProvider provider;
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent;
        if (this.mView == null || this.mStopped || this.mPausedForTransition) {
            return false;
        }
        if (event.getEventType() != 2048 && (sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent) != null && sendWindowContentChangedAccessibilityEvent.mSource != null) {
            this.mSendWindowContentChangedAccessibilityEvent.removeCallbacksAndRun();
        }
        int eventType = event.getEventType();
        View source = getSourceForAccessibilityEvent(event);
        switch (eventType) {
            case 2048:
                handleWindowContentChangedEvent(event);
                break;
            case 32768:
                if (source != null && (provider = source.getAccessibilityNodeProvider()) != null) {
                    int virtualNodeId = AccessibilityNodeInfo.getVirtualDescendantId(event.getSourceNodeId());
                    AccessibilityNodeInfo node = provider.createAccessibilityNodeInfo(virtualNodeId);
                    setAccessibilityFocus(source, node);
                    break;
                }
                break;
            case 65536:
                if (source != null && source.getAccessibilityNodeProvider() != null) {
                    setAccessibilityFocus(null, null);
                    break;
                }
                break;
        }
        this.mAccessibilityManager.sendAccessibilityEvent(event);
        return true;
    }

    private View getSourceForAccessibilityEvent(AccessibilityEvent event) {
        long sourceNodeId = event.getSourceNodeId();
        int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(sourceNodeId);
        return AccessibilityNodeIdManager.getInstance().findView(accessibilityViewId);
    }

    private void handleWindowContentChangedEvent(AccessibilityEvent event) {
        View focusedHost = this.mAccessibilityFocusedHost;
        if (focusedHost == null || this.mAccessibilityFocusedVirtualView == null) {
            return;
        }
        AccessibilityNodeProvider provider = focusedHost.getAccessibilityNodeProvider();
        if (provider == null) {
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            focusedHost.clearAccessibilityFocusNoCallbacks(0);
            return;
        }
        int changes = event.getContentChangeTypes();
        if ((changes & 1) == 0 && changes != 0) {
            return;
        }
        long eventSourceNodeId = event.getSourceNodeId();
        int changedViewId = AccessibilityNodeInfo.getAccessibilityViewId(eventSourceNodeId);
        boolean hostInSubtree = false;
        View root = this.mAccessibilityFocusedHost;
        while (root != null && !hostInSubtree) {
            if (changedViewId == root.getAccessibilityViewId()) {
                hostInSubtree = true;
            } else {
                Object parent = root.getParent();
                if (parent instanceof View) {
                    root = (View) parent;
                } else {
                    root = null;
                }
            }
        }
        if (!hostInSubtree) {
            return;
        }
        long focusedSourceNodeId = this.mAccessibilityFocusedVirtualView.getSourceNodeId();
        int focusedChildId = AccessibilityNodeInfo.getVirtualDescendantId(focusedSourceNodeId);
        Rect oldBounds = this.mTempRect;
        this.mAccessibilityFocusedVirtualView.getBoundsInScreen(oldBounds);
        AccessibilityNodeInfo createAccessibilityNodeInfo = provider.createAccessibilityNodeInfo(focusedChildId);
        this.mAccessibilityFocusedVirtualView = createAccessibilityNodeInfo;
        if (createAccessibilityNodeInfo == null) {
            this.mAccessibilityFocusedHost = null;
            focusedHost.clearAccessibilityFocusNoCallbacks(0);
            provider.performAction(focusedChildId, AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS.getId(), null);
            invalidateRectOnScreen(oldBounds);
            return;
        }
        Rect newBounds = createAccessibilityNodeInfo.getBoundsInScreen();
        if (!oldBounds.equals(newBounds)) {
            oldBounds.union(newBounds);
            invalidateRectOnScreen(oldBounds);
        }
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View child, View source, int changeType) {
        postSendWindowContentChangedCallback((View) Preconditions.checkNotNull(source), changeType);
    }

    @Override // android.view.ViewParent
    public boolean canResolveLayoutDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isLayoutDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getLayoutDirection() {
        return 0;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getTextDirection() {
        return 1;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextAlignment() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextAlignmentResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public int getTextAlignment() {
        return 1;
    }

    public View getCommonPredecessor(View first, View second) {
        if (this.mTempHashSet == null) {
            this.mTempHashSet = new HashSet<>();
        }
        HashSet<View> seen = this.mTempHashSet;
        seen.clear();
        View firstCurrent = first;
        while (firstCurrent != null) {
            seen.add(firstCurrent);
            Object obj = firstCurrent.mParent;
            if (obj instanceof View) {
                firstCurrent = (View) obj;
            } else {
                firstCurrent = null;
            }
        }
        View secondCurrent = second;
        while (secondCurrent != null) {
            if (seen.contains(secondCurrent)) {
                seen.clear();
                return secondCurrent;
            }
            Object obj2 = secondCurrent.mParent;
            if (obj2 instanceof View) {
                secondCurrent = (View) obj2;
            } else {
                secondCurrent = null;
            }
        }
        seen.clear();
        return null;
    }

    void checkThread() {
        Thread current = Thread.currentThread();
        if (this.mThread != current) {
            throw new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views. Expected: " + this.mThread.getName() + " Calling: " + current.getName());
        }
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        if (rectangle == null) {
            return scrollToRectOrFocus(null, immediate);
        }
        rectangle.offset(child.getLeft() - child.getScrollX(), child.getTop() - child.getScrollY());
        boolean scrolled = scrollToRectOrFocus(rectangle, immediate);
        this.mTempRect.set(rectangle);
        this.mTempRect.offset(0, -this.mCurScrollY);
        this.mTempRect.offset(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
        CompatTranslator translator = getCompatTranslator();
        if (translator != null) {
            translator.translateToScreen(this.mTempRect);
        }
        try {
            this.mWindowSession.onRectangleOnScreenRequested(this.mWindow, this.mTempRect);
        } catch (RemoteException e) {
        }
        return scrolled;
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View child, boolean hasTransientState) {
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View target) {
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View child, View target, int nestedScrollAxes) {
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
    }

    @Override // android.view.ViewParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View target, int action, Bundle args) {
        return false;
    }

    public void addScrollCaptureCallback(ScrollCaptureCallback callback) {
        if (this.mRootScrollCaptureCallbacks == null) {
            this.mRootScrollCaptureCallbacks = new HashSet<>();
        }
        this.mRootScrollCaptureCallbacks.add(callback);
    }

    public void removeScrollCaptureCallback(ScrollCaptureCallback callback) {
        HashSet<ScrollCaptureCallback> hashSet = this.mRootScrollCaptureCallbacks;
        if (hashSet != null) {
            hashSet.remove(callback);
            if (this.mRootScrollCaptureCallbacks.isEmpty()) {
                this.mRootScrollCaptureCallbacks = null;
            }
        }
    }

    public void dispatchScrollCaptureRequest(IScrollCaptureResponseListener listener) {
        this.mHandler.obtainMessage(33, listener).sendToTarget();
    }

    private void collectRootScrollCaptureTargets(ScrollCaptureSearchResults results) {
        HashSet<ScrollCaptureCallback> hashSet = this.mRootScrollCaptureCallbacks;
        if (hashSet == null) {
            return;
        }
        Iterator<ScrollCaptureCallback> it = hashSet.iterator();
        while (it.hasNext()) {
            ScrollCaptureCallback cb = it.next();
            Point offset = new Point(this.mView.getLeft(), this.mView.getTop());
            Rect rect = new Rect(0, 0, this.mView.getWidth(), this.mView.getHeight());
            results.addTarget(new ScrollCaptureTarget(this.mView, rect, offset, cb));
        }
    }

    public void setScrollCaptureRequestTimeout(int timeMillis) {
        this.mScrollCaptureRequestTimeout = timeMillis;
    }

    public long getScrollCaptureRequestTimeout() {
        return this.mScrollCaptureRequestTimeout;
    }

    public void handleScrollCaptureRequest(final IScrollCaptureResponseListener listener) {
        final ScrollCaptureSearchResults results = new ScrollCaptureSearchResults(this.mContext.getMainExecutor());
        collectRootScrollCaptureTargets(results);
        View rootView = getView();
        if (rootView != null) {
            Point point = new Point();
            Rect rect = new Rect(0, 0, rootView.getWidth(), rootView.getHeight());
            getChildVisibleRect(rootView, rect, point);
            Objects.requireNonNull(results);
            rootView.dispatchScrollCaptureSearch(rect, point, new Consumer() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda13
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ScrollCaptureSearchResults.this.addTarget((ScrollCaptureTarget) obj);
                }
            });
        }
        Runnable onComplete = new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ViewRootImpl.this.lambda$handleScrollCaptureRequest$10(listener, results);
            }
        };
        results.setOnCompleteListener(onComplete);
        if (!results.isComplete()) {
            ViewRootHandler viewRootHandler = this.mHandler;
            Objects.requireNonNull(results);
            viewRootHandler.postDelayed(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ScrollCaptureSearchResults.this.finish();
                }
            }, getScrollCaptureRequestTimeout());
        }
    }

    /* renamed from: dispatchScrollCaptureSearchResponse */
    public void lambda$handleScrollCaptureRequest$10(IScrollCaptureResponseListener listener, ScrollCaptureSearchResults results) {
        ScrollCaptureTarget selectedTarget = results.getTopResult();
        ScrollCaptureResponse.Builder response = new ScrollCaptureResponse.Builder();
        response.setWindowTitle(getTitle().toString());
        response.setPackageName(this.mContext.getPackageName());
        StringWriter writer = new StringWriter();
        IndentingPrintWriter pw = new IndentingPrintWriter(writer);
        results.dump(pw);
        pw.flush();
        response.addMessage(writer.toString());
        if (selectedTarget == null) {
            response.setDescription("No scrollable targets found in window");
            try {
                listener.onScrollCaptureResponse(response.build());
                return;
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to send scroll capture search result", e);
                return;
            }
        }
        response.setDescription("Connected");
        Rect boundsInWindow = new Rect();
        View containingView = selectedTarget.getContainingView();
        containingView.getLocationInWindow(this.mAttachInfo.mTmpLocation);
        boundsInWindow.set(selectedTarget.getScrollBounds());
        boundsInWindow.offset(this.mAttachInfo.mTmpLocation[0], this.mAttachInfo.mTmpLocation[1]);
        response.setBoundsInWindow(boundsInWindow);
        Rect boundsOnScreen = new Rect();
        this.mView.getLocationOnScreen(this.mAttachInfo.mTmpLocation);
        boundsOnScreen.set(0, 0, this.mView.getWidth(), this.mView.getHeight());
        boundsOnScreen.offset(this.mAttachInfo.mTmpLocation[0], this.mAttachInfo.mTmpLocation[1]);
        response.setWindowBounds(boundsOnScreen);
        ScrollCaptureConnection connection = new ScrollCaptureConnection(this.mView.getContext().getMainExecutor(), selectedTarget);
        response.setConnection(connection);
        try {
            listener.onScrollCaptureResponse(response.build());
        } catch (RemoteException e2) {
            if (DEBUG_SCROLL_CAPTURE) {
                Log.w(TAG, "Failed to send scroll capture search response.", e2);
            }
            connection.close();
        }
    }

    private void reportNextDraw(String reason) {
        if (DEBUG_BLAST) {
            Log.d(this.mTag, "reportNextDraw " + Debug.getCallers(5));
        }
        this.mReportNextDraw = true;
        this.mLastReportNextDrawReason = reason;
    }

    public void setReportNextDraw(boolean syncBuffer, String reason) {
        if (syncBuffer) {
            Log.i(this.mTag, "setReportNextDraw syncBuffer=" + syncBuffer + ", reason=" + reason + ", caller=" + Debug.getCallers(5));
        }
        this.mSyncBuffer = syncBuffer;
        reportNextDraw(reason);
        invalidate();
    }

    public void changeCanvasOpacity(boolean opaque) {
        Log.d(this.mTag, "changeCanvasOpacity: opaque=" + opaque);
        boolean opaque2 = opaque & ((this.mView.mPrivateFlags & 512) == 0);
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setOpaque(opaque2);
        }
    }

    public boolean dispatchUnhandledKeyEvent(KeyEvent event) {
        return this.mUnhandledKeyManager.dispatch(this.mView, event);
    }

    /* loaded from: classes4.dex */
    public class TakenSurfaceHolder extends BaseSurfaceHolder {
        TakenSurfaceHolder() {
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public boolean onAllowLockCanvas() {
            return ViewRootImpl.this.mDrawingAllowed;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onRelayoutContainer() {
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFormat(int format) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceFormat(format);
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setType(int type) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceType(type);
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onUpdateSurface() {
            throw new IllegalStateException("Shouldn't be here");
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return ViewRootImpl.this.mIsCreating;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFixedSize(int width, int height) {
            throw new UnsupportedOperationException("Currently only support sizing from layout");
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(boolean screenOn) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceKeepScreenOn(screenOn);
        }
    }

    /* loaded from: classes4.dex */
    public static class W extends IWindow.Stub {
        private final WeakReference<ViewRootImpl> mViewAncestor;
        private final IWindowSession mWindowSession;

        W(ViewRootImpl viewAncestor) {
            this.mViewAncestor = new WeakReference<>(viewAncestor);
            this.mWindowSession = viewAncestor.mWindowSession;
        }

        @Override // android.view.IWindow
        public void resized(ClientWindowFrames frames, boolean reportDraw, MergedConfiguration mergedConfiguration, InsetsState insetsState, boolean forceLayout, boolean alwaysConsumeSystemBars, int displayId, int syncSeqId, boolean dragResizing) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchResized(frames, reportDraw, mergedConfiguration, insetsState, forceLayout, alwaysConsumeSystemBars, displayId, syncSeqId, dragResizing);
            }
        }

        @Override // android.view.IWindow
        public void insetsControlChanged(InsetsState insetsState, InsetsSourceControl[] activeControls) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchInsetsControlChanged(insetsState, activeControls);
            }
        }

        @Override // android.view.IWindow
        public void showInsets(int types, boolean fromIme, ImeTracker.Token statsToken) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (fromIme) {
                ImeTracing.getInstance().triggerClientDump("ViewRootImpl.W#showInsets", viewAncestor.getInsetsController().getHost().getInputMethodManager(), null);
            }
            if (viewAncestor != null) {
                ImeTracker.forLogging().onProgress(statsToken, 28);
                viewAncestor.showInsets(types, fromIme, statsToken);
            } else {
                ImeTracker.forLogging().onFailed(statsToken, 28);
            }
        }

        @Override // android.view.IWindow
        public void hideInsets(int types, boolean fromIme, ImeTracker.Token statsToken) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (fromIme) {
                ImeTracing.getInstance().triggerClientDump("ViewRootImpl.W#hideInsets", viewAncestor.getInsetsController().getHost().getInputMethodManager(), null);
            }
            if (viewAncestor != null) {
                ImeTracker.forLogging().onProgress(statsToken, 29);
                viewAncestor.hideInsets(types, fromIme, statsToken);
            } else {
                ImeTracker.forLogging().onFailed(statsToken, 29);
            }
        }

        @Override // android.view.IWindow
        public void moved(int newX, int newY) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchMoved(newX, newY);
            }
        }

        @Override // android.view.IWindow
        public void dispatchAppVisibility(boolean visible) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchAppVisibility(visible);
            }
        }

        @Override // android.view.IWindow
        public void dispatchGetNewSurface() {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchGetNewSurface();
            }
        }

        private static int checkCallingPermission(String permission) {
            try {
                return ActivityManager.getService().checkPermission(permission, Binder.getCallingPid(), Binder.getCallingUid());
            } catch (RemoteException e) {
                return -1;
            }
        }

        @Override // android.view.IWindow
        public void executeCommand(String command, String parameters, ParcelFileDescriptor out) {
            View view;
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null && (view = viewAncestor.mView) != null) {
                if (checkCallingPermission(Manifest.permission.DUMP) != 0) {
                    throw new SecurityException("Insufficient permissions to invoke executeCommand() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
                }
                OutputStream clientStream = null;
                try {
                    try {
                        try {
                            clientStream = new ParcelFileDescriptor.AutoCloseOutputStream(out);
                            ViewDebug.dispatchCommand(view, command, parameters, clientStream);
                            clientStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                            if (clientStream != null) {
                                clientStream.close();
                            }
                        }
                    } catch (Throwable th) {
                        if (clientStream != null) {
                            try {
                                clientStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // android.view.IWindow
        public void closeSystemDialogs(String reason) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchCloseSystemDialogs(reason);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperOffsets(float x, float y, float xStep, float yStep, float zoom, boolean sync) {
            if (sync) {
                try {
                    this.mWindowSession.wallpaperOffsetsComplete(asBinder());
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperCommand(String action, int x, int y, int z, Bundle extras, boolean sync) {
            if (sync) {
                try {
                    this.mWindowSession.wallpaperCommandComplete(asBinder(), null);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchDragEvent(DragEvent event) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchDragEvent(event);
            }
        }

        @Override // android.view.IWindow
        public void updatePointerIcon(float x, float y) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.updatePointerIcon(x, y);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWindowShown() {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchWindowShown();
            }
        }

        @Override // android.view.IWindow
        public void requestAppKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchRequestKeyboardShortcuts(receiver, deviceId);
            }
        }

        @Override // android.view.IWindow
        public void requestScrollCapture(IScrollCaptureResponseListener listener) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchScrollCaptureRequest(listener);
            }
        }

        @Override // android.view.IWindow
        public void dispatchSmartClipRemoteRequest(SmartClipRemoteRequestInfo request) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchSmartClipRemoteRequest(request);
            }
        }

        @Override // android.view.IWindow
        public void dispatchSPenGestureEvent(InputEvent[] events) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor == null) {
                return;
            }
            viewAncestor.dispatchSPenGestureEvent(events);
        }

        @Override // android.view.IWindow
        public void dispatchLetterboxDirectionChanged(int direction) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchLetterboxDirectionChanged(direction);
            }
        }

        @Override // android.view.IWindow
        public void dispatchDragEventUpdated(DragEvent event) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.dispatchDragEventUpdated(event);
            }
        }

        @Override // android.view.IWindow
        public void windowFocusInTaskChanged(boolean hasFocus) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            if (viewAncestor != null) {
                viewAncestor.windowFocusInTaskChanged(hasFocus);
            }
        }

        @Override // android.view.IWindow
        public void invalidateForScreenShot(boolean forceMode) {
            ViewRootImpl viewAncestor = this.mViewAncestor.get();
            String tag = viewAncestor.getTag() != null ? viewAncestor.getTag() : ViewRootImpl.TAG;
            Log.i(tag, "invalidateForScreenShot forceMode=" + forceMode);
            viewAncestor.mForceModeInScreenshot = forceMode;
            if (forceMode) {
                viewAncestor.mAttachInfo.mThreadedRenderer.setColorMode(1);
                viewAncestor.mAttachInfo.mThreadedRenderer.setTargetHdrSdrRatio(1.0f);
            } else {
                viewAncestor.mAttachInfo.mThreadedRenderer.setColorMode(2);
                viewAncestor.mAttachInfo.mThreadedRenderer.setTargetHdrSdrRatio(viewAncestor.mRenderHdrSdrRatio);
            }
            if (viewAncestor.mInvalidateForScreenshotRunnable == null) {
                viewAncestor.mInvalidateForScreenshotRunnable = new Runnable() { // from class: android.view.ViewRootImpl.W.1
                    final /* synthetic */ String val$tag;
                    final /* synthetic */ ViewRootImpl val$viewAncestor;

                    AnonymousClass1(String tag2, ViewRootImpl viewAncestor2) {
                        tag = tag2;
                        viewAncestor = viewAncestor2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        Log.i(tag, "invalidateForScreenShot post vri invalidate");
                        viewAncestor.invalidate();
                    }
                };
            }
            viewAncestor2.mAttachInfo.mHandler.post(viewAncestor2.mInvalidateForScreenshotRunnable);
        }

        /* renamed from: android.view.ViewRootImpl$W$1 */
        /* loaded from: classes4.dex */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ String val$tag;
            final /* synthetic */ ViewRootImpl val$viewAncestor;

            AnonymousClass1(String tag2, ViewRootImpl viewAncestor2) {
                tag = tag2;
                viewAncestor = viewAncestor2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.i(tag, "invalidateForScreenShot post vri invalidate");
                viewAncestor.invalidate();
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class CalledFromWrongThreadException extends AndroidRuntimeException {
        public CalledFromWrongThreadException(String msg) {
            super(msg);
        }
    }

    static HandlerActionQueue getRunQueue() {
        ThreadLocal<HandlerActionQueue> threadLocal = sRunQueues;
        HandlerActionQueue rq = threadLocal.get();
        if (rq != null) {
            return rq;
        }
        HandlerActionQueue rq2 = new HandlerActionQueue();
        threadLocal.set(rq2);
        return rq2;
    }

    private void startDragResizing(Rect initialBounds, boolean fullscreen, Rect systemInsets, Rect stableInsets) {
        if (!this.mDragResizing) {
            this.mDragResizing = true;
            if (this.mUseMTRenderer) {
                for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                    this.mWindowCallbacks.get(i).onWindowDragResizeStart(initialBounds, fullscreen, systemInsets, stableInsets);
                }
            }
            this.mFullRedrawNeeded = true;
        }
    }

    private void endDragResizing() {
        if (this.mDragResizing) {
            this.mDragResizing = false;
            if (this.mUseMTRenderer) {
                for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                    this.mWindowCallbacks.get(i).onWindowDragResizeEnd();
                }
            }
            this.mFullRedrawNeeded = true;
        }
    }

    private boolean updateContentDrawBounds() {
        boolean updated = false;
        if (this.mUseMTRenderer) {
            for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
                updated |= this.mWindowCallbacks.get(i).onContentDrawn(this.mWindowAttributes.surfaceInsets.left, this.mWindowAttributes.surfaceInsets.top, this.mWidth, this.mHeight);
            }
        }
        return updated | (this.mDragResizing && this.mReportNextDraw);
    }

    private void requestDrawWindow() {
        if (!this.mUseMTRenderer) {
            return;
        }
        if (this.mReportNextDraw) {
            this.mWindowDrawCountDown = new CountDownLatch(this.mWindowCallbacks.size());
        }
        for (int i = this.mWindowCallbacks.size() - 1; i >= 0; i--) {
            this.mWindowCallbacks.get(i).onRequestDraw(this.mReportNextDraw);
        }
    }

    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    public IBinder getInputToken() {
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver == null) {
            return null;
        }
        return windowInputEventReceiver.getToken();
    }

    public IBinder getWindowToken() {
        return this.mAttachInfo.mWindowToken;
    }

    /* loaded from: classes4.dex */
    public final class AccessibilityInteractionConnectionManager implements AccessibilityManager.AccessibilityStateChangeListener {
        private int mDirectConnectionId = -1;

        AccessibilityInteractionConnectionManager() {
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean enabled) {
            if (enabled) {
                ensureConnection();
                ViewRootImpl.this.setAccessibilityWindowAttributesIfNeeded();
                if (ViewRootImpl.this.mAttachInfo.mHasWindowFocus && ViewRootImpl.this.mView != null) {
                    ViewRootImpl.this.mView.sendAccessibilityEvent(32);
                    View focusedView = ViewRootImpl.this.mView.findFocus();
                    if (focusedView != null && focusedView != ViewRootImpl.this.mView) {
                        focusedView.sendAccessibilityEvent(8);
                    }
                }
                if (ViewRootImpl.this.mAttachInfo.mLeashedParentToken != null) {
                    ViewRootImpl.this.mAccessibilityManager.associateEmbeddedHierarchy(ViewRootImpl.this.mAttachInfo.mLeashedParentToken, ViewRootImpl.this.mLeashToken);
                    return;
                }
                return;
            }
            ensureNoConnection();
            ViewRootImpl.this.mHandler.obtainMessage(21).sendToTarget();
        }

        public void ensureConnection() {
            boolean registered = ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1;
            if (!registered) {
                ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = ViewRootImpl.this.mAccessibilityManager.addAccessibilityInteractionConnection(ViewRootImpl.this.mWindow, ViewRootImpl.this.mLeashToken, ViewRootImpl.this.mContext.getPackageName(), new AccessibilityInteractionConnection(ViewRootImpl.this));
            }
        }

        public void ensureNoConnection() {
            boolean registered = ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1;
            if (registered) {
                ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = -1;
                ViewRootImpl.this.mAccessibilityWindowAttributes = null;
                ViewRootImpl.this.mAccessibilityManager.removeAccessibilityInteractionConnection(ViewRootImpl.this.mWindow);
            }
        }

        public int ensureDirectConnection() {
            if (this.mDirectConnectionId == -1) {
                this.mDirectConnectionId = AccessibilityInteractionClient.addDirectConnection(new AccessibilityInteractionConnection(ViewRootImpl.this), ViewRootImpl.this.mAccessibilityManager);
                ViewRootImpl.this.mAccessibilityManager.notifyAccessibilityStateChanged();
            }
            return this.mDirectConnectionId;
        }

        public void ensureNoDirectConnection() {
            int i = this.mDirectConnectionId;
            if (i != -1) {
                AccessibilityInteractionClient.removeConnection(i);
                this.mDirectConnectionId = -1;
                ViewRootImpl.this.mAccessibilityManager.notifyAccessibilityStateChanged();
            }
        }
    }

    public void doRelayoutForHCT(boolean isNotFromHandler) {
        if (this.mThread == Thread.currentThread()) {
            destroyHardwareResources();
            resetSoftwareCaches(this.mView);
            invalidate();
            requestLayout();
            View view = this.mView;
            if (view != null) {
                forceLayout(view);
                return;
            }
            return;
        }
        if (isNotFromHandler) {
            this.mHCTRelayoutHandler.sendEmptyMessage(1);
        } else {
            Log.d(TAG, "Recursion detected");
        }
    }

    /* loaded from: classes4.dex */
    public final class HCTRelayoutHandler extends Handler {
        public static final int MSG_NEED_TO_DO_RELAYOUT = 1;

        public HCTRelayoutHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ViewRootImpl.this.doRelayoutForHCT(false);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class HighContrastTextManager implements AccessibilityManager.HighTextContrastChangeListener {
        HighContrastTextManager() {
            ThreadedRenderer.setHighContrastText(ViewRootImpl.this.mAccessibilityManager.isHighTextContrastEnabled());
        }

        @Override // android.view.accessibility.AccessibilityManager.HighTextContrastChangeListener
        public void onHighTextContrastStateChanged(boolean enabled) {
            ThreadedRenderer.setHighContrastText(enabled);
            ViewRootImpl.this.doRelayoutForHCT(true);
        }
    }

    /* loaded from: classes4.dex */
    public static final class AccessibilityInteractionConnection extends IAccessibilityInteractionConnection.Stub {
        private final WeakReference<ViewRootImpl> mViewRootImpl;

        AccessibilityInteractionConnection(ViewRootImpl viewRootImpl) {
            this.mViewRootImpl = new WeakReference<>(viewRootImpl);
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfoByAccessibilityId(long accessibilityNodeId, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix, Bundle args) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfoByAccessibilityIdClientThread(accessibilityNodeId, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix, args);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfosResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void performAccessibilityAction(long accessibilityNodeId, int action, Bundle arguments, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().performAccessibilityActionClientThread(accessibilityNodeId, action, arguments, interactionId, callback, flags, interrogatingPid, interrogatingTid);
            } else {
                try {
                    callback.setPerformAccessibilityActionResult(false, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByViewId(long accessibilityNodeId, String viewId, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByViewIdClientThread(accessibilityNodeId, viewId, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByText(long accessibilityNodeId, String text, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByTextClientThread(accessibilityNodeId, text, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfosResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findFocus(long accessibilityNodeId, int focusType, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findFocusClientThread(accessibilityNodeId, focusType, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void focusSearch(long accessibilityNodeId, int direction, Region interactiveRegion, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, int interrogatingPid, long interrogatingTid, MagnificationSpec spec, float[] matrix) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().focusSearchClientThread(accessibilityNodeId, direction, interactiveRegion, interactionId, callback, flags, interrogatingPid, interrogatingTid, spec, matrix);
            } else {
                try {
                    callback.setFindAccessibilityNodeInfoResult(null, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void clearAccessibilityFocus() {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().clearAccessibilityFocusClientThread();
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void notifyOutsideTouch() {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().notifyOutsideTouchClientThread();
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void takeScreenshotOfWindow(int interactionId, ScreenCapture.ScreenCaptureListener listener, IAccessibilityInteractionConnectionCallback callback) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().takeScreenshotOfWindowClientThread(interactionId, listener, callback);
            } else {
                try {
                    callback.sendTakeScreenshotOfWindowError(1, interactionId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void attachAccessibilityOverlayToWindow(SurfaceControl sc) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null) {
                viewRootImpl.getAccessibilityInteractionController().attachAccessibilityOverlayToWindowClientThread(sc);
            }
        }
    }

    public IAccessibilityEmbeddedConnection getAccessibilityEmbeddedConnection() {
        if (this.mAccessibilityEmbeddedConnection == null) {
            this.mAccessibilityEmbeddedConnection = new AccessibilityEmbeddedConnection(this);
        }
        return this.mAccessibilityEmbeddedConnection;
    }

    /* loaded from: classes4.dex */
    public class SendWindowContentChangedAccessibilityEvent implements Runnable {
        public OptionalInt mAction;
        private int mChangeTypes;
        public long mLastEventTimeMillis;
        public StackTraceElement[] mOrigin;
        public View mSource;

        /* synthetic */ SendWindowContentChangedAccessibilityEvent(ViewRootImpl viewRootImpl, SendWindowContentChangedAccessibilityEventIA sendWindowContentChangedAccessibilityEventIA) {
            this();
        }

        private SendWindowContentChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
            this.mAction = OptionalInt.empty();
        }

        @Override // java.lang.Runnable
        public void run() {
            View source = this.mSource;
            this.mSource = null;
            if (source == null) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change has no source");
                return;
            }
            if (AccessibilityManager.getInstance(ViewRootImpl.this.mContext).isEnabled()) {
                this.mLastEventTimeMillis = SystemClock.uptimeMillis();
                AccessibilityEvent event = AccessibilityEvent.obtain();
                event.setEventType(2048);
                event.setContentChangeTypes(this.mChangeTypes);
                if (this.mAction.isPresent()) {
                    event.setAction(this.mAction.getAsInt());
                }
                source.sendAccessibilityEventUnchecked(event);
            } else {
                this.mLastEventTimeMillis = 0L;
            }
            source.resetSubtreeAccessibilityStateChanged();
            this.mChangeTypes = 0;
            this.mAction = OptionalInt.empty();
        }

        public void runOrPost(View source, int changeType) {
            if (ViewRootImpl.this.mHandler.getLooper() != Looper.myLooper()) {
                CalledFromWrongThreadException e = new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views.");
                Log.e(ViewRootImpl.TAG, "Accessibility content change on non-UI thread. Future Android versions will throw an exception.", e);
                ViewRootImpl.this.mHandler.removeCallbacks(this);
                if (this.mSource != null) {
                    run();
                }
            }
            View view = this.mSource;
            if (view != null) {
                View predecessor = ViewRootImpl.this.getCommonPredecessor(view, source);
                if (predecessor != null) {
                    predecessor = predecessor.getSelfOrParentImportantForA11y();
                }
                this.mSource = predecessor != null ? predecessor : source;
                this.mChangeTypes |= changeType;
                int performingAction = ViewRootImpl.this.mAccessibilityManager.getPerformingAction();
                if (performingAction != 0) {
                    if (this.mAction.isEmpty()) {
                        this.mAction = OptionalInt.of(performingAction);
                        return;
                    } else {
                        if (this.mAction.getAsInt() != performingAction) {
                            this.mAction = OptionalInt.of(0);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            this.mSource = source;
            this.mChangeTypes = changeType;
            if (ViewRootImpl.this.mAccessibilityManager.getPerformingAction() != 0) {
                this.mAction = OptionalInt.of(ViewRootImpl.this.mAccessibilityManager.getPerformingAction());
            }
            long timeSinceLastMillis = SystemClock.uptimeMillis() - this.mLastEventTimeMillis;
            long minEventIntevalMillis = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();
            if (timeSinceLastMillis >= minEventIntevalMillis) {
                removeCallbacksAndRun();
            } else {
                ViewRootImpl.this.mHandler.postDelayed(this, minEventIntevalMillis - timeSinceLastMillis);
            }
        }

        public void removeCallbacksAndRun() {
            ViewRootImpl.this.mHandler.removeCallbacks(this);
            run();
        }
    }

    /* loaded from: classes4.dex */
    public static class UnhandledKeyManager {
        private final SparseArray<WeakReference<View>> mCapturedKeys;
        private WeakReference<View> mCurrentReceiver;
        private boolean mDispatched;

        /* synthetic */ UnhandledKeyManager(UnhandledKeyManagerIA unhandledKeyManagerIA) {
            this();
        }

        private UnhandledKeyManager() {
            this.mDispatched = true;
            this.mCapturedKeys = new SparseArray<>();
            this.mCurrentReceiver = null;
        }

        boolean dispatch(View root, KeyEvent event) {
            if (this.mDispatched) {
                return false;
            }
            try {
                Trace.traceBegin(8L, "UnhandledKeyEvent dispatch");
                this.mDispatched = true;
                View consumer = root.dispatchUnhandledKeyEvent(event);
                if (event.getAction() == 0) {
                    int keycode = event.getKeyCode();
                    if (consumer != null && !KeyEvent.isModifierKey(keycode)) {
                        this.mCapturedKeys.put(keycode, new WeakReference<>(consumer));
                    }
                }
                return consumer != null;
            } finally {
                Trace.traceEnd(8L);
            }
        }

        void preDispatch(KeyEvent event) {
            int idx;
            this.mCurrentReceiver = null;
            if (event.getAction() == 1 && (idx = this.mCapturedKeys.indexOfKey(event.getKeyCode())) >= 0) {
                this.mCurrentReceiver = this.mCapturedKeys.valueAt(idx);
                this.mCapturedKeys.removeAt(idx);
            }
        }

        boolean preViewDispatch(KeyEvent event) {
            this.mDispatched = false;
            if (this.mCurrentReceiver == null) {
                this.mCurrentReceiver = this.mCapturedKeys.get(event.getKeyCode());
            }
            WeakReference<View> weakReference = this.mCurrentReceiver;
            if (weakReference == null) {
                return false;
            }
            View target = weakReference.get();
            if (event.getAction() == 1) {
                this.mCurrentReceiver = null;
            }
            if (target != null && target.isAttachedToWindow()) {
                target.onUnhandledKeyEvent(event);
            }
            return true;
        }
    }

    public void setDisplayDecoration(boolean displayDecoration) {
        if (displayDecoration == this.mDisplayDecorationCached) {
            return;
        }
        this.mDisplayDecorationCached = displayDecoration;
        if (this.mSurfaceControl.isValid()) {
            updateDisplayDecoration();
        }
    }

    private void updateDisplayDecoration() {
        this.mTransaction.setDisplayDecoration(this.mSurfaceControl, this.mDisplayDecorationCached).apply();
    }

    public void setSkipScreenshot(boolean skipScreenshot) {
        if (skipScreenshot == this.mSkipScreenshot) {
            return;
        }
        this.mSkipScreenshot = skipScreenshot;
        if (this.mSurfaceControl.isValid()) {
            updateSkipScreenshot();
        }
    }

    private void updateSkipScreenshot() {
        if (this.mWindowAttributes.type < 2000 || (this.mWindowAttributes.privateFlags & 1048576) != 0) {
            Log.e(this.mTag, "updateSkipScreenshot not allowed on this window");
        } else {
            this.mTransaction.setSkipScreenshot(this.mSurfaceControl, this.mSkipScreenshot).apply();
        }
    }

    public void setDisableSuperHdr(boolean disableSuperHdr) {
        if (disableSuperHdr == this.mDisableSuperHdr) {
            return;
        }
        this.mDisableSuperHdr = disableSuperHdr;
        if (this.mSurfaceControl.isValid()) {
            updateDisableSuperHdr();
        }
    }

    private void updateDisableSuperHdr() {
        this.mTransaction.setDisableSuperHDR(this.mSurfaceControl, this.mDisableSuperHdr).apply();
    }

    public void dispatchBlurRegions(float[][] regionCopy, long frameNumber) {
        BLASTBufferQueue bLASTBufferQueue;
        if (DEBUG_BLUR) {
            Log.i(this.mTag, "dispatchBlurRegions " + frameNumber);
        }
        SurfaceControl surfaceControl = getSurfaceControl();
        if (!surfaceControl.isValid()) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        transaction.setBlurRegions(surfaceControl, regionCopy);
        if (useBLAST() && (bLASTBufferQueue = this.mBlastBufferQueue) != null) {
            bLASTBufferQueue.mergeWithNextTransaction(transaction, frameNumber);
        }
    }

    public BackgroundBlurDrawable createBackgroundBlurDrawable() {
        return this.mBlurRegionAggregator.createBackgroundBlurDrawable(this.mContext);
    }

    public BackgroundBlurDrawable createBackgroundBlurDrawable(boolean showDebug) {
        return this.mBlurRegionAggregator.createBackgroundBlurDrawable(this.mContext, showDebug);
    }

    @Override // android.view.ViewParent
    public void onDescendantUnbufferedRequested() {
        this.mUnbufferedInputSource = this.mView.mUnbufferedInputSource;
    }

    void forceDisableBLAST() {
        this.mForceDisableBLAST = true;
    }

    boolean useBLAST() {
        return this.mUseBLASTAdapter && !this.mForceDisableBLAST;
    }

    public int getSurfaceSequenceId() {
        return this.mSurfaceSequenceId;
    }

    public void mergeWithNextTransaction(SurfaceControl.Transaction t, long frameNumber) {
        String str = this.mTag;
        StringBuilder sb = new StringBuilder("mWNT: t=0x");
        String str2 = SemCapabilities.FEATURE_TAG_NULL;
        StringBuilder append = sb.append(t != null ? Long.toHexString(t.mNativeObject) : SemCapabilities.FEATURE_TAG_NULL).append(" mBlastBufferQueue=0x");
        BLASTBufferQueue bLASTBufferQueue = this.mBlastBufferQueue;
        if (bLASTBufferQueue != null) {
            str2 = Long.toHexString(bLASTBufferQueue.mNativeObject);
        }
        Log.i(str, append.append(str2).append(" fn= ").append(frameNumber).append(" mRenderHdrSdrRatio=").append(this.mRenderHdrSdrRatio).append(" caller= ").append(Debug.getCallers(3)).toString());
        BLASTBufferQueue bLASTBufferQueue2 = this.mBlastBufferQueue;
        if (bLASTBufferQueue2 != null) {
            bLASTBufferQueue2.mergeWithNextTransaction(t, frameNumber);
        } else {
            t.apply();
        }
    }

    @Override // android.view.AttachedSurfaceControl
    public SurfaceControl.Transaction buildReparentTransaction(SurfaceControl child) {
        if (this.mSurfaceControl.isValid()) {
            return new SurfaceControl.Transaction().reparent(child, getBoundsLayer());
        }
        return null;
    }

    @Override // android.view.AttachedSurfaceControl
    public boolean applyTransactionOnDraw(SurfaceControl.Transaction t) {
        if (this.mRemoved || !isHardwareEnabled()) {
            t.apply();
        } else {
            this.mPendingTransaction.merge(t);
            this.mHasPendingTransactions = true;
            scheduleTraversals();
        }
        return true;
    }

    public void setTspDeadzone(Bundle deadzone) {
        if (CoreRune.FW_TSP_STATE_CONTROLLER) {
            try {
                this.mWindowSession.setTspDeadzone(this.mWindow, deadzone);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void clearTspDeadzone() {
        if (CoreRune.FW_TSP_STATE_CONTROLLER) {
            try {
                this.mWindowSession.clearTspDeadzone(this.mWindow);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setTspNoteMode(boolean isTspNoteMode) {
        if (!CoreRune.FW_TSP_NOTE_MODE || this.mView == null || !this.mAdded) {
            return;
        }
        try {
            if (CoreRune.SAFE_DEBUG) {
                Slog.d(TAG, "setTspNoteMode is called");
            }
            this.mWindowSession.setTspNoteMode(this.mWindow, isTspNoteMode);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.AttachedSurfaceControl
    public int getBufferTransformHint() {
        return this.mSurfaceControl.getTransformHint();
    }

    @Override // android.view.AttachedSurfaceControl
    public void addOnBufferTransformHintChangedListener(AttachedSurfaceControl.OnBufferTransformHintChangedListener listener) {
        Objects.requireNonNull(listener);
        if (this.mTransformHintListeners.contains(listener)) {
            throw new IllegalArgumentException("attempt to call addOnBufferTransformHintChangedListener() with a previously registered listener");
        }
        this.mTransformHintListeners.add(listener);
    }

    @Override // android.view.AttachedSurfaceControl
    public void removeOnBufferTransformHintChangedListener(AttachedSurfaceControl.OnBufferTransformHintChangedListener listener) {
        Objects.requireNonNull(listener);
        this.mTransformHintListeners.remove(listener);
    }

    private void dispatchTransformHintChanged(int hint) {
        if (this.mTransformHintListeners.isEmpty()) {
            return;
        }
        ArrayList<AttachedSurfaceControl.OnBufferTransformHintChangedListener> listeners = (ArrayList) this.mTransformHintListeners.clone();
        for (int i = 0; i < listeners.size(); i++) {
            AttachedSurfaceControl.OnBufferTransformHintChangedListener listener = listeners.get(i);
            listener.onBufferTransformHintChanged(hint);
        }
    }

    public void requestCompatCameraControl(boolean showControl, boolean transformationApplied, ICompatCameraControlCallback callback) {
        this.mActivityConfigCallback.requestCompatCameraControl(showControl, transformationApplied, callback);
    }

    private void prepareCanvasBlur() {
        if (this.mCanvasBlurEnabled && this.mView != null) {
            if (this.mCanvasDownScale != View.sCanvasDownScale) {
                clearCanvasBlurInstances();
                this.mCanvasDownScale = View.sCanvasDownScale;
                invalidate();
            }
            int width = this.mView.getWidth() / this.mCanvasDownScale;
            int height = this.mView.getHeight() / this.mCanvasDownScale;
            if (width <= 0 || height <= 0) {
                return;
            }
            if (this.mCanvasBlurBitmap == null) {
                this.mCanvasBlurBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            }
            Bitmap bitmap = this.mCanvasBlurBitmap;
            if (bitmap != null) {
                if (bitmap.getHeight() != height || this.mCanvasBlurBitmap.getWidth() != width) {
                    this.mCanvasBlurBitmap.recycle();
                    this.mCanvasBlurBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    this.mBlurCanvas = null;
                }
                if (this.mBlurCanvas == null) {
                    this.mBlurCanvas = new Canvas(this.mCanvasBlurBitmap);
                }
                Trace.traceBegin(8L, "Capturing canvas, scale : " + this.mCanvasDownScale);
                View.sCapturingCanvas = true;
                int restoreCount = this.mBlurCanvas.save();
                Canvas canvas = this.mBlurCanvas;
                int i = this.mCanvasDownScale;
                canvas.scale(1.0f / i, 1.0f / i);
                this.mView.draw(this.mBlurCanvas);
                this.mBlurCanvas.restoreToCount(restoreCount);
                View.sCapturingCanvas = false;
                Trace.traceEnd(8L);
                Trace.traceBegin(8L, "Apply blur bitmap");
                if (this.mBlurFilter == null) {
                    this.mBlurFilter = new SemGfxImageFilter();
                }
                if (this.mBlurRadius != View.sCanvasBlurRadius) {
                    int i2 = View.sCanvasBlurRadius;
                    this.mBlurRadius = i2;
                    this.mBlurFilter.setBlurRadius(i2);
                    if (this.mBlurColorCurveEnabled) {
                        setColorCurve();
                    }
                }
                SemGfxImageFilter semGfxImageFilter = this.mBlurFilter;
                Bitmap bitmap2 = this.mCanvasBlurBitmap;
                semGfxImageFilter.applyToBitmap(bitmap2, bitmap2);
                Trace.traceEnd(8L);
                return;
            }
            return;
        }
        clearCanvasBlurInstances();
    }

    private void setColorCurve() {
        SemBlurInfo.ColorCurve colorCurve = this.mBlurColorCurve;
        if (colorCurve != null) {
            this.mBlurFilter.setProportionalSaturation(colorCurve.mSaturation);
            this.mBlurFilter.setCurveLevel(this.mBlurColorCurve.mCurveBias);
            this.mBlurFilter.setCurveMinX(this.mBlurColorCurve.mMinX);
            this.mBlurFilter.setCurveMaxX(this.mBlurColorCurve.mMaxX);
            this.mBlurFilter.setCurveMinY(this.mBlurColorCurve.mMinY);
            this.mBlurFilter.setCurveMaxY(this.mBlurColorCurve.mMaxY);
        }
    }

    private void clearCanvasBlurInstances() {
        this.mCanvasDownScale = 0;
        this.mBlurRadius = 0;
        Bitmap bitmap = this.mCanvasBlurBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mCanvasBlurBitmap = null;
            if (this.mBlurCanvas != null) {
                this.mBlurCanvas = null;
            }
        }
        this.mBlurFilter = null;
    }

    public boolean wasRelayoutRequested() {
        return this.mRelayoutRequested;
    }

    public void forceWmRelayout() {
        this.mForceNextWindowRelayout = true;
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [17] mView=" + this.mView);
        }
        scheduleTraversals();
    }

    public WindowOnBackInvokedDispatcher getOnBackInvokedDispatcher() {
        return this.mOnBackInvokedDispatcher;
    }

    @Override // android.view.ViewParent
    public OnBackInvokedDispatcher findOnBackInvokedDispatcherForChild(View child, View requester) {
        return getOnBackInvokedDispatcher();
    }

    private void registerBackCallbackOnWindow() {
        this.mOnBackInvokedDispatcher.attachToWindow(this.mWindowSession, this.mWindow);
    }

    private void sendBackKeyEvent(int action) {
        long when = SystemClock.uptimeMillis();
        KeyEvent ev = new KeyEvent(when, when, action, 4, 0, 0, -1, 0, 72, 257);
        enqueueInputEvent(ev);
    }

    private void registerCompatOnBackInvokedCallback() {
        this.mCompatOnBackInvokedCallback = new CompatOnBackInvokedCallback() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda19
            @Override // android.window.CompatOnBackInvokedCallback, android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                ViewRootImpl.this.lambda$registerCompatOnBackInvokedCallback$11();
            }
        };
        if (this.mOnBackInvokedDispatcher.hasImeOnBackInvokedDispatcher()) {
            Log.d(TAG, "Skip registering CompatOnBackInvokedCallback on IME dispatcher");
        } else {
            this.mOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.mCompatOnBackInvokedCallback);
        }
    }

    public /* synthetic */ void lambda$registerCompatOnBackInvokedCallback$11() {
        sendBackKeyEvent(0);
        sendBackKeyEvent(1);
    }

    @Override // android.view.AttachedSurfaceControl
    public void setTouchableRegion(Region r) {
        if (r != null) {
            this.mTouchableRegion = new Region(r);
        } else {
            this.mTouchableRegion = null;
        }
        this.mLastGivenInsets.reset();
        requestLayout();
    }

    public IWindowSession getWindowSession() {
        return this.mWindowSession;
    }

    private void registerCallbacksForSync(boolean syncBuffer, SurfaceSyncGroup surfaceSyncGroup) {
        if (!isHardwareEnabled()) {
            return;
        }
        if (DEBUG_BLAST) {
            Log.i(this.mTag, "registerCallbacksForSync syncBuffer=" + syncBuffer);
        }
        SurfaceControl.Transaction t = new SurfaceControl.Transaction();
        t.merge(this.mPendingTransaction);
        this.mAttachInfo.mThreadedRenderer.registerRtFrameCallback(new AnonymousClass8(t, surfaceSyncGroup, syncBuffer));
    }

    /* renamed from: android.view.ViewRootImpl$8 */
    /* loaded from: classes4.dex */
    public class AnonymousClass8 implements HardwareRenderer.FrameDrawingCallback {
        final /* synthetic */ SurfaceSyncGroup val$surfaceSyncGroup;
        final /* synthetic */ boolean val$syncBuffer;
        final /* synthetic */ SurfaceControl.Transaction val$t;

        AnonymousClass8(SurfaceControl.Transaction transaction, SurfaceSyncGroup surfaceSyncGroup, boolean z) {
            this.val$t = transaction;
            this.val$surfaceSyncGroup = surfaceSyncGroup;
            this.val$syncBuffer = z;
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public void onFrameDraw(long frame) {
        }

        @Override // android.graphics.HardwareRenderer.FrameDrawingCallback
        public HardwareRenderer.FrameCommitCallback onFrameDraw(int syncResult, final long frame) {
            ViewRootImpl.this.mFrameNumber = frame;
            if (ViewRootImpl.DEBUG_BLAST) {
                Log.i(ViewRootImpl.this.mTag, "Received frameDrawingCallback syncResult=" + syncResult + " frameNum=" + frame + MediaMetrics.SEPARATOR);
            }
            ViewRootImpl.this.mergeWithNextTransaction(this.val$t, frame);
            if ((syncResult & 6) != 0) {
                this.val$surfaceSyncGroup.addTransaction(ViewRootImpl.this.mBlastBufferQueue.gatherPendingTransactions(frame));
                this.val$surfaceSyncGroup.markSyncReady();
                return null;
            }
            if (ViewRootImpl.DEBUG_BLAST) {
                Log.i(ViewRootImpl.this.mTag, "Setting up sync and frameCommitCallback");
            }
            if (this.val$syncBuffer) {
                BLASTBufferQueue bLASTBufferQueue = ViewRootImpl.this.mBlastBufferQueue;
                final SurfaceSyncGroup surfaceSyncGroup = this.val$surfaceSyncGroup;
                boolean result = bLASTBufferQueue.syncNextTransaction(new Consumer() { // from class: android.view.ViewRootImpl$8$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ViewRootImpl.AnonymousClass8.this.lambda$onFrameDraw$0(surfaceSyncGroup, (SurfaceControl.Transaction) obj);
                    }
                });
                if (!result) {
                    Log.w(ViewRootImpl.this.mTag, "Unable to syncNextTransaction. Possibly something else is trying to sync?");
                    this.val$surfaceSyncGroup.markSyncReady();
                }
            }
            final SurfaceSyncGroup surfaceSyncGroup2 = this.val$surfaceSyncGroup;
            final boolean z = this.val$syncBuffer;
            return new HardwareRenderer.FrameCommitCallback() { // from class: android.view.ViewRootImpl$8$$ExternalSyntheticLambda1
                @Override // android.graphics.HardwareRenderer.FrameCommitCallback
                public final void onFrameCommit(boolean z2) {
                    ViewRootImpl.AnonymousClass8.this.lambda$onFrameDraw$1(frame, surfaceSyncGroup2, z, z2);
                }
            };
        }

        public /* synthetic */ void lambda$onFrameDraw$0(SurfaceSyncGroup surfaceSyncGroup, SurfaceControl.Transaction transaction) {
            if (CoreRune.FW_SURFACE_DEBUG_APPLY) {
                transaction.addDebugName("syncBuffer_" + surfaceSyncGroup.getName());
                Log.i(ViewRootImpl.this.mTag, "Received ready transaction from native, debugName=" + transaction.mDebugName);
            }
            surfaceSyncGroup.addTransaction(transaction);
            surfaceSyncGroup.markSyncReady();
        }

        public /* synthetic */ void lambda$onFrameDraw$1(long frame, SurfaceSyncGroup surfaceSyncGroup, boolean syncBuffer, boolean didProduceBuffer) {
            if (ViewRootImpl.DEBUG_BLAST) {
                Log.i(ViewRootImpl.this.mTag, "Received frameCommittedCallback lastAttemptedDrawFrameNum=" + frame + " didProduceBuffer=" + didProduceBuffer);
            }
            if (!didProduceBuffer) {
                ViewRootImpl.this.mBlastBufferQueue.clearSyncTransaction();
                surfaceSyncGroup.addTransaction(ViewRootImpl.this.mBlastBufferQueue.gatherPendingTransactions(frame));
                surfaceSyncGroup.markSyncReady();
            } else if (!syncBuffer) {
                surfaceSyncGroup.markSyncReady();
            }
        }
    }

    private void safeguardOverlappingSyncs(final SurfaceSyncGroup activeSurfaceSyncGroup) {
        final SurfaceSyncGroup safeguardSsg = new SurfaceSyncGroup("Safeguard-" + this.mTag);
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
        String safeguardSsgInfo = safeguardSsg.getName() + " @ " + sdf.format(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        String str = this.mTag;
        StringBuilder append = new StringBuilder().append("New safeguard sync group ").append(safeguardSsgInfo).append(", mPreviousSyncSafeguard=");
        SurfaceSyncGroup surfaceSyncGroup = this.mPreviousSyncSafeguard;
        Slog.i(str, append.append(surfaceSyncGroup != null ? surfaceSyncGroup.getName() : SemCapabilities.FEATURE_TAG_NULL).append(", mFirstPreviousSyncSafeguardInfo=").append(this.mFirstPreviousSyncSafeguardInfo).toString());
        safeguardSsg.toggleTimeout(false);
        synchronized (this.mPreviousSyncSafeguardLock) {
            SurfaceSyncGroup surfaceSyncGroup2 = this.mPreviousSyncSafeguard;
            if (surfaceSyncGroup2 != null) {
                activeSurfaceSyncGroup.add(surfaceSyncGroup2, (Runnable) null);
                activeSurfaceSyncGroup.toggleTimeout(false);
                this.mPreviousSyncSafeguard.addSyncCompleteCallback(this.mSimpleExecutor, new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        SurfaceSyncGroup.this.toggleTimeout(true);
                    }
                });
            }
            this.mPreviousSyncSafeguard = safeguardSsg;
            if (this.mFirstPreviousSyncSafeguardInfo == null) {
                this.mFirstPreviousSyncSafeguardInfo = safeguardSsgInfo;
            }
        }
        SurfaceControl.Transaction t = new SurfaceControl.Transaction();
        t.addTransactionCommittedListener(this.mSimpleExecutor, new SurfaceControl.TransactionCommittedListener() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda5
            @Override // android.view.SurfaceControl.TransactionCommittedListener
            public final void onTransactionCommitted() {
                ViewRootImpl.this.lambda$safeguardOverlappingSyncs$13(safeguardSsg);
            }
        });
        activeSurfaceSyncGroup.addTransaction(t);
    }

    public /* synthetic */ void lambda$safeguardOverlappingSyncs$13(SurfaceSyncGroup safeguardSsg) {
        safeguardSsg.markSyncReady();
        synchronized (this.mPreviousSyncSafeguardLock) {
            if (this.mPreviousSyncSafeguard == safeguardSsg) {
                this.mPreviousSyncSafeguard = null;
                this.mFirstPreviousSyncSafeguardInfo = "";
            }
        }
    }

    @Override // android.view.AttachedSurfaceControl
    public SurfaceSyncGroup getOrCreateSurfaceSyncGroup() {
        boolean newSyncGroup = false;
        if (this.mActiveSurfaceSyncGroup == null) {
            SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup(this.mTag);
            this.mActiveSurfaceSyncGroup = surfaceSyncGroup;
            surfaceSyncGroup.setAddedToSyncListener(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ViewRootImpl.this.lambda$getOrCreateSurfaceSyncGroup$15();
                }
            });
            newSyncGroup = true;
        }
        Trace.instant(8L, "getOrCreateSurfaceSyncGroup isNew=" + newSyncGroup + " " + this.mTag);
        if (DEBUG_BLAST) {
            if (newSyncGroup) {
                Log.i(this.mTag, "Creating new active sync group " + this.mActiveSurfaceSyncGroup.getName());
            } else {
                Log.d(this.mTag, "Return already created active sync group " + this.mActiveSurfaceSyncGroup.getName());
            }
        }
        this.mNumPausedForSync++;
        this.mHandler.removeMessages(37);
        this.mHandler.sendEmptyMessageDelayed(37, Build.HW_TIMEOUT_MULTIPLIER * 1000);
        return this.mActiveSurfaceSyncGroup;
    }

    public /* synthetic */ void lambda$getOrCreateSurfaceSyncGroup$15() {
        Runnable runnable = new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                ViewRootImpl.this.lambda$getOrCreateSurfaceSyncGroup$14();
            }
        };
        if (Thread.currentThread() == this.mThread) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    public /* synthetic */ void lambda$getOrCreateSurfaceSyncGroup$14() {
        int i = this.mNumPausedForSync;
        if (i > 0) {
            this.mNumPausedForSync = i - 1;
        }
        if (this.mNumPausedForSync == 0) {
            this.mHandler.removeMessages(37);
            if (!this.mIsInTraversal) {
                scheduleTraversals();
            }
        }
    }

    private void updateSyncInProgressCount(SurfaceSyncGroup syncGroup) {
        if (this.mAttachInfo.mThreadedRenderer == null) {
            return;
        }
        synchronized (sSyncProgressLock) {
            int i = sNumSyncsInProgress;
            sNumSyncsInProgress = i + 1;
            if (i == 0) {
                HardwareRenderer.setRtAnimationsEnabled(false);
            }
        }
        syncGroup.addSyncCompleteCallback(this.mSimpleExecutor, new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ViewRootImpl.lambda$updateSyncInProgressCount$16();
            }
        });
    }

    public static /* synthetic */ void lambda$updateSyncInProgressCount$16() {
        synchronized (sSyncProgressLock) {
            int i = sNumSyncsInProgress - 1;
            sNumSyncsInProgress = i;
            if (i == 0) {
                HardwareRenderer.setRtAnimationsEnabled(true);
            }
        }
    }

    public void addToSync(SurfaceSyncGroup syncable) {
        SurfaceSyncGroup surfaceSyncGroup = this.mActiveSurfaceSyncGroup;
        if (surfaceSyncGroup == null) {
            return;
        }
        surfaceSyncGroup.add(syncable, (Runnable) null);
    }

    @Override // android.view.AttachedSurfaceControl
    public void setChildBoundingInsets(Rect insets) {
        if (insets.left < 0 || insets.top < 0 || insets.right < 0 || insets.bottom < 0) {
            throw new IllegalArgumentException("Negative insets passed to setChildBoundingInsets.");
        }
        this.mChildBoundingInsets.set(insets);
        this.mChildBoundingInsetsChanged = true;
        scheduleTraversals();
    }

    public boolean isSyncBuffer() {
        return this.mSyncBuffer;
    }

    public void updateWindowOpacity(boolean isOpaque) {
        this.mIsWindowOpaque = isOpaque;
        this.mForceUpdateBoundsLayer = true;
        invalidate();
    }

    public boolean isWindowOpaque() {
        return this.mIsWindowOpaque;
    }

    public void requestRecomputeViewAttributes() {
        if (this.mIsInTraversal) {
            this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ViewRootImpl.this.lambda$requestRecomputeViewAttributes$17();
                }
            });
        } else {
            this.mAttachInfo.mRecomputeGlobalAttributes = true;
        }
        if (DEBUG_TRAVERSAL && DEBUG_TRAVERSAL_PACKAGE_NAME.equals(this.mView.getContext().getPackageName())) {
            Log.i(this.mTag, "Traversal, [19] mView=" + this.mView);
        }
        scheduleTraversals();
    }

    public /* synthetic */ void lambda$requestRecomputeViewAttributes$17() {
        this.mAttachInfo.mRecomputeGlobalAttributes = true;
    }

    public void dispatchLetterboxDirectionChanged(int direction) {
        if (CoreRune.SAFE_DEBUG && DEBUG_LAYOUT) {
            Log.v(this.mTag, "dispatchLetterboxDirectionChanged, direction=" + direction);
        }
        this.mHandler.removeMessages(104);
        Message msg = this.mHandler.obtainMessage(104, direction, 0);
        this.mHandler.sendMessage(msg);
    }

    public void handleDispatchLetterboxDirectionChanged(int direction) {
        this.mRequestedLetterboxDirection = direction;
        if (updateAppliedLetterboxDirection(direction) && (this.mView instanceof DecorView)) {
            requestInvalidateRootRenderNode();
            this.mView.invalidate();
            if (CoreRune.SAFE_DEBUG && DEBUG_LAYOUT) {
                Log.v(this.mTag, "handleDispatchLetterboxDirectionChanged, direction=" + direction);
            }
        }
    }

    public boolean updateAppliedLetterboxDirection(int direction) {
        boolean updated = this.mAppliedLetterboxDirection != direction;
        if (updated) {
            this.mAppliedLetterboxDirection = direction;
            Log.v(this.mTag, "updateAppliedLetterboxDirection, direction=" + this.mAppliedLetterboxDirection + ", Caller=" + Debug.getCaller());
        }
        return updated;
    }

    /* loaded from: classes4.dex */
    public final class SmartClipRemoteRequestDispatcherProxy {
        private boolean DEBUG;
        private final String TAG = "SmartClipRemoteRequestDispatcher_ViewRootImpl";
        private Context mContext;
        private SmartClipRemoteRequestDispatcher mDispatcher;
        private SmartClipRemoteRequestDispatcher.ViewRootImplGateway mGateway;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.view.ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1 */
        /* loaded from: classes4.dex */
        public class AnonymousClass1 implements SmartClipRemoteRequestDispatcher.ViewRootImplGateway {
            AnonymousClass1() {
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public void enqueueInputEvent(InputEvent event, InputEventReceiver receiver, int flags, boolean processImmediately) {
                ViewRootImpl.this.enqueueInputEvent(event, receiver, flags, processImmediately);
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public PointF getScaleFactor() {
                return new PointF(1.0f, 1.0f);
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public View getRootView() {
                return ViewRootImpl.this.mView;
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public Handler getHandler() {
                return ViewRootImpl.this.mHandler;
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public ViewRootImpl getViewRootImpl() {
                return ViewRootImpl.this;
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public PointF getTranslatedPoint() {
                return null;
            }

            @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
            public void getTranslatedRectIfNeeded(Rect outRect) {
                CompatTranslator translator = ViewRootImpl.this.getCompatTranslator();
                if (translator != null) {
                    translator.translateToScreen(outRect);
                }
            }
        }

        public SmartClipRemoteRequestDispatcherProxy(Context context) {
            this.DEBUG = false;
            AnonymousClass1 anonymousClass1 = new SmartClipRemoteRequestDispatcher.ViewRootImplGateway() { // from class: android.view.ViewRootImpl.SmartClipRemoteRequestDispatcherProxy.1
                AnonymousClass1() {
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public void enqueueInputEvent(InputEvent event, InputEventReceiver receiver, int flags, boolean processImmediately) {
                    ViewRootImpl.this.enqueueInputEvent(event, receiver, flags, processImmediately);
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public PointF getScaleFactor() {
                    return new PointF(1.0f, 1.0f);
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public View getRootView() {
                    return ViewRootImpl.this.mView;
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public Handler getHandler() {
                    return ViewRootImpl.this.mHandler;
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public ViewRootImpl getViewRootImpl() {
                    return ViewRootImpl.this;
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public PointF getTranslatedPoint() {
                    return null;
                }

                @Override // com.samsung.android.content.smartclip.SmartClipRemoteRequestDispatcher.ViewRootImplGateway
                public void getTranslatedRectIfNeeded(Rect outRect) {
                    CompatTranslator translator = ViewRootImpl.this.getCompatTranslator();
                    if (translator != null) {
                        translator.translateToScreen(outRect);
                    }
                }
            };
            this.mGateway = anonymousClass1;
            this.mContext = context;
            SmartClipRemoteRequestDispatcher smartClipRemoteRequestDispatcher = new SmartClipRemoteRequestDispatcher(context, anonymousClass1);
            this.mDispatcher = smartClipRemoteRequestDispatcher;
            this.DEBUG = smartClipRemoteRequestDispatcher.isDebugMode();
        }

        public void dispatchSmartClipRemoteRequest(SmartClipRemoteRequestInfo request) {
            if (this.DEBUG) {
                Log.i("SmartClipRemoteRequestDispatcher_ViewRootImpl", "dispatchSmartClipRemoteRequest : req id=" + request.mRequestId + " type=" + request.mRequestType + " pid=" + request.mCallerPid + " uid=" + request.mCallerUid);
            }
            switch (request.mRequestType) {
                case 1:
                    this.mDispatcher.checkPermission("com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA", request.mCallerPid, request.mCallerUid);
                    ViewRootImpl.this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.SmartClipRemoteRequestDispatcherProxy.2
                        final /* synthetic */ SmartClipRemoteRequestInfo val$request;

                        AnonymousClass2(SmartClipRemoteRequestInfo request2) {
                            request = request2;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            SmartClipRemoteRequestDispatcherProxy.this.dispatchSmartClipMetaDataExtraction(request);
                        }
                    });
                    return;
                default:
                    this.mDispatcher.dispatchSmartClipRemoteRequest(request2);
                    return;
            }
        }

        /* renamed from: android.view.ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2 */
        /* loaded from: classes4.dex */
        public class AnonymousClass2 implements Runnable {
            final /* synthetic */ SmartClipRemoteRequestInfo val$request;

            AnonymousClass2(SmartClipRemoteRequestInfo request2) {
                request = request2;
            }

            @Override // java.lang.Runnable
            public void run() {
                SmartClipRemoteRequestDispatcherProxy.this.dispatchSmartClipMetaDataExtraction(request);
            }
        }

        public void dispatchSmartClipMetaDataExtraction(SmartClipRemoteRequestInfo request) {
            SmartClipDataExtractionEvent requestInfo = (SmartClipDataExtractionEvent) request.mRequestData;
            requestInfo.mRequestId = request.mRequestId;
            requestInfo.mTargetWindowLayer = request.mTargetWindowLayer;
            if (ViewRootImpl.this.mView != null) {
                SmartClipDataCropperImpl cropper = new SmartClipDataCropperImpl(ViewRootImpl.this.mView.getContext(), requestInfo);
                cropper.doExtractSmartClipData(ViewRootImpl.this.mView);
            } else {
                SmartClipDataCropperImpl cropper2 = new SmartClipDataCropperImpl(this.mContext, requestInfo);
                cropper2.sendExtractionResultToSmartClipService(null);
            }
        }
    }

    public void dispatchSmartClipRemoteRequest(SmartClipRemoteRequestInfo request) {
        SmartClipRemoteRequestDispatcherProxy smartClipRemoteRequestDispatcherProxy = this.mSmartClipDispatcherProxy;
        if (smartClipRemoteRequestDispatcherProxy != null) {
            smartClipRemoteRequestDispatcherProxy.dispatchSmartClipRemoteRequest(request);
        } else {
            Log.e(TAG, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id=" + request.mRequestId + " type=" + request.mRequestType);
        }
    }

    /* loaded from: classes4.dex */
    public static class MotionEventMonitor {
        private static boolean DEBUG = false;
        private static final String TAG = "MotionEventMonitor";
        private ArrayList<OnTouchListener> mListeners = new ArrayList<>();

        /* loaded from: classes4.dex */
        public interface OnTouchListener {
            void onTouch(MotionEvent motionEvent);
        }

        public void registerMotionEventMonitor(OnTouchListener listener) {
            if (this.mListeners.size() > 0) {
                Log.e(TAG, "registerMotionEventMonitor : Just one event listener is allowed");
                return;
            }
            this.mListeners.add(listener);
            if (DEBUG) {
                Log.i(TAG, "registerMotionEventMonitor : Listener count=" + this.mListeners.size());
            }
        }

        public void unregisterMotionEventMonitor(OnTouchListener listener) {
            this.mListeners.remove(listener);
            if (DEBUG) {
                Log.i(TAG, "unregisterMotionEventMonitor : Listener count=" + this.mListeners.size());
            }
        }

        public void dispatchInputEvent(InputEvent event) {
            if (this.mListeners.size() == 0) {
                return;
            }
            if (event instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) event;
                int action = motionEvent.getAction();
                if (DEBUG) {
                    Log.i(TAG, "dispatchInputEvent : action=" + action);
                }
                switch (action) {
                    case 0:
                    case 1:
                    case 3:
                    case 7:
                    case 9:
                    case 10:
                        notifyTouchEvent(motionEvent);
                        return;
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                    case 8:
                    default:
                        return;
                }
            }
            if (DEBUG) {
                Log.i(TAG, "dispatchInputEvent : The event is not instance of MotionEvent");
            }
        }

        private void notifyTouchEvent(MotionEvent event) {
            int cnt = this.mListeners.size();
            Log.i(TAG, "notifyTouchEvent : Listener cnt=" + cnt);
            for (int i = 0; i < cnt; i++) {
                OnTouchListener listener = this.mListeners.get(i);
                if (listener != null) {
                    listener.onTouch(event);
                }
            }
        }
    }

    public MotionEventMonitor getMotionEventMonitor() {
        return this.mMotionEventMonitor;
    }

    public void dispatchSPenGestureEvent(InputEvent[] events) {
        Message msg = this.mHandler.obtainMessage(103);
        msg.obj = events;
        this.mHandler.sendMessage(msg);
    }

    public void handleDispatchSPenGestureEvent(InputEvent[] events) {
        if (events == null) {
            Slog.e(TAG, "dispatchSPenGestureEventInjection : Event is null!");
            return;
        }
        if (CoreRune.SAFE_DEBUG) {
            Slog.d(TAG, "dispatchSPenGestureEventInjection eventCount=" + events.length);
        }
        long firstEventTime = events.length > 0 ? events[0].getEventTime() : -1L;
        for (final InputEvent event : events) {
            if (event != null) {
                Runnable runnable = new Runnable() { // from class: android.view.ViewRootImpl$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewRootImpl.this.lambda$handleDispatchSPenGestureEvent$18(event);
                    }
                };
                long delay = event.getEventTime() - firstEventTime;
                if (delay > 0) {
                    this.mHandler.postDelayed(runnable, delay);
                } else {
                    runnable.run();
                }
            }
        }
    }

    public /* synthetic */ void lambda$handleDispatchSPenGestureEvent$18(InputEvent event) {
        if (CoreRune.SAFE_DEBUG) {
            Slog.d(TAG, "dispatchSPenGestureEventInjection : injecting.. " + event);
        }
        if (event instanceof MotionEvent) {
            translateSPenGestureEventPositionToAppWindow((MotionEvent) event);
        }
        enqueueInputEvent(event, null, 0, true);
    }

    private void translateSPenGestureEventPositionToAppWindow(MotionEvent event) {
        if (this.mWinFrame.left != 0 || this.mWinFrame.top != 0) {
            float x = event.getRawX() - this.mWinFrame.left;
            float y = event.getRawY() - this.mWinFrame.top;
            event.setLocation(x, y);
        }
    }

    public void updateLightCenter(Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setLightCenter(this.mAttachInfo, rect);
        }
    }

    public boolean isWheelScrollingHandled(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.mFlexPanelScrollY = event.getY();
                this.mFlexPanelScrollEnabled = false;
                return true;
            case 1:
            case 3:
                this.mFlexPanelScrollEnabled = false;
                return false;
            case 2:
                if (this.mFlexPanelScrollEnabled) {
                    this.mView.cancelLongPress();
                    return false;
                }
                if (Math.abs(event.getY() - this.mFlexPanelScrollY) > ViewConfiguration.get(this.mContext).getScaledTouchSlop() + 1) {
                    this.mFlexPanelScrollEnabled = true;
                    MotionEvent downEvent = event.copy();
                    downEvent.setDownTime(downEvent.getEventTime());
                    downEvent.setLocation(event.getX(), this.mFlexPanelScrollY);
                    downEvent.setAction(0);
                    this.mView.dispatchPointerEvent(downEvent);
                    return true;
                }
                return true;
            default:
                return false;
        }
    }
}
