package android.view;

import android.content.ClipData;
import android.content.res.Configuration;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.util.Log;
import android.util.MergedConfiguration;
import android.view.InsetsSourceControl;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.window.ClientWindowFrames;
import android.window.OnBackInvokedCallbackInfo;
import android.window.WindowContainerToken;
import com.samsung.android.rune.CoreRune;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes4.dex */
public class WindowlessWindowManager implements IWindowSession {
    private static final String TAG = "WindowlessWindowManager";
    private final Configuration mConfiguration;
    private final IBinder mFocusGrantToken;
    private Configuration mGlobalConfig;
    private final IBinder mHostInputToken;
    private InsetsState mInsetsState;
    private final WindowlessWindowLayout mLayout;
    private final IWindowSession mRealWm;
    final HashMap<IBinder, ResizeCompleteCallback> mResizeCompletionForWindow;
    protected final SurfaceControl mRootSurface;
    final HashMap<IBinder, State> mStateForWindow;
    private final SurfaceSession mSurfaceSession;
    private WindowContainerToken mTaskToken;
    private final MergedConfiguration mTmpConfig;
    private final ClientWindowFrames mTmpFrames;

    /* loaded from: classes4.dex */
    public interface ResizeCompleteCallback {
        void finished(SurfaceControl.Transaction transaction);
    }

    /* loaded from: classes4.dex */
    public class State {
        Rect mAttachedFrame;
        IWindow mClient;
        int mDisplayId;
        IBinder mFocusGrantToken;
        Rect mFrame;
        IBinder mInputChannelToken;
        Region mInputRegion;
        SurfaceControl mLeash;
        WindowManager.LayoutParams mParams;
        SurfaceControl mSurfaceControl;

