package com.android.systemui.statusbar.notification.collection;

import android.os.Trace;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.android.internal.util.Preconditions;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.Flags;
import com.android.systemui.statusbar.NotificationInteractionTracker;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.listbuilder.NotifSection;
import com.android.systemui.statusbar.notification.collection.listbuilder.PipelineState;
import com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort;
import com.android.systemui.statusbar.notification.collection.listbuilder.ShadeListBuilderLogger;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.DefaultNotifStabilityManager;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.Pluggable;
import com.android.systemui.statusbar.notification.collection.render.RenderStageManager$attach$1;
import com.android.systemui.util.Assert;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeListBuilder implements Dumpable, PipelineDumpable {
    public static final AnonymousClass2 DEFAULT_SECTIONER = new NotifSectioner("UnknownSection", 0) { // from class: com.android.systemui.statusbar.notification.collection.ShadeListBuilder.2
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final boolean isInSection(ListEntry listEntry) {
            return true;
        }
    };
    public static final int MAX_CONSECUTIVE_REENTRANT_REBUILDS = 3;
    public final NotifPipelineChoreographer mChoreographer;
    public final DumpManager mDumpManager;
    public final NotificationInteractionTracker mInteractionTracker;
    public final ShadeListBuilderLogger mLogger;
    public NotifStabilityManager mNotifStabilityManager;
    public RenderStageManager$attach$1 mOnRenderListListener;
    public final SystemClock mSystemClock;
    public final ArrayList mTempSectionMembers = new ArrayList();
    public List mNotifList = new ArrayList();
    public List mNewNotifList = new ArrayList();
    public final SemiStableSort mSemiStableSort = new SemiStableSort();
    public final ShadeListBuilder$$ExternalSyntheticLambda0 mStableOrder = new ShadeListBuilder$$ExternalSyntheticLambda0(this, 0);
    public final PipelineState mPipelineState = new PipelineState();
    public final Map mGroups = new ArrayMap();
    public Collection mAllEntries = Collections.emptyList();
    public Collection mPendingEntries = null;
    public int mIterationCount = 0;
    public final List mNotifPreGroupFilters = new ArrayList();
    public final List mNotifPromoters = new ArrayList();
    public final List mNotifFinalizeFilters = new ArrayList();
    public final List mNotifComparators = new ArrayList();
    public final List mNotifSections = new ArrayList();
    public final List mOnBeforeTransformGroupsListeners = new ArrayList();
    public final List mOnBeforeSortListeners = new ArrayList();
    public final List mOnBeforeFinalizeFilterListeners = new ArrayList();
    public final List mOnBeforeRenderListListeners = new ArrayList();
    public List mReadOnlyNotifList = Collections.unmodifiableList(this.mNotifList);
    public List mReadOnlyNewNotifList = Collections.unmodifiableList(this.mNewNotifList);
    public int mConsecutiveReentrantRebuilds = 0;
    public final AnonymousClass1 mReadyForBuildListener = new AnonymousClass1();
    public final ShadeListBuilder$$ExternalSyntheticLambda1 mTopLevelComparator = new Comparator() { // from class: com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i;
            int i2;
            NotifComparator notifComparator;
            int compare;
            ShadeListBuilder shadeListBuilder = ShadeListBuilder.this;
            ListEntry listEntry = (ListEntry) obj;
            ListEntry listEntry2 = (ListEntry) obj2;
            shadeListBuilder.getClass();
            ListAttachState listAttachState = listEntry.mAttachState;
            ListEntry.checkNull(listAttachState);
            NotifSection notifSection = listAttachState.section;
            if (notifSection != null) {
                i = notifSection.index;
            } else {
                i = -1;
            }
            ListAttachState listAttachState2 = listEntry2.mAttachState;
            ListEntry.checkNull(listAttachState2);
            NotifSection notifSection2 = listAttachState2.section;
            if (notifSection2 != null) {
                i2 = notifSection2.index;
            } else {
                i2 = -1;
            }
            int compare2 = Integer.compare(i, i2);
            if (compare2 == 0) {
                NotifSection section = listEntry.getSection();
                if (section == listEntry2.getSection()) {
                    if (section != null) {
                        notifComparator = section.comparator;
                    } else {
                        notifComparator = null;
                    }
                    if (notifComparator == null || (compare = notifComparator.compare(listEntry, listEntry2)) == 0) {
                        int i3 = 0;
                        while (true) {
                            ArrayList arrayList = (ArrayList) shadeListBuilder.mNotifComparators;
                            if (i3 < arrayList.size()) {
                                int compare3 = ((NotifComparator) arrayList.get(i3)).compare(listEntry, listEntry2);
                                if (compare3 != 0) {
                                    return compare3;
                                }
                                i3++;
                            } else {
                                int compare4 = Integer.compare(listEntry.getRepresentativeEntry().mRanking.getRank(), listEntry2.getRepresentativeEntry().mRanking.getRank());
                                if (compare4 == 0) {
                                    return Long.compare(listEntry.getRepresentativeEntry().mSbn.getNotification().when, listEntry2.getRepresentativeEntry().mSbn.getNotification().when) * (-1);
                                }
                                return compare4;
                            }
                        }
                    } else {
                        return compare;
                    }
                } else {
                    throw new RuntimeException("Entry ordering should only be done within sections");
                }
            } else {
                return compare2;
            }
        }
    };
    public final ShadeListBuilder$$ExternalSyntheticLambda2 mGroupChildrenComparator = new ShadeListBuilder$$ExternalSyntheticLambda2();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.ShadeListBuilder$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda1] */
    public ShadeListBuilder(DumpManager dumpManager, NotifPipelineChoreographer notifPipelineChoreographer, NotifPipelineFlags notifPipelineFlags, NotificationInteractionTracker notificationInteractionTracker, ShadeListBuilderLogger shadeListBuilderLogger, SystemClock systemClock) {
        this.mSystemClock = systemClock;
        this.mLogger = shadeListBuilderLogger;
        notifPipelineFlags.getClass();
        Flags.INSTANCE.getClass();
        notifPipelineFlags.featureFlags.getClass();
        this.mInteractionTracker = notificationInteractionTracker;
        this.mChoreographer = notifPipelineChoreographer;
        this.mDumpManager = dumpManager;
        setSectioners(Collections.emptyList());
    }

    public static void annulAddition(ListEntry listEntry) {
        ListAttachState listAttachState = listEntry.mAttachState;
        ListEntry.checkNull(listAttachState);
        listAttachState.parent = null;
        listAttachState.section = null;
        listAttachState.promoter = null;
        listAttachState.stableIndex = -1;
    }

    public static boolean applyFilters(NotificationEntry notificationEntry, long j, List list) {
        NotifFilter notifFilter;
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                notifFilter = (NotifFilter) arrayList.get(i);
                if (notifFilter.shouldFilterOut(notificationEntry, j)) {
                    break;
                }
                i++;
            } else {
                notifFilter = null;
                break;
            }
        }
        ListAttachState listAttachState = notificationEntry.mAttachState;
        ListEntry.checkNull(listAttachState);
        listAttachState.excludingFilter = notifFilter;
        if (notifFilter != null) {
            notificationEntry.initializationTime = -1L;
        }
        if (notifFilter == null) {
            return false;
        }
        return true;
    }

    public static void callOnCleanup(List list) {
        for (int i = 0; i < list.size(); i++) {
            ((Pluggable) list.get(i)).onCleanup();
        }
    }

    public static <T> boolean isSorted(List<T> list, Comparator<? super T> comparator) {
        if (list.size() <= 1) {
            return true;
        }
        Iterator<T> it = list.iterator();
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public final void applyNewNotifList() {
        this.mNotifList.clear();
        List list = this.mNotifList;
        this.mNotifList = this.mNewNotifList;
        this.mNewNotifList = list;
        List list2 = this.mReadOnlyNotifList;
        this.mReadOnlyNotifList = this.mReadOnlyNewNotifList;
        this.mReadOnlyNewNotifList = list2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0243, code lost:
    
        r10 = r9.mPreviousAttachState;
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r10);
        r11 = r9.wasAttachedInPreviousPass();
        r13 = r9.mAttachState;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x024e, code lost:
    
        if (r11 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0252, code lost:
    
        if (r12 == r10.section) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0260, code lost:
    
        if (getStabilityManager().isSectionChangeAllowed(r9.getRepresentativeEntry()) != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0262, code lost:
    
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r13);
        r13.suppressedChanges.section = r12;
        r12 = r10.section;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x026b, code lost:
    
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r13);
        r13.section = r12;
        r10 = r9.getRepresentativeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0274, code lost:
    
        if (r10 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0276, code lost:
    
        r11 = r10.mAttachState;
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r11);
        r11.section = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x027d, code lost:
    
        if (r12 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x027f, code lost:
    
        r10.mBucket = r12.bucket;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0285, code lost:
    
        if ((r9 instanceof com.android.systemui.statusbar.notification.collection.GroupEntry) == false) goto L363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0287, code lost:
    
        r9 = ((com.android.systemui.statusbar.notification.collection.GroupEntry) r9).mUnmodifiableChildren.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0293, code lost:
    
        if (r9.hasNext() == false) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0295, code lost:
    
        r10 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r9.next();
        r11 = r10.mAttachState;
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r11);
        r11.section = r12;
        r11 = r10.mAttachState;
        com.android.systemui.statusbar.notification.collection.ListEntry.checkNull(r11);
        r11.section = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02a9, code lost:
    
        if (r12 == null) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02ab, code lost:
    
        r10.mBucket = r12.bucket;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void buildList() {
        /*
            Method dump skipped, instructions count: 1965
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.ShadeListBuilder.buildList():void");
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("\tShadeListBuilder shade notifications:");
        Assert.isMainThread();
        PipelineState pipelineState = this.mPipelineState;
        pipelineState.requireState();
        if (this.mReadOnlyNotifList.size() == 0) {
            printWriter.println("\t\t None");
        }
        Assert.isMainThread();
        pipelineState.requireState();
        List list = this.mReadOnlyNotifList;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            ListEntry listEntry = (ListEntry) list.get(i);
            String num = Integer.toString(i);
            String logKey = NotificationUtils.logKey(listEntry);
            NotificationInteractionTracker notificationInteractionTracker = this.mInteractionTracker;
            ListDumper.dumpEntry(listEntry, num, "\t\t", sb, true, notificationInteractionTracker.hasUserInteractedWith(logKey));
            if (listEntry instanceof GroupEntry) {
                GroupEntry groupEntry = (GroupEntry) listEntry;
                NotificationEntry notificationEntry = groupEntry.mSummary;
                if (notificationEntry != null) {
                    ListDumper.dumpEntry(notificationEntry, i + ":*", "\t\t  ", sb, true, notificationInteractionTracker.hasUserInteractedWith(NotificationUtils.logKey(notificationEntry)));
                }
                int i2 = 0;
                while (true) {
                    List list2 = groupEntry.mUnmodifiableChildren;
                    if (i2 < list2.size()) {
                        NotificationEntry notificationEntry2 = (NotificationEntry) list2.get(i2);
                        ListDumper.dumpEntry(notificationEntry2, i + "." + i2, "\t\t  ", sb, true, notificationInteractionTracker.hasUserInteractedWith(NotificationUtils.logKey(notificationEntry2)));
                        i2++;
                    }
                }
            }
        }
        printWriter.println(sb.toString());
    }

    @Override // com.android.systemui.statusbar.notification.collection.PipelineDumpable
    public final void dumpPipeline(PipelineDumper pipelineDumper) {
        pipelineDumper.dump(this.mChoreographer, "choreographer");
        pipelineDumper.dump(this.mNotifPreGroupFilters, "notifPreGroupFilters");
        pipelineDumper.dump(this.mOnBeforeTransformGroupsListeners, "onBeforeTransformGroupsListeners");
        pipelineDumper.dump(this.mNotifPromoters, "notifPromoters");
        pipelineDumper.dump(this.mOnBeforeSortListeners, "onBeforeSortListeners");
        pipelineDumper.dump(this.mNotifSections, "notifSections");
        pipelineDumper.dump(this.mNotifComparators, "notifComparators");
        pipelineDumper.dump(this.mOnBeforeFinalizeFilterListeners, "onBeforeFinalizeFilterListeners");
        pipelineDumper.dump(this.mNotifFinalizeFilters, "notifFinalizeFilters");
        pipelineDumper.dump(this.mOnBeforeRenderListListeners, "onBeforeRenderListListeners");
        pipelineDumper.dump(this.mOnRenderListListener, "onRenderListListener");
    }

    public final void filterNotifs(Collection collection, List list, List list2) {
        Trace.beginSection("ShadeListBuilder.filterNotifs");
        ((SystemClockImpl) this.mSystemClock).getClass();
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ListEntry listEntry = (ListEntry) it.next();
            if (listEntry instanceof GroupEntry) {
                GroupEntry groupEntry = (GroupEntry) listEntry;
                NotificationEntry notificationEntry = groupEntry.mSummary;
                if (applyFilters(notificationEntry, uptimeMillis, list2)) {
                    groupEntry.mSummary = null;
                    annulAddition(notificationEntry);
                }
                ArrayList arrayList = (ArrayList) groupEntry.mChildren;
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    NotificationEntry notificationEntry2 = (NotificationEntry) arrayList.get(size);
                    if (applyFilters(notificationEntry2, uptimeMillis, list2)) {
                        arrayList.remove(notificationEntry2);
                        annulAddition(notificationEntry2);
                    }
                }
                list.add(groupEntry);
            } else if (applyFilters((NotificationEntry) listEntry, uptimeMillis, list2)) {
                annulAddition(listEntry);
            } else {
                list.add(listEntry);
            }
        }
        Trace.endSection();
    }

    public final NotifStabilityManager getStabilityManager() {
        NotifStabilityManager notifStabilityManager = this.mNotifStabilityManager;
        if (notifStabilityManager == null) {
            return DefaultNotifStabilityManager.INSTANCE;
        }
        return notifStabilityManager;
    }

    public final void logAttachStateChanges(ListEntry listEntry) {
        boolean z;
        NotifSection notifSection;
        NotifSection notifSection2;
        NotifPromoter notifPromoter;
        NotifPromoter notifPromoter2;
        ListAttachState listAttachState = listEntry.mAttachState;
        ListEntry.checkNull(listAttachState);
        ListAttachState listAttachState2 = listEntry.mPreviousAttachState;
        ListEntry.checkNull(listAttachState2);
        if (!Objects.equals(listAttachState, listAttachState2)) {
            int i = this.mIterationCount;
            GroupEntry groupEntry = listAttachState2.parent;
            GroupEntry groupEntry2 = listAttachState.parent;
            ShadeListBuilderLogger shadeListBuilderLogger = this.mLogger;
            shadeListBuilderLogger.logEntryAttachStateChanged(i, listEntry, groupEntry, groupEntry2);
            GroupEntry groupEntry3 = listAttachState.parent;
            GroupEntry groupEntry4 = listAttachState2.parent;
            if (groupEntry3 != groupEntry4) {
                shadeListBuilderLogger.logParentChanged(this.mIterationCount, groupEntry4, groupEntry3);
            }
            SuppressedAttachState suppressedAttachState = listAttachState.suppressedChanges;
            GroupEntry groupEntry5 = suppressedAttachState.parent;
            GroupEntry groupEntry6 = listAttachState2.suppressedChanges.parent;
            if (groupEntry5 != null && (groupEntry6 == null || !groupEntry6.mKey.equals(groupEntry5.mKey))) {
                shadeListBuilderLogger.logParentChangeSuppressedStarted(this.mIterationCount, groupEntry5, listAttachState.parent);
            }
            if (groupEntry6 != null && groupEntry5 == null) {
                shadeListBuilderLogger.logParentChangeSuppressedStopped(this.mIterationCount, groupEntry6, listAttachState2.parent);
            }
            NotifSection notifSection3 = suppressedAttachState.section;
            if (notifSection3 != null) {
                shadeListBuilderLogger.logSectionChangeSuppressed(this.mIterationCount, notifSection3, listAttachState.section);
            }
            if (suppressedAttachState.wasPruneSuppressed) {
                shadeListBuilderLogger.logGroupPruningSuppressed(this.mIterationCount, listAttachState.parent);
            }
            if (!Objects.equals(listAttachState.groupPruneReason, listAttachState2.groupPruneReason)) {
                shadeListBuilderLogger.logPrunedReasonChanged(this.mIterationCount, listAttachState2.groupPruneReason, listAttachState.groupPruneReason);
            }
            NotifFilter notifFilter = listAttachState.excludingFilter;
            NotifFilter notifFilter2 = listAttachState2.excludingFilter;
            if (notifFilter != notifFilter2) {
                shadeListBuilderLogger.logFilterChanged(this.mIterationCount, notifFilter2, notifFilter);
            }
            if (listAttachState.parent == null && listAttachState2.parent != null) {
                z = true;
            } else {
                z = false;
            }
            if (!z && (notifPromoter = listAttachState.promoter) != (notifPromoter2 = listAttachState2.promoter)) {
                shadeListBuilderLogger.logPromoterChanged(this.mIterationCount, notifPromoter2, notifPromoter);
            }
            if (!z && (notifSection = listAttachState.section) != (notifSection2 = listAttachState2.section)) {
                shadeListBuilderLogger.logSectionChanged(this.mIterationCount, notifSection2, notifSection);
            }
        }
    }

    public final boolean maybeSuppressGroupChange(NotificationEntry notificationEntry, List list) {
        ListAttachState listAttachState = notificationEntry.mPreviousAttachState;
        ListEntry.checkNull(listAttachState);
        GroupEntry groupEntry = listAttachState.parent;
        if (groupEntry == null || groupEntry == notificationEntry.getParent()) {
            return false;
        }
        if (groupEntry != GroupEntry.ROOT_ENTRY && groupEntry.getParent() == null) {
            return false;
        }
        getStabilityManager().isGroupChangeAllowed();
        return false;
    }

    public final void pruneGroupAtIndexAndPromoteAnyChildren(List list, GroupEntry groupEntry, int i) {
        boolean z;
        boolean z2;
        String str;
        if (((ListEntry) list.remove(i)) == groupEntry) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        List list2 = groupEntry.mChildren;
        NotificationEntry notificationEntry = groupEntry.mSummary;
        if (notificationEntry != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        PipelineState pipelineState = this.mPipelineState;
        if (z2) {
            groupEntry.mSummary = null;
            annulAddition(list, notificationEntry);
            ListAttachState listAttachState = notificationEntry.mAttachState;
            ListEntry.checkNull(listAttachState);
            listAttachState.groupPruneReason = "SUMMARY with too few children @ " + PipelineState.getStateName(pipelineState.mState);
        }
        ArrayList arrayList = (ArrayList) list2;
        if (!arrayList.isEmpty()) {
            if (z2) {
                str = "CHILD with " + (arrayList.size() - 1) + " siblings @ " + PipelineState.getStateName(pipelineState.mState);
            } else {
                str = "CHILD with no summary @ " + PipelineState.getStateName(pipelineState.mState);
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                NotificationEntry notificationEntry2 = (NotificationEntry) arrayList.get(i2);
                notificationEntry2.setParent(GroupEntry.ROOT_ENTRY);
                ListAttachState listAttachState2 = notificationEntry2.mAttachState;
                ListEntry.checkNull(listAttachState2);
                Objects.requireNonNull(str);
                listAttachState2.groupPruneReason = str;
            }
            list.addAll(i, arrayList);
            arrayList.clear();
        }
        annulAddition(list, groupEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.util.ArraySet] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Collection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Set] */
    public final void pruneIncompleteGroups(List list) {
        ?? arraySet;
        boolean z;
        boolean z2;
        Trace.beginSection("ShadeListBuilder.pruneIncompleteGroups");
        if (getStabilityManager().isEveryChangeAllowed()) {
            arraySet = Collections.emptySet();
        } else {
            arraySet = new ArraySet();
            for (int i = 0; i < list.size(); i++) {
                ListAttachState listAttachState = ((ListEntry) list.get(i)).mAttachState;
                ListEntry.checkNull(listAttachState);
                GroupEntry groupEntry = listAttachState.suppressedChanges.parent;
                if (groupEntry != null) {
                    arraySet.add(groupEntry.mKey);
                }
            }
        }
        ArraySet arraySet2 = new ArraySet((Collection) arraySet);
        for (ListEntry listEntry : this.mAllEntries) {
            StatusBarNotification statusBarNotification = listEntry.getRepresentativeEntry().mSbn;
            if (statusBarNotification.isGroup() && !statusBarNotification.getNotification().isGroupSummary()) {
                ListAttachState listAttachState2 = listEntry.mAttachState;
                ListEntry.checkNull(listAttachState2);
                if (listAttachState2.excludingFilter != null) {
                    arraySet2.add(statusBarNotification.getGroupKey());
                }
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ListEntry listEntry2 = (ListEntry) list.get(i2);
            ListAttachState listAttachState3 = listEntry2.mAttachState;
            ListEntry.checkNull(listAttachState3);
            if (listAttachState3.promoter != null) {
                arraySet2.add(listEntry2.getRepresentativeEntry().mSbn.getGroupKey());
            }
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            ListEntry listEntry3 = (ListEntry) list.get(size);
            if (listEntry3 instanceof GroupEntry) {
                GroupEntry groupEntry2 = (GroupEntry) listEntry3;
                List list2 = groupEntry2.mChildren;
                if (groupEntry2.mSummary != null) {
                    z = true;
                } else {
                    z = false;
                }
                String str = groupEntry2.mKey;
                if (z && ((ArrayList) list2).size() == 0) {
                    if (arraySet2.contains(str)) {
                        pruneGroupAtIndexAndPromoteAnyChildren(list, groupEntry2, size);
                    } else {
                        Preconditions.checkArgument(groupEntry2.mUnmodifiableChildren.isEmpty(), "group should have no children");
                        NotificationEntry notificationEntry = groupEntry2.mSummary;
                        notificationEntry.setParent(GroupEntry.ROOT_ENTRY);
                        if (((ListEntry) list.set(size, notificationEntry)) == groupEntry2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.checkState(z2);
                        groupEntry2.mSummary = null;
                        annulAddition(list, groupEntry2);
                        ListAttachState listAttachState4 = notificationEntry.mAttachState;
                        ListEntry.checkNull(listAttachState4);
                        listAttachState4.groupPruneReason = "SUMMARY with no children @ " + PipelineState.getStateName(this.mPipelineState.mState);
                    }
                } else if (!z) {
                    pruneGroupAtIndexAndPromoteAnyChildren(list, groupEntry2, size);
                } else {
                    if (((ArrayList) list2).size() < 2) {
                        Preconditions.checkState(z, "group must have summary at this point");
                        Preconditions.checkState(!r6.isEmpty(), "empty group should have been promoted");
                        boolean contains = arraySet.contains(str);
                        ListAttachState listAttachState5 = groupEntry2.mAttachState;
                        if (contains) {
                            ListEntry.checkNull(listAttachState5);
                            listAttachState5.suppressedChanges.wasPruneSuppressed = true;
                        } else if (groupEntry2.wasAttachedInPreviousPass() && !getStabilityManager().isGroupPruneAllowed()) {
                            Preconditions.checkState(!r6.isEmpty(), "empty group should have been pruned");
                            ListEntry.checkNull(listAttachState5);
                            listAttachState5.suppressedChanges.wasPruneSuppressed = true;
                        } else {
                            pruneGroupAtIndexAndPromoteAnyChildren(list, groupEntry2, size);
                        }
                    }
                }
            }
        }
        Trace.endSection();
    }

    public final void rebuildListIfBefore(int i) {
        int i2 = this.mPipelineState.mState;
        if (i2 == 0) {
            scheduleRebuild(i, false);
        } else {
            if (i > i2) {
                return;
            }
            scheduleRebuild(i, true);
        }
    }

    public final void scheduleRebuild(int i, boolean z) {
        NotifPipelineChoreographer notifPipelineChoreographer = this.mChoreographer;
        if (!z) {
            this.mConsecutiveReentrantRebuilds = 0;
            ((NotifPipelineChoreographerImpl) notifPipelineChoreographer).schedule();
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(MotionLayout$$ExternalSyntheticOutline0.m("Reentrant notification pipeline rebuild of state ", PipelineState.getStateName(i), " while pipeline in state ", PipelineState.getStateName(this.mPipelineState.mState), "."));
        int i2 = this.mConsecutiveReentrantRebuilds + 1;
        this.mConsecutiveReentrantRebuilds = i2;
        if (i2 <= 3) {
            Log.wtf("ShadeListBuilder", "Allowing " + this.mConsecutiveReentrantRebuilds + " consecutive reentrant notification pipeline rebuild(s).", illegalStateException);
            ((NotifPipelineChoreographerImpl) notifPipelineChoreographer).schedule();
            return;
        }
        Log.e("ShadeListBuilder", "Crashing after more than 3 consecutive reentrant notification pipeline rebuilds.", illegalStateException);
        throw illegalStateException;
    }

    public final void setSectioners(List list) {
        Assert.isMainThread();
        this.mPipelineState.requireState();
        ArrayList<NotifSection> arrayList = (ArrayList) this.mNotifSections;
        arrayList.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NotifSectioner notifSectioner = (NotifSectioner) it.next();
            NotifSection notifSection = new NotifSection(notifSectioner, arrayList.size());
            arrayList.add(notifSection);
            notifSectioner.mListener = new ShadeListBuilder$$ExternalSyntheticLambda0(this, 1);
            NotifComparator notifComparator = notifSection.comparator;
            if (notifComparator != null) {
                notifComparator.mListener = new ShadeListBuilder$$ExternalSyntheticLambda0(this, 2);
            }
        }
        arrayList.add(new NotifSection(DEFAULT_SECTIONER, arrayList.size()));
        ArraySet arraySet = new ArraySet();
        int i = 0;
        if (arrayList.size() > 0) {
            i = ((NotifSection) arrayList.get(0)).bucket;
        }
        for (NotifSection notifSection2 : arrayList) {
            int i2 = notifSection2.bucket;
            if (i != i2 && arraySet.contains(Integer.valueOf(i2))) {
                throw new IllegalStateException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("setSectioners with non contiguous sections "), notifSection2.label, " has an already seen bucket"));
            }
            i = notifSection2.bucket;
            arraySet.add(Integer.valueOf(i));
        }
    }

    public static void annulAddition(List list, ListEntry listEntry) {
        if (listEntry.getParent() != null) {
            if (listEntry.getParent() == GroupEntry.ROOT_ENTRY && list.contains(listEntry)) {
                throw new IllegalStateException("Cannot nullify addition of " + listEntry.getKey() + ": it's still in the shade list.");
            }
            if (listEntry instanceof GroupEntry) {
                GroupEntry groupEntry = (GroupEntry) listEntry;
                NotificationEntry notificationEntry = groupEntry.mSummary;
                String str = groupEntry.mKey;
                if (notificationEntry == null) {
                    if (!groupEntry.mUnmodifiableChildren.isEmpty()) {
                        throw new IllegalStateException(PathParser$$ExternalSyntheticOutline0.m("Cannot nullify group ", str, ": still has children"));
                    }
                } else {
                    throw new IllegalStateException(PathParser$$ExternalSyntheticOutline0.m("Cannot nullify group ", str, ": summary is not null"));
                }
            } else if ((listEntry instanceof NotificationEntry) && (listEntry == listEntry.getParent().mSummary || listEntry.getParent().mUnmodifiableChildren.contains(listEntry))) {
                throw new IllegalStateException("Cannot nullify addition of child " + listEntry.getKey() + ": it's still attached to its parent.");
            }
            annulAddition(listEntry);
            return;
        }
        throw new IllegalStateException("Cannot nullify addition of " + listEntry.getKey() + ": no parent.");
    }
}
