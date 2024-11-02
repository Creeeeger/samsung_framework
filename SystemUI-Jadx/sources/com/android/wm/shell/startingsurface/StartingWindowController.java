package com.android.wm.shell.startingsurface;

import android.app.ActivityThread;
import android.app.TaskInfo;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import android.util.SparseIntArray;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.android.internal.util.function.TriConsumer;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.ExternalInterfaceBinder;
import com.android.wm.shell.common.RemoteCallable;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SingleInstanceRemoteListener;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.startingsurface.SplashscreenContentDrawer;
import com.android.wm.shell.startingsurface.StartingWindowController;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StartingWindowController implements RemoteCallable {
    public final Context mContext;
    public final ShellController mShellController;
    public final ShellTaskOrganizer mShellTaskOrganizer;
    public final ShellExecutor mSplashScreenExecutor;
    public final StartingSurfaceDrawer mStartingSurfaceDrawer;
    public final StartingWindowTypeAlgorithm mStartingWindowTypeAlgorithm;
    public TriConsumer mTaskLaunchingCallback;
    public final StartingSurfaceImpl mImpl = new StartingSurfaceImpl(this, 0);
    public final SparseIntArray mTaskBackgroundColors = new SparseIntArray();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IStartingWindowImpl extends IStartingWindow$Stub implements ExternalInterfaceBinder {
        public StartingWindowController mController;
        public final SingleInstanceRemoteListener mListener;
        public final StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1 mStartingWindowListener = new TriConsumer() { // from class: com.android.wm.shell.startingsurface.StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1
            public final void accept(Object obj, Object obj2, Object obj3) {
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                Integer num3 = (Integer) obj3;
                IInterface iInterface = StartingWindowController.IStartingWindowImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((IStartingWindowListener$Stub$Proxy) ((IStartingWindowListener) iInterface)).onTaskLaunching(num.intValue(), num2.intValue(), num3.intValue());
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }
        };

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.startingsurface.StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1] */
        public IStartingWindowImpl(StartingWindowController startingWindowController) {
            this.mController = startingWindowController;
            this.mListener = new SingleInstanceRemoteListener(startingWindowController, new Consumer() { // from class: com.android.wm.shell.startingsurface.StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((StartingWindowController) obj).setStartingWindowListener(StartingWindowController.IStartingWindowImpl.this.mStartingWindowListener);
                }
            }, new StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda3());
        }

        @Override // com.android.wm.shell.common.ExternalInterfaceBinder
        public final void invalidate() {
            this.mController = null;
            this.mListener.unregister();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StartingSurfaceImpl {
        public /* synthetic */ StartingSurfaceImpl(StartingWindowController startingWindowController, int i) {
            this();
        }

        public final int getBackgroundColor(TaskInfo taskInfo) {
            int i;
            synchronized (StartingWindowController.this.mTaskBackgroundColors) {
                int indexOfKey = StartingWindowController.this.mTaskBackgroundColors.indexOfKey(taskInfo.taskId);
                if (indexOfKey >= 0) {
                    return StartingWindowController.this.mTaskBackgroundColors.valueAt(indexOfKey);
                }
                SplashscreenWindowCreator splashscreenWindowCreator = StartingWindowController.this.mStartingSurfaceDrawer.mSplashscreenWindowCreator;
                splashscreenWindowCreator.getClass();
                ActivityInfo activityInfo = taskInfo.topActivityInfo;
                int i2 = 0;
                if (activityInfo != null) {
                    String str = activityInfo.packageName;
                    int i3 = taskInfo.userId;
                    try {
                        Context createPackageContextAsUser = splashscreenWindowCreator.mContext.createPackageContextAsUser(str, 4, UserHandle.of(i3));
                        try {
                            String splashScreenTheme = ActivityThread.getPackageManager().getSplashScreenTheme(str, i3);
                            if (splashScreenTheme != null) {
                                i = createPackageContextAsUser.getResources().getIdentifier(splashScreenTheme, null, null);
                            } else {
                                i = 0;
                            }
                            int splashScreenTheme2 = AbsSplashWindowCreator.getSplashScreenTheme(i, activityInfo);
                            if (splashScreenTheme2 != createPackageContextAsUser.getThemeResId()) {
                                createPackageContextAsUser.setTheme(splashScreenTheme2);
                            }
                            splashscreenWindowCreator.mSplashscreenContentDrawer.getClass();
                            SplashscreenContentDrawer.SplashScreenWindowAttrs splashScreenWindowAttrs = new SplashscreenContentDrawer.SplashScreenWindowAttrs();
                            SplashscreenContentDrawer.getWindowAttrs(createPackageContextAsUser, splashScreenWindowAttrs);
                            i2 = SplashscreenContentDrawer.peekWindowBGColor(createPackageContextAsUser, splashScreenWindowAttrs);
                        } catch (RemoteException | RuntimeException e) {
                            Slog.w("ShellStartingWindow", "failed get starting window background color at taskId: " + taskInfo.taskId, e);
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Failed creating package context with package name ", str, " for user ");
                        m.append(taskInfo.userId);
                        Slog.w("ShellStartingWindow", m.toString(), e2);
                    }
                }
                if (i2 == 0) {
                    return SplashscreenContentDrawer.getSystemBGColor();
                }
                return i2;
            }
        }

        private StartingSurfaceImpl() {
        }
    }

    public StartingWindowController(Context context, ShellInit shellInit, ShellController shellController, ShellTaskOrganizer shellTaskOrganizer, ShellExecutor shellExecutor, StartingWindowTypeAlgorithm startingWindowTypeAlgorithm, IconProvider iconProvider, TransactionPool transactionPool) {
        this.mContext = context;
        this.mShellController = shellController;
        this.mShellTaskOrganizer = shellTaskOrganizer;
        this.mStartingSurfaceDrawer = new StartingSurfaceDrawer(context, shellExecutor, iconProvider, transactionPool);
        this.mStartingWindowTypeAlgorithm = startingWindowTypeAlgorithm;
        this.mSplashScreenExecutor = shellExecutor;
        shellInit.addInitCallback(new StartingWindowController$$ExternalSyntheticLambda2(this, 1), this);
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final ShellExecutor getRemoteCallExecutor() {
        return this.mSplashScreenExecutor;
    }

    public boolean hasStartingWindowListener() {
        if (this.mTaskLaunchingCallback != null) {
            return true;
        }
        return false;
    }

    public void setStartingWindowListener(TriConsumer<Integer, Integer, Integer> triConsumer) {
        this.mTaskLaunchingCallback = triConsumer;
    }
}
