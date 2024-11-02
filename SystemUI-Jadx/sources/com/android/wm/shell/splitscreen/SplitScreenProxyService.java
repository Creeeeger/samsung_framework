package com.android.wm.shell.splitscreen;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.util.Slog;
import android.view.SurfaceControl;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.RemoteTransition;
import android.window.TransitionInfo;
import com.android.server.LocalServices;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.util.GroupedRecentTaskInfo;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SplitScreenProxyService extends Service {
    public static final boolean TEST_MOCK_REMOTE_TRANSITION = SystemProperties.getBoolean("persist.mt.debug.mock_remote", false);
    public Messenger mMessenger;
    public Message mPendingMsg;
    public RecentTasksController mRecentTasksController;
    public SplitScreenController mSplitScreenController;
    public final AnonymousClass1 mTestRemoteTransition;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.splitscreen.SplitScreenProxyService$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends IRemoteTransition.Stub {
        public static final /* synthetic */ int $r8$clinit = 0;

        public AnonymousClass1() {
        }

        public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            boolean z = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
            Slog.d("SplitScreenProxyService", "mergeAnimation: info=" + transitionInfo + ", t=" + transaction + ", mergeTarget=" + iBinder2 + ", finishCallback=" + iRemoteTransitionFinishedCallback + ", Callers=" + Debug.getCallers(10));
        }

        public final void startAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            boolean z = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
            Slog.d("SplitScreenProxyService", "startAnimation: info=" + transitionInfo + ", t=" + transaction + ", finishCallback=" + iRemoteTransitionFinishedCallback + ", Callers=" + Debug.getCallers(10));
            transaction.apply();
            SplitScreenProxyService.this.getMainThreadHandler().postDelayed(new SplitScreenProxyService$$ExternalSyntheticLambda0(iRemoteTransitionFinishedCallback, 1), 1000L);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MessageHandler extends Handler {
        public /* synthetic */ MessageHandler(SplitScreenProxyService splitScreenProxyService, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            int i;
            final int i2;
            int i3;
            String str;
            boolean z2;
            if (SplitScreenProxyService.this.mSplitScreenController == null) {
                boolean z3 = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
                Slog.e("SplitScreenProxyService", "mSplitScreenController is null");
                return;
            }
            if (message.getData() == null) {
                boolean z4 = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
                Slog.e("SplitScreenProxyService", "msg data is empty");
                return;
            }
            if (message.what != 1000) {
                z = false;
            } else {
                Bundle data = message.getData();
                ArrayList<GroupedRecentTaskInfo> recentTasks = SplitScreenProxyService.this.mRecentTasksController.getRecentTasks(data.getInt("recent_tasks_max"), data.getInt("recent_tasks_flag"), data.getInt("userid"));
                Bundle bundle = new Bundle();
                GroupedRecentTaskInfo[] groupedRecentTaskInfoArr = new GroupedRecentTaskInfo[recentTasks.size()];
                recentTasks.toArray(groupedRecentTaskInfoArr);
                bundle.putParcelableArray("response", groupedRecentTaskInfoArr);
                Message obtain = Message.obtain(null, 1000, message.arg1, 0);
                obtain.setData(bundle);
                try {
                    message.replyTo.send(obtain);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                z = true;
            }
            if (z) {
                return;
            }
            final StageLaunchOptions stageLaunchOptions = new StageLaunchOptions(message.getData());
            Message message2 = SplitScreenProxyService.this.mPendingMsg;
            final int i4 = 8;
            final int i5 = 3;
            int i6 = stageLaunchOptions.mTapTaskId;
            Intent intent = stageLaunchOptions.mTapIntent;
            int i7 = stageLaunchOptions.mRightBottomTaskId;
            Intent intent2 = stageLaunchOptions.mCellStageIntent;
            int i8 = stageLaunchOptions.mLeftTopTaskId;
            if (message2 == null) {
                int i9 = message.what;
                if (i9 != 1 && i9 != 2 && i9 != 3 && i9 != 4 && i9 != 5 && i9 != 8) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    SplitScreenProxyService splitScreenProxyService = SplitScreenProxyService.this;
                    splitScreenProxyService.getClass();
                    PendingIntent pendingIntent = stageLaunchOptions.mPendingIntent;
                    if (pendingIntent != null) {
                        arrayList.add(pendingIntent);
                    }
                    Intent intent3 = stageLaunchOptions.mMainStageIntent;
                    if (intent3 != null) {
                        arrayList.add(splitScreenProxyService.makePendingIntent(intent3, stageLaunchOptions.mMainStageUserHandle));
                    }
                    Intent intent4 = stageLaunchOptions.mSideStageIntent;
                    if (intent4 != null) {
                        arrayList.add(splitScreenProxyService.makePendingIntent(intent4, stageLaunchOptions.mSideStageUserHandle));
                    }
                    if (intent2 != null) {
                        arrayList.add(splitScreenProxyService.makePendingIntent(intent2, stageLaunchOptions.mCellStageUserHandle));
                    }
                    if (intent != null) {
                        arrayList.add(splitScreenProxyService.makePendingIntent(intent, stageLaunchOptions.mTapUserHandle));
                    }
                    int i10 = stageLaunchOptions.mLaunchTaskId;
                    if (i10 != -1) {
                        arrayList2.add(Integer.valueOf(i10));
                    }
                    if (i8 != -1) {
                        arrayList2.add(Integer.valueOf(i8));
                    }
                    if (i7 != -1) {
                        arrayList2.add(Integer.valueOf(i7));
                    }
                    int i11 = stageLaunchOptions.mCellTaskId;
                    if (i11 != -1) {
                        arrayList2.add(Integer.valueOf(i11));
                    }
                    if (i6 != -1) {
                        arrayList2.add(Integer.valueOf(i6));
                    }
                    if (MultiWindowManager.getInstance().shouldDeferEnterSplit(arrayList, arrayList2)) {
                        SplitScreenProxyService.this.mPendingMsg = Message.obtain(message);
                        return;
                    }
                }
            }
            SplitScreenProxyService.this.mPendingMsg = null;
            boolean z5 = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
            Slog.e("SplitScreenProxyService", "handle msg, what:" + message.what + " called:" + message.sendingUid);
            switch (message.what) {
                case 1:
                    if (stageLaunchOptions.mMainStageIntent != null && stageLaunchOptions.mSideStageIntent != null) {
                        if (SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION) {
                            Slog.d("SplitScreenProxyService", "START_INTENTS: client request(" + stageLaunchOptions.mRemoteTransition + ") is ignored, reason=test_remote_transition");
                            stageLaunchOptions.mRemoteTransition = new RemoteTransition(SplitScreenProxyService.this.mTestRemoteTransition);
                        }
                        SplitScreenController splitScreenController = SplitScreenProxyService.this.mSplitScreenController;
                        splitScreenController.getClass();
                        if (CoreRune.MW_MULTI_SPLIT_CREATE_MODE && !MultiWindowUtils.isInSubDisplay(splitScreenController.mContext)) {
                            int i12 = stageLaunchOptions.mSplitCreateMode;
                            if (i12 != 2) {
                                if (i12 != 3) {
                                    if (i12 != 4) {
                                        if (i12 == 5) {
                                            stageLaunchOptions.mSideStagePosition = 0;
                                            stageLaunchOptions.mSplitDivision = 1;
                                            stageLaunchOptions.mCellStageWindowConfigPosition = 72;
                                        }
                                    } else {
                                        stageLaunchOptions.mSideStagePosition = 0;
                                        stageLaunchOptions.mSplitDivision = 0;
                                        stageLaunchOptions.mCellStageWindowConfigPosition = 96;
                                    }
                                } else {
                                    stageLaunchOptions.mSideStagePosition = 1;
                                    stageLaunchOptions.mSplitDivision = 1;
                                    stageLaunchOptions.mCellStageWindowConfigPosition = 48;
                                }
                            } else {
                                stageLaunchOptions.mSideStagePosition = 1;
                                stageLaunchOptions.mSplitDivision = 0;
                                stageLaunchOptions.mCellStageWindowConfigPosition = 24;
                            }
                            i = -1;
                        } else {
                            int i13 = splitScreenController.mStageCoordinator.mSideStagePosition;
                            i = -1;
                            if (i13 == -1) {
                                stageLaunchOptions.mSideStagePosition = 1;
                            } else if (i13 == 0) {
                                stageLaunchOptions.mSideStagePosition = i13;
                                Intent intent5 = stageLaunchOptions.mSideStageIntent;
                                UserHandle userHandle = stageLaunchOptions.mSideStageUserHandle;
                                stageLaunchOptions.mSideStageIntent = stageLaunchOptions.mMainStageIntent;
                                stageLaunchOptions.mSideStageUserHandle = stageLaunchOptions.mMainStageUserHandle;
                                stageLaunchOptions.mMainStageIntent = intent5;
                                stageLaunchOptions.mMainStageUserHandle = userHandle;
                            } else {
                                stageLaunchOptions.mSideStagePosition = i13;
                            }
                        }
                        if (CoreRune.MW_MULTI_SPLIT && intent2 != null) {
                            i2 = 0;
                            ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                                /* JADX WARN: Code restructure failed: missing block: B:36:0x007b, code lost:
                                
                                    if (r13 == false) goto L38;
                                 */
                                @Override // java.util.function.Consumer
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                                */
                                public final void accept(java.lang.Object r14) {
                                    /*
                                        Method dump skipped, instructions count: 406
                                        To view this dump change 'Code comments level' option to 'DEBUG'
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                                }
                            });
                        } else {
                            i2 = 0;
                            final int i14 = 1;
                            ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    /*  JADX ERROR: Method code generation error
                                        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                        	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                        */
                                    /*
                                        Method dump skipped, instructions count: 406
                                        To view this dump change 'Code comments level' option to 'DEBUG'
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                                }
                            });
                        }
                        if (CoreRune.MW_SPLIT_APP_PAIR_SA_LOGGING) {
                            SplitScreenProxyService.this.getClass();
                            String str2 = stageLaunchOptions.mLaunchFrom;
                            if (str2 == null) {
                                Slog.d("SplitScreenProxyService", "mLaunchFrom is null");
                                return;
                            }
                            int hashCode = str2.hashCode();
                            if (hashCode != -1537237906) {
                                if (hashCode != 3208415) {
                                    if (hashCode == 1184899919 && str2.equals("appsEdge")) {
                                        i3 = 2;
                                    }
                                    i3 = i;
                                } else {
                                    if (str2.equals(BcSmartspaceDataPlugin.UI_SURFACE_HOME_SCREEN)) {
                                        i3 = 1;
                                    }
                                    i3 = i;
                                }
                            } else {
                                if (str2.equals("taskbar")) {
                                    i3 = i2;
                                }
                                i3 = i;
                            }
                            if (i3 != 0) {
                                if (i3 != 1) {
                                    if (i3 != 2) {
                                        str = null;
                                    } else {
                                        str = "From Apps edge_AppPair";
                                    }
                                } else {
                                    str = "From App pair on Home";
                                }
                            } else {
                                str = "From App pair on TaskBar";
                            }
                            if (str != null) {
                                CoreSaLogger.logForAdvanced("1000", str);
                                if (CoreRune.MW_MULTI_SPLIT && intent2 != null) {
                                    CoreSaLogger.logForAdvanced("1021", str);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Slog.w("SplitScreenProxyService", "START_INTENTS StageLaunchOptions has less intent");
                    return;
                case 2:
                    if (stageLaunchOptions.mLaunchTaskId != -1 && stageLaunchOptions.mSideStageIntent != null) {
                        final int i15 = 2;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    }
                    Slog.w("SplitScreenProxyService", "START_TASK_AND_INTENT has less data. taskId:" + stageLaunchOptions.mLaunchTaskId + ", sideStageIntent:" + stageLaunchOptions.mSideStageIntent);
                    return;
                case 3:
                    if (stageLaunchOptions.mSideStageIntent == null) {
                        Slog.w("SplitScreenProxyService", "START_INTENT has no intent");
                        return;
                    }
                    if (CoreRune.MW_MULTI_SPLIT && stageLaunchOptions.mPendingIntent != null && stageLaunchOptions.mCellStageWindowConfigPosition != 0) {
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    }
                    if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && stageLaunchOptions.mSplitDivision != -1 && !SplitScreenProxyService.this.mSplitScreenController.isSplitScreenVisible()) {
                        final int i16 = 4;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    } else {
                        final int i17 = 5;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    }
                case 4:
                    if (i8 != -1 && i7 != -1) {
                        final int i18 = 6;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    } else {
                        Slog.w("SplitScreenProxyService", "START_SPLIT_TASKS has not enough task ids");
                        return;
                    }
                case 5:
                    if (intent == null && i6 == -1) {
                        Slog.w("SplitScreenProxyService", "OPEN_IN_SPLIT_WITH_TAP has no valid start info");
                        return;
                    } else {
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    }
                case 6:
                    if (i8 != -1 && i7 != -1) {
                        final int i19 = 7;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    } else {
                        Slog.w("SplitScreenProxyService", "START_MULTI_SPLIT_TASKS has not enough task ids");
                        return;
                    }
                case 7:
                default:
                    super.handleMessage(message);
                    return;
                case 8:
                    if (stageLaunchOptions.mLaunchTaskId == -1 && stageLaunchOptions.mMainStageIntent == null) {
                        Slog.w("SplitScreenProxyService", "OPEN_IN_SPLIT_WITH_ALLAPPS has no valid start info");
                        return;
                    } else {
                        final int i20 = 9;
                        ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0
                            /*  JADX ERROR: Method code generation error
                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                */
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object r14) {
                                /*
                                    Method dump skipped, instructions count: 406
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
                            }
                        });
                        return;
                    }
                case 9:
                    ExecutorUtils.executeRemoteCall(SplitScreenProxyService.this.mSplitScreenController, new SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda1());
                    return;
            }
        }

        private MessageHandler() {
        }
    }

    public SplitScreenProxyService() {
        AnonymousClass1 anonymousClass1;
        if (TEST_MOCK_REMOTE_TRANSITION) {
            anonymousClass1 = new AnonymousClass1();
        } else {
            anonymousClass1 = null;
        }
        this.mTestRemoteTransition = anonymousClass1;
    }

    public final PendingIntent makePendingIntent(Intent intent, UserHandle userHandle) {
        if (userHandle == null) {
            userHandle = UserHandle.CURRENT;
        }
        return PendingIntent.getActivityAsUser(this, 0, intent, 167772160, null, userHandle);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (LocalServices.getService(SplitScreenProxyService.class) == null) {
            LocalServices.addService(SplitScreenProxyService.class, this);
        }
        Messenger messenger = new Messenger(new MessageHandler(this, 0));
        this.mMessenger = messenger;
        return messenger.getBinder();
    }
}
