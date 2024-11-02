package com.android.wm.shell.transition;

import android.R;
import android.app.ActivityTaskManager;
import android.app.IApplicationThread;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseIntArray;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.window.ITransitionPlayer;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import android.window.WindowContainerTransactionCallback;
import android.window.WindowOrganizer;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.ExternalInterfaceBinder;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.RemoteCallable;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.nano.Transition;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.DefaultTransitionHandler;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.transition.change.ChangeTransitionProvider;
import com.android.wm.shell.util.TransitionUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Transitions implements RemoteCallable, ShellCommandHandler.ShellCommandActionHandler {
    public static final boolean ENABLE_SHELL_TRANSITIONS;
    public static final boolean SHELL_TRANSITIONS_ROTATION;
    public final ShellExecutor mAnimExecutor;
    public final ChangeTransitionProvider mChangeTransitProvider;
    public final Context mContext;
    public final DisplayController mDisplayController;
    public final ArrayList mHandlers;
    public final ShellTransitionImpl mImpl;
    public boolean mIsRegistered;
    public final ShellExecutor mMainExecutor;
    public final MultiTaskingTransitionProvider mMultiTaskingTransitProvider;
    public final ArrayList mObservers;
    public final WindowOrganizer mOrganizer;
    public final ArrayList mPendingTransitions;
    public final TransitionPlayerImpl mPlayerImpl;
    public final ArrayList mReadyDuringSync;
    public StageCoordinator.RecentsTransitionCallback mRecentTransitionCallback;
    public final RemoteTransitionHandler mRemoteTransitionHandler;
    public final ArrayList mRunWhenIdleQueue;
    public final ShellCommandHandler mShellCommandHandler;
    public final ShellController mShellController;
    public final SleepHandler mSleepHandler;
    public final Tracer mTracer;
    public final ArrayList mTracks;
    public float mTransitionAnimationScaleSetting;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ActiveTransition {
        public boolean mAborted;
        public SurfaceControl.Transaction mFinishT;
        public TransitionHandler mHandler;
        public TransitionInfo mInfo;
        public ArrayList mMerged;
        public long mPendingTime;
        public SurfaceControl.Transaction mStartT;
        public IBinder mToken;
        public ArrayList mTransfer;

        private ActiveTransition() {
        }

        public /* synthetic */ ActiveTransition(int i) {
            this();
        }

        public final int getTrack() {
            TransitionInfo transitionInfo = this.mInfo;
            if (transitionInfo != null) {
                return transitionInfo.getTrack();
            }
            return -1;
        }

        public final String toString() {
            TransitionInfo transitionInfo = this.mInfo;
            if (transitionInfo != null && transitionInfo.getDebugId() >= 0) {
                return "(#" + this.mInfo.getDebugId() + ")" + this.mToken + "@" + getTrack();
            }
            return this.mToken.toString() + "@" + getTrack();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IShellTransitionsImpl extends IShellTransitions$Stub implements ExternalInterfaceBinder {
        public Transitions mTransitions;

        public IShellTransitionsImpl(Transitions transitions) {
            this.mTransitions = transitions;
        }

        @Override // com.android.wm.shell.common.ExternalInterfaceBinder
        public final void invalidate() {
            this.mTransitions = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingsObserver extends ContentObserver {
        public SettingsObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            super.onChange(z);
            Transitions transitions = Transitions.this;
            boolean z2 = Transitions.ENABLE_SHELL_TRANSITIONS;
            Context context = transitions.mContext;
            transitions.mTransitionAnimationScaleSetting = WindowManager.fixScale(Settings.Global.getFloat(context.getContentResolver(), "transition_animation_scale", context.getResources().getFloat(R.dimen.config_screenBrightnessDimFloat)));
            ((HandlerExecutor) Transitions.this.mMainExecutor).execute(new Transitions$$ExternalSyntheticLambda1(this, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ShellTransitionImpl implements ShellTransitions {
        public /* synthetic */ ShellTransitionImpl(Transitions transitions, int i) {
            this(transitions);
        }

        private ShellTransitionImpl(Transitions transitions) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Track {
        public ActiveTransition mActiveTransition;
        public final ArrayList mReadyTransitions;

        public /* synthetic */ Track(int i) {
            this();
        }

        private Track() {
            this.mReadyTransitions = new ArrayList();
            this.mActiveTransition = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TransitionFinishCallback {
        void onTransitionFinished(WindowContainerTransaction windowContainerTransaction, WindowContainerTransactionCallback windowContainerTransactionCallback);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TransitionObserver {
        void onTransitionFinished(IBinder iBinder);

        void onTransitionMerged(IBinder iBinder, IBinder iBinder2);

        void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2);

        void onTransitionStarting();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TransitionPlayerImpl extends ITransitionPlayer.Stub {
        public /* synthetic */ TransitionPlayerImpl(Transitions transitions, int i) {
            this();
        }

        public final void onTransitionReady(final IBinder iBinder, final TransitionInfo transitionInfo, final SurfaceControl.Transaction transaction, final SurfaceControl.Transaction transaction2) {
            ((HandlerExecutor) Transitions.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.transition.Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Transitions.TransitionPlayerImpl transitionPlayerImpl = Transitions.TransitionPlayerImpl.this;
                    Transitions.this.onTransitionReady(iBinder, transitionInfo, transaction, transaction2);
                }
            });
        }

        public final void requestStartTransition(final IBinder iBinder, final TransitionRequestInfo transitionRequestInfo) {
            ((HandlerExecutor) Transitions.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.transition.Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    WindowContainerTransaction windowContainerTransaction;
                    Transitions.TransitionPlayerImpl transitionPlayerImpl = Transitions.TransitionPlayerImpl.this;
                    IBinder iBinder2 = iBinder;
                    TransitionRequestInfo transitionRequestInfo2 = transitionRequestInfo;
                    Transitions transitions = Transitions.this;
                    transitions.getClass();
                    int i = 0;
                    if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -2076257741, 0, "Transition requested: %s %s", String.valueOf(iBinder2), String.valueOf(transitionRequestInfo2));
                    }
                    if (!transitions.isTransitionKnown(iBinder2)) {
                        Transitions.ActiveTransition activeTransition = new Transitions.ActiveTransition(i);
                        WindowContainerTransaction windowContainerTransaction2 = null;
                        if (transitionRequestInfo2.getType() == 12) {
                            transitions.mSleepHandler.handleRequest(iBinder2, transitionRequestInfo2);
                            activeTransition.mHandler = transitions.mSleepHandler;
                            windowContainerTransaction = null;
                        } else {
                            int size = transitions.mHandlers.size() - 1;
                            windowContainerTransaction = null;
                            while (true) {
                                if (size < 0) {
                                    break;
                                }
                                windowContainerTransaction = ((Transitions.TransitionHandler) transitions.mHandlers.get(size)).handleRequest(iBinder2, transitionRequestInfo2);
                                if (windowContainerTransaction != null) {
                                    activeTransition.mHandler = (Transitions.TransitionHandler) transitions.mHandlers.get(size);
                                    break;
                                }
                                size--;
                            }
                            if (transitionRequestInfo2.getDisplayChange() != null) {
                                TransitionRequestInfo.DisplayChange displayChange = transitionRequestInfo2.getDisplayChange();
                                if (displayChange.getEndRotation() != displayChange.getStartRotation()) {
                                    if (windowContainerTransaction == null) {
                                        windowContainerTransaction = new WindowContainerTransaction();
                                    }
                                    DisplayController displayController = transitions.mDisplayController;
                                    int displayId = displayChange.getDisplayId();
                                    int startRotation = displayChange.getStartRotation();
                                    int endRotation = displayChange.getEndRotation();
                                    synchronized (displayController.mDisplays) {
                                        DisplayController.DisplayRecord displayRecord = (DisplayController.DisplayRecord) displayController.mDisplays.get(displayId);
                                        if (displayRecord == null) {
                                            Slog.w("DisplayController", "Skipping Display rotate on non-added display.");
                                        } else {
                                            DisplayLayout displayLayout = displayRecord.mDisplayLayout;
                                            if (displayLayout != null) {
                                                displayLayout.rotateTo(endRotation, displayRecord.mContext.getResources());
                                            }
                                            displayController.mChangeController.dispatchOnDisplayChange(displayId, startRotation, endRotation, null, windowContainerTransaction);
                                        }
                                    }
                                }
                            }
                        }
                        if (transitionRequestInfo2.getType() == 8 && transitionRequestInfo2.getTriggerTask() != null && transitionRequestInfo2.getTriggerTask().getWindowingMode() == 5) {
                            if (windowContainerTransaction == null) {
                                windowContainerTransaction = new WindowContainerTransaction();
                            }
                            windowContainerTransaction.setWindowingMode(transitionRequestInfo2.getTriggerTask().token, 1);
                            windowContainerTransaction.setBounds(transitionRequestInfo2.getTriggerTask().token, (Rect) null);
                        }
                        WindowOrganizer windowOrganizer = transitions.mOrganizer;
                        if (windowContainerTransaction == null || !windowContainerTransaction.isEmpty()) {
                            windowContainerTransaction2 = windowContainerTransaction;
                        }
                        windowOrganizer.startTransition(iBinder2, windowContainerTransaction2);
                        activeTransition.mToken = iBinder2;
                        transitions.mPendingTransitions.add(0, activeTransition);
                        if (CoreRune.MW_SHELL_TRANSITION) {
                            activeTransition.mPendingTime = System.currentTimeMillis();
                            return;
                        }
                        return;
                    }
                    throw new RuntimeException("Transition already started " + iBinder2);
                }
            });
        }

        public final void transitionAborted(final IBinder iBinder) {
            ((HandlerExecutor) Transitions.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.transition.Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Transitions.TransitionPlayerImpl transitionPlayerImpl = Transitions.TransitionPlayerImpl.this;
                    IBinder iBinder2 = iBinder;
                    Transitions transitions = Transitions.this;
                    boolean z = Transitions.ENABLE_SHELL_TRANSITIONS;
                    transitions.getClass();
                    if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
                        ArrayList arrayList = transitions.mPendingTransitions;
                        int i = -1;
                        int size = arrayList.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            }
                            if (((Transitions.ActiveTransition) arrayList.get(size)).mToken == iBinder2) {
                                i = size;
                                break;
                            }
                            size--;
                        }
                        if (i < 0) {
                            Log.e("ShellTransitions", "Got transitionAborted for non-pending transition " + iBinder2 + ". expecting one of " + Arrays.toString(arrayList.stream().map(new Transitions$$ExternalSyntheticLambda0(1)).toArray()));
                            return;
                        }
                        arrayList.remove(i);
                    }
                }
            });
        }

        private TransitionPlayerImpl() {
        }
    }

    static {
        boolean z = true;
        boolean z2 = SystemProperties.getBoolean("persist.wm.debug.shell_transit", true);
        ENABLE_SHELL_TRANSITIONS = z2;
        if (!z2 || !SystemProperties.getBoolean("persist.wm.debug.shell_transit_rotate", false)) {
            z = false;
        }
        SHELL_TRANSITIONS_ROTATION = z;
    }

    public Transitions(Context context, ShellInit shellInit, ShellController shellController, WindowOrganizer windowOrganizer, TransactionPool transactionPool, DisplayController displayController, ShellExecutor shellExecutor, Handler handler, ShellExecutor shellExecutor2) {
        this(context, shellInit, shellController, windowOrganizer, transactionPool, displayController, shellExecutor, handler, shellExecutor2, null, new RootTaskDisplayAreaOrganizer(shellExecutor, context));
    }

    public static boolean hasDuplicatedOpenTypeChanges(TransitionInfo transitionInfo) {
        if (TransitionUtil.isClosingType(transitionInfo.getType())) {
            return false;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            if (TransitionUtil.isOpeningType(change.getMode()) && change.getConfiguration().windowConfiguration.isSplitScreen()) {
                sparseIntArray.put(change.getConfiguration().windowConfiguration.getStageType(), 1);
            }
        }
        if (sparseIntArray.size() <= 1) {
            return false;
        }
        Log.d("ShellTransitions", "duplicated split open changes in default transition");
        return true;
    }

    public static boolean isEmptyExceptZombie(ArrayList arrayList) {
        boolean z;
        Iterator it = arrayList.iterator();
        do {
            z = true;
            if (!it.hasNext()) {
                return true;
            }
            ActiveTransition activeTransition = (ActiveTransition) it.next();
            activeTransition.getClass();
            if (System.currentTimeMillis() - activeTransition.mPendingTime <= 10000) {
                z = false;
            }
        } while (z);
        return false;
    }

    public static void setRunningRemoteTransitionDelegate(IApplicationThread iApplicationThread) {
        if (iApplicationThread == null) {
            return;
        }
        try {
            ActivityTaskManager.getService().setRunningRemoteTransitionDelegate(iApplicationThread);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        } catch (SecurityException unused) {
            Log.e("ShellTransitions", "Unable to boost animation process. This should only happen during unit tests");
        }
    }

    public final void addHandler(TransitionHandler transitionHandler) {
        ArrayList arrayList = this.mHandlers;
        if (!arrayList.isEmpty()) {
            arrayList.add(transitionHandler);
            transitionHandler.setAnimScaleSetting(this.mTransitionAnimationScaleSetting);
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -1826225975, 0, "addHandler: %s", transitionHandler.getClass().getSimpleName());
                return;
            }
            return;
        }
        throw new RuntimeException("Unexpected handler added prior to initialization, please use ShellInit callbacks to ensure proper ordering");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0020, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchReady(com.android.wm.shell.transition.Transitions.ActiveTransition r18) {
        /*
            Method dump skipped, instructions count: 793
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.Transitions.dispatchReady(com.android.wm.shell.transition.Transitions$ActiveTransition):boolean");
    }

    public final Pair dispatchRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo, TransitionHandler transitionHandler) {
        WindowContainerTransaction handleRequest;
        ArrayList arrayList = this.mHandlers;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                if (arrayList.get(size) != transitionHandler && (handleRequest = ((TransitionHandler) arrayList.get(size)).handleRequest(iBinder, transitionRequestInfo)) != null) {
                    return new Pair((TransitionHandler) arrayList.get(size), handleRequest);
                }
            } else {
                return null;
            }
        }
    }

    public final TransitionHandler dispatchTransition(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, TransitionFinishCallback transitionFinishCallback, TransitionHandler transitionHandler, TransitionHandler transitionHandler2) {
        ArrayList arrayList = this.mHandlers;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                if (arrayList.get(size) != transitionHandler) {
                    if (CoreRune.MW_PIP_SHELL_TRANSITION && arrayList.get(size) == transitionHandler2) {
                    }
                    if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -1308483871, 0, " try handler %s", String.valueOf(arrayList.get(size)));
                    }
                    if (((TransitionHandler) arrayList.get(size)).startAnimation(iBinder, transitionInfo, transaction, transaction2, transitionFinishCallback)) {
                        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -1297259344, 0, " animated by %s", String.valueOf(arrayList.get(size)));
                        }
                        this.mTracer.logDispatched(transitionInfo.getDebugId(), (TransitionHandler) arrayList.get(size));
                        return (TransitionHandler) arrayList.get(size);
                    }
                }
            } else {
                throw new IllegalStateException("This shouldn't happen, maybe the default handler is broken.");
            }
        }
    }

    public final void finishForSync(final ActiveTransition activeTransition, final int i, ActiveTransition activeTransition2) {
        boolean z;
        int i2;
        if (!isTransitionKnown(activeTransition.mToken)) {
            Log.d("ShellTransitions", "finishForSleep: already played sync transition " + activeTransition);
            return;
        }
        ArrayList arrayList = this.mTracks;
        Track track = (Track) arrayList.get(i);
        if (activeTransition2 != null) {
            Track track2 = (Track) arrayList.get(activeTransition2.getTrack());
            if (track2 != track) {
                Log.e("ShellTransitions", "finishForSleep: mismatched Tracks between forceFinish and logic " + activeTransition2.getTrack() + " vs " + i);
            }
            if (track2.mActiveTransition == activeTransition2) {
                Log.e("ShellTransitions", "Forcing transition to finish due to sync timeout: " + activeTransition2);
                activeTransition2.mAborted = true;
                TransitionHandler transitionHandler = activeTransition2.mHandler;
                if (transitionHandler != null) {
                    transitionHandler.onTransitionConsumed(activeTransition2.mToken, true, null);
                }
                onFinish(activeTransition2, null, null);
            }
        }
        int i3 = 0;
        if (track.mActiveTransition == null && track.mReadyTransitions.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            ArrayList arrayList2 = this.mReadyDuringSync;
            if (!arrayList2.isEmpty()) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                TransitionInfo transitionInfo = new TransitionInfo(12, 0);
                while (track.mActiveTransition != null && !arrayList2.isEmpty()) {
                    final ActiveTransition activeTransition3 = track.mActiveTransition;
                    ActiveTransition activeTransition4 = (ActiveTransition) arrayList2.get(i3);
                    if ((activeTransition4.mInfo.getFlags() & QuickStepContract.SYSUI_STATE_DEVICE_DOZING) != 0) {
                        i2 = 1;
                    } else {
                        i2 = i3;
                    }
                    if (i2 == 0) {
                        Log.e("ShellTransitions", "Somehow blocked on a non-sync transition? " + activeTransition4);
                    }
                    if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 615101231, i3, " Attempt to merge sync %s into %s via a SLEEP proxy", String.valueOf(activeTransition4), String.valueOf(activeTransition3));
                    }
                    activeTransition3.mHandler.mergeAnimation(activeTransition4.mToken, transitionInfo, transaction, activeTransition3.mToken, new Transitions$$ExternalSyntheticLambda3());
                    if (track.mActiveTransition == activeTransition3) {
                        ((HandlerExecutor) this.mMainExecutor).executeDelayed(120L, new Runnable() { // from class: com.android.wm.shell.transition.Transitions$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                Transitions.this.finishForSync(activeTransition, i, activeTransition3);
                            }
                        });
                        return;
                    }
                    i3 = 0;
                }
            }
        }
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final ShellExecutor getRemoteCallExecutor() {
        return this.mMainExecutor;
    }

    public final boolean isAnimating() {
        boolean z;
        boolean z2;
        if (!this.mReadyDuringSync.isEmpty()) {
            return true;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mTracks;
            if (i < arrayList.size()) {
                Track track = (Track) arrayList.get(i);
                if (track.mActiveTransition == null && track.mReadyTransitions.isEmpty()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    z = false;
                    break;
                }
                i++;
            } else {
                z = true;
                break;
            }
        }
        if (!z) {
            return true;
        }
        return false;
    }

    public final boolean isTransitionKnown(IBinder iBinder) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mPendingTransitions;
            if (i < arrayList.size()) {
                if (((ActiveTransition) arrayList.get(i)).mToken == iBinder) {
                    return true;
                }
                i++;
            } else {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList2 = this.mReadyDuringSync;
                    if (i2 < arrayList2.size()) {
                        if (((ActiveTransition) arrayList2.get(i2)).mToken == iBinder) {
                            return true;
                        }
                        i2++;
                    } else {
                        int i3 = 0;
                        while (true) {
                            ArrayList arrayList3 = this.mTracks;
                            if (i3 >= arrayList3.size()) {
                                return false;
                            }
                            Track track = (Track) arrayList3.get(i3);
                            for (int i4 = 0; i4 < track.mReadyTransitions.size(); i4++) {
                                if (((ActiveTransition) track.mReadyTransitions.get(i4)).mToken == iBinder) {
                                    return true;
                                }
                            }
                            ActiveTransition activeTransition = track.mActiveTransition;
                            if (activeTransition != null) {
                                if (activeTransition.mToken == iBinder) {
                                    return true;
                                }
                                if (activeTransition.mMerged == null) {
                                    continue;
                                } else {
                                    for (int i5 = 0; i5 < activeTransition.mMerged.size(); i5++) {
                                        if (((ActiveTransition) activeTransition.mMerged.get(i5)).mToken == iBinder) {
                                            return true;
                                        }
                                    }
                                }
                            }
                            i3++;
                        }
                    }
                }
            }
        }
    }

    public final void onAbort(ActiveTransition activeTransition) {
        Track track = (Track) this.mTracks.get(activeTransition.getTrack());
        activeTransition.mAborted = true;
        int debugId = activeTransition.mInfo.getDebugId();
        Tracer tracer = this.mTracer;
        tracer.getClass();
        Transition transition = new Transition();
        transition.id = debugId;
        transition.abortTimeNs = SystemClock.elapsedRealtimeNanos();
        tracer.mTraceBuffer.add(transition);
        TransitionHandler transitionHandler = activeTransition.mHandler;
        if (transitionHandler != null) {
            transitionHandler.onTransitionConsumed(activeTransition.mToken, true, null);
        }
        TransitionInfo transitionInfo = activeTransition.mInfo;
        if (transitionInfo != null) {
            transitionInfo.releaseAnimSurfaces();
        }
        if (track.mReadyTransitions.size() > 1) {
            return;
        }
        processReadyQueue(track);
    }

    public final void onFinish(ActiveTransition activeTransition, WindowContainerTransaction windowContainerTransaction, WindowContainerTransactionCallback windowContainerTransactionCallback) {
        SurfaceControl.Transaction transaction;
        ArrayList arrayList;
        Track track = (Track) this.mTracks.get(activeTransition.getTrack());
        ActiveTransition activeTransition2 = track.mActiveTransition;
        if (activeTransition2 != activeTransition) {
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER && activeTransition2 != null && (arrayList = activeTransition2.mTransfer) != null && arrayList.contains(activeTransition)) {
                Log.d("ShellTransitions", "Finishing is skipped due to transferred transit=" + activeTransition);
                return;
            } else {
                Log.e("ShellTransitions", "Trying to finish a non-running transition. Either remote crashed or  a handler didn't properly deal with a merge. " + activeTransition, new RuntimeException());
                return;
            }
        }
        track.mActiveTransition = null;
        int i = 0;
        while (true) {
            ArrayList arrayList2 = this.mObservers;
            if (i >= arrayList2.size()) {
                break;
            }
            ((TransitionObserver) arrayList2.get(i)).onTransitionFinished(activeTransition.mToken);
            i++;
        }
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 823755091, 3, "Transition animation finished (aborted=%b), notifying core %s", Boolean.valueOf(activeTransition.mAborted), String.valueOf(activeTransition));
        }
        SurfaceControl.Transaction transaction2 = activeTransition.mStartT;
        if (transaction2 != null) {
            transaction2.clear();
        }
        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER && activeTransition.mTransfer != null) {
            transaction = null;
            for (int i2 = 0; i2 < activeTransition.mTransfer.size(); i2++) {
                ActiveTransition activeTransition3 = (ActiveTransition) activeTransition.mTransfer.get(i2);
                SurfaceControl.Transaction transaction3 = activeTransition3.mStartT;
                if (transaction3 != null) {
                    if (transaction == null) {
                        transaction = transaction3;
                    } else {
                        transaction.merge(transaction3);
                    }
                }
                SurfaceControl.Transaction transaction4 = activeTransition3.mFinishT;
                if (transaction4 != null) {
                    if (transaction == null) {
                        transaction = transaction4;
                    } else {
                        transaction.merge(transaction4);
                    }
                }
                if (activeTransition3.mMerged != null) {
                    for (int i3 = 0; i3 < activeTransition3.mMerged.size(); i3++) {
                        ActiveTransition activeTransition4 = (ActiveTransition) activeTransition3.mMerged.get(i3);
                        SurfaceControl.Transaction transaction5 = activeTransition4.mStartT;
                        if (transaction5 != null) {
                            if (transaction == null) {
                                transaction = transaction5;
                            } else {
                                transaction.merge(transaction5);
                            }
                        }
                        SurfaceControl.Transaction transaction6 = activeTransition4.mFinishT;
                        if (transaction6 != null) {
                            if (transaction == null) {
                                transaction = transaction6;
                            } else {
                                transaction.merge(transaction6);
                            }
                        }
                    }
                }
            }
            if (transaction != null) {
                transaction.merge(activeTransition.mFinishT);
            }
        } else {
            transaction = null;
        }
        if (!CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER || transaction == null) {
            transaction = activeTransition.mFinishT;
        }
        if (activeTransition.mMerged != null) {
            for (int i4 = 0; i4 < activeTransition.mMerged.size(); i4++) {
                ActiveTransition activeTransition5 = (ActiveTransition) activeTransition.mMerged.get(i4);
                SurfaceControl.Transaction transaction7 = activeTransition5.mStartT;
                if (transaction7 != null) {
                    if (transaction == null) {
                        transaction = transaction7;
                    } else {
                        transaction.merge(transaction7);
                    }
                }
                SurfaceControl.Transaction transaction8 = activeTransition5.mFinishT;
                if (transaction8 != null) {
                    if (transaction == null) {
                        transaction = transaction8;
                    } else {
                        transaction.merge(transaction8);
                    }
                }
            }
        }
        if (transaction != null) {
            transaction.apply();
        }
        boolean z = CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER;
        WindowOrganizer windowOrganizer = this.mOrganizer;
        if (z && activeTransition.mTransfer != null) {
            for (int i5 = 0; i5 < activeTransition.mTransfer.size(); i5++) {
                ActiveTransition activeTransition6 = (ActiveTransition) activeTransition.mTransfer.get(i5);
                windowOrganizer.finishTransition(activeTransition6.mToken, (WindowContainerTransaction) null, (WindowContainerTransactionCallback) null);
                TransitionInfo transitionInfo = activeTransition6.mInfo;
                if (transitionInfo != null) {
                    transitionInfo.releaseAnimSurfaces();
                }
                if (activeTransition6.mMerged != null) {
                    for (int i6 = 0; i6 < activeTransition6.mMerged.size(); i6++) {
                        ActiveTransition activeTransition7 = (ActiveTransition) activeTransition6.mMerged.get(i6);
                        windowOrganizer.finishTransition(activeTransition7.mToken, (WindowContainerTransaction) null, (WindowContainerTransactionCallback) null);
                        TransitionInfo transitionInfo2 = activeTransition7.mInfo;
                        if (transitionInfo2 != null) {
                            transitionInfo2.releaseAnimSurfaces();
                        }
                    }
                    activeTransition6.mMerged.clear();
                }
            }
            activeTransition.mTransfer.clear();
        }
        TransitionInfo transitionInfo3 = activeTransition.mInfo;
        if (transitionInfo3 != null) {
            transitionInfo3.releaseAnimSurfaces();
        }
        windowOrganizer.finishTransition(activeTransition.mToken, windowContainerTransaction, windowContainerTransactionCallback);
        if (activeTransition.mMerged != null) {
            for (int i7 = 0; i7 < activeTransition.mMerged.size(); i7++) {
                ActiveTransition activeTransition8 = (ActiveTransition) activeTransition.mMerged.get(i7);
                windowOrganizer.finishTransition(activeTransition8.mToken, (WindowContainerTransaction) null, (WindowContainerTransactionCallback) null);
                TransitionInfo transitionInfo4 = activeTransition8.mInfo;
                if (transitionInfo4 != null) {
                    transitionInfo4.releaseAnimSurfaces();
                }
            }
            activeTransition.mMerged.clear();
        }
        processReadyQueue(track);
    }

    public final void onMerged(ActiveTransition activeTransition, ActiveTransition activeTransition2) {
        int indexOf;
        if (activeTransition.getTrack() == activeTransition2.getTrack()) {
            Track track = (Track) this.mTracks.get(activeTransition.getTrack());
            int i = 0;
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -344473798, 0, "Transition was merged: %s into %s", String.valueOf(activeTransition2), String.valueOf(activeTransition));
            }
            boolean isEmpty = track.mReadyTransitions.isEmpty();
            ArrayList arrayList = track.mReadyTransitions;
            if (!isEmpty && arrayList.get(0) == activeTransition2) {
                indexOf = 0;
            } else {
                Log.e("ShellTransitions", "Merged transition out-of-order? " + activeTransition2);
                indexOf = arrayList.indexOf(activeTransition2);
                if (indexOf < 0) {
                    Log.e("ShellTransitions", "Merged a transition that is no-longer queued? " + activeTransition2);
                    return;
                }
            }
            arrayList.remove(indexOf);
            if (activeTransition.mMerged == null) {
                activeTransition.mMerged = new ArrayList();
            }
            activeTransition.mMerged.add(activeTransition2);
            TransitionHandler transitionHandler = activeTransition2.mHandler;
            if (transitionHandler != null && !activeTransition2.mAborted) {
                transitionHandler.onTransitionConsumed(activeTransition2.mToken, false, activeTransition2.mFinishT);
            }
            while (true) {
                ArrayList arrayList2 = this.mObservers;
                if (i < arrayList2.size()) {
                    ((TransitionObserver) arrayList2.get(i)).onTransitionMerged(activeTransition2.mToken, activeTransition.mToken);
                    i++;
                } else {
                    int debugId = activeTransition2.mInfo.getDebugId();
                    int debugId2 = activeTransition.mInfo.getDebugId();
                    Tracer tracer = this.mTracer;
                    tracer.getClass();
                    Transition transition = new Transition();
                    transition.id = debugId;
                    transition.mergeTimeNs = SystemClock.elapsedRealtimeNanos();
                    transition.mergedInto = debugId2;
                    tracer.mTraceBuffer.add(transition);
                    processReadyQueue(track);
                    return;
                }
            }
        } else {
            throw new IllegalStateException("Can't merge across tracks: " + activeTransition2 + " into " + activeTransition);
        }
    }

    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final boolean onShellCommand(PrintWriter printWriter, String[] strArr) {
        String str = strArr[0];
        str.getClass();
        if (!str.equals("tracing")) {
            KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("Invalid command: "), strArr[0], printWriter);
            printShellCommandHelp(printWriter, "");
            return false;
        }
        this.mTracer.onShellCommand(printWriter, (String[]) Arrays.copyOfRange(strArr, 1, strArr.length));
        return true;
    }

    public void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        transitionInfo.setUnreleasedWarningCallSiteForAllSurfaces("Transitions.onTransitionReady");
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1070270131, 0, "onTransitionReady %s: %s", String.valueOf(iBinder), String.valueOf(transitionInfo));
        }
        ArrayList arrayList = this.mPendingTransitions;
        int i = -1;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (((ActiveTransition) arrayList.get(size)).mToken == iBinder) {
                i = size;
                break;
            }
            size--;
        }
        if (i >= 0) {
            ActiveTransition activeTransition = (ActiveTransition) arrayList.remove(i);
            activeTransition.mInfo = transitionInfo;
            activeTransition.mStartT = transaction;
            activeTransition.mFinishT = transaction2;
            if (i > 0) {
                Log.i("ShellTransitions", "Transition might be ready out-of-order " + i + " for " + activeTransition + ". This is ok if it's on a different track.");
            }
            ArrayList arrayList2 = this.mReadyDuringSync;
            if (!arrayList2.isEmpty()) {
                arrayList2.add(activeTransition);
                return;
            } else {
                dispatchReady(activeTransition);
                return;
            }
        }
        throw new IllegalStateException("Got transitionReady for non-pending transition " + iBinder + ". expecting one of " + Arrays.toString(arrayList.stream().map(new Transitions$$ExternalSyntheticLambda0(0)).toArray()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x029f, code lost:
    
        if (r15.hasFlags(com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a9, code lost:
    
        if (com.android.wm.shell.util.TransitionUtil.isHomeOrRecents(r15) != false) goto L156;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void playTransition(com.android.wm.shell.transition.Transitions.ActiveTransition r22) {
        /*
            Method dump skipped, instructions count: 817
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.Transitions.playTransition(com.android.wm.shell.transition.Transitions$ActiveTransition):void");
    }

    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final void printShellCommandHelp(PrintWriter printWriter, String str) {
        printWriter.println(str.concat("tracing"));
        this.mTracer.printShellCommandHelp(printWriter, str.concat("  "));
    }

    public final void processReadyQueue(Track track) {
        boolean z;
        ArrayList arrayList = track.mReadyTransitions;
        int i = 0;
        if (arrayList.isEmpty()) {
            if (track.mActiveTransition == null) {
                boolean z2 = ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled;
                ArrayList arrayList2 = this.mTracks;
                boolean z3 = true;
                if (z2) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 359760983, 1, "Track %d became idle", Long.valueOf(arrayList2.indexOf(track)));
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList2.size()) {
                        break;
                    }
                    Track track2 = (Track) arrayList2.get(i2);
                    if (track2.mActiveTransition == null && track2.mReadyTransitions.isEmpty()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        z3 = false;
                        break;
                    }
                    i2++;
                }
                if (z3) {
                    ArrayList arrayList3 = this.mReadyDuringSync;
                    if (arrayList3.isEmpty()) {
                        ArrayList arrayList4 = this.mPendingTransitions;
                        if (arrayList4.isEmpty() || (CoreRune.MW_SHELL_TRANSITION && isEmptyExceptZombie(arrayList4))) {
                            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 490784151, 0, "All active transition animations finished", null);
                            }
                            while (true) {
                                ArrayList arrayList5 = this.mRunWhenIdleQueue;
                                if (i < arrayList5.size()) {
                                    ((Runnable) arrayList5.get(i)).run();
                                    i++;
                                } else {
                                    arrayList5.clear();
                                    return;
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    while (!arrayList3.isEmpty() && dispatchReady((ActiveTransition) arrayList3.remove(0))) {
                    }
                    return;
                }
                return;
            }
            return;
        }
        final ActiveTransition activeTransition = (ActiveTransition) arrayList.get(0);
        final ActiveTransition activeTransition2 = track.mActiveTransition;
        if (activeTransition2 == null) {
            arrayList.remove(0);
            track.mActiveTransition = activeTransition;
            if (activeTransition.mAborted) {
                SurfaceControl.Transaction transaction = activeTransition.mStartT;
                if (transaction != null) {
                    transaction.apply();
                }
                onFinish(activeTransition, null, null);
                return;
            }
            playTransition(activeTransition);
            processReadyQueue(track);
            return;
        }
        if (activeTransition.mAborted) {
            onMerged(activeTransition2, activeTransition);
            return;
        }
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1145580304, 0, "Transition %s ready while %s is still animating. Notify the animating transition in case they can be merged", String.valueOf(activeTransition), String.valueOf(activeTransition2));
        }
        int debugId = activeTransition.mInfo.getDebugId();
        int debugId2 = activeTransition2.mInfo.getDebugId();
        Tracer tracer = this.mTracer;
        tracer.getClass();
        Transition transition = new Transition();
        transition.id = debugId;
        transition.mergeRequestTimeNs = SystemClock.elapsedRealtimeNanos();
        transition.mergedInto = debugId2;
        tracer.mTraceBuffer.add(transition);
        if (CoreRune.MW_SHELL_TRANSITION) {
            activeTransition2.mHandler.beforeMergeAnimation(activeTransition.mToken, activeTransition.mHandler);
        }
        activeTransition2.mHandler.mergeAnimation(activeTransition.mToken, activeTransition.mInfo, activeTransition.mStartT, activeTransition2.mToken, new TransitionFinishCallback() { // from class: com.android.wm.shell.transition.Transitions$$ExternalSyntheticLambda2
            @Override // com.android.wm.shell.transition.Transitions.TransitionFinishCallback
            public final void onTransitionFinished(WindowContainerTransaction windowContainerTransaction, WindowContainerTransactionCallback windowContainerTransactionCallback) {
                int indexOf;
                Transitions transitions = Transitions.this;
                transitions.getClass();
                boolean z4 = CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER;
                Transitions.ActiveTransition activeTransition3 = activeTransition;
                Transitions.ActiveTransition activeTransition4 = activeTransition2;
                if (z4 && activeTransition3.mInfo.canTransferAnimation()) {
                    if (activeTransition4.getTrack() == activeTransition3.getTrack()) {
                        ArrayList arrayList6 = activeTransition4.mTransfer;
                        if (arrayList6 != null && !arrayList6.isEmpty()) {
                            throw new IllegalStateException("Can't transfer " + activeTransition4 + " into " + activeTransition3);
                        }
                        Transitions.Track track3 = (Transitions.Track) transitions.mTracks.get(activeTransition4.getTrack());
                        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1793244704, 0, "Transition was transferred: %s into %s", String.valueOf(activeTransition4), String.valueOf(activeTransition3));
                        }
                        boolean isEmpty = track3.mReadyTransitions.isEmpty();
                        ArrayList arrayList7 = track3.mReadyTransitions;
                        if (!isEmpty && arrayList7.get(0) == activeTransition3) {
                            indexOf = 0;
                        } else {
                            Log.e("ShellTransitions", "Transfer transition out-of-order? " + activeTransition3);
                            indexOf = arrayList7.indexOf(activeTransition3);
                            if (indexOf < 0) {
                                Log.e("ShellTransitions", "Transfer a transition that is no-longer queued? " + activeTransition3);
                                return;
                            }
                        }
                        arrayList7.remove(indexOf);
                        if (activeTransition3.mTransfer == null) {
                            activeTransition3.mTransfer = new ArrayList();
                        }
                        activeTransition3.mTransfer.add(activeTransition4);
                        activeTransition3.mHandler.transferAnimation(activeTransition3.mToken, activeTransition3.mInfo, activeTransition3.mStartT, windowContainerTransaction);
                        Transitions.TransitionHandler transitionHandler = activeTransition4.mHandler;
                        if (transitionHandler != null) {
                            transitionHandler.onTransitionConsumed(activeTransition4.mToken, false, null);
                        }
                        track3.mActiveTransition = activeTransition3;
                        transitions.playTransition(activeTransition3);
                        transitions.processReadyQueue(track3);
                        return;
                    }
                    throw new IllegalStateException("Can't merge across tracks: " + activeTransition3 + " into " + activeTransition4);
                }
                transitions.onMerged(activeTransition4, activeTransition3);
            }
        });
    }

    public void replaceDefaultHandlerForTest(TransitionHandler transitionHandler) {
        this.mHandlers.set(0, transitionHandler);
    }

    public final IBinder startTransition(int i, WindowContainerTransaction windowContainerTransaction, TransitionHandler transitionHandler) {
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 590143644, 1, "Directly starting a new transition type=%d wct=%s handler=%s", Long.valueOf(i), String.valueOf(windowContainerTransaction), String.valueOf(transitionHandler));
        }
        ActiveTransition activeTransition = new ActiveTransition(0);
        activeTransition.mHandler = transitionHandler;
        activeTransition.mToken = this.mOrganizer.startNewTransition(i, windowContainerTransaction);
        this.mPendingTransitions.add(activeTransition);
        if (CoreRune.MW_SHELL_TRANSITION) {
            activeTransition.mPendingTime = System.currentTimeMillis();
        }
        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LOG) {
            Log.i("ShellTransitions", "startTransition done, active=" + activeTransition);
        }
        return activeTransition.mToken;
    }

    public Transitions(Context context, ShellInit shellInit, ShellController shellController, WindowOrganizer windowOrganizer, TransactionPool transactionPool, DisplayController displayController, ShellExecutor shellExecutor, Handler handler, ShellExecutor shellExecutor2, ShellCommandHandler shellCommandHandler, RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer) {
        DefaultTransitionHandler defaultTransitionHandler;
        int i;
        int i2 = 0;
        this.mImpl = new ShellTransitionImpl(this, i2);
        this.mSleepHandler = new SleepHandler();
        this.mTracer = new Tracer();
        this.mIsRegistered = false;
        ArrayList arrayList = new ArrayList();
        this.mHandlers = arrayList;
        this.mObservers = new ArrayList();
        this.mRunWhenIdleQueue = new ArrayList();
        this.mTransitionAnimationScaleSetting = 1.0f;
        this.mPendingTransitions = new ArrayList();
        this.mReadyDuringSync = new ArrayList();
        this.mTracks = new ArrayList();
        this.mOrganizer = windowOrganizer;
        this.mContext = context;
        this.mMainExecutor = shellExecutor;
        this.mAnimExecutor = shellExecutor2;
        this.mDisplayController = displayController;
        this.mPlayerImpl = new TransitionPlayerImpl(this, i2);
        DefaultTransitionHandler defaultTransitionHandler2 = new DefaultTransitionHandler(context, shellInit, displayController, transactionPool, shellExecutor, handler, shellExecutor2, rootTaskDisplayAreaOrganizer);
        RemoteTransitionHandler remoteTransitionHandler = new RemoteTransitionHandler(shellExecutor);
        this.mRemoteTransitionHandler = remoteTransitionHandler;
        this.mShellController = shellController;
        arrayList.add(defaultTransitionHandler2);
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -1438128520, 0, "addHandler: Default", null);
        }
        arrayList.add(remoteTransitionHandler);
        this.mShellCommandHandler = shellCommandHandler;
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 2096035537, 0, "addHandler: Remote", null);
        }
        if (CoreRune.MW_SHELL_TRANSITION) {
            defaultTransitionHandler = defaultTransitionHandler2;
            i = 0;
            MultiTaskingTransitionProvider multiTaskingTransitionProvider = new MultiTaskingTransitionProvider(defaultTransitionHandler2.mTransitionAnimation, displayController, transactionPool, shellExecutor, shellExecutor2);
            this.mMultiTaskingTransitProvider = multiTaskingTransitionProvider;
            defaultTransitionHandler.mMultiTaskingTransitProvider = multiTaskingTransitionProvider;
            remoteTransitionHandler.mMultiTaskingTransitions = multiTaskingTransitionProvider;
            remoteTransitionHandler.mAnimExecutor = shellExecutor2;
        } else {
            defaultTransitionHandler = defaultTransitionHandler2;
            i = 0;
        }
        if (CoreRune.MW_SHELL_CHANGE_TRANSITION) {
            ChangeTransitionProvider changeTransitionProvider = new ChangeTransitionProvider(this, displayController, transactionPool, shellExecutor, shellExecutor2);
            this.mChangeTransitProvider = changeTransitionProvider;
            defaultTransitionHandler.mChangeTransitProvider = changeTransitionProvider;
        }
        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_WITH_DIM) {
            defaultTransitionHandler.mDimTransitionProvider = new DimTransitionProvider();
        }
        if (CoreRune.FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR) {
            defaultTransitionHandler.mCapturedBlurHelper = new DefaultTransitionHandler.CapturedBlurHelper(defaultTransitionHandler, i);
            defaultTransitionHandler.mMaxRotationAnimationDuration = 0L;
        }
        shellInit.addInitCallback(new Transitions$$ExternalSyntheticLambda1(this, i), this);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TransitionHandler {
        WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo);

        boolean startAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, TransitionFinishCallback transitionFinishCallback);

        default void setAnimScaleSetting(float f) {
        }

        default void beforeMergeAnimation(IBinder iBinder, TransitionHandler transitionHandler) {
        }

        default void transitionReady(IBinder iBinder, TransitionInfo transitionInfo) {
        }

        default void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        }

        default void transferAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, WindowContainerTransaction windowContainerTransaction) {
        }

        default void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, TransitionFinishCallback transitionFinishCallback) {
        }
    }
}
