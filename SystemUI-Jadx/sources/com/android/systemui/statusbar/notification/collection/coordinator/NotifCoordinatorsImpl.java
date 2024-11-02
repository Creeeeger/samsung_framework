package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.NotiRune;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator;
import com.android.systemui.statusbar.notification.collection.provider.SectionStyleProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifCoordinatorsImpl implements NotifCoordinators {
    public final List mCoordinators;
    public final List mCoreCoordinators;
    public final List mOrderedSections;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public NotifCoordinatorsImpl(SectionStyleProvider sectionStyleProvider, DataStoreCoordinator dataStoreCoordinator, HideLocallyDismissedNotifsCoordinator hideLocallyDismissedNotifsCoordinator, HideNotifsForOtherUsersCoordinator hideNotifsForOtherUsersCoordinator, KeyguardCoordinator keyguardCoordinator, RankingCoordinator rankingCoordinator, AppOpsCoordinator appOpsCoordinator, DeviceProvisionedCoordinator deviceProvisionedCoordinator, BubbleCoordinator bubbleCoordinator, HeadsUpCoordinator headsUpCoordinator, GutsCoordinator gutsCoordinator, ConversationCoordinator conversationCoordinator, DebugModeCoordinator debugModeCoordinator, GroupCountCoordinator groupCountCoordinator, GroupWhenCoordinator groupWhenCoordinator, MediaCoordinator mediaCoordinator, PreparationCoordinator preparationCoordinator, RemoteInputCoordinator remoteInputCoordinator, RowAppearanceCoordinator rowAppearanceCoordinator, StackCoordinator stackCoordinator, ShadeEventCoordinator shadeEventCoordinator, SmartspaceDedupingCoordinator smartspaceDedupingCoordinator, ViewConfigCoordinator viewConfigCoordinator, VisualStabilityCoordinator visualStabilityCoordinator, SensitiveContentCoordinator sensitiveContentCoordinator, DismissibilityCoordinator dismissibilityCoordinator, SemPriorityCoordinator semPriorityCoordinator, SubscreenQuickReplyCoordinator subscreenQuickReplyCoordinator, LockScreenNotiIconCoordinator lockScreenNotiIconCoordinator, NotifTimeSortCoordnator notifTimeSortCoordnator, NotificationControlActionCoordinator notificationControlActionCoordinator, EdgeLightingCoordnator edgeLightingCoordnator, SettingsChangedCoordinator settingsChangedCoordinator, NotilusCoordinator notilusCoordinator, NotifCounterCoordinator notifCounterCoordinator, NotifHeaderCoordinator notifHeaderCoordinator) {
        ArrayList arrayList = new ArrayList();
        this.mCoreCoordinators = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.mCoordinators = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.mOrderedSections = arrayList3;
        arrayList.add(dataStoreCoordinator);
        arrayList2.add(hideLocallyDismissedNotifsCoordinator);
        arrayList2.add(hideNotifsForOtherUsersCoordinator);
        arrayList2.add(keyguardCoordinator);
        arrayList2.add(rankingCoordinator);
        arrayList2.add(appOpsCoordinator);
        arrayList2.add(deviceProvisionedCoordinator);
        arrayList2.add(bubbleCoordinator);
        arrayList2.add(debugModeCoordinator);
        arrayList2.add(conversationCoordinator);
        arrayList2.add(groupCountCoordinator);
        arrayList2.add(groupWhenCoordinator);
        arrayList2.add(mediaCoordinator);
        arrayList2.add(rowAppearanceCoordinator);
        arrayList2.add(stackCoordinator);
        arrayList2.add(shadeEventCoordinator);
        arrayList2.add(viewConfigCoordinator);
        arrayList2.add(visualStabilityCoordinator);
        arrayList2.add(sensitiveContentCoordinator);
        arrayList2.add(smartspaceDedupingCoordinator);
        arrayList2.add(headsUpCoordinator);
        arrayList2.add(gutsCoordinator);
        arrayList2.add(preparationCoordinator);
        arrayList2.add(remoteInputCoordinator);
        arrayList2.add(dismissibilityCoordinator);
        arrayList2.add(lockScreenNotiIconCoordinator);
        arrayList2.add(notificationControlActionCoordinator);
        arrayList2.add(settingsChangedCoordinator);
        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION) {
            arrayList2.add(subscreenQuickReplyCoordinator);
        }
        arrayList2.add(notifTimeSortCoordnator);
        arrayList2.add(edgeLightingCoordnator);
        arrayList2.add(notilusCoordinator);
        arrayList3.add(notifTimeSortCoordnator.sectionerForPriority);
        arrayList3.add(notifTimeSortCoordnator.sectioner);
        arrayList2.add(notifCounterCoordinator);
        arrayList2.add(notifHeaderCoordinator);
        arrayList3.add(headsUpCoordinator.sectioner);
        arrayList3.add(semPriorityCoordinator.mNotifSectioner);
        arrayList3.add(appOpsCoordinator.mNotifSectioner);
        arrayList3.add(conversationCoordinator.peopleAlertingSectioner);
        ConversationCoordinator$peopleSilentSectioner$1 conversationCoordinator$peopleSilentSectioner$1 = conversationCoordinator.peopleSilentSectioner;
        arrayList3.add(conversationCoordinator$peopleSilentSectioner$1);
        arrayList3.add(rankingCoordinator.mAlertingNotifSectioner);
        RankingCoordinator.AnonymousClass2 anonymousClass2 = rankingCoordinator.mSilentNotifSectioner;
        arrayList3.add(anonymousClass2);
        RankingCoordinator.AnonymousClass3 anonymousClass3 = rankingCoordinator.mMinimizedNotifSectioner;
        arrayList3.add(anonymousClass3);
        sectionStyleProvider.lowPrioritySections = CollectionsKt___CollectionsKt.toSet(Collections.singleton(anonymousClass3));
        CollectionsKt___CollectionsKt.toSet(CollectionsKt__CollectionsKt.listOf(conversationCoordinator$peopleSilentSectioner$1, anonymousClass2, anonymousClass3));
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        Iterator it = ((ArrayList) this.mCoreCoordinators).iterator();
        while (it.hasNext()) {
            ((DataStoreCoordinator) it.next()).attach(notifPipeline);
        }
        Iterator it2 = ((ArrayList) this.mCoordinators).iterator();
        while (it2.hasNext()) {
            ((Coordinator) it2.next()).attach(notifPipeline);
        }
        notifPipeline.mShadeListBuilder.setSectioners(this.mOrderedSections);
    }

    @Override // com.android.systemui.statusbar.notification.collection.PipelineDumpable
    public final void dumpPipeline(PipelineDumper pipelineDumper) {
        pipelineDumper.dump(this.mCoreCoordinators, "core coordinators");
        pipelineDumper.dump(this.mCoordinators, "normal coordinators");
    }
}
