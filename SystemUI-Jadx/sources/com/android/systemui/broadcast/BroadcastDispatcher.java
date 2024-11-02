package com.android.systemui.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.IndentingPrintWriter;
import android.util.SparseArray;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.internal.util.Preconditions;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.UserBroadcastDispatcher;
import com.android.systemui.broadcast.logging.BroadcastDispatcherLogger;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.EmptySequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BroadcastDispatcher implements Dumpable {
    public final Executor broadcastExecutor;
    public final Looper broadcastLooper;
    public final Context context;
    public final DumpManager dumpManager;
    public final BroadcastDispatcher$handler$1 handler;
    public final BroadcastDispatcherLogger logger;
    public final Executor mainExecutor;
    public final SparseArray receiversByUser = new SparseArray(20);
    public final PendingRemovalStore removalPendingStore;
    public final UserTracker userTracker;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.broadcast.BroadcastDispatcher$handler$1] */
    public BroadcastDispatcher(Context context, Executor executor, final Looper looper, Executor executor2, DumpManager dumpManager, BroadcastDispatcherLogger broadcastDispatcherLogger, UserTracker userTracker, PendingRemovalStore pendingRemovalStore) {
        this.context = context;
        this.mainExecutor = executor;
        this.broadcastLooper = looper;
        this.broadcastExecutor = executor2;
        this.dumpManager = dumpManager;
        this.logger = broadcastDispatcherLogger;
        this.userTracker = userTracker;
        this.removalPendingStore = pendingRemovalStore;
        this.handler = new Handler(looper) { // from class: com.android.systemui.broadcast.BroadcastDispatcher$handler$1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int identifier;
                Sequence sequence;
                Sequence sequence2;
                int i = message.what;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            super.handleMessage(message);
                            return;
                        }
                        int i2 = message.arg1;
                        if (i2 == -2) {
                            i2 = ((UserTrackerImpl) BroadcastDispatcher.this.userTracker).getUserId();
                        }
                        UserBroadcastDispatcher userBroadcastDispatcher = (UserBroadcastDispatcher) BroadcastDispatcher.this.receiversByUser.get(i2);
                        if (userBroadcastDispatcher != null) {
                            userBroadcastDispatcher.unregisterReceiver((BroadcastReceiver) message.obj);
                        }
                        PendingRemovalStore pendingRemovalStore2 = BroadcastDispatcher.this.removalPendingStore;
                        BroadcastReceiver broadcastReceiver = (BroadcastReceiver) message.obj;
                        synchronized (pendingRemovalStore2.pendingRemoval) {
                            pendingRemovalStore2.pendingRemoval.remove(i2, broadcastReceiver);
                        }
                        pendingRemovalStore2.logger.logClearedAfterRemoval(i2, broadcastReceiver);
                        return;
                    }
                    int size = BroadcastDispatcher.this.receiversByUser.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ((UserBroadcastDispatcher) BroadcastDispatcher.this.receiversByUser.valueAt(i3)).unregisterReceiver((BroadcastReceiver) message.obj);
                    }
                    PendingRemovalStore pendingRemovalStore3 = BroadcastDispatcher.this.removalPendingStore;
                    BroadcastReceiver broadcastReceiver2 = (BroadcastReceiver) message.obj;
                    synchronized (pendingRemovalStore3.pendingRemoval) {
                        pendingRemovalStore3.pendingRemoval.remove(-1, broadcastReceiver2);
                    }
                    pendingRemovalStore3.logger.logClearedAfterRemoval(-1, broadcastReceiver2);
                    return;
                }
                ReceiverData receiverData = (ReceiverData) message.obj;
                int i4 = message.arg1;
                if (receiverData.user.getIdentifier() == -2) {
                    identifier = ((UserTrackerImpl) BroadcastDispatcher.this.userTracker).getUserId();
                } else {
                    identifier = receiverData.user.getIdentifier();
                }
                if (identifier >= -1) {
                    BroadcastDispatcher broadcastDispatcher = BroadcastDispatcher.this;
                    UserBroadcastDispatcher userBroadcastDispatcher2 = (UserBroadcastDispatcher) broadcastDispatcher.receiversByUser.get(identifier, broadcastDispatcher.createUBRForUser(identifier));
                    BroadcastDispatcher.this.receiversByUser.put(identifier, userBroadcastDispatcher2);
                    Preconditions.checkState(userBroadcastDispatcher2.workerLooper.isCurrentThread(), userBroadcastDispatcher2.wrongThreadErrorMsg);
                    ArrayMap arrayMap = userBroadcastDispatcher2.receiverToActions;
                    BroadcastReceiver broadcastReceiver3 = receiverData.receiver;
                    Object obj = arrayMap.get(broadcastReceiver3);
                    if (obj == null) {
                        obj = new ArraySet();
                        arrayMap.put(broadcastReceiver3, obj);
                    }
                    Collection collection = (Collection) obj;
                    IntentFilter intentFilter = receiverData.filter;
                    Iterator<String> actionsIterator = intentFilter.actionsIterator();
                    if (actionsIterator != null) {
                        sequence = SequencesKt__SequencesKt.asSequence(actionsIterator);
                    } else {
                        sequence = EmptySequence.INSTANCE;
                    }
                    CollectionsKt__MutableCollectionsKt.addAll(collection, sequence);
                    Iterator<String> actionsIterator2 = intentFilter.actionsIterator();
                    while (actionsIterator2.hasNext()) {
                        String next = actionsIterator2.next();
                        String str = receiverData.permission;
                        UserBroadcastDispatcher.ReceiverProperties receiverProperties = new UserBroadcastDispatcher.ReceiverProperties(next, i4, str);
                        ArrayMap arrayMap2 = userBroadcastDispatcher2.actionsToActionsReceivers;
                        Object obj2 = arrayMap2.get(receiverProperties);
                        if (obj2 == null) {
                            obj2 = userBroadcastDispatcher2.createActionReceiver$frameworks__base__packages__SystemUI__android_common__SystemUI_core(next, str, i4);
                            arrayMap2.put(receiverProperties, obj2);
                        }
                        ActionReceiver actionReceiver = (ActionReceiver) obj2;
                        if (intentFilter.hasAction(actionReceiver.action)) {
                            ArraySet arraySet = actionReceiver.activeCategories;
                            Iterator<String> categoriesIterator = intentFilter.categoriesIterator();
                            if (categoriesIterator != null) {
                                sequence2 = SequencesKt__SequencesKt.asSequence(categoriesIterator);
                            } else {
                                sequence2 = EmptySequence.INSTANCE;
                            }
                            boolean addAll = CollectionsKt__MutableCollectionsKt.addAll(arraySet, sequence2);
                            if (actionReceiver.receiverDatas.add(receiverData) && actionReceiver.receiverDatas.size() == 1) {
                                actionReceiver.registerAction.invoke(actionReceiver, actionReceiver.createFilter());
                                actionReceiver.registered = true;
                            } else if (addAll) {
                                actionReceiver.unregisterAction.invoke(actionReceiver);
                                actionReceiver.registerAction.invoke(actionReceiver, actionReceiver.createFilter());
                            }
                        } else {
                            throw new IllegalArgumentException("Trying to attach to " + actionReceiver.action + " without correct action,receiver: " + broadcastReceiver3);
                        }
                    }
                    userBroadcastDispatcher2.logger.logReceiverRegistered(userBroadcastDispatcher2.userId, broadcastReceiver3, i4);
                    return;
                }
                throw new IllegalStateException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Attempting to register receiver for invalid user {", identifier, "}"));
            }
        };
    }

    public static Flow broadcastFlow$default(BroadcastDispatcher broadcastDispatcher, IntentFilter intentFilter, UserHandle userHandle, Function2 function2, int i) {
        if ((i & 2) != 0) {
            userHandle = null;
        }
        UserHandle userHandle2 = userHandle;
        int i2 = (i & 4) != 0 ? 2 : 0;
        broadcastDispatcher.getClass();
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        BroadcastDispatcher$broadcastFlow$1 broadcastDispatcher$broadcastFlow$1 = new BroadcastDispatcher$broadcastFlow$1(broadcastDispatcher, intentFilter, userHandle2, i2, null, function2, null);
        conflatedCallbackFlow.getClass();
        return ConflatedCallbackFlow.conflatedCallbackFlow(broadcastDispatcher$broadcastFlow$1);
    }

    public static /* synthetic */ void registerReceiver$default(BroadcastDispatcher broadcastDispatcher, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Executor executor, UserHandle userHandle, int i, String str, int i2) {
        Executor executor2;
        UserHandle userHandle2;
        int i3;
        String str2;
        if ((i2 & 4) != 0) {
            executor2 = null;
        } else {
            executor2 = executor;
        }
        if ((i2 & 8) != 0) {
            userHandle2 = null;
        } else {
            userHandle2 = userHandle;
        }
        if ((i2 & 16) != 0) {
            i3 = 2;
        } else {
            i3 = i;
        }
        if ((i2 & 32) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        broadcastDispatcher.registerReceiver(broadcastReceiver, intentFilter, executor2, userHandle2, i3, str2);
    }

    public static void registerReceiverWithHandler$default(BroadcastDispatcher broadcastDispatcher, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Handler handler, UserHandle userHandle, int i) {
        int i2;
        if ((i & 8) != 0) {
            userHandle = broadcastDispatcher.context.getUser();
        }
        UserHandle userHandle2 = userHandle;
        if ((i & 16) != 0) {
            i2 = 2;
        } else {
            i2 = 0;
        }
        broadcastDispatcher.getClass();
        broadcastDispatcher.registerReceiver(broadcastReceiver, intentFilter, new HandlerExecutor(handler), userHandle2, i2, null);
    }

    public final Flow broadcastFlow(IntentFilter intentFilter, UserHandle userHandle, int i, String str) {
        BroadcastDispatcher$broadcastFlow$2 broadcastDispatcher$broadcastFlow$2 = new Function2() { // from class: com.android.systemui.broadcast.BroadcastDispatcher$broadcastFlow$2
            @Override // kotlin.jvm.functions.Function2
            public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return Unit.INSTANCE;
            }
        };
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        BroadcastDispatcher$broadcastFlow$1 broadcastDispatcher$broadcastFlow$1 = new BroadcastDispatcher$broadcastFlow$1(this, intentFilter, userHandle, i, str, broadcastDispatcher$broadcastFlow$2, null);
        conflatedCallbackFlow.getClass();
        return ConflatedCallbackFlow.conflatedCallbackFlow(broadcastDispatcher$broadcastFlow$1);
    }

    public UserBroadcastDispatcher createUBRForUser(int i) {
        return new UserBroadcastDispatcher(this.context, i, this.broadcastLooper, this.broadcastExecutor, this.logger, this.removalPendingStore);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("Broadcast dispatcher:");
        PrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        indentingPrintWriter.increaseIndent();
        SparseArray sparseArray = this.receiversByUser;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            indentingPrintWriter.println("User " + sparseArray.keyAt(i));
            ((UserBroadcastDispatcher) sparseArray.valueAt(i)).dump(indentingPrintWriter, strArr);
        }
        indentingPrintWriter.println("Pending removal:");
        this.removalPendingStore.dump(indentingPrintWriter, strArr);
        indentingPrintWriter.decreaseIndent();
    }

    public final void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Executor executor, UserHandle userHandle) {
        registerReceiver$default(this, broadcastReceiver, intentFilter, executor, userHandle, 0, null, 48);
    }

    public final void registerReceiverWithHandler(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Handler handler) {
        registerReceiverWithHandler$default(this, broadcastReceiver, intentFilter, handler, null, 56);
    }

    public final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        PendingRemovalStore pendingRemovalStore = this.removalPendingStore;
        pendingRemovalStore.logger.logTagForRemoval(broadcastReceiver);
        synchronized (pendingRemovalStore.pendingRemoval) {
            pendingRemovalStore.pendingRemoval.add(-1, broadcastReceiver);
        }
        obtainMessage(1, broadcastReceiver).sendToTarget();
    }

    public final void registerReceiver(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        registerReceiver$default(this, broadcastReceiver, intentFilter, null, null, 0, null, 60);
    }

    public final void registerReceiverWithHandler(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Handler handler, UserHandle userHandle) {
        registerReceiverWithHandler$default(this, broadcastReceiver, intentFilter, handler, userHandle, 48);
    }

    public static /* synthetic */ Flow broadcastFlow$default(BroadcastDispatcher broadcastDispatcher, IntentFilter intentFilter, UserHandle userHandle, int i, String str, int i2) {
        if ((i2 & 2) != 0) {
            userHandle = null;
        }
        if ((i2 & 4) != 0) {
            i = 2;
        }
        if ((i2 & 8) != 0) {
            str = null;
        }
        return broadcastDispatcher.broadcastFlow(intentFilter, userHandle, i, str);
    }

    public final void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Executor executor, UserHandle userHandle, int i, String str) {
        Integer num;
        StringBuilder sb = new StringBuilder();
        if (intentFilter.countActions() == 0) {
            sb.append("Filter must contain at least one action. ");
        }
        if (intentFilter.countDataAuthorities() != 0) {
            sb.append("Filter cannot contain DataAuthorities. ");
        }
        if (intentFilter.countDataPaths() != 0) {
            sb.append("Filter cannot contain DataPaths. ");
        }
        int countDataSchemes = intentFilter.countDataSchemes();
        if (countDataSchemes != 0) {
            Iterator<String> actionsIterator = intentFilter.actionsIterator();
            if (actionsIterator != null) {
                Iterator it = SequencesKt___SequencesKt.filter(SequencesKt__SequencesKt.asSequence(actionsIterator), new Function1() { // from class: com.android.systemui.broadcast.BroadcastDispatcher$checkFilter$actionCount$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(((String) obj).startsWith("android.intent.action.PACKAGE_"));
                    }
                }).iterator();
                int i2 = 0;
                do {
                    FilteringSequence$iterator$1 filteringSequence$iterator$1 = (FilteringSequence$iterator$1) it;
                    if (filteringSequence$iterator$1.hasNext()) {
                        filteringSequence$iterator$1.next();
                        i2++;
                    } else {
                        num = Integer.valueOf(i2);
                    }
                } while (i2 >= 0);
                throw new ArithmeticException("Count overflow has happened.");
            }
            num = null;
            if (num != null && num.intValue() == 0) {
                sb.append("Filter cannot contain DataSchemes without android.intent.action.PACKAGE_* action");
            } else if (!intentFilter.hasDataScheme("package") || countDataSchemes != 1) {
                sb.append("Filter needs only \"package\" data scheme");
            }
        }
        if (intentFilter.countDataTypes() != 0) {
            sb.append("Filter cannot contain DataTypes. ");
        }
        if (intentFilter.getPriority() != 0) {
            sb.append("Filter cannot modify priority. ");
        }
        if (TextUtils.isEmpty(sb)) {
            if (executor == null) {
                executor = this.mainExecutor;
            }
            Executor executor2 = executor;
            if (userHandle == null) {
                userHandle = this.context.getUser();
            }
            obtainMessage(0, i, 0, new ReceiverData(broadcastReceiver, intentFilter, executor2, userHandle, str)).sendToTarget();
            return;
        }
        throw new IllegalArgumentException(sb.toString());
    }
}