        State(SurfaceControl sc, WindowManager.LayoutParams p, int displayId, IWindow client, SurfaceControl leash, Rect frame) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.mParams = layoutParams;
            this.mSurfaceControl = sc;
            layoutParams.copyFrom(p);
            this.mDisplayId = displayId;
            this.mClient = client;
            this.mLeash = leash;
            this.mFrame = frame;
        }
    }

    public WindowlessWindowManager(Configuration c, SurfaceControl rootSurface, IBinder hostInputToken) {
        this(c, rootSurface, hostInputToken, null);
    }

    public WindowlessWindowManager(Configuration c, SurfaceControl rootSurface, IBinder hostInputToken, WindowContainerToken taskToken) {
        this(c, rootSurface, hostInputToken, taskToken, null);
    }

    public WindowlessWindowManager(Configuration c, SurfaceControl rootSurface, IBinder hostInputToken, WindowContainerToken taskToken, Configuration globalConfig) {
        this.mStateForWindow = new HashMap<>();
        this.mResizeCompletionForWindow = new HashMap<>();
        this.mSurfaceSession = new SurfaceSession();
        this.mFocusGrantToken = new Binder();
        this.mTmpFrames = new ClientWindowFrames();
        this.mTmpConfig = new MergedConfiguration();
        this.mLayout = new WindowlessWindowLayout();
        this.mTaskToken = taskToken;
        this.mGlobalConfig = globalConfig;
        this.mRootSurface = rootSurface;
        this.mConfiguration = new Configuration(c);
        this.mRealWm = WindowManagerGlobal.getWindowSession();
        this.mHostInputToken = hostInputToken;
    }

    public void setConfiguration(Configuration configuration) {
        this.mConfiguration.setTo(configuration);
    }

    public IBinder getFocusGrantToken(IBinder window) {
        synchronized (this) {
            if (this.mStateForWindow.isEmpty()) {
                return this.mFocusGrantToken;
            }
            State state = this.mStateForWindow.get(window);
            if (state != null) {
                return state.mFocusGrantToken;
            }
            Log.w(TAG, "Failed to get focusGrantToken. Returning null token");
            return null;
        }
    }

    public void setCompletionCallback(IBinder window, ResizeCompleteCallback callback) {
        if (this.mResizeCompletionForWindow.get(window) != null) {
            Log.w(TAG, "Unsupported overlapping resizes");
        }
        this.mResizeCompletionForWindow.put(window, callback);
    }

    @Override // android.view.IWindowSession
    public void performClipDataUpdate(ClipData data) {
    }

    protected void setTouchRegion(IBinder window, Region region) {
        synchronized (this) {
            State state = this.mStateForWindow.get(window);
            if (state == null) {
                return;
            }
            if (Objects.equals(region, state.mInputRegion)) {
                return;
            }
            state.mInputRegion = region != null ? new Region(region) : null;
            if (state.mInputChannelToken != null) {
                try {
                    this.mRealWm.updateInputChannel(state.mInputChannelToken, state.mDisplayId, state.mSurfaceControl, state.mParams.flags, state.mParams.privateFlags, state.mParams.inputFeatures, state.mInputRegion);
                } catch (RemoteException e) {
                    Log.e(TAG, "Failed to update surface input channel: ", e);
                }
            }
        }
    }

    protected SurfaceControl getParentSurface(IWindow window, WindowManager.LayoutParams attrs) {
        synchronized (this) {
            if (this.mStateForWindow.isEmpty()) {
                return this.mRootSurface;
            }
            return this.mStateForWindow.get(attrs.token).mLeash;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x01b8 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01bb A[ORIG_RETURN, RETURN] */
    @Override // android.view.IWindowSession
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int addToDisplay(android.view.IWindow r31, android.view.WindowManager.LayoutParams r32, int r33, int r34, int r35, android.view.InputChannel r36, android.view.InsetsState r37, android.view.InsetsSourceControl.Array r38, android.graphics.Rect r39, float[] r40) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.WindowlessWindowManager.addToDisplay(android.view.IWindow, android.view.WindowManager$LayoutParams, int, int, int, android.view.InputChannel, android.view.InsetsState, android.view.InsetsSourceControl$Array, android.graphics.Rect, float[]):int");
    }

    @Override // android.view.IWindowSession
    public int addToDisplayAsUser(IWindow window, WindowManager.LayoutParams attrs, int viewVisibility, int displayId, int userId, int requestedVisibleTypes, InputChannel outInputChannel, InsetsState outInsetsState, InsetsSourceControl.Array outActiveControls, Rect outAttachedFrame, float[] outSizeCompatScale) {
        return addToDisplay(window, attrs, viewVisibility, displayId, requestedVisibleTypes, outInputChannel, outInsetsState, outActiveControls, outAttachedFrame, outSizeCompatScale);
    }

    @Override // android.view.IWindowSession
    public int addToDisplayWithoutInputChannel(IWindow window, WindowManager.LayoutParams attrs, int viewVisibility, int layerStackId, InsetsState insetsState, Rect outAttachedFrame, float[] outSizeCompatScale) {
        return 0;
    }

    @Override // android.view.IWindowSession
    public void remove(IWindow window) throws RemoteException {
        State state;
        WindowContainerToken windowContainerToken;
        if (CoreRune.MW_CAPTION_SHELL && (windowContainerToken = this.mTaskToken) != null) {
            this.mRealWm.removeWithTaskToken(window, windowContainerToken);
        } else {
            this.mRealWm.remove(window);
        }
        synchronized (this) {
            state = this.mStateForWindow.remove(window.asBinder());
        }
        if (state == null) {
            throw new IllegalArgumentException("Invalid window token (never added or removed already)");
        }
        removeSurface(state.mSurfaceControl);
        removeSurface(state.mLeash);
    }

    @Override // android.view.IWindowSession
    public void removeWithTaskToken(IWindow window, WindowContainerToken taskToken) throws RemoteException {
    }

    protected void removeSurface(SurfaceControl sc) {
        SurfaceControl.Transaction t = new SurfaceControl.Transaction();
        try {
            t.remove(sc).apply();
            t.close();
        } catch (Throwable th) {
            try {
                t.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private boolean isOpaque(WindowManager.LayoutParams attrs) {
        if ((attrs.surfaceInsets != null && attrs.surfaceInsets.left != 0) || attrs.surfaceInsets.top != 0 || attrs.surfaceInsets.right != 0 || attrs.surfaceInsets.bottom != 0) {
            return false;
        }
        return !PixelFormat.formatHasAlpha(attrs.format);
    }

    private boolean isInTouchModeInternal(int displayId) {
        try {
            return WindowManagerGlobal.getWindowManagerService().isInTouchMode(displayId);
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to check if the window is in touch mode", e);
            return false;
        }
    }

    protected IBinder getWindowBinder(View rootView) {
        ViewRootImpl root = rootView.getViewRootImpl();
        if (root == null) {
            return null;
        }
        return root.mWindow.asBinder();
    }

    protected SurfaceControl getSurfaceControl(View rootView) {
        ViewRootImpl root = rootView.getViewRootImpl();
        if (root == null) {
            return null;
        }
        return getSurfaceControl(root.mWindow);
    }

    protected SurfaceControl getSurfaceControl(IWindow window) {
        State s = this.mStateForWindow.get(window.asBinder());
        if (s == null) {
            return null;
        }
        return s.mSurfaceControl;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // android.view.IWindowSession
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int relayout(android.view.IWindow r29, android.view.WindowManager.LayoutParams r30, int r31, int r32, int r33, int r34, int r35, int r36, android.window.ClientWindowFrames r37, android.util.MergedConfiguration r38, android.view.SurfaceControl r39, android.view.InsetsState r40, android.view.InsetsSourceControl.Array r41, android.os.Bundle r42) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.WindowlessWindowManager.relayout(android.view.IWindow, android.view.WindowManager$LayoutParams, int, int, int, int, int, int, android.window.ClientWindowFrames, android.util.MergedConfiguration, android.view.SurfaceControl, android.view.InsetsState, android.view.InsetsSourceControl$Array, android.os.Bundle):int");
    }

    @Override // android.view.IWindowSession
    public void relayoutAsync(IWindow window, WindowManager.LayoutParams inAttrs, int requestedWidth, int requestedHeight, int viewFlags, int flags, int seq, int lastSyncSeqId) {
        relayout(window, inAttrs, requestedWidth, requestedHeight, viewFlags, flags, seq, lastSyncSeqId, null, null, null, null, null, null);
    }

    @Override // android.view.IWindowSession
    public boolean outOfMemory(IWindow window) {
        return false;
    }

    @Override // android.view.IWindowSession
    public void setInsets(IWindow window, int touchableInsets, Rect contentInsets, Rect visibleInsets, Region touchableRegion) {
        setTouchRegion(window.asBinder(), touchableRegion);
    }

    @Override // android.view.IWindowSession
    public void clearTouchableRegion(IWindow window) {
        setTouchRegion(window.asBinder(), null);
    }

    @Override // android.view.IWindowSession
    public void finishDrawing(IWindow window, SurfaceControl.Transaction postDrawTransaction, int seqId) {
        State state;
        synchronized (this) {
            ResizeCompleteCallback c = this.mResizeCompletionForWindow.get(window.asBinder());
            if (CoreRune.SAFE_DEBUG && (state = this.mStateForWindow.get(window)) != null) {
                Log.d(TAG, "finishDrawing, seqId=" + seqId + ", sc=" + state.mSurfaceControl + ", hasCallback=" + (c != null));
            }
            if (c == null) {
                postDrawTransaction.apply();
            } else {
                c.finished(postDrawTransaction);
                this.mResizeCompletionForWindow.remove(window.asBinder());
            }
        }
    }

    @Override // android.view.IWindowSession
    public boolean performHapticFeedback(int effectId, boolean always) {
        try {
            return this.mRealWm.performHapticFeedback(effectId, always);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.view.IWindowSession
    public void performHapticFeedbackAsync(int effectId, boolean always) {
        performHapticFeedback(effectId, always);
    }

    @Override // android.view.IWindowSession
    public IBinder performDrag(IWindow window, int flags, SurfaceControl surface, int touchSource, float touchX, float touchY, float thumbCenterX, float thumbCenterY, ClipData data) {
        return null;
    }

    @Override // android.view.IWindowSession
    public IBinder performDragWithArea(IWindow window, int flags, SurfaceControl surface, int touchSource, float touchX, float touchY, float thumbCenterX, float thumbCenterY, ClipData data, RectF selectedArea, Point viewLocation) {
        return null;
    }

    @Override // android.view.IWindowSession
    public void reportDropResult(IWindow window, boolean consumed) {
    }

    @Override // android.view.IWindowSession
    public void cancelDragAndDrop(IBinder dragToken, boolean skipAnimation) {
    }

    @Override // android.view.IWindowSession
    public void dragRecipientEntered(IWindow window) {
    }

    @Override // android.view.IWindowSession
    public void dragRecipientExited(IWindow window) {
    }

    @Override // android.view.IWindowSession
    public void setWallpaperPosition(IBinder windowToken, float x, float y, float xstep, float ystep) {
    }

    @Override // android.view.IWindowSession
    public void setWallpaperZoomOut(IBinder windowToken, float zoom) {
    }

    @Override // android.view.IWindowSession
    public void setShouldZoomOutWallpaper(IBinder windowToken, boolean shouldZoom) {
    }

    @Override // android.view.IWindowSession
    public void wallpaperOffsetsComplete(IBinder window) {
    }

    @Override // android.view.IWindowSession
    public void setWallpaperDisplayOffset(IBinder windowToken, int x, int y) {
    }

    @Override // android.view.IWindowSession
    public Bundle sendWallpaperCommand(IBinder window, String action, int x, int y, int z, Bundle extras, boolean sync) {
        return null;
    }

    @Override // android.view.IWindowSession
    public void wallpaperCommandComplete(IBinder window, Bundle result) {
    }

    @Override // android.view.IWindowSession
    public void onRectangleOnScreenRequested(IBinder token, Rect rectangle) {
    }

    @Override // android.view.IWindowSession
    public IWindowId getWindowId(IBinder window) {
        return null;
    }

    @Override // android.view.IWindowSession
    public void pokeDrawLock(IBinder window) {
    }

    @Override // android.view.IWindowSession
    public boolean startMovingTask(IWindow window, float startX, float startY) {
        return false;
    }

    @Override // android.view.IWindowSession
    public void finishMovingTask(IWindow window) {
    }

    @Override // android.view.IWindowSession
    public void updatePointerIcon(IWindow window) {
    }

    @Override // android.view.IWindowSession
    public void updateTapExcludeRegion(IWindow window, Region region) {
    }

    @Override // android.view.IWindowSession
    public void updateRequestedVisibleTypes(IWindow window, int requestedVisibleTypes) {
    }

    @Override // android.view.IWindowSession
    public void reportSystemGestureExclusionChanged(IWindow window, List<Rect> exclusionRects) {
    }

    @Override // android.view.IWindowSession
    public void reportKeepClearAreasChanged(IWindow window, List<Rect> restrictedRects, List<Rect> unrestrictedRects) {
    }

    @Override // android.view.IWindowSession
    public void grantInputChannel(int displayId, SurfaceControl surface, IWindow window, IBinder hostInputToken, int flags, int privateFlags, int inputFeatures, int type, IBinder windowToken, IBinder focusGrantToken, String inputHandleName, InputChannel outInputChannel) {
    }

    @Override // android.view.IWindowSession
    public void grantInputChannelWithTaskToken(int displayId, SurfaceControl surface, IWindow window, IBinder hostInputToken, int flags, int privateFlags, int inputFeatures, int type, IBinder windowToken, IBinder focusGrantToken, String inputHandleName, InputChannel outInputChannel, int surfaceInset, WindowContainerToken taskToken) {
    }

    private void updateTooltipBounds(WindowManager.LayoutParams attrs, ClientWindowFrames frames) {
        Rect taskBounds = this.mConfiguration.windowConfiguration.getBounds();
        Rect maxBounds = this.mConfiguration.windowConfiguration.getMaxBounds();
        if ((attrs.multiwindowFlags & 2) != 0) {
            if (frames.frame.left < maxBounds.left) {
                frames.frame.offset(maxBounds.left - frames.frame.left, 0);
                return;
            }
            int popupStartX = Math.min(taskBounds.left + ((taskBounds.width() - frames.parentFrame.width()) / 2), maxBounds.width() - frames.parentFrame.width());
            if (frames.frame.right + popupStartX > maxBounds.right) {
                frames.frame.offset(maxBounds.right - (frames.frame.right + popupStartX), 0);
                return;
            }
            return;
        }
        if (taskBounds.left + frames.frame.left + attrs.surfaceInsets.left < maxBounds.left) {
            frames.frame.offset(maxBounds.left - ((taskBounds.left + frames.frame.left) + attrs.surfaceInsets.left), 0);
        } else if (taskBounds.left + frames.frame.right + attrs.surfaceInsets.right > maxBounds.right) {
            frames.frame.offset(maxBounds.right - ((taskBounds.left + frames.frame.right) + attrs.surfaceInsets.right), 0);
        }
    }

    @Override // android.view.IWindowSession
    public void updateInputChannel(IBinder channelToken, int displayId, SurfaceControl surface, int flags, int privateFlags, int inputFeatures, Region region) {
    }

    @Override // android.view.IWindowSession
    public void updateInputChannelWithPointerRegion(IBinder channelToken, int displayId, SurfaceControl surface, int flags, int privateFlags, int inputFeatures, Region region, Region pointerRegion) {
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // android.view.IWindowSession
    public void grantEmbeddedWindowFocus(IWindow callingWindow, IBinder targetInputToken, boolean grantFocus) {
    }

    @Override // android.view.IWindowSession
    public void generateDisplayHash(IWindow window, Rect boundsInWindow, String hashAlgorithm, RemoteCallback callback) {
    }

    @Override // android.view.IWindowSession
    public void setOnBackInvokedCallbackInfo(IWindow iWindow, OnBackInvokedCallbackInfo callbackInfo) throws RemoteException {
    }

    @Override // android.view.IWindowSession
    public boolean dropForAccessibility(IWindow window, int x, int y) {
        return false;
    }

    public void setInsetsState(InsetsState state) {
        Configuration configuration;
        this.mInsetsState = state;
        for (State s : this.mStateForWindow.values()) {
            try {
                this.mTmpFrames.frame.set(0, 0, s.mParams.width, s.mParams.height);
                this.mTmpFrames.displayFrame.set(this.mTmpFrames.frame);
                if (CoreRune.MW_CAPTION_SHELL && (configuration = this.mGlobalConfig) != null) {
                    this.mTmpConfig.setConfiguration(configuration, this.mConfiguration);
                } else {
                    MergedConfiguration mergedConfiguration = this.mTmpConfig;
                    Configuration configuration2 = this.mConfiguration;
                    mergedConfiguration.setConfiguration(configuration2, configuration2);
                }
                s.mClient.resized(this.mTmpFrames, false, this.mTmpConfig, state, false, false, s.mDisplayId, Integer.MAX_VALUE, false);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // android.view.IWindowSession
    public boolean cancelDraw(IWindow window) {
        return false;
    }

    @Override // android.view.IWindowSession
    public boolean transferEmbeddedTouchFocusToHost(IWindow window) {
        Log.e(TAG, "Received request to transferEmbeddedTouch focus on WindowlessWindowManager we shouldn't get here!");
        return false;
    }

    @Override // android.view.IWindowSession
    public void setTspDeadzone(IWindow window, Bundle deadzone) {
    }

    @Override // android.view.IWindowSession
    public void clearTspDeadzone(IWindow window) {
    }

    @Override // android.view.IWindowSession
    public void setTspNoteMode(IWindow window, boolean isTspNoteMode) {
    }

    @Override // android.view.IWindowSession
    public void setKeyguardWallpaperTouchAllowed(IWindow window, boolean allowed) {
    }
}
