package com.android.systemui.statusbar.notification.collection.coordinator;

import android.R;
import android.view.NotificationHeaderView;
import android.view.View;
import android.widget.TextView;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifHeaderCoordinator implements Coordinator {
    public final NotificationLockscreenUserManager lockscreenUserManager;

    public NotifHeaderCoordinator(NotificationLockscreenUserManager notificationLockscreenUserManager) {
        this.lockscreenUserManager = notificationLockscreenUserManager;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addOnBeforeRenderListListener(new OnBeforeRenderListListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifHeaderCoordinator$attach$1
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener
            public final void onBeforeRenderList(List list) {
                TextView textView;
                int i;
                TextView textView2;
                int i2;
                TextView textView3;
                int i3;
                NotificationHeaderView notificationHeaderView;
                NotifHeaderCoordinator notifHeaderCoordinator = NotifHeaderCoordinator.this;
                notifHeaderCoordinator.getClass();
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.flatMap(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(list), new NotifHeaderCoordinator$extractAllRepresentativeEntries$1(notifHeaderCoordinator)), new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifHeaderCoordinator$onBeforeRenderListListener$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(((NotificationEntry) obj).rowExists());
                    }
                }));
                while (filteringSequence$iterator$1.hasNext()) {
                    NotificationEntry notificationEntry = (NotificationEntry) filteringSequence$iterator$1.next();
                    NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) notifHeaderCoordinator.lockscreenUserManager;
                    boolean isLockscreenPublicMode = notificationLockscreenUserManagerImpl.isLockscreenPublicMode(notificationLockscreenUserManagerImpl.mCurrentUserId);
                    ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                    if (expandableNotificationRow.mIsGroupHeaderContainAtMark) {
                        NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
                        if (notificationChildrenContainer != null && (notificationHeaderView = notificationChildrenContainer.mNotificationHeader) != null) {
                            textView3 = (TextView) notificationHeaderView.findViewById(R.id.line);
                        } else {
                            textView3 = null;
                        }
                        if (textView3 != null) {
                            if (isLockscreenPublicMode) {
                                i3 = 8;
                            } else {
                                i3 = 0;
                            }
                            textView3.setVisibility(i3);
                        }
                    }
                    NotificationContentView[] notificationContentViewArr = expandableNotificationRow.mLayouts;
                    for (NotificationContentView notificationContentView : (NotificationContentView[]) Arrays.copyOf(notificationContentViewArr, notificationContentViewArr.length)) {
                        if (notificationContentView.mIsContractedHeaderContainAtMark) {
                            View view = notificationContentView.mContractedChild;
                            if (view != null) {
                                textView2 = (TextView) view.findViewById(R.id.line);
                            } else {
                                textView2 = null;
                            }
                            if (textView2 != null) {
                                if (isLockscreenPublicMode) {
                                    i2 = 8;
                                } else {
                                    i2 = 0;
                                }
                                textView2.setVisibility(i2);
                            }
                        }
                        if (notificationContentView.mIsExpandedHeaderContainAtMark) {
                            View view2 = notificationContentView.mExpandedChild;
                            if (view2 != null) {
                                textView = (TextView) view2.findViewById(R.id.line);
                            } else {
                                textView = null;
                            }
                            if (textView != null) {
                                if (isLockscreenPublicMode) {
                                    i = 8;
                                } else {
                                    i = 0;
                                }
                                textView.setVisibility(i);
                            }
                        }
                    }
                }
            }
        });
    }
}
